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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mhtcm           sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------------  ---------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      >=155 cm               0      110     840  sstunted         
Birth       COHORTS          GUATEMALA                      >=155 cm               1        0     840  sstunted         
Birth       COHORTS          GUATEMALA                      <151 cm                0      538     840  sstunted         
Birth       COHORTS          GUATEMALA                      <151 cm                1        7     840  sstunted         
Birth       COHORTS          GUATEMALA                      [151-155) cm           0      181     840  sstunted         
Birth       COHORTS          GUATEMALA                      [151-155) cm           1        4     840  sstunted         
Birth       COHORTS          INDIA                          >=155 cm               0      522    1774  sstunted         
Birth       COHORTS          INDIA                          >=155 cm               1        8    1774  sstunted         
Birth       COHORTS          INDIA                          <151 cm                0      739    1774  sstunted         
Birth       COHORTS          INDIA                          <151 cm                1       24    1774  sstunted         
Birth       COHORTS          INDIA                          [151-155) cm           0      470    1774  sstunted         
Birth       COHORTS          INDIA                          [151-155) cm           1       11    1774  sstunted         
Birth       COHORTS          PHILIPPINES                    >=155 cm               0      628    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    >=155 cm               1        2    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    <151 cm                0     1516    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    <151 cm                1       29    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    [151-155) cm           0      860    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    [151-155) cm           1       15    3050  sstunted         
Birth       JiVitA-3         BANGLADESH                     >=155 cm               0     3153   22356  sstunted         
Birth       JiVitA-3         BANGLADESH                     >=155 cm               1      164   22356  sstunted         
Birth       JiVitA-3         BANGLADESH                     <151 cm                0    11650   22356  sstunted         
Birth       JiVitA-3         BANGLADESH                     <151 cm                1     1786   22356  sstunted         
Birth       JiVitA-3         BANGLADESH                     [151-155) cm           0     5117   22356  sstunted         
Birth       JiVitA-3         BANGLADESH                     [151-155) cm           1      486   22356  sstunted         
Birth       Keneba           GAMBIA                         >=155 cm               0     1170    1431  sstunted         
Birth       Keneba           GAMBIA                         >=155 cm               1       17    1431  sstunted         
Birth       Keneba           GAMBIA                         <151 cm                0       48    1431  sstunted         
Birth       Keneba           GAMBIA                         <151 cm                1        3    1431  sstunted         
Birth       Keneba           GAMBIA                         [151-155) cm           0      187    1431  sstunted         
Birth       Keneba           GAMBIA                         [151-155) cm           1        6    1431  sstunted         
Birth       MAL-ED           BANGLADESH                     >=155 cm               0       21     222  sstunted         
Birth       MAL-ED           BANGLADESH                     >=155 cm               1        1     222  sstunted         
Birth       MAL-ED           BANGLADESH                     <151 cm                0      139     222  sstunted         
Birth       MAL-ED           BANGLADESH                     <151 cm                1        6     222  sstunted         
Birth       MAL-ED           BANGLADESH                     [151-155) cm           0       55     222  sstunted         
Birth       MAL-ED           BANGLADESH                     [151-155) cm           1        0     222  sstunted         
Birth       MAL-ED           BRAZIL                         >=155 cm               0       32      64  sstunted         
Birth       MAL-ED           BRAZIL                         >=155 cm               1        0      64  sstunted         
Birth       MAL-ED           BRAZIL                         <151 cm                0       19      64  sstunted         
Birth       MAL-ED           BRAZIL                         <151 cm                1        1      64  sstunted         
Birth       MAL-ED           BRAZIL                         [151-155) cm           0       10      64  sstunted         
Birth       MAL-ED           BRAZIL                         [151-155) cm           1        2      64  sstunted         
Birth       MAL-ED           INDIA                          >=155 cm               0       11      43  sstunted         
Birth       MAL-ED           INDIA                          >=155 cm               1        1      43  sstunted         
Birth       MAL-ED           INDIA                          <151 cm                0       19      43  sstunted         
Birth       MAL-ED           INDIA                          <151 cm                1        1      43  sstunted         
Birth       MAL-ED           INDIA                          [151-155) cm           0       11      43  sstunted         
Birth       MAL-ED           INDIA                          [151-155) cm           1        0      43  sstunted         
Birth       MAL-ED           NEPAL                          >=155 cm               0        6      27  sstunted         
Birth       MAL-ED           NEPAL                          >=155 cm               1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          <151 cm                0       13      27  sstunted         
Birth       MAL-ED           NEPAL                          <151 cm                1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          [151-155) cm           0        7      27  sstunted         
Birth       MAL-ED           NEPAL                          [151-155) cm           1        1      27  sstunted         
Birth       MAL-ED           PERU                           >=155 cm               0       48     226  sstunted         
Birth       MAL-ED           PERU                           >=155 cm               1        0     226  sstunted         
Birth       MAL-ED           PERU                           <151 cm                0      127     226  sstunted         
Birth       MAL-ED           PERU                           <151 cm                1        4     226  sstunted         
Birth       MAL-ED           PERU                           [151-155) cm           0       47     226  sstunted         
Birth       MAL-ED           PERU                           [151-155) cm           1        0     226  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm               0       80     101  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm               1        0     101  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   <151 cm                0        9     101  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   <151 cm                1        1     101  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm           0       11     101  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm           1        0     101  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm               0       67     122  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        5     122  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                0       21     122  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                1        0     122  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       25     122  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        4     122  sstunted         
Birth       NIH-Birth        BANGLADESH                     >=155 cm               0      108     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     >=155 cm               1        3     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     <151 cm                0      341     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     <151 cm                1       15     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     [151-155) cm           0      140     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     [151-155) cm           1        1     608  sstunted         
Birth       NIH-Crypto       BANGLADESH                     >=155 cm               0      132     729  sstunted         
Birth       NIH-Crypto       BANGLADESH                     >=155 cm               1        2     729  sstunted         
Birth       NIH-Crypto       BANGLADESH                     <151 cm                0      414     729  sstunted         
Birth       NIH-Crypto       BANGLADESH                     <151 cm                1        4     729  sstunted         
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm           0      173     729  sstunted         
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm           1        4     729  sstunted         
Birth       PROBIT           BELARUS                        >=155 cm               0    13204   13732  sstunted         
Birth       PROBIT           BELARUS                        >=155 cm               1        5   13732  sstunted         
Birth       PROBIT           BELARUS                        <151 cm                0      125   13732  sstunted         
Birth       PROBIT           BELARUS                        <151 cm                1        0   13732  sstunted         
Birth       PROBIT           BELARUS                        [151-155) cm           0      398   13732  sstunted         
Birth       PROBIT           BELARUS                        [151-155) cm           1        0   13732  sstunted         
Birth       PROVIDE          BANGLADESH                     >=155 cm               0      109     517  sstunted         
Birth       PROVIDE          BANGLADESH                     >=155 cm               1        1     517  sstunted         
Birth       PROVIDE          BANGLADESH                     <151 cm                0      284     517  sstunted         
Birth       PROVIDE          BANGLADESH                     <151 cm                1        2     517  sstunted         
Birth       PROVIDE          BANGLADESH                     [151-155) cm           0      120     517  sstunted         
Birth       PROVIDE          BANGLADESH                     [151-155) cm           1        1     517  sstunted         
Birth       SAS-CompFeed     INDIA                          >=155 cm               0      445    1135  sstunted         
Birth       SAS-CompFeed     INDIA                          >=155 cm               1       22    1135  sstunted         
Birth       SAS-CompFeed     INDIA                          <151 cm                0      345    1135  sstunted         
Birth       SAS-CompFeed     INDIA                          <151 cm                1       40    1135  sstunted         
Birth       SAS-CompFeed     INDIA                          [151-155) cm           0      258    1135  sstunted         
Birth       SAS-CompFeed     INDIA                          [151-155) cm           1       25    1135  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm               0     7532    9705  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm               1      200    9705  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       <151 cm                0      529    9705  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       <151 cm                1       31    9705  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm           0     1361    9705  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm           1       52    9705  sstunted         
6 months    COHORTS          GUATEMALA                      >=155 cm               0      111     943  sstunted         
6 months    COHORTS          GUATEMALA                      >=155 cm               1        6     943  sstunted         
6 months    COHORTS          GUATEMALA                      <151 cm                0      530     943  sstunted         
6 months    COHORTS          GUATEMALA                      <151 cm                1       99     943  sstunted         
6 months    COHORTS          GUATEMALA                      [151-155) cm           0      181     943  sstunted         
6 months    COHORTS          GUATEMALA                      [151-155) cm           1       16     943  sstunted         
6 months    COHORTS          INDIA                          >=155 cm               0      531    1819  sstunted         
6 months    COHORTS          INDIA                          >=155 cm               1       10    1819  sstunted         
6 months    COHORTS          INDIA                          <151 cm                0      740    1819  sstunted         
6 months    COHORTS          INDIA                          <151 cm                1       50    1819  sstunted         
6 months    COHORTS          INDIA                          [151-155) cm           0      477    1819  sstunted         
6 months    COHORTS          INDIA                          [151-155) cm           1       11    1819  sstunted         
6 months    COHORTS          PHILIPPINES                    >=155 cm               0      550    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    >=155 cm               1       11    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    <151 cm                0     1277    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    <151 cm                1       91    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    [151-155) cm           0      749    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    [151-155) cm           1       30    2708  sstunted         
6 months    Guatemala BSC    GUATEMALA                      >=155 cm               0       34     231  sstunted         
6 months    Guatemala BSC    GUATEMALA                      >=155 cm               1        2     231  sstunted         
6 months    Guatemala BSC    GUATEMALA                      <151 cm                0      125     231  sstunted         
6 months    Guatemala BSC    GUATEMALA                      <151 cm                1       16     231  sstunted         
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm           0       50     231  sstunted         
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm           1        4     231  sstunted         
6 months    JiVitA-3         BANGLADESH                     >=155 cm               0     2610   16761  sstunted         
6 months    JiVitA-3         BANGLADESH                     >=155 cm               1       50   16761  sstunted         
6 months    JiVitA-3         BANGLADESH                     <151 cm                0     8997   16761  sstunted         
6 months    JiVitA-3         BANGLADESH                     <151 cm                1      800   16761  sstunted         
6 months    JiVitA-3         BANGLADESH                     [151-155) cm           0     4137   16761  sstunted         
6 months    JiVitA-3         BANGLADESH                     [151-155) cm           1      167   16761  sstunted         
6 months    Keneba           GAMBIA                         >=155 cm               0     1527    1877  sstunted         
6 months    Keneba           GAMBIA                         >=155 cm               1       41    1877  sstunted         
6 months    Keneba           GAMBIA                         <151 cm                0       62    1877  sstunted         
6 months    Keneba           GAMBIA                         <151 cm                1        5    1877  sstunted         
6 months    Keneba           GAMBIA                         [151-155) cm           0      229    1877  sstunted         
6 months    Keneba           GAMBIA                         [151-155) cm           1       13    1877  sstunted         
6 months    LCNI-5           MALAWI                         >=155 cm               0      487     836  sstunted         
6 months    LCNI-5           MALAWI                         >=155 cm               1       26     836  sstunted         
6 months    LCNI-5           MALAWI                         <151 cm                0      104     836  sstunted         
6 months    LCNI-5           MALAWI                         <151 cm                1       27     836  sstunted         
6 months    LCNI-5           MALAWI                         [151-155) cm           0      174     836  sstunted         
6 months    LCNI-5           MALAWI                         [151-155) cm           1       18     836  sstunted         
6 months    MAL-ED           BANGLADESH                     >=155 cm               0       24     241  sstunted         
6 months    MAL-ED           BANGLADESH                     >=155 cm               1        0     241  sstunted         
6 months    MAL-ED           BANGLADESH                     <151 cm                0      148     241  sstunted         
6 months    MAL-ED           BANGLADESH                     <151 cm                1        8     241  sstunted         
6 months    MAL-ED           BANGLADESH                     [151-155) cm           0       61     241  sstunted         
6 months    MAL-ED           BANGLADESH                     [151-155) cm           1        0     241  sstunted         
6 months    MAL-ED           BRAZIL                         >=155 cm               0      121     209  sstunted         
6 months    MAL-ED           BRAZIL                         >=155 cm               1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         <151 cm                0       51     209  sstunted         
6 months    MAL-ED           BRAZIL                         <151 cm                1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         [151-155) cm           0       37     209  sstunted         
6 months    MAL-ED           BRAZIL                         [151-155) cm           1        0     209  sstunted         
6 months    MAL-ED           INDIA                          >=155 cm               0       55     235  sstunted         
6 months    MAL-ED           INDIA                          >=155 cm               1        0     235  sstunted         
6 months    MAL-ED           INDIA                          <151 cm                0      104     235  sstunted         
6 months    MAL-ED           INDIA                          <151 cm                1        8     235  sstunted         
6 months    MAL-ED           INDIA                          [151-155) cm           0       67     235  sstunted         
6 months    MAL-ED           INDIA                          [151-155) cm           1        1     235  sstunted         
6 months    MAL-ED           NEPAL                          >=155 cm               0       41     236  sstunted         
6 months    MAL-ED           NEPAL                          >=155 cm               1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          <151 cm                0      131     236  sstunted         
6 months    MAL-ED           NEPAL                          <151 cm                1        1     236  sstunted         
6 months    MAL-ED           NEPAL                          [151-155) cm           0       63     236  sstunted         
6 months    MAL-ED           NEPAL                          [151-155) cm           1        0     236  sstunted         
6 months    MAL-ED           PERU                           >=155 cm               0       57     272  sstunted         
6 months    MAL-ED           PERU                           >=155 cm               1        1     272  sstunted         
6 months    MAL-ED           PERU                           <151 cm                0      149     272  sstunted         
6 months    MAL-ED           PERU                           <151 cm                1        8     272  sstunted         
6 months    MAL-ED           PERU                           [151-155) cm           0       56     272  sstunted         
6 months    MAL-ED           PERU                           [151-155) cm           1        1     272  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm               0      184     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm               1        3     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   <151 cm                0       29     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   <151 cm                1        2     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm           0       30     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm           1        1     249  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm               0      142     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        5     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                0       41     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                1        7     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       50     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        2     247  sstunted         
6 months    NIH-Birth        BANGLADESH                     >=155 cm               0       94     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     >=155 cm               1        2     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     <151 cm                0      280     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     <151 cm                1       31     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     [151-155) cm           0      128     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     [151-155) cm           1        2     537  sstunted         
6 months    NIH-Crypto       BANGLADESH                     >=155 cm               0      133     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     >=155 cm               1        1     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     <151 cm                0      394     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     <151 cm                1       17     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm           0      165     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm           1        5     715  sstunted         
6 months    PROBIT           BELARUS                        >=155 cm               0    12410   13031  sstunted         
6 months    PROBIT           BELARUS                        >=155 cm               1      121   13031  sstunted         
6 months    PROBIT           BELARUS                        <151 cm                0      118   13031  sstunted         
6 months    PROBIT           BELARUS                        <151 cm                1        3   13031  sstunted         
6 months    PROBIT           BELARUS                        [151-155) cm           0      369   13031  sstunted         
6 months    PROBIT           BELARUS                        [151-155) cm           1       10   13031  sstunted         
6 months    PROVIDE          BANGLADESH                     >=155 cm               0      127     603  sstunted         
6 months    PROVIDE          BANGLADESH                     >=155 cm               1        1     603  sstunted         
6 months    PROVIDE          BANGLADESH                     <151 cm                0      318     603  sstunted         
6 months    PROVIDE          BANGLADESH                     <151 cm                1       12     603  sstunted         
6 months    PROVIDE          BANGLADESH                     [151-155) cm           0      144     603  sstunted         
6 months    PROVIDE          BANGLADESH                     [151-155) cm           1        1     603  sstunted         
6 months    SAS-CompFeed     INDIA                          >=155 cm               0      486    1228  sstunted         
6 months    SAS-CompFeed     INDIA                          >=155 cm               1       24    1228  sstunted         
6 months    SAS-CompFeed     INDIA                          <151 cm                0      356    1228  sstunted         
6 months    SAS-CompFeed     INDIA                          <151 cm                1       65    1228  sstunted         
6 months    SAS-CompFeed     INDIA                          [151-155) cm           0      267    1228  sstunted         
6 months    SAS-CompFeed     INDIA                          [151-155) cm           1       30    1228  sstunted         
6 months    SAS-FoodSuppl    INDIA                          >=155 cm               0       72     379  sstunted         
6 months    SAS-FoodSuppl    INDIA                          >=155 cm               1        2     379  sstunted         
6 months    SAS-FoodSuppl    INDIA                          <151 cm                0      163     379  sstunted         
6 months    SAS-FoodSuppl    INDIA                          <151 cm                1       39     379  sstunted         
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm           0       91     379  sstunted         
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm           1       12     379  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               0     1239    1996  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        7    1996  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                0      304    1996  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                1        5    1996  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0      434    1996  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        7    1996  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm               0     5693    7394  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm               1      195    7394  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       <151 cm                0      399    7394  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       <151 cm                1       46    7394  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm           0     1014    7394  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm           1       47    7394  sstunted         
24 months   COHORTS          GUATEMALA                      >=155 cm               0       88     994  sstunted         
24 months   COHORTS          GUATEMALA                      >=155 cm               1       38     994  sstunted         
24 months   COHORTS          GUATEMALA                      <151 cm                0      307     994  sstunted         
24 months   COHORTS          GUATEMALA                      <151 cm                1      352     994  sstunted         
24 months   COHORTS          GUATEMALA                      [151-155) cm           0      109     994  sstunted         
24 months   COHORTS          GUATEMALA                      [151-155) cm           1      100     994  sstunted         
24 months   COHORTS          INDIA                          >=155 cm               0      497    1819  sstunted         
24 months   COHORTS          INDIA                          >=155 cm               1       55    1819  sstunted         
24 months   COHORTS          INDIA                          <151 cm                0      563    1819  sstunted         
24 months   COHORTS          INDIA                          <151 cm                1      222    1819  sstunted         
24 months   COHORTS          INDIA                          [151-155) cm           0      388    1819  sstunted         
24 months   COHORTS          INDIA                          [151-155) cm           1       94    1819  sstunted         
24 months   COHORTS          PHILIPPINES                    >=155 cm               0      425    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    >=155 cm               1       85    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    <151 cm                0      775    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    <151 cm                1      459    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    [151-155) cm           0      538    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    [151-155) cm           1      163    2445  sstunted         
24 months   JiVitA-3         BANGLADESH                     >=155 cm               0     1252    8599  sstunted         
24 months   JiVitA-3         BANGLADESH                     >=155 cm               1       62    8599  sstunted         
24 months   JiVitA-3         BANGLADESH                     <151 cm                0     3987    8599  sstunted         
24 months   JiVitA-3         BANGLADESH                     <151 cm                1     1080    8599  sstunted         
24 months   JiVitA-3         BANGLADESH                     [151-155) cm           0     2018    8599  sstunted         
24 months   JiVitA-3         BANGLADESH                     [151-155) cm           1      200    8599  sstunted         
24 months   Keneba           GAMBIA                         >=155 cm               0     1240    1602  sstunted         
24 months   Keneba           GAMBIA                         >=155 cm               1       98    1602  sstunted         
24 months   Keneba           GAMBIA                         <151 cm                0       50    1602  sstunted         
24 months   Keneba           GAMBIA                         <151 cm                1       10    1602  sstunted         
24 months   Keneba           GAMBIA                         [151-155) cm           0      180    1602  sstunted         
24 months   Keneba           GAMBIA                         [151-155) cm           1       24    1602  sstunted         
24 months   LCNI-5           MALAWI                         >=155 cm               0      330     577  sstunted         
24 months   LCNI-5           MALAWI                         >=155 cm               1       25     577  sstunted         
24 months   LCNI-5           MALAWI                         <151 cm                0       71     577  sstunted         
24 months   LCNI-5           MALAWI                         <151 cm                1       24     577  sstunted         
24 months   LCNI-5           MALAWI                         [151-155) cm           0      106     577  sstunted         
24 months   LCNI-5           MALAWI                         [151-155) cm           1       21     577  sstunted         
24 months   MAL-ED           BANGLADESH                     >=155 cm               0       21     212  sstunted         
24 months   MAL-ED           BANGLADESH                     >=155 cm               1        1     212  sstunted         
24 months   MAL-ED           BANGLADESH                     <151 cm                0      113     212  sstunted         
24 months   MAL-ED           BANGLADESH                     <151 cm                1       24     212  sstunted         
24 months   MAL-ED           BANGLADESH                     [151-155) cm           0       50     212  sstunted         
24 months   MAL-ED           BANGLADESH                     [151-155) cm           1        3     212  sstunted         
24 months   MAL-ED           BRAZIL                         >=155 cm               0       95     169  sstunted         
24 months   MAL-ED           BRAZIL                         >=155 cm               1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         <151 cm                0       43     169  sstunted         
24 months   MAL-ED           BRAZIL                         <151 cm                1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         [151-155) cm           0       30     169  sstunted         
24 months   MAL-ED           BRAZIL                         [151-155) cm           1        1     169  sstunted         
24 months   MAL-ED           INDIA                          >=155 cm               0       50     226  sstunted         
24 months   MAL-ED           INDIA                          >=155 cm               1        3     226  sstunted         
24 months   MAL-ED           INDIA                          <151 cm                0       86     226  sstunted         
24 months   MAL-ED           INDIA                          <151 cm                1       24     226  sstunted         
24 months   MAL-ED           INDIA                          [151-155) cm           0       60     226  sstunted         
24 months   MAL-ED           INDIA                          [151-155) cm           1        3     226  sstunted         
24 months   MAL-ED           NEPAL                          >=155 cm               0       38     228  sstunted         
24 months   MAL-ED           NEPAL                          >=155 cm               1        0     228  sstunted         
24 months   MAL-ED           NEPAL                          <151 cm                0      122     228  sstunted         
24 months   MAL-ED           NEPAL                          <151 cm                1        7     228  sstunted         
24 months   MAL-ED           NEPAL                          [151-155) cm           0       61     228  sstunted         
24 months   MAL-ED           NEPAL                          [151-155) cm           1        0     228  sstunted         
24 months   MAL-ED           PERU                           >=155 cm               0       44     201  sstunted         
24 months   MAL-ED           PERU                           >=155 cm               1        2     201  sstunted         
24 months   MAL-ED           PERU                           <151 cm                0      103     201  sstunted         
24 months   MAL-ED           PERU                           <151 cm                1       12     201  sstunted         
24 months   MAL-ED           PERU                           [151-155) cm           0       39     201  sstunted         
24 months   MAL-ED           PERU                           [151-155) cm           1        1     201  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm               0      162     234  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm               1       18     234  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   <151 cm                0       23     234  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   <151 cm                1        4     234  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm           0       22     234  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm           1        5     234  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm               0       95     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm               1       31     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                0       19     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                1       21     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       30     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1       18     214  sstunted         
24 months   NIH-Birth        BANGLADESH                     >=155 cm               0       71     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     >=155 cm               1        6     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     <151 cm                0      177     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     <151 cm                1       75     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     [151-155) cm           0       86     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     [151-155) cm           1       14     429  sstunted         
24 months   NIH-Crypto       BANGLADESH                     >=155 cm               0       99     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     >=155 cm               1        1     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     <151 cm                0      254     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     <151 cm                1       33     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm           0      125     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm           1        2     514  sstunted         
24 months   PROBIT           BELARUS                        >=155 cm               0     3801    4005  sstunted         
24 months   PROBIT           BELARUS                        >=155 cm               1       58    4005  sstunted         
24 months   PROBIT           BELARUS                        <151 cm                0       30    4005  sstunted         
24 months   PROBIT           BELARUS                        <151 cm                1        5    4005  sstunted         
24 months   PROBIT           BELARUS                        [151-155) cm           0      109    4005  sstunted         
24 months   PROBIT           BELARUS                        [151-155) cm           1        2    4005  sstunted         
24 months   PROVIDE          BANGLADESH                     >=155 cm               0      118     577  sstunted         
24 months   PROVIDE          BANGLADESH                     >=155 cm               1        4     577  sstunted         
24 months   PROVIDE          BANGLADESH                     <151 cm                0      276     577  sstunted         
24 months   PROVIDE          BANGLADESH                     <151 cm                1       39     577  sstunted         
24 months   PROVIDE          BANGLADESH                     [151-155) cm           0      131     577  sstunted         
24 months   PROVIDE          BANGLADESH                     [151-155) cm           1        9     577  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               0        3       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                1        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0        2       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        0       6  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm               0      991    1374  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm               1       93    1374  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       <151 cm                0       74    1374  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       <151 cm                1       24    1374  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm           0      159    1374  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm           1       33    1374  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
