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

**Outcome Variable:** ever_wasted

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

agecat        studyid          country                        mhtcm           ever_wasted   n_cell       n
------------  ---------------  -----------------------------  -------------  ------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      >=155 cm                  0      121    1275
0-24 months   COHORTS          GUATEMALA                      >=155 cm                  1       44    1275
0-24 months   COHORTS          GUATEMALA                      <151 cm                   0      605    1275
0-24 months   COHORTS          GUATEMALA                      <151 cm                   1      230    1275
0-24 months   COHORTS          GUATEMALA                      [151-155) cm              0      214    1275
0-24 months   COHORTS          GUATEMALA                      [151-155) cm              1       61    1275
0-24 months   COHORTS          INDIA                          >=155 cm                  0      381    1905
0-24 months   COHORTS          INDIA                          >=155 cm                  1      190    1905
0-24 months   COHORTS          INDIA                          <151 cm                   0      547    1905
0-24 months   COHORTS          INDIA                          <151 cm                   1      276    1905
0-24 months   COHORTS          INDIA                          [151-155) cm              0      341    1905
0-24 months   COHORTS          INDIA                          [151-155) cm              1      170    1905
0-24 months   COHORTS          PHILIPPINES                    >=155 cm                  0      389    3045
0-24 months   COHORTS          PHILIPPINES                    >=155 cm                  1      240    3045
0-24 months   COHORTS          PHILIPPINES                    <151 cm                   0      878    3045
0-24 months   COHORTS          PHILIPPINES                    <151 cm                   1      662    3045
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm              0      549    3045
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm              1      327    3045
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                  0       33     235
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                  1        3     235
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm                   0      127     235
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm                   1       16     235
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm              0       49     235
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm              1        7     235
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0     2261    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1      639    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       62    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                   1       29    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0      161    3217
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1       65    3217
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm                  0     3093   26837
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm                  1     1033   26837
0-24 months   JiVitA-3         BANGLADESH                     <151 cm                   0    11759   26837
0-24 months   JiVitA-3         BANGLADESH                     <151 cm                   1     4157   26837
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm              0     5060   26837
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm              1     1735   26837
0-24 months   Keneba           GAMBIA                         >=155 cm                  0     1076    2434
0-24 months   Keneba           GAMBIA                         >=155 cm                  1      939    2434
0-24 months   Keneba           GAMBIA                         <151 cm                   0       50    2434
0-24 months   Keneba           GAMBIA                         <151 cm                   1       43    2434
0-24 months   Keneba           GAMBIA                         [151-155) cm              0      173    2434
0-24 months   Keneba           GAMBIA                         [151-155) cm              1      153    2434
0-24 months   LCNI-5           MALAWI                         >=155 cm                  0      474     837
0-24 months   LCNI-5           MALAWI                         >=155 cm                  1       40     837
0-24 months   LCNI-5           MALAWI                         <151 cm                   0      123     837
0-24 months   LCNI-5           MALAWI                         <151 cm                   1        8     837
0-24 months   LCNI-5           MALAWI                         [151-155) cm              0      174     837
0-24 months   LCNI-5           MALAWI                         [151-155) cm              1       18     837
0-24 months   MAL-ED           BANGLADESH                     >=155 cm                  0       19     254
0-24 months   MAL-ED           BANGLADESH                     >=155 cm                  1        6     254
0-24 months   MAL-ED           BANGLADESH                     <151 cm                   0      104     254
0-24 months   MAL-ED           BANGLADESH                     <151 cm                   1       59     254
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm              0       46     254
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm              1       20     254
0-24 months   MAL-ED           BRAZIL                         >=155 cm                  0      115     222
0-24 months   MAL-ED           BRAZIL                         >=155 cm                  1       15     222
0-24 months   MAL-ED           BRAZIL                         <151 cm                   0       49     222
0-24 months   MAL-ED           BRAZIL                         <151 cm                   1        4     222
0-24 months   MAL-ED           BRAZIL                         [151-155) cm              0       38     222
0-24 months   MAL-ED           BRAZIL                         [151-155) cm              1        1     222
0-24 months   MAL-ED           INDIA                          >=155 cm                  0       30     242
0-24 months   MAL-ED           INDIA                          >=155 cm                  1       25     242
0-24 months   MAL-ED           INDIA                          <151 cm                   0       56     242
0-24 months   MAL-ED           INDIA                          <151 cm                   1       59     242
0-24 months   MAL-ED           INDIA                          [151-155) cm              0       39     242
0-24 months   MAL-ED           INDIA                          [151-155) cm              1       33     242
0-24 months   MAL-ED           NEPAL                          >=155 cm                  0       31     238
0-24 months   MAL-ED           NEPAL                          >=155 cm                  1       10     238
0-24 months   MAL-ED           NEPAL                          <151 cm                   0       88     238
0-24 months   MAL-ED           NEPAL                          <151 cm                   1       45     238
0-24 months   MAL-ED           NEPAL                          [151-155) cm              0       45     238
0-24 months   MAL-ED           NEPAL                          [151-155) cm              1       19     238
0-24 months   MAL-ED           PERU                           >=155 cm                  0       57     290
0-24 months   MAL-ED           PERU                           >=155 cm                  1        3     290
0-24 months   MAL-ED           PERU                           <151 cm                   0      149     290
0-24 months   MAL-ED           PERU                           <151 cm                   1       20     290
0-24 months   MAL-ED           PERU                           [151-155) cm              0       57     290
0-24 months   MAL-ED           PERU                           [151-155) cm              1        4     290
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                  0      161     270
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                  1       43     270
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                   0       23     270
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                   1       10     270
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm              0       29     270
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm              1        4     270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      138     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       15     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       42     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        9     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       40     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       12     256
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm                  0       62     624
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm                  1       54     624
0-24 months   NIH-Birth        BANGLADESH                     <151 cm                   0      180     624
0-24 months   NIH-Birth        BANGLADESH                     <151 cm                   1      182     624
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm              0       84     624
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm              1       62     624
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                  0       98     755
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                  1       42     755
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm                   0      285     755
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm                   1      150     755
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm              0      123     755
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm              1       57     755
0-24 months   PROBIT           BELARUS                        >=155 cm                  0     9503   13734
0-24 months   PROBIT           BELARUS                        >=155 cm                  1     3708   13734
0-24 months   PROBIT           BELARUS                        <151 cm                   0       91   13734
0-24 months   PROBIT           BELARUS                        <151 cm                   1       34   13734
0-24 months   PROBIT           BELARUS                        [151-155) cm              0      284   13734
0-24 months   PROBIT           BELARUS                        [151-155) cm              1      114   13734
0-24 months   PROVIDE          BANGLADESH                     >=155 cm                  0       98     669
0-24 months   PROVIDE          BANGLADESH                     >=155 cm                  1       40     669
0-24 months   PROVIDE          BANGLADESH                     <151 cm                   0      229     669
0-24 months   PROVIDE          BANGLADESH                     <151 cm                   1      144     669
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm              0      101     669
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm              1       57     669
0-24 months   SAS-CompFeed     INDIA                          >=155 cm                  0      350    1390
0-24 months   SAS-CompFeed     INDIA                          >=155 cm                  1      218    1390
0-24 months   SAS-CompFeed     INDIA                          <151 cm                   0      270    1390
0-24 months   SAS-CompFeed     INDIA                          <151 cm                   1      217    1390
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm              0      199    1390
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm              1      136    1390
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                  0       46     409
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                  1       32     409
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm                   0      113     409
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm                   1      107     409
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm              0       56     409
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm              1       55     409
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0     1138    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      352    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0      282    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       76    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0      380    2359
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1      131    2359
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                  0     5901    9830
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1918    9830
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                   0      410    9830
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                   1      164    9830
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm              0     1093    9830
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm              1      344    9830
0-6 months    COHORTS          GUATEMALA                      >=155 cm                  0      103    1045
0-6 months    COHORTS          GUATEMALA                      >=155 cm                  1       33    1045
0-6 months    COHORTS          GUATEMALA                      <151 cm                   0      543    1045
0-6 months    COHORTS          GUATEMALA                      <151 cm                   1      143    1045
0-6 months    COHORTS          GUATEMALA                      [151-155) cm              0      188    1045
0-6 months    COHORTS          GUATEMALA                      [151-155) cm              1       35    1045
0-6 months    COHORTS          INDIA                          >=155 cm                  0      402    1863
0-6 months    COHORTS          INDIA                          >=155 cm                  1      153    1863
0-6 months    COHORTS          INDIA                          <151 cm                   0      618    1863
0-6 months    COHORTS          INDIA                          <151 cm                   1      189    1863
0-6 months    COHORTS          INDIA                          [151-155) cm              0      372    1863
0-6 months    COHORTS          INDIA                          [151-155) cm              1      129    1863
0-6 months    COHORTS          PHILIPPINES                    >=155 cm                  0      475    3044
0-6 months    COHORTS          PHILIPPINES                    >=155 cm                  1      154    3044
0-6 months    COHORTS          PHILIPPINES                    <151 cm                   0     1169    3044
0-6 months    COHORTS          PHILIPPINES                    <151 cm                   1      370    3044
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm              0      683    3044
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm              1      193    3044
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm                  0       34     219
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm                  1        0     219
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm                   0      127     219
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm                   1        5     219
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm              0       51     219
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm              1        2     219
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm                  0     3368   26740
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm                  1      744   26740
0-6 months    JiVitA-3         BANGLADESH                     <151 cm                   0    13102   26740
0-6 months    JiVitA-3         BANGLADESH                     <151 cm                   1     2756   26740
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm              0     5558   26740
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm              1     1212   26740
0-6 months    Keneba           GAMBIA                         >=155 cm                  0     1284    2159
0-6 months    Keneba           GAMBIA                         >=155 cm                  1      512    2159
0-6 months    Keneba           GAMBIA                         <151 cm                   0       51    2159
0-6 months    Keneba           GAMBIA                         <151 cm                   1       25    2159
0-6 months    Keneba           GAMBIA                         [151-155) cm              0      210    2159
0-6 months    Keneba           GAMBIA                         [151-155) cm              1       77    2159
0-6 months    LCNI-5           MALAWI                         >=155 cm                  0      159     271
0-6 months    LCNI-5           MALAWI                         >=155 cm                  1        2     271
0-6 months    LCNI-5           MALAWI                         <151 cm                   0       38     271
0-6 months    LCNI-5           MALAWI                         <151 cm                   1        0     271
0-6 months    LCNI-5           MALAWI                         [151-155) cm              0       70     271
0-6 months    LCNI-5           MALAWI                         [151-155) cm              1        2     271
0-6 months    MAL-ED           BANGLADESH                     >=155 cm                  0       19     254
0-6 months    MAL-ED           BANGLADESH                     >=155 cm                  1        6     254
0-6 months    MAL-ED           BANGLADESH                     <151 cm                   0      125     254
0-6 months    MAL-ED           BANGLADESH                     <151 cm                   1       38     254
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm              0       52     254
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm              1       14     254
0-6 months    MAL-ED           BRAZIL                         >=155 cm                  0      118     222
0-6 months    MAL-ED           BRAZIL                         >=155 cm                  1       12     222
0-6 months    MAL-ED           BRAZIL                         <151 cm                   0       51     222
0-6 months    MAL-ED           BRAZIL                         <151 cm                   1        2     222
0-6 months    MAL-ED           BRAZIL                         [151-155) cm              0       38     222
0-6 months    MAL-ED           BRAZIL                         [151-155) cm              1        1     222
0-6 months    MAL-ED           INDIA                          >=155 cm                  0       37     242
0-6 months    MAL-ED           INDIA                          >=155 cm                  1       18     242
0-6 months    MAL-ED           INDIA                          <151 cm                   0       79     242
0-6 months    MAL-ED           INDIA                          <151 cm                   1       36     242
0-6 months    MAL-ED           INDIA                          [151-155) cm              0       47     242
0-6 months    MAL-ED           INDIA                          [151-155) cm              1       25     242
0-6 months    MAL-ED           NEPAL                          >=155 cm                  0       34     238
0-6 months    MAL-ED           NEPAL                          >=155 cm                  1        7     238
0-6 months    MAL-ED           NEPAL                          <151 cm                   0      108     238
0-6 months    MAL-ED           NEPAL                          <151 cm                   1       25     238
0-6 months    MAL-ED           NEPAL                          [151-155) cm              0       48     238
0-6 months    MAL-ED           NEPAL                          [151-155) cm              1       16     238
0-6 months    MAL-ED           PERU                           >=155 cm                  0       59     290
0-6 months    MAL-ED           PERU                           >=155 cm                  1        1     290
0-6 months    MAL-ED           PERU                           <151 cm                   0      160     290
0-6 months    MAL-ED           PERU                           <151 cm                   1        9     290
0-6 months    MAL-ED           PERU                           [151-155) cm              0       60     290
0-6 months    MAL-ED           PERU                           [151-155) cm              1        1     290
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm                  0      185     270
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm                  1       19     270
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm                   0       27     270
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm                   1        6     270
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm              0       30     270
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm              1        3     270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      146     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1        7     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       50     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        1     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       47     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        5     256
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm                  0       77     622
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm                  1       39     622
0-6 months    NIH-Birth        BANGLADESH                     <151 cm                   0      222     622
0-6 months    NIH-Birth        BANGLADESH                     <151 cm                   1      138     622
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm              0      101     622
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm              1       45     622
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm                  0      108     755
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm                  1       32     755
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm                   0      316     755
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm                   1      119     755
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm              0      137     755
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm              1       43     755
0-6 months    PROBIT           BELARUS                        >=155 cm                  0     9577   13734
0-6 months    PROBIT           BELARUS                        >=155 cm                  1     3634   13734
0-6 months    PROBIT           BELARUS                        <151 cm                   0       93   13734
0-6 months    PROBIT           BELARUS                        <151 cm                   1       32   13734
0-6 months    PROBIT           BELARUS                        [151-155) cm              0      287   13734
0-6 months    PROBIT           BELARUS                        [151-155) cm              1      111   13734
0-6 months    PROVIDE          BANGLADESH                     >=155 cm                  0      105     669
0-6 months    PROVIDE          BANGLADESH                     >=155 cm                  1       33     669
0-6 months    PROVIDE          BANGLADESH                     <151 cm                   0      272     669
0-6 months    PROVIDE          BANGLADESH                     <151 cm                   1      101     669
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm              0      116     669
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm              1       42     669
0-6 months    SAS-CompFeed     INDIA                          >=155 cm                  0      436    1383
0-6 months    SAS-CompFeed     INDIA                          >=155 cm                  1      129    1383
0-6 months    SAS-CompFeed     INDIA                          <151 cm                   0      377    1383
0-6 months    SAS-CompFeed     INDIA                          <151 cm                   1      107    1383
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm              0      272    1383
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm              1       62    1383
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm                  0       67     409
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm                  1       11     409
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm                   0      178     409
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm                   1       42     409
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm              0       89     409
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm              1       22     409
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0     1279    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      211    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0      312    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       46    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0      439    2359
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       72    2359
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm                  0     6392    9792
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1396    9792
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm                   0      447    9792
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm                   1      123    9792
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm              0     1168    9792
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm              1      266    9792
6-24 months   COHORTS          GUATEMALA                      >=155 cm                  0      132    1156
6-24 months   COHORTS          GUATEMALA                      >=155 cm                  1       14    1156
6-24 months   COHORTS          GUATEMALA                      <151 cm                   0      658    1156
6-24 months   COHORTS          GUATEMALA                      <151 cm                   1      104    1156
6-24 months   COHORTS          GUATEMALA                      [151-155) cm              0      217    1156
6-24 months   COHORTS          GUATEMALA                      [151-155) cm              1       31    1156
6-24 months   COHORTS          INDIA                          >=155 cm                  0      493    1843
6-24 months   COHORTS          INDIA                          >=155 cm                  1       55    1843
6-24 months   COHORTS          INDIA                          <151 cm                   0      684    1843
6-24 months   COHORTS          INDIA                          <151 cm                   1      115    1843
6-24 months   COHORTS          INDIA                          [151-155) cm              0      445    1843
6-24 months   COHORTS          INDIA                          [151-155) cm              1       51    1843
6-24 months   COHORTS          PHILIPPINES                    >=155 cm                  0      449    2809
6-24 months   COHORTS          PHILIPPINES                    >=155 cm                  1      132    2809
6-24 months   COHORTS          PHILIPPINES                    <151 cm                   0      991    2809
6-24 months   COHORTS          PHILIPPINES                    <151 cm                   1      431    2809
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm              0      620    2809
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm              1      186    2809
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                  0       33     225
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                  1        3     225
6-24 months   Guatemala BSC    GUATEMALA                      <151 cm                   0      124     225
6-24 months   Guatemala BSC    GUATEMALA                      <151 cm                   1       12     225
6-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm              0       47     225
6-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm              1        6     225
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0     2261    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1      639    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       62    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                   1       29    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0      161    3217
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1       65    3217
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm                  0     2352   17247
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm                  1      363   17247
6-24 months   JiVitA-3         BANGLADESH                     <151 cm                   0     8339   17247
6-24 months   JiVitA-3         BANGLADESH                     <151 cm                   1     1771   17247
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm              0     3732   17247
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm              1      690   17247
6-24 months   Keneba           GAMBIA                         >=155 cm                  0     1291    2326
6-24 months   Keneba           GAMBIA                         >=155 cm                  1      632    2326
6-24 months   Keneba           GAMBIA                         <151 cm                   0       64    2326
6-24 months   Keneba           GAMBIA                         <151 cm                   1       26    2326
6-24 months   Keneba           GAMBIA                         [151-155) cm              0      207    2326
6-24 months   Keneba           GAMBIA                         [151-155) cm              1      106    2326
6-24 months   LCNI-5           MALAWI                         >=155 cm                  0      468     823
6-24 months   LCNI-5           MALAWI                         >=155 cm                  1       38     823
6-24 months   LCNI-5           MALAWI                         <151 cm                   0      122     823
6-24 months   LCNI-5           MALAWI                         <151 cm                   1        8     823
6-24 months   LCNI-5           MALAWI                         [151-155) cm              0      170     823
6-24 months   LCNI-5           MALAWI                         [151-155) cm              1       17     823
6-24 months   MAL-ED           BANGLADESH                     >=155 cm                  0       22     240
6-24 months   MAL-ED           BANGLADESH                     >=155 cm                  1        2     240
6-24 months   MAL-ED           BANGLADESH                     <151 cm                   0      125     240
6-24 months   MAL-ED           BANGLADESH                     <151 cm                   1       32     240
6-24 months   MAL-ED           BANGLADESH                     [151-155) cm              0       50     240
6-24 months   MAL-ED           BANGLADESH                     [151-155) cm              1        9     240
6-24 months   MAL-ED           BRAZIL                         >=155 cm                  0      116     207
6-24 months   MAL-ED           BRAZIL                         >=155 cm                  1        4     207
6-24 months   MAL-ED           BRAZIL                         <151 cm                   0       48     207
6-24 months   MAL-ED           BRAZIL                         <151 cm                   1        2     207
6-24 months   MAL-ED           BRAZIL                         [151-155) cm              0       37     207
6-24 months   MAL-ED           BRAZIL                         [151-155) cm              1        0     207
6-24 months   MAL-ED           INDIA                          >=155 cm                  0       45     234
6-24 months   MAL-ED           INDIA                          >=155 cm                  1       10     234
6-24 months   MAL-ED           INDIA                          <151 cm                   0       75     234
6-24 months   MAL-ED           INDIA                          <151 cm                   1       36     234
6-24 months   MAL-ED           INDIA                          [151-155) cm              0       50     234
6-24 months   MAL-ED           INDIA                          [151-155) cm              1       18     234
6-24 months   MAL-ED           NEPAL                          >=155 cm                  0       36     235
6-24 months   MAL-ED           NEPAL                          >=155 cm                  1        5     235
6-24 months   MAL-ED           NEPAL                          <151 cm                   0      107     235
6-24 months   MAL-ED           NEPAL                          <151 cm                   1       24     235
6-24 months   MAL-ED           NEPAL                          [151-155) cm              0       56     235
6-24 months   MAL-ED           NEPAL                          [151-155) cm              1        7     235
6-24 months   MAL-ED           PERU                           >=155 cm                  0       56     269
6-24 months   MAL-ED           PERU                           >=155 cm                  1        2     269
6-24 months   MAL-ED           PERU                           <151 cm                   0      142     269
6-24 months   MAL-ED           PERU                           <151 cm                   1       13     269
6-24 months   MAL-ED           PERU                           [151-155) cm              0       53     269
6-24 months   MAL-ED           PERU                           [151-155) cm              1        3     269
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                  0      163     254
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                  1       28     254
6-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                   0       25     254
6-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                   1        7     254
6-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm              0       29     254
6-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm              1        2     254
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      136     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       11     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       38     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        8     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       43     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        9     245
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm                  0       70     542
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm                  1       28     542
6-24 months   NIH-Birth        BANGLADESH                     <151 cm                   0      220     542
6-24 months   NIH-Birth        BANGLADESH                     <151 cm                   1       97     542
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm              0       93     542
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm              1       34     542
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                  0      123     730
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                  1       15     730
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm                   0      362     730
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm                   1       57     730
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm              0      149     730
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm              1       24     730
6-24 months   PROBIT           BELARUS                        >=155 cm                  0    13086   13726
6-24 months   PROBIT           BELARUS                        >=155 cm                  1      117   13726
6-24 months   PROBIT           BELARUS                        <151 cm                   0      122   13726
6-24 months   PROBIT           BELARUS                        <151 cm                   1        3   13726
6-24 months   PROBIT           BELARUS                        [151-155) cm              0      394   13726
6-24 months   PROBIT           BELARUS                        [151-155) cm              1        4   13726
6-24 months   PROVIDE          BANGLADESH                     >=155 cm                  0      116     614
6-24 months   PROVIDE          BANGLADESH                     >=155 cm                  1       13     614
6-24 months   PROVIDE          BANGLADESH                     <151 cm                   0      275     614
6-24 months   PROVIDE          BANGLADESH                     <151 cm                   1       61     614
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm              0      124     614
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm              1       25     614
6-24 months   SAS-CompFeed     INDIA                          >=155 cm                  0      407    1277
6-24 months   SAS-CompFeed     INDIA                          >=155 cm                  1      132    1277
6-24 months   SAS-CompFeed     INDIA                          <151 cm                   0      276    1277
6-24 months   SAS-CompFeed     INDIA                          <151 cm                   1      156    1277
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm              0      201    1277
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm              1      105    1277
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                  0       52     401
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                  1       24     401
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm                   0      139     401
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm                   1       76     401
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm              0       67     401
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm              1       43     401
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0     1050    1985
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      196    1985
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0      256    1985
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       47    1985
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0      358    1985
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       78    1985
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                  0     6162    8624
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                  1      681    8624
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                   0      464    8624
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                   1       55    8624
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm              0     1148    8624
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm              1      114    8624


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
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/268f83b0-7782-49c3-a99d-f0ac52d11c42/648bd119-5370-4ff3-b7bf-523fdfeb6fc8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/268f83b0-7782-49c3-a99d-f0ac52d11c42/648bd119-5370-4ff3-b7bf-523fdfeb6fc8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/268f83b0-7782-49c3-a99d-f0ac52d11c42/648bd119-5370-4ff3-b7bf-523fdfeb6fc8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/268f83b0-7782-49c3-a99d-f0ac52d11c42/648bd119-5370-4ff3-b7bf-523fdfeb6fc8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.2682062   0.2008111   0.3356013
0-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.2726600   0.2424074   0.3029127
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.2280039   0.1787400   0.2772678
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.3378741   0.2991726   0.3765756
0-24 months   COHORTS          INDIA                          <151 cm              NA                0.3313987   0.2991998   0.3635977
0-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.3319765   0.2908403   0.3731127
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.3857323   0.3471229   0.4243417
0-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.4284943   0.4037548   0.4532338
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.3758798   0.3432390   0.4085206
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.2202920   0.1913434   0.2492406
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.3264823   0.1902720   0.4626926
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.2834244   0.2207615   0.3460872
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.2522991   0.2377110   0.2668873
0-24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                0.2605613   0.2526725   0.2684500
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.2586373   0.2469704   0.2703041
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.4669804   0.4452028   0.4887581
0-24 months   Keneba           GAMBIA                         <151 cm              NA                0.4512386   0.3496031   0.5528742
0-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.4666455   0.4121319   0.5211591
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.0778210   0.0546480   0.1009940
0-24 months   LCNI-5           MALAWI                         <151 cm              NA                0.0610687   0.0200390   0.1020984
0-24 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.0937500   0.0524959   0.1350041
0-24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                0.2400000   0.0722560   0.4077440
0-24 months   MAL-ED           BANGLADESH                     <151 cm              NA                0.3619632   0.2880425   0.4358839
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                0.3030303   0.1919383   0.4141223
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.4711616   0.3357316   0.6065916
0-24 months   MAL-ED           INDIA                          <151 cm              NA                0.5129401   0.4206967   0.6051836
0-24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.4626535   0.3457242   0.5795827
0-24 months   MAL-ED           NEPAL                          >=155 cm             NA                0.2376164   0.1032418   0.3719910
0-24 months   MAL-ED           NEPAL                          <151 cm              NA                0.3424789   0.2620083   0.4229494
0-24 months   MAL-ED           NEPAL                          [151-155) cm         NA                0.2974810   0.1829036   0.4120585
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0980392   0.0508279   0.1452505
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1764706   0.0716399   0.2813013
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2307692   0.1160296   0.3455089
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4659340   0.3743867   0.5574812
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.5037397   0.4519589   0.5555206
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.4235821   0.3431039   0.5040603
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.2974116   0.2213824   0.3734408
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.3441537   0.2994162   0.3888912
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.3117860   0.2435890   0.3799829
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                0.2807476   0.2183861   0.3431092
0-24 months   PROBIT           BELARUS                        <151 cm              NA                0.2759841   0.2460858   0.3058824
0-24 months   PROBIT           BELARUS                        [151-155) cm         NA                0.2833393   0.2064095   0.3602691
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.2931509   0.2170149   0.3692868
0-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.3834716   0.3337533   0.4331899
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.3637329   0.2878340   0.4396317
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.3855338   0.3092567   0.4618110
0-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.4426751   0.3915680   0.4937821
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.4062131   0.3144862   0.4979400
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.3996710   0.2902973   0.5090447
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.4830489   0.4167185   0.5493793
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.4850645   0.3923115   0.5778175
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2355061   0.2139430   0.2570693
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2118865   0.1695954   0.2541775
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2563288   0.2181678   0.2944899
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2454366   0.2358949   0.2549783
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2828802   0.2462190   0.3195415
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2395351   0.2173151   0.2617551
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.2372620   0.1649007   0.3096233
0-6 months    COHORTS          GUATEMALA                      <151 cm              NA                0.2078970   0.1774304   0.2383636
0-6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                0.1613249   0.1127913   0.2098586
0-6 months    COHORTS          INDIA                          >=155 cm             NA                0.2766667   0.2395241   0.3138093
0-6 months    COHORTS          INDIA                          <151 cm              NA                0.2335382   0.2042563   0.2628202
0-6 months    COHORTS          INDIA                          [151-155) cm         NA                0.2575605   0.2191144   0.2960066
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.2388872   0.2054874   0.2722871
0-6 months    COHORTS          PHILIPPINES                    <151 cm              NA                0.2421894   0.2207424   0.2636364
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2194039   0.1917125   0.2470952
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.1802153   0.1671292   0.1933014
0-6 months    JiVitA-3         BANGLADESH                     <151 cm              NA                0.1735271   0.1665406   0.1805136
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.1809290   0.1707109   0.1911470
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.2855311   0.2646360   0.3064262
0-6 months    Keneba           GAMBIA                         <151 cm              NA                0.3237764   0.2180489   0.4295040
0-6 months    Keneba           GAMBIA                         [151-155) cm         NA                0.2673838   0.2157067   0.3190608
0-6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                0.2400000   0.0722560   0.4077440
0-6 months    MAL-ED           BANGLADESH                     <151 cm              NA                0.2331288   0.1680904   0.2981673
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm         NA                0.2121212   0.1132990   0.3109434
0-6 months    MAL-ED           INDIA                          >=155 cm             NA                0.3280509   0.2022734   0.4538283
0-6 months    MAL-ED           INDIA                          <151 cm              NA                0.3108578   0.2258070   0.3959086
0-6 months    MAL-ED           INDIA                          [151-155) cm         NA                0.3485717   0.2365758   0.4605677
0-6 months    MAL-ED           NEPAL                          >=155 cm             NA                0.1707317   0.0553133   0.2861501
0-6 months    MAL-ED           NEPAL                          <151 cm              NA                0.1879699   0.1214324   0.2545075
0-6 months    MAL-ED           NEPAL                          [151-155) cm         NA                0.2500000   0.1436903   0.3563097
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3440701   0.2580219   0.4301183
0-6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                0.3828594   0.3325311   0.4331878
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.3154668   0.2399079   0.3910258
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.2248362   0.1548143   0.2948582
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                0.2730588   0.2310224   0.3150953
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.2323716   0.1695294   0.2952137
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                0.2750835   0.2124193   0.3377477
0-6 months    PROBIT           BELARUS                        <151 cm              NA                0.2674757   0.2385856   0.2963659
0-6 months    PROBIT           BELARUS                        [151-155) cm         NA                0.2765019   0.2043999   0.3486040
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                0.2449620   0.1723482   0.3175758
0-6 months    PROVIDE          BANGLADESH                     <151 cm              NA                0.2699034   0.2245820   0.3152248
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                0.2652093   0.1949109   0.3355076
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.2308480   0.1651994   0.2964965
0-6 months    SAS-CompFeed     INDIA                          <151 cm              NA                0.2177567   0.1684812   0.2670322
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                0.1863948   0.1325286   0.2402609
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1377089   0.0589399   0.2164779
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                0.1913586   0.1389535   0.2437638
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.2017524   0.1236926   0.2798122
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1413131   0.1236093   0.1590170
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1264959   0.0922674   0.1607244
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1406979   0.1103016   0.1710943
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1791682   0.1706452   0.1876912
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2161689   0.1826022   0.2497356
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1851138   0.1649518   0.2052759
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.0919304   0.0443613   0.1394995
6-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.1365550   0.1121723   0.1609377
6-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.1239208   0.0824689   0.1653727
6-24 months   COHORTS          INDIA                          >=155 cm             NA                0.1076834   0.0823450   0.1330218
6-24 months   COHORTS          INDIA                          <151 cm              NA                0.1377777   0.1136631   0.1618923
6-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.1034041   0.0764272   0.1303810
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.2413879   0.2070142   0.2757616
6-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.2942340   0.2704922   0.3179758
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2360952   0.2065577   0.2656326
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.2203067   0.1913359   0.2492775
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.3341527   0.2056838   0.4626216
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.2897721   0.2265329   0.3530113
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.1401299   0.1262235   0.1540363
6-24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                0.1738067   0.1660745   0.1815389
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.1591404   0.1475340   0.1707469
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.3305367   0.3095407   0.3515327
6-24 months   Keneba           GAMBIA                         <151 cm              NA                0.2706487   0.1765050   0.3647924
6-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.3325727   0.2797702   0.3853752
6-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.0750988   0.0521214   0.0980762
6-24 months   LCNI-5           MALAWI                         <151 cm              NA                0.0615385   0.0202031   0.1028738
6-24 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.0909091   0.0496805   0.1321377
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.1861864   0.0813915   0.2909813
6-24 months   MAL-ED           INDIA                          <151 cm              NA                0.3225184   0.2344077   0.4106291
6-24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.2636064   0.1574578   0.3697551
6-24 months   MAL-ED           NEPAL                          >=155 cm             NA                0.1219512   0.0215741   0.2223283
6-24 months   MAL-ED           NEPAL                          <151 cm              NA                0.1832061   0.1168219   0.2495903
6-24 months   MAL-ED           NEPAL                          [151-155) cm         NA                0.1111111   0.0333421   0.1888801
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0748299   0.0322087   0.1174512
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1739130   0.0641550   0.2836711
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1730769   0.0700415   0.2761124
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2909559   0.2011944   0.3807174
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.3057432   0.2548276   0.3566589
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2674580   0.1907164   0.3441995
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.1144358   0.0605526   0.1683191
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.1343168   0.1015754   0.1670583
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.1372146   0.0861563   0.1882729
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0968588   0.0456679   0.1480496
6-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.1771082   0.1361453   0.2180711
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1776629   0.1147209   0.2406049
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.2449651   0.1838859   0.3060443
6-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.3647444   0.3082495   0.4212393
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.3424219   0.2590641   0.4257797
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.3267588   0.2194181   0.4340995
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.3554721   0.2910878   0.4198565
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.3903075   0.2989620   0.4816530
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1570997   0.1368410   0.1773583
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1575044   0.1162219   0.1987870
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1783031   0.1421279   0.2144783
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0998679   0.0927734   0.1069623
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1024542   0.0761911   0.1287173
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0896139   0.0737434   0.1054843


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.2627451   0.2385772   0.2869130
0-24 months   COHORTS          INDIA                          NA                   NA                0.3338583   0.3126757   0.3550409
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2278520   0.2008644   0.2548397
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2580393   0.2515701   0.2645084
0-24 months   Keneba           GAMBIA                         NA                   NA                0.4663106   0.4464881   0.4861331
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0788530   0.0605839   0.0971222
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.3346457   0.2765014   0.3927899
0-24 months   MAL-ED           INDIA                          NA                   NA                0.4834711   0.4203794   0.5465628
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.3109244   0.2519946   0.3698541
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1406250   0.0979572   0.1832928
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.3298013   0.2962438   0.3633589
0-24 months   PROBIT           BELARUS                        NA                   NA                0.2807631   0.2185905   0.3429356
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3602392   0.3238339   0.3966444
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.4107914   0.3512139   0.4703688
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.4743276   0.4258753   0.5227800
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2369648   0.2198019   0.2541277
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2467955   0.2382720   0.2553190
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.2019139   0.1775635   0.2262643
0-6 months    COHORTS          INDIA                          NA                   NA                0.2528180   0.2330767   0.2725593
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1762154   0.1705946   0.1818362
0-6 months    Keneba           GAMBIA                         NA                   NA                0.2843909   0.2653574   0.3034244
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.2283465   0.1766220   0.2800709
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3264463   0.2672449   0.3856476
0-6 months    MAL-ED           NEPAL                          NA                   NA                0.2016807   0.1505956   0.2527658
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2569536   0.2257649   0.2881424
0-6 months    PROBIT           BELARUS                        NA                   NA                0.2750109   0.2125981   0.3374238
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2630792   0.2296894   0.2964690
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2154736   0.1691818   0.2617655
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1833741   0.1458251   0.2209231
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1394659   0.1254831   0.1534487
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1822917   0.1746442   0.1899391
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1288927   0.1095683   0.1482172
6-24 months   COHORTS          INDIA                          NA                   NA                0.1199132   0.1050778   0.1347486
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2278520   0.2008644   0.2548397
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1637386   0.1576238   0.1698535
6-24 months   Keneba           GAMBIA                         NA                   NA                0.3284609   0.3093705   0.3475512
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0765492   0.0583736   0.0947248
6-24 months   MAL-ED           INDIA                          NA                   NA                0.2735043   0.2162683   0.3307402
6-24 months   MAL-ED           NEPAL                          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1142857   0.0743652   0.1542062
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1612378   0.1321259   0.1903497
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3077525   0.2591695   0.3563356
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.3566085   0.3096676   0.4035494
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1617128   0.1455117   0.1779140
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0985622   0.0922708   0.1048535


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.0166061   0.7729757   1.337025
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.8501069   0.6106740   1.183417
0-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          0.9808350   0.8441612   1.139637
0-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9825451   0.8300537   1.163051
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.1108592   0.9896734   1.246884
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9744577   0.8535035   1.112553
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.4820433   0.9381862   2.341169
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.2865847   1.0153062   1.630346
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          1.0327474   0.9727282   1.096470
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.0251215   0.9538392   1.101731
0-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          0.9662903   0.7677611   1.216155
0-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9992828   0.8811978   1.133192
0-24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          0.7847328   0.3763243   1.636370
0-24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2046875   0.7081457   2.049397
0-24 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          1.5081800   0.7281453   3.123836
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          1.2626263   0.5734697   2.779964
0-24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          1.0886714   0.7758654   1.527591
0-24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          0.9819422   0.6686399   1.442047
0-24 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          1.4413100   0.7815787   2.657921
0-24 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          1.2519381   0.6312429   2.482957
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.8000000   0.8378448   3.867065
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.3538462   1.1780658   4.703126
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0811396   0.8661256   1.349530
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9091032   0.6914567   1.195257
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.1571631   0.8684407   1.541874
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.0483316   0.7487817   1.467716
0-24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          0.9830328   0.7981891   1.210682
0-24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.0092313   0.8703213   1.170312
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          1.3081033   0.9783910   1.748927
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.2407702   0.8894116   1.730932
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.1482133   0.9508572   1.386532
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.0536381   0.9194304   1.207436
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          1.2086162   0.8892082   1.642757
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.2136594   0.8688027   1.695401
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.8997068   0.7223123   1.120668
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0884168   0.9138513   1.296328
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.1525592   1.0067075   1.319542
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9759549   0.8825813   1.079207
0-6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8762338   0.6244191   1.229600
0-6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6799443   0.4429894   1.043646
0-6 months    COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          <151 cm              >=155 cm          0.8441141   0.7024687   1.014321
0-6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9309415   0.7616571   1.137851
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0138231   0.8592509   1.196201
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9184411   0.7608289   1.108704
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          0.9628876   0.8915210   1.039967
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.0039599   0.9162450   1.100072
0-6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          1.1339445   0.8114253   1.584656
0-6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9364436   0.7615855   1.151449
0-6 months    MAL-ED           BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BANGLADESH                     <151 cm              >=155 cm          0.9713701   0.4576722   2.061650
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          0.8838384   0.3815740   2.047231
0-6 months    MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           INDIA                          <151 cm              >=155 cm          0.9475901   0.5907082   1.520086
0-6 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          1.0625539   0.6434420   1.754658
0-6 months    MAL-ED           NEPAL                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           NEPAL                          <151 cm              >=155 cm          1.1009667   0.5132962   2.361458
0-6 months    MAL-ED           NEPAL                          [151-155) cm         >=155 cm          1.4642857   0.6588380   3.254415
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.1127366   0.8389350   1.475898
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9168678   0.6484536   1.296386
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.2144787   0.8577107   1.719646
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.0335147   0.6842881   1.560969
0-6 months    PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        <151 cm              >=155 cm          0.9723437   0.7933309   1.191750
0-6 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.0051562   0.8792367   1.149109
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          1.1018173   0.7836673   1.549128
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.0826547   0.7272672   1.611706
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          0.9432905   0.7123681   1.249069
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          0.8074351   0.6337535   1.028714
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          1.3895880   0.7368842   2.620432
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.4650644   0.7343825   2.922746
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.8951461   0.6643552   1.206112
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          0.9956465   0.7755680   1.278175
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.2065138   1.0256255   1.419305
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0331846   0.9173880   1.163597
6-24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.4854169   0.8586241   2.569767
6-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.3479848   0.7284064   2.494573
6-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          1.2794699   0.9550471   1.714097
6-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9602601   0.6761871   1.363675
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.2189261   1.0354590   1.434901
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9780737   0.8096059   1.181597
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.5167611   0.9917766   2.319639
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.3153118   1.0396288   1.664099
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          1.2403255   1.1159086   1.378614
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.1356636   1.0085920   1.278745
6-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          0.8188158   0.5749432   1.166132
6-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0061596   0.8481345   1.193628
6-24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          0.8194332   0.3917059   1.714222
6-24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2105263   0.7004604   2.092015
6-24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          1.7322339   0.9258279   3.241028
6-24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          1.4158200   0.7081523   2.830671
6-24 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          1.5022901   0.6112012   3.692525
6-24 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          0.9111111   0.3092704   2.684134
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.3241107   0.9932349   5.438281
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.3129371   1.0147224   5.272061
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0508232   0.7410832   1.490021
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9192388   0.6038458   1.399364
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.1737305   0.6909262   1.993908
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.1990526   0.6588430   2.182200
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          1.8285204   1.0278013   3.253048
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.8342468   0.9726797   3.458961
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.4889647   1.0873959   2.038830
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.3978395   1.1684041   1.672328
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          1.0878732   0.7473258   1.583604
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.1944821   0.7975546   1.788953
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.0025765   0.7486297   1.342666
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.1349681   0.8924019   1.443467
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0258979   0.7862712   1.338554
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.8973243   0.7415001   1.085895


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0054611   -0.0682976   0.0573754
0-24 months   COHORTS          INDIA                          >=155 cm             NA                -0.0040158   -0.0364222   0.0283906
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0178802   -0.0166907   0.0524511
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0075600    0.0009809   0.0141391
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0057402   -0.0070112   0.0184915
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0006698   -0.0097172   0.0083775
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                 0.0010320   -0.0135015   0.0155656
0-24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0946457   -0.0665369   0.2558283
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0123095   -0.1070669   0.1316858
0-24 months   MAL-ED           NEPAL                          >=155 cm             NA                 0.0733080   -0.0508678   0.1974838
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0425858    0.0053674   0.0798042
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0116301   -0.0711242   0.0943844
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0323897   -0.0366926   0.1014721
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                 0.0000155   -0.0013561   0.0013870
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0670883   -0.0018991   0.1360757
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0252576   -0.0061065   0.0566216
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0746566   -0.0244458   0.1737590
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0014587   -0.0116692   0.0145866
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0013589   -0.0029912   0.0057090
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.0353481   -0.1023056   0.0316093
0-6 months    COHORTS          INDIA                          >=155 cm             NA                -0.0238486   -0.0546141   0.0069168
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0033419   -0.0330502   0.0263664
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0039999   -0.0155890   0.0075892
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.0011402   -0.0096891   0.0074087
0-6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0116535   -0.1706331   0.1473260
0-6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.0016046   -0.1126945   0.1094853
0-6 months    MAL-ED           NEPAL                          >=155 cm             NA                 0.0309490   -0.0755469   0.1374448
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0128431   -0.0650244   0.0907105
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0321174   -0.0317254   0.0959602
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0000726   -0.0013271   0.0011819
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0181172   -0.0472785   0.0835128
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0153744   -0.0482530   0.0175042
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0456652   -0.0271290   0.1184594
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0018473   -0.0124935   0.0087990
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0031235   -0.0008353   0.0070822
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                 0.0369623   -0.0085070   0.0824317
6-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.0122297   -0.0096795   0.0341390
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0252550   -0.0057807   0.0562908
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0075453    0.0009489   0.0141417
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0236087    0.0110673   0.0361501
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0020758   -0.0108102   0.0066585
6-24 months   LCNI-5           MALAWI                         >=155 cm             NA                 0.0014504   -0.0130102   0.0159110
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0873179   -0.0090898   0.1837255
6-24 months   MAL-ED           NEPAL                          >=155 cm             NA                 0.0312403   -0.0619769   0.1244574
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0394558    0.0043797   0.0745319
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0024020   -0.0788544   0.0836585
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0170710   -0.0323817   0.0665237
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0643790    0.0157470   0.1130111
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0627874    0.0308714   0.0947035
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0298497   -0.0676207   0.1273200
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0046132   -0.0079917   0.0172181
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0013057   -0.0044768   0.0018654


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0207847   -0.2902779   0.1924210
0-24 months   COHORTS          INDIA                          >=155 cm             NA                -0.0120285   -0.1139060   0.0805314
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0443004   -0.0453179   0.1262355
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0331795    0.0028538   0.0625829
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0222453   -0.0284740   0.0704634
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0014364   -0.0210277   0.0177790
0-24 months   LCNI-5           MALAWI                         >=155 cm             NA                 0.0130881   -0.1895327   0.1811952
0-24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                 0.2828235   -0.4024019   0.6332420
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0254606   -0.2556125   0.2436145
0-24 months   MAL-ED           NEPAL                          >=155 cm             NA                 0.2357743   -0.2886938   0.5467963
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.3028322   -0.0008100   0.5143505
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0243530   -0.1652843   0.1831289
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0982098   -0.1375619   0.2851154
0-24 months   PROBIT           BELARUS                        >=155 cm             NA                 0.0000550   -0.0048437   0.0049299
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.1862327   -0.0294870   0.3567503
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0614851   -0.0218675   0.1380388
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.1573946   -0.0800716   0.3426512
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0061557   -0.0508175   0.0600400
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0055061   -0.0122769   0.0229768
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.1750654   -0.5577203   0.1135901
0-6 months    COHORTS          INDIA                          >=155 cm             NA                -0.0943313   -0.2230007   0.0208011
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0141880   -0.1484889   0.1044082
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0226990   -0.0905989   0.0409735
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.0040092   -0.0345243   0.0256059
0-6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0510345   -1.0383796   0.4580629
0-6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.0049153   -0.4099333   0.2837570
0-6 months    MAL-ED           NEPAL                          >=155 cm             NA                 0.1534553   -0.5780681   0.5458764
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0359837   -0.2088227   0.2312128
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.1249930   -0.1622115   0.3412238
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0002640   -0.0048249   0.0042761
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0688659   -0.2159434   0.2869646
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0713515   -0.2298492   0.0667197
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.2490275   -0.2716510   0.5565138
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0132453   -0.0925209   0.0602780
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0171345   -0.0048176   0.0386070
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                 0.2867680   -0.1667434   0.5640002
6-24 months   COHORTS          INDIA                          >=155 cm             NA                 0.1019883   -0.0997867   0.2667442
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0947148   -0.0293381   0.2038172
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0331149    0.0027042   0.0625982
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.1441853    0.0639018   0.2175834
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0063199   -0.0332685   0.0199259
6-24 months   LCNI-5           MALAWI                         >=155 cm             NA                 0.0189472   -0.1893171   0.1907419
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.3192559   -0.1369911   0.5924221
6-24 months   MAL-ED           NEPAL                          >=155 cm             NA                 0.2039295   -0.7049484   0.6283007
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.3452381   -0.0142598   0.5773143
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0081880   -0.3113426   0.2498596
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.1298107   -0.3395618   0.4347186
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.3992800    0.0182352   0.6324329
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.2040192    0.0837256   0.3085201
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0837044   -0.2347662   0.3200351
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0285270   -0.0526054   0.1034059
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0132475   -0.0459334   0.0184170
