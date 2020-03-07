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

**Outcome Variable:** wast_rec90d

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

agecat        studyid          country                        mhtcm           wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  -------------  ------------  -------  -----
0-24 months   COHORTS          GUATEMALA                      >=155 cm                  0       25    373
0-24 months   COHORTS          GUATEMALA                      >=155 cm                  1       25    373
0-24 months   COHORTS          GUATEMALA                      <151 cm                   0      144    373
0-24 months   COHORTS          GUATEMALA                      <151 cm                   1      112    373
0-24 months   COHORTS          GUATEMALA                      [151-155) cm              0       37    373
0-24 months   COHORTS          GUATEMALA                      [151-155) cm              1       30    373
0-24 months   COHORTS          INDIA                          >=155 cm                  0      143    700
0-24 months   COHORTS          INDIA                          >=155 cm                  1       66    700
0-24 months   COHORTS          INDIA                          <151 cm                   0      240    700
0-24 months   COHORTS          INDIA                          <151 cm                   1       69    700
0-24 months   COHORTS          INDIA                          [151-155) cm              0      138    700
0-24 months   COHORTS          INDIA                          [151-155) cm              1       44    700
0-24 months   COHORTS          PHILIPPINES                    >=155 cm                  0      108   1689
0-24 months   COHORTS          PHILIPPINES                    >=155 cm                  1      213   1689
0-24 months   COHORTS          PHILIPPINES                    <151 cm                   0      380   1689
0-24 months   COHORTS          PHILIPPINES                    <151 cm                   1      553   1689
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm              0      176   1689
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm              1      259   1689
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                  0        1     32
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                  1        2     32
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm                   0       10     32
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm                   1       10     32
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm              0        7     32
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm              1        2     32
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0      661    794
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1       31    794
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       30    794
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                   1        1    794
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0       68    794
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1        3    794
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm                  0      593   7538
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm                  1      514   7538
0-24 months   JiVitA-3         BANGLADESH                     <151 cm                   0     2670   7538
0-24 months   JiVitA-3         BANGLADESH                     <151 cm                   1     1858   7538
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm              0     1089   7538
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm              1      814   7538
0-24 months   Keneba           GAMBIA                         >=155 cm                  0      517   1635
0-24 months   Keneba           GAMBIA                         >=155 cm                  1      842   1635
0-24 months   Keneba           GAMBIA                         <151 cm                   0       33   1635
0-24 months   Keneba           GAMBIA                         <151 cm                   1       29   1635
0-24 months   Keneba           GAMBIA                         [151-155) cm              0       79   1635
0-24 months   Keneba           GAMBIA                         [151-155) cm              1      135   1635
0-24 months   LCNI-5           MALAWI                         >=155 cm                  0       40     78
0-24 months   LCNI-5           MALAWI                         >=155 cm                  1        9     78
0-24 months   LCNI-5           MALAWI                         <151 cm                   0        8     78
0-24 months   LCNI-5           MALAWI                         <151 cm                   1        1     78
0-24 months   LCNI-5           MALAWI                         [151-155) cm              0       17     78
0-24 months   LCNI-5           MALAWI                         [151-155) cm              1        3     78
0-24 months   MAL-ED           BANGLADESH                     >=155 cm                  0        4    122
0-24 months   MAL-ED           BANGLADESH                     >=155 cm                  1        5    122
0-24 months   MAL-ED           BANGLADESH                     <151 cm                   0       32    122
0-24 months   MAL-ED           BANGLADESH                     <151 cm                   1       52    122
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm              0        7    122
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm              1       22    122
0-24 months   MAL-ED           BRAZIL                         >=155 cm                  0        5     24
0-24 months   MAL-ED           BRAZIL                         >=155 cm                  1       13     24
0-24 months   MAL-ED           BRAZIL                         <151 cm                   0        1     24
0-24 months   MAL-ED           BRAZIL                         <151 cm                   1        4     24
0-24 months   MAL-ED           BRAZIL                         [151-155) cm              0        0     24
0-24 months   MAL-ED           BRAZIL                         [151-155) cm              1        1     24
0-24 months   MAL-ED           INDIA                          >=155 cm                  0       12    178
0-24 months   MAL-ED           INDIA                          >=155 cm                  1       18    178
0-24 months   MAL-ED           INDIA                          <151 cm                   0       44    178
0-24 months   MAL-ED           INDIA                          <151 cm                   1       50    178
0-24 months   MAL-ED           INDIA                          [151-155) cm              0       14    178
0-24 months   MAL-ED           INDIA                          [151-155) cm              1       40    178
0-24 months   MAL-ED           NEPAL                          >=155 cm                  0        3     98
0-24 months   MAL-ED           NEPAL                          >=155 cm                  1        9     98
0-24 months   MAL-ED           NEPAL                          <151 cm                   0       14     98
0-24 months   MAL-ED           NEPAL                          <151 cm                   1       46     98
0-24 months   MAL-ED           NEPAL                          [151-155) cm              0        3     98
0-24 months   MAL-ED           NEPAL                          [151-155) cm              1       23     98
0-24 months   MAL-ED           PERU                           >=155 cm                  0        0     35
0-24 months   MAL-ED           PERU                           >=155 cm                  1        3     35
0-24 months   MAL-ED           PERU                           <151 cm                   0        4     35
0-24 months   MAL-ED           PERU                           <151 cm                   1       24     35
0-24 months   MAL-ED           PERU                           [151-155) cm              0        2     35
0-24 months   MAL-ED           PERU                           [151-155) cm              1        2     35
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                  0       10     80
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                  1       47     80
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                   0        4     80
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                   1       13     80
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm              0        0     80
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm              1        6     80
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0        1     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       21     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                   0        2     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       10     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0        6     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       11     51
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm                  0       32    421
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm                  1       39    421
0-24 months   NIH-Birth        BANGLADESH                     <151 cm                   0      128    421
0-24 months   NIH-Birth        BANGLADESH                     <151 cm                   1      136    421
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm              0       42    421
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm              1       44    421
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                  0       17    309
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                  1       33    309
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm                   0       72    309
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm                   1      117    309
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm              0       27    309
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm              1       43    309
0-24 months   PROBIT           BELARUS                        >=155 cm                  0      403   3943
0-24 months   PROBIT           BELARUS                        >=155 cm                  1     3389   3943
0-24 months   PROBIT           BELARUS                        <151 cm                   0        2   3943
0-24 months   PROBIT           BELARUS                        <151 cm                   1       33   3943
0-24 months   PROBIT           BELARUS                        [151-155) cm              0       19   3943
0-24 months   PROBIT           BELARUS                        [151-155) cm              1       97   3943
0-24 months   PROVIDE          BANGLADESH                     >=155 cm                  0       16    303
0-24 months   PROVIDE          BANGLADESH                     >=155 cm                  1       32    303
0-24 months   PROVIDE          BANGLADESH                     <151 cm                   0       73    303
0-24 months   PROVIDE          BANGLADESH                     <151 cm                   1      104    303
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm              0       36    303
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm              1       42    303
0-24 months   SAS-CompFeed     INDIA                          >=155 cm                  0      151    744
0-24 months   SAS-CompFeed     INDIA                          >=155 cm                  1      124    744
0-24 months   SAS-CompFeed     INDIA                          <151 cm                   0      187    744
0-24 months   SAS-CompFeed     INDIA                          <151 cm                   1      104    744
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm              0      120    744
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm              1       58    744
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                  0       36    231
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                  1        2    231
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm                   0      119    231
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm                   1        7    231
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm              0       63    231
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm              1        4    231
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      160    705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      285    705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       45    705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       55    705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       57    705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1      103    705
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                  0      865   2698
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1262   2698
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                   0       72   2698
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                   1      108   2698
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm              0      153   2698
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm              1      238   2698
0-6 months    COHORTS          GUATEMALA                      >=155 cm                  0        8    212
0-6 months    COHORTS          GUATEMALA                      >=155 cm                  1       25    212
0-6 months    COHORTS          GUATEMALA                      <151 cm                   0       37    212
0-6 months    COHORTS          GUATEMALA                      <151 cm                   1      106    212
0-6 months    COHORTS          GUATEMALA                      [151-155) cm              0        8    212
0-6 months    COHORTS          GUATEMALA                      [151-155) cm              1       28    212
0-6 months    COHORTS          INDIA                          >=155 cm                  0       87    471
0-6 months    COHORTS          INDIA                          >=155 cm                  1       66    471
0-6 months    COHORTS          INDIA                          <151 cm                   0      120    471
0-6 months    COHORTS          INDIA                          <151 cm                   1       69    471
0-6 months    COHORTS          INDIA                          [151-155) cm              0       85    471
0-6 months    COHORTS          INDIA                          [151-155) cm              1       44    471
0-6 months    COHORTS          PHILIPPINES                    >=155 cm                  0       42    752
0-6 months    COHORTS          PHILIPPINES                    >=155 cm                  1      121    752
0-6 months    COHORTS          PHILIPPINES                    <151 cm                   0       98    752
0-6 months    COHORTS          PHILIPPINES                    <151 cm                   1      289    752
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm              0       58    752
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm              1      144    752
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm                  0        0      7
0-6 months    Guatemala BSC    GUATEMALA                      >=155 cm                  1        0      7
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm                   0        2      7
0-6 months    Guatemala BSC    GUATEMALA                      <151 cm                   1        3      7
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm              0        2      7
0-6 months    Guatemala BSC    GUATEMALA                      [151-155) cm              1        0      7
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm                  0      230   4714
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm                  1      514   4714
0-6 months    JiVitA-3         BANGLADESH                     <151 cm                   0      899   4714
0-6 months    JiVitA-3         BANGLADESH                     <151 cm                   1     1858   4714
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm              0      399   4714
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm              1      814   4714
0-6 months    Keneba           GAMBIA                         >=155 cm                  0      122    658
0-6 months    Keneba           GAMBIA                         >=155 cm                  1      426    658
0-6 months    Keneba           GAMBIA                         <151 cm                   0       13    658
0-6 months    Keneba           GAMBIA                         <151 cm                   1       18    658
0-6 months    Keneba           GAMBIA                         [151-155) cm              0       11    658
0-6 months    Keneba           GAMBIA                         [151-155) cm              1       68    658
0-6 months    LCNI-5           MALAWI                         >=155 cm                  0        2      4
0-6 months    LCNI-5           MALAWI                         >=155 cm                  1        0      4
0-6 months    LCNI-5           MALAWI                         <151 cm                   0        0      4
0-6 months    LCNI-5           MALAWI                         <151 cm                   1        0      4
0-6 months    LCNI-5           MALAWI                         [151-155) cm              0        2      4
0-6 months    LCNI-5           MALAWI                         [151-155) cm              1        0      4
0-6 months    MAL-ED           BANGLADESH                     >=155 cm                  0        2     61
0-6 months    MAL-ED           BANGLADESH                     >=155 cm                  1        4     61
0-6 months    MAL-ED           BANGLADESH                     <151 cm                   0        9     61
0-6 months    MAL-ED           BANGLADESH                     <151 cm                   1       30     61
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm              0        1     61
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm              1       15     61
0-6 months    MAL-ED           BRAZIL                         >=155 cm                  0        1     15
0-6 months    MAL-ED           BRAZIL                         >=155 cm                  1       11     15
0-6 months    MAL-ED           BRAZIL                         <151 cm                   0        0     15
0-6 months    MAL-ED           BRAZIL                         <151 cm                   1        2     15
0-6 months    MAL-ED           BRAZIL                         [151-155) cm              0        0     15
0-6 months    MAL-ED           BRAZIL                         [151-155) cm              1        1     15
0-6 months    MAL-ED           INDIA                          >=155 cm                  0        6     83
0-6 months    MAL-ED           INDIA                          >=155 cm                  1       12     83
0-6 months    MAL-ED           INDIA                          <151 cm                   0       15     83
0-6 months    MAL-ED           INDIA                          <151 cm                   1       21     83
0-6 months    MAL-ED           INDIA                          [151-155) cm              0        5     83
0-6 months    MAL-ED           INDIA                          [151-155) cm              1       24     83
0-6 months    MAL-ED           NEPAL                          >=155 cm                  0        2     48
0-6 months    MAL-ED           NEPAL                          >=155 cm                  1        5     48
0-6 months    MAL-ED           NEPAL                          <151 cm                   0        4     48
0-6 months    MAL-ED           NEPAL                          <151 cm                   1       21     48
0-6 months    MAL-ED           NEPAL                          [151-155) cm              0        3     48
0-6 months    MAL-ED           NEPAL                          [151-155) cm              1       13     48
0-6 months    MAL-ED           PERU                           >=155 cm                  0        0     11
0-6 months    MAL-ED           PERU                           >=155 cm                  1        1     11
0-6 months    MAL-ED           PERU                           <151 cm                   0        0     11
0-6 months    MAL-ED           PERU                           <151 cm                   1        9     11
0-6 months    MAL-ED           PERU                           [151-155) cm              0        0     11
0-6 months    MAL-ED           PERU                           [151-155) cm              1        1     11
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm                  0        4     29
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm                  1       16     29
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm                   0        1     29
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm                   1        5     29
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm              0        0     29
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm              1        3     29
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1        7     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                   0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        5     14
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm                  0       10    223
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm                  1       29    223
0-6 months    NIH-Birth        BANGLADESH                     <151 cm                   0       42    223
0-6 months    NIH-Birth        BANGLADESH                     <151 cm                   1       97    223
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm              0       12    223
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm              1       33    223
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm                  0        2    196
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm                  1       31    196
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm                   0       12    196
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm                   1      107    196
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm              0        6    196
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm              1       38    196
0-6 months    PROBIT           BELARUS                        >=155 cm                  0      317   3818
0-6 months    PROBIT           BELARUS                        >=155 cm                  1     3357   3818
0-6 months    PROBIT           BELARUS                        <151 cm                   0        0   3818
0-6 months    PROBIT           BELARUS                        <151 cm                   1       32   3818
0-6 months    PROBIT           BELARUS                        [151-155) cm              0       15   3818
0-6 months    PROBIT           BELARUS                        [151-155) cm              1       97   3818
0-6 months    PROVIDE          BANGLADESH                     >=155 cm                  0        6    180
0-6 months    PROVIDE          BANGLADESH                     >=155 cm                  1       27    180
0-6 months    PROVIDE          BANGLADESH                     <151 cm                   0       22    180
0-6 months    PROVIDE          BANGLADESH                     <151 cm                   1       81    180
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm              0        8    180
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm              1       36    180
0-6 months    SAS-CompFeed     INDIA                          >=155 cm                  0       57    306
0-6 months    SAS-CompFeed     INDIA                          >=155 cm                  1       75    306
0-6 months    SAS-CompFeed     INDIA                          <151 cm                   0       54    306
0-6 months    SAS-CompFeed     INDIA                          <151 cm                   1       57    306
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm              0       35    306
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm              1       28    306
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm                  0       11     75
0-6 months    SAS-FoodSuppl    INDIA                          >=155 cm                  1        0     75
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm                   0       42     75
0-6 months    SAS-FoodSuppl    INDIA                          <151 cm                   1        0     75
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm              0       22     75
0-6 months    SAS-FoodSuppl    INDIA                          [151-155) cm              1        0     75
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0       61    336
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      154    336
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       14    336
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       34    336
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       24    336
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       49    336
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm                  0      200   1793
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1202   1793
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm                   0       17   1793
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm                   1      106   1793
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm              0       38   1793
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm              1      230   1793
6-24 months   COHORTS          GUATEMALA                      >=155 cm                  0       17    161
6-24 months   COHORTS          GUATEMALA                      >=155 cm                  1        0    161
6-24 months   COHORTS          GUATEMALA                      <151 cm                   0      107    161
6-24 months   COHORTS          GUATEMALA                      <151 cm                   1        6    161
6-24 months   COHORTS          GUATEMALA                      [151-155) cm              0       29    161
6-24 months   COHORTS          GUATEMALA                      [151-155) cm              1        2    161
6-24 months   COHORTS          INDIA                          >=155 cm                  0       56    229
6-24 months   COHORTS          INDIA                          >=155 cm                  1        0    229
6-24 months   COHORTS          INDIA                          <151 cm                   0      120    229
6-24 months   COHORTS          INDIA                          <151 cm                   1        0    229
6-24 months   COHORTS          INDIA                          [151-155) cm              0       53    229
6-24 months   COHORTS          INDIA                          [151-155) cm              1        0    229
6-24 months   COHORTS          PHILIPPINES                    >=155 cm                  0       66    937
6-24 months   COHORTS          PHILIPPINES                    >=155 cm                  1       92    937
6-24 months   COHORTS          PHILIPPINES                    <151 cm                   0      282    937
6-24 months   COHORTS          PHILIPPINES                    <151 cm                   1      264    937
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm              0      118    937
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm              1      115    937
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                  0        1     25
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                  1        2     25
6-24 months   Guatemala BSC    GUATEMALA                      <151 cm                   0        8     25
6-24 months   Guatemala BSC    GUATEMALA                      <151 cm                   1        7     25
6-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm              0        5     25
6-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm              1        2     25
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0      661    794
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1       31    794
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       30    794
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                   1        1    794
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0       68    794
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1        3    794
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm                  0      363   2824
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm                  1        0   2824
6-24 months   JiVitA-3         BANGLADESH                     <151 cm                   0     1771   2824
6-24 months   JiVitA-3         BANGLADESH                     <151 cm                   1        0   2824
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm              0      690   2824
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm              1        0   2824
6-24 months   Keneba           GAMBIA                         >=155 cm                  0      395    977
6-24 months   Keneba           GAMBIA                         >=155 cm                  1      416    977
6-24 months   Keneba           GAMBIA                         <151 cm                   0       20    977
6-24 months   Keneba           GAMBIA                         <151 cm                   1       11    977
6-24 months   Keneba           GAMBIA                         [151-155) cm              0       68    977
6-24 months   Keneba           GAMBIA                         [151-155) cm              1       67    977
6-24 months   LCNI-5           MALAWI                         >=155 cm                  0       38     74
6-24 months   LCNI-5           MALAWI                         >=155 cm                  1        9     74
6-24 months   LCNI-5           MALAWI                         <151 cm                   0        8     74
6-24 months   LCNI-5           MALAWI                         <151 cm                   1        1     74
6-24 months   LCNI-5           MALAWI                         [151-155) cm              0       15     74
6-24 months   LCNI-5           MALAWI                         [151-155) cm              1        3     74
6-24 months   MAL-ED           BANGLADESH                     >=155 cm                  0        2     61
6-24 months   MAL-ED           BANGLADESH                     >=155 cm                  1        1     61
6-24 months   MAL-ED           BANGLADESH                     <151 cm                   0       23     61
6-24 months   MAL-ED           BANGLADESH                     <151 cm                   1       22     61
6-24 months   MAL-ED           BANGLADESH                     [151-155) cm              0        6     61
6-24 months   MAL-ED           BANGLADESH                     [151-155) cm              1        7     61
6-24 months   MAL-ED           BRAZIL                         >=155 cm                  0        4      9
6-24 months   MAL-ED           BRAZIL                         >=155 cm                  1        2      9
6-24 months   MAL-ED           BRAZIL                         <151 cm                   0        1      9
6-24 months   MAL-ED           BRAZIL                         <151 cm                   1        2      9
6-24 months   MAL-ED           BRAZIL                         [151-155) cm              0        0      9
6-24 months   MAL-ED           BRAZIL                         [151-155) cm              1        0      9
6-24 months   MAL-ED           INDIA                          >=155 cm                  0        6     95
6-24 months   MAL-ED           INDIA                          >=155 cm                  1        6     95
6-24 months   MAL-ED           INDIA                          <151 cm                   0       29     95
6-24 months   MAL-ED           INDIA                          <151 cm                   1       29     95
6-24 months   MAL-ED           INDIA                          [151-155) cm              0        9     95
6-24 months   MAL-ED           INDIA                          [151-155) cm              1       16     95
6-24 months   MAL-ED           NEPAL                          >=155 cm                  0        1     50
6-24 months   MAL-ED           NEPAL                          >=155 cm                  1        4     50
6-24 months   MAL-ED           NEPAL                          <151 cm                   0       10     50
6-24 months   MAL-ED           NEPAL                          <151 cm                   1       25     50
6-24 months   MAL-ED           NEPAL                          [151-155) cm              0        0     50
6-24 months   MAL-ED           NEPAL                          [151-155) cm              1       10     50
6-24 months   MAL-ED           PERU                           >=155 cm                  0        0     24
6-24 months   MAL-ED           PERU                           >=155 cm                  1        2     24
6-24 months   MAL-ED           PERU                           <151 cm                   0        4     24
6-24 months   MAL-ED           PERU                           <151 cm                   1       15     24
6-24 months   MAL-ED           PERU                           [151-155) cm              0        2     24
6-24 months   MAL-ED           PERU                           [151-155) cm              1        1     24
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                  0        6     51
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                  1       31     51
6-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                   0        3     51
6-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                   1        8     51
6-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm              0        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm              1        3     51
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0        1     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       14     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                   0        2     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        9     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0        5     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        6     37
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm                  0       22    198
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm                  1       10    198
6-24 months   NIH-Birth        BANGLADESH                     <151 cm                   0       86    198
6-24 months   NIH-Birth        BANGLADESH                     <151 cm                   1       39    198
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm              0       30    198
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm              1       11    198
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                  0       15    113
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                  1        2    113
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm                   0       60    113
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm                   1       10    113
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm              0       21    113
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm              1        5    113
6-24 months   PROBIT           BELARUS                        >=155 cm                  0       86    125
6-24 months   PROBIT           BELARUS                        >=155 cm                  1       32    125
6-24 months   PROBIT           BELARUS                        <151 cm                   0        2    125
6-24 months   PROBIT           BELARUS                        <151 cm                   1        1    125
6-24 months   PROBIT           BELARUS                        [151-155) cm              0        4    125
6-24 months   PROBIT           BELARUS                        [151-155) cm              1        0    125
6-24 months   PROVIDE          BANGLADESH                     >=155 cm                  0       10    123
6-24 months   PROVIDE          BANGLADESH                     >=155 cm                  1        5    123
6-24 months   PROVIDE          BANGLADESH                     <151 cm                   0       51    123
6-24 months   PROVIDE          BANGLADESH                     <151 cm                   1       23    123
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm              0       28    123
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm              1        6    123
6-24 months   SAS-CompFeed     INDIA                          >=155 cm                  0       94    438
6-24 months   SAS-CompFeed     INDIA                          >=155 cm                  1       49    438
6-24 months   SAS-CompFeed     INDIA                          <151 cm                   0      133    438
6-24 months   SAS-CompFeed     INDIA                          <151 cm                   1       47    438
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm              0       85    438
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm              1       30    438
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                  0       25    156
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                  1        2    156
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm                   0       77    156
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm                   1        7    156
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm              0       41    156
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm              1        4    156
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0       99    369
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      131    369
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       31    369
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       21    369
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       33    369
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       54    369
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                  0      665    905
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                  1       60    905
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                   0       55    905
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                   1        2    905
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm              0      115    905
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm              1        8    905


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
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

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




# Results Detail

## Results Plots
![](/tmp/67d03a4d-179f-4107-a446-bdb87cde6612/9e142034-cc08-4bae-8be8-b0c1d9077103/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/67d03a4d-179f-4107-a446-bdb87cde6612/9e142034-cc08-4bae-8be8-b0c1d9077103/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/67d03a4d-179f-4107-a446-bdb87cde6612/9e142034-cc08-4bae-8be8-b0c1d9077103/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/67d03a4d-179f-4107-a446-bdb87cde6612/9e142034-cc08-4bae-8be8-b0c1d9077103/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.4707893   0.3221240   0.6194546
0-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.4369806   0.3737225   0.5002387
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.4414137   0.3174626   0.5653649
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.3155209   0.2524056   0.3786361
0-24 months   COHORTS          INDIA                          <151 cm              NA                0.2261280   0.1796761   0.2725800
0-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.2472592   0.1791124   0.3154060
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.6592584   0.6031452   0.7153715
0-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.5962547   0.5640888   0.6284206
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.5913341   0.5408068   0.6418615
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.4563384   0.4262484   0.4864284
0-24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                0.4125328   0.3981349   0.4269307
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.4265765   0.4039739   0.4491791
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.6194079   0.5917942   0.6470217
0-24 months   Keneba           GAMBIA                         <151 cm              NA                0.4765157   0.3389121   0.6141193
0-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.6341520   0.5618487   0.7064553
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.6260512   0.3873756   0.8647269
0-24 months   MAL-ED           INDIA                          <151 cm              NA                0.5257269   0.4171883   0.6342656
0-24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.7385245   0.5982535   0.8787955
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.5570805   0.4260694   0.6880917
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.5153647   0.4517608   0.5789686
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5292228   0.4185219   0.6399237
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.6760988   0.5389510   0.8132466
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.6215755   0.5530200   0.6901311
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.6345981   0.5139155   0.7552806
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.6736413   0.5309416   0.8163409
0-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.5854279   0.5086415   0.6622143
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.5347755   0.4266245   0.6429265
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.4496113   0.3863895   0.5128332
0-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.3591276   0.3025214   0.4157339
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.3258051   0.2537330   0.3978771
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.6418753   0.5943574   0.6893932
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.5446066   0.4455052   0.6437079
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6454700   0.5639021   0.7270379
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.5927458   0.5717613   0.6137304
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.6033495   0.5299836   0.6767154
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.6109043   0.5637037   0.6581050
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.7575758   0.6103183   0.9048332
0-6 months    COHORTS          GUATEMALA                      <151 cm              NA                0.7412587   0.6689680   0.8135495
0-6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                0.7777778   0.6475058   0.9080497
0-6 months    COHORTS          INDIA                          >=155 cm             NA                0.4285445   0.3490637   0.5080254
0-6 months    COHORTS          INDIA                          <151 cm              NA                0.3656877   0.2966438   0.4347316
0-6 months    COHORTS          INDIA                          [151-155) cm         NA                0.3423637   0.2598334   0.4248941
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.7459835   0.6797958   0.8121711
0-6 months    COHORTS          PHILIPPINES                    <151 cm              NA                0.7454087   0.7016259   0.7891916
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                0.7112447   0.6465803   0.7759090
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.6870175   0.6532932   0.7207418
0-6 months    JiVitA-3         BANGLADESH                     <151 cm              NA                0.6754218   0.6578298   0.6930138
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.6703668   0.6432406   0.6974931
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.7780605   0.7436165   0.8125046
0-6 months    Keneba           GAMBIA                         <151 cm              NA                0.5902993   0.4458270   0.7347716
0-6 months    Keneba           GAMBIA                         [151-155) cm         NA                0.8543215   0.7756265   0.9330164
0-6 months    MAL-ED           INDIA                          >=155 cm             NA                0.6666667   0.4364044   0.8969290
0-6 months    MAL-ED           INDIA                          <151 cm              NA                0.5833333   0.4130521   0.7536146
0-6 months    MAL-ED           INDIA                          [151-155) cm         NA                0.8275862   0.6950274   0.9601450
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.7564137   0.6152585   0.8975690
0-6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                0.7018237   0.6250658   0.7785816
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7434600   0.6106403   0.8762798
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                0.8181818   0.6832135   0.9531501
0-6 months    PROVIDE          BANGLADESH                     <151 cm              NA                0.7864078   0.7080119   0.8648036
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                0.8181818   0.7125996   0.9237640
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.5696190   0.4828235   0.6564146
0-6 months    SAS-CompFeed     INDIA                          <151 cm              NA                0.5135241   0.4199486   0.6070995
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                0.4522471   0.3261169   0.5783773
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.7198750   0.6584933   0.7812568
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.7347050   0.6016928   0.8677172
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6852273   0.5743479   0.7961067
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.8573188   0.8390666   0.8755711
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.8594739   0.7983555   0.9205923
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.8532748   0.8118149   0.8947347
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.5818040   0.4972854   0.6663227
6-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.4845379   0.4404978   0.5285781
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.4951059   0.4271671   0.5630447
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.5124400   0.4758589   0.5490211
6-24 months   Keneba           GAMBIA                         <151 cm              NA                0.3285811   0.1301201   0.5270421
6-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.4833335   0.3918999   0.5747672
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.5000000   0.1136329   0.8863671
6-24 months   MAL-ED           INDIA                          <151 cm              NA                0.5000000   0.3633864   0.6366136
6-24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.6400000   0.4178946   0.8621054
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2479163   0.0579153   0.4379174
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.2993574   0.2178085   0.3809062
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2462617   0.1077060   0.3848173
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.3333333   0.0871379   0.5795287
6-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.3108108   0.2023701   0.4192516
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1764706   0.0429533   0.3099879
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.3354131   0.2536070   0.4172191
6-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.2601459   0.1946338   0.3256579
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.2614741   0.1774722   0.3454761
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.5670314   0.5015687   0.6324942
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.3919288   0.2493833   0.5344744
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6059631   0.4952712   0.7166549


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4477212   0.3954919   0.4999504
0-24 months   COHORTS          INDIA                          NA                   NA                0.2557143   0.2227697   0.2886589
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4226585   0.4115120   0.4338051
0-24 months   Keneba           GAMBIA                         NA                   NA                0.6152905   0.5899139   0.6406671
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6067416   0.5268346   0.6866486
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.6245955   0.5705077   0.6786833
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.5874587   0.5306185   0.6442990
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3844086   0.3477135   0.4211037
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6283688   0.5905159   0.6662217
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.5959970   0.5774555   0.6145386
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.7500000   0.6917133   0.8082867
0-6 months    COHORTS          INDIA                          NA                   NA                0.3800425   0.3361595   0.4239255
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.6758591   0.6624976   0.6892206
0-6 months    Keneba           GAMBIA                         NA                   NA                0.7781155   0.7468871   0.8093439
0-6 months    MAL-ED           INDIA                          NA                   NA                0.6867470   0.5837430   0.7897510
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.8000000   0.7425836   0.8574164
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.5228758   0.4664267   0.5793250
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7053571   0.6558827   0.7548316
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.8577803   0.8416785   0.8738820
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984
6-24 months   Keneba           GAMBIA                         NA                   NA                0.5056295   0.4721671   0.5390918
6-24 months   MAL-ED           INDIA                          NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2876712   0.2441703   0.3311721
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5582656   0.5057575   0.6107737


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.9281870   0.6555007   1.3143100
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.9376035   0.6143136   1.4310285
0-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          0.7166817   0.5382161   0.9543241
0-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          0.7836540   0.5571938   1.1021544
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.9044325   0.8177292   1.0003290
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8969687   0.7950304   1.0119775
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          0.9040063   0.8390238   0.9740217
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          0.9347811   0.8589743   1.0172780
0-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          0.7693083   0.5743970   1.0303594
0-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0238035   0.9058944   1.1570593
0-24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          0.8397507   0.5439293   1.2964575
0-24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          1.1796550   0.7701488   1.8069054
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9251170   0.7090671   1.2069966
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9499933   0.6935319   1.3012916
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          0.9193561   0.7294386   1.1587207
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          0.9386174   0.7106193   1.2397673
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          0.8690500   0.6769646   1.1156385
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          0.7938580   0.5921266   1.0643173
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          0.7987512   0.6467080   0.9865404
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          0.7246371   0.5576203   0.9416782
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.8484616   0.6969717   1.0328786
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0056003   0.8685271   1.1643067
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0178890   0.8968291   1.1552904
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0306346   0.9466237   1.1221012
0-6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.9784615   0.7872206   1.2161610
0-6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.0266667   0.7943188   1.3269791
0-6 months    COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          <151 cm              >=155 cm          0.8533249   0.6548223   1.1120015
0-6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          0.7988989   0.5893372   1.0829783
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.9992296   0.8982998   1.1114994
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9534322   0.8396520   1.0826307
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          0.9831217   0.9299957   1.0392825
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          0.9757639   0.9156274   1.0398500
0-6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          0.7586805   0.5917995   0.9726200
0-6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0980142   0.9917792   1.2156286
0-6 months    MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA                          <151 cm              >=155 cm          0.8750000   0.5566840   1.3753315
0-6 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          1.2413793   0.8483148   1.8165693
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9278305   0.7470946   1.1522897
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9828748   0.7589311   1.2728994
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          0.9611650   0.7926666   1.1654815
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.0000000   0.8110389   1.2329865
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          0.9015220   0.7104596   1.1439663
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          0.7939466   0.5776735   1.0911894
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.0206008   0.8356502   1.2464856
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          0.9518698   0.7928376   1.1428016
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0025138   0.9307756   1.0797810
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9952829   0.9438349   1.0495354
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.8328198   0.7015384   0.9886685
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8509840   0.6965959   1.0395894
6-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          0.6412089   0.3490158   1.1780234
6-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9432002   0.7705323   1.1545611
6-24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          1.0000000   0.4406005   2.2696295
6-24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          1.2800000   0.5486876   2.9860342
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.2074935   0.5337330   2.7317789
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9933257   0.3865398   2.5526378
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          0.9324324   0.4118850   2.1108568
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          0.5294118   0.1839182   1.5239213
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          0.7755985   0.5459725   1.1018009
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          0.7795586   0.5212938   1.1657756
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.6911942   0.4718939   1.0124086
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0686587   0.8609789   1.3264335


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0230682   -0.1615759    0.1154396
0-24 months   COHORTS          INDIA                          >=155 cm             NA                -0.0598066   -0.1118370   -0.0077761
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0523904   -0.1028198   -0.0019610
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0336799   -0.0614688   -0.0058910
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0041174   -0.0158661    0.0076312
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0193096   -0.2320034    0.1933841
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0368905   -0.1551606    0.0813796
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0515033   -0.1771596    0.0741529
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0861825   -0.2183976    0.0460326
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0652027   -0.1143364   -0.0160690
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0135065   -0.0427310    0.0157180
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0032512   -0.0062473    0.0127497
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.0075758   -0.1429684    0.1278169
0-6 months    COHORTS          INDIA                          >=155 cm             NA                -0.0485021   -0.1132922    0.0162881
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0092813   -0.0685004    0.0499378
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0111583   -0.0423142    0.0199975
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0000550   -0.0130742    0.0131842
0-6 months    MAL-ED           INDIA                          >=155 cm             NA                 0.0200803   -0.1814975    0.2216581
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0434092   -0.1727317    0.0859132
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0181818   -0.1399756    0.1036120
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0467432   -0.1124821    0.0189956
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0145179   -0.0519433    0.0229075
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0004614   -0.0079938    0.0089167
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0791360   -0.1560087   -0.0022632
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0068105   -0.0223007    0.0086796
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0368421   -0.3162378    0.3899220
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0551140   -0.1162461    0.2264740
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0569106   -0.2862152    0.1723941
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0477418   -0.1132185    0.0177348
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0087659   -0.0503329    0.0328012


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0515235   -0.4111771    0.2164685
0-24 months   COHORTS          INDIA                          >=155 cm             NA                -0.2338805   -0.4557399   -0.0458332
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0863291   -0.1727589   -0.0062691
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0796858   -0.1474803   -0.0158966
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0066918   -0.0259798    0.0122335
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0318252   -0.4483907    0.2649337
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0709174   -0.3239048    0.1337262
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0824587   -0.3036409    0.1011967
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1467040   -0.3963158    0.0582861
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.1696183   -0.3046402   -0.0485704
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0214946   -0.0691147    0.0240045
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0054551   -0.0106144    0.0212691
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.0101010   -0.2077661    0.1552139
0-6 months    COHORTS          INDIA                          >=155 cm             NA                -0.1276227   -0.3118230    0.0307129
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0125985   -0.0962804    0.0646958
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0165099   -0.0636753    0.0285642
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0000707   -0.0169457    0.0168023
0-6 months    MAL-ED           INDIA                          >=155 cm             NA                 0.0292398   -0.3137924    0.2827060
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0608821   -0.2588997    0.1059884
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0227273   -0.1868832    0.1187245
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0893964   -0.2230425    0.0296457
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0205823   -0.0750984    0.0311693
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0005379   -0.0093681    0.0103467
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1574318   -0.3211353   -0.0140131
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0134694   -0.0446050    0.0167381
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0686275   -0.8916940    0.5414402
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1818761   -0.6444253    0.5929722
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.2058824   -1.3990080    0.3938527
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.1659597   -0.4162386    0.0400897
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0157019   -0.0930448    0.0561682
