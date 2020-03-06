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

unadjusted

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/ebeeb590-80c8-4df8-bc4c-0e19d3535b7b/30d42e2e-ca50-46f5-81c3-dcf3acbafa27/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ebeeb590-80c8-4df8-bc4c-0e19d3535b7b/30d42e2e-ca50-46f5-81c3-dcf3acbafa27/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ebeeb590-80c8-4df8-bc4c-0e19d3535b7b/30d42e2e-ca50-46f5-81c3-dcf3acbafa27/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ebeeb590-80c8-4df8-bc4c-0e19d3535b7b/30d42e2e-ca50-46f5-81c3-dcf3acbafa27/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.5000000   0.3584406   0.6415594
0-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.4375000   0.3743588   0.5006412
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.4477612   0.3254443   0.5700781
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.3157895   0.2528309   0.3787480
0-24 months   COHORTS          INDIA                          <151 cm              NA                0.2233010   0.1766894   0.2699125
0-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.2417582   0.1750359   0.3084806
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.6635514   0.6071777   0.7199251
0-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.5927117   0.5605002   0.6249232
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.5954023   0.5451884   0.6456162
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.6195732   0.5919659   0.6471805
0-24 months   Keneba           GAMBIA                         <151 cm              NA                0.4677419   0.3327544   0.6027294
0-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.6308411   0.5588577   0.7028245
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.6000000   0.3658974   0.8341026
0-24 months   MAL-ED           INDIA                          <151 cm              NA                0.5319149   0.4252678   0.6385620
0-24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.7407407   0.6229295   0.8585519
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.5492958   0.4196243   0.6789672
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.5151515   0.4516712   0.5786318
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5116279   0.4024013   0.6208545
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.6600000   0.5249562   0.7950438
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.6190476   0.5507022   0.6873930
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.6142857   0.4966959   0.7318755
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.6666667   0.5273949   0.8059385
0-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.5875706   0.5110627   0.6640785
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.5384615   0.4330411   0.6438820
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.4509091   0.3874508   0.5143674
0-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.3573883   0.3011074   0.4136692
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.3258427   0.2539031   0.3977823
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.6404494   0.5930457   0.6878532
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.5500000   0.4529087   0.6470913
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6437500   0.5624171   0.7250829
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.5933239   0.5723319   0.6143159
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.6000000   0.5274924   0.6725076
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.6086957   0.5615459   0.6558454
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.7575758   0.6103183   0.9048332
0-6 months    COHORTS          GUATEMALA                      <151 cm              NA                0.7412587   0.6689680   0.8135495
0-6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                0.7777778   0.6475058   0.9080497
0-6 months    COHORTS          INDIA                          >=155 cm             NA                0.4313725   0.3528121   0.5099330
0-6 months    COHORTS          INDIA                          <151 cm              NA                0.3650794   0.2963674   0.4337913
0-6 months    COHORTS          INDIA                          [151-155) cm         NA                0.3410853   0.2591896   0.4229809
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.7423313   0.6765952   0.8080674
0-6 months    COHORTS          PHILIPPINES                    <151 cm              NA                0.7467700   0.7032208   0.7903193
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                0.7128713   0.6494772   0.7762654
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.7773723   0.7428683   0.8118762
0-6 months    Keneba           GAMBIA                         <151 cm              NA                0.5806452   0.4366535   0.7246368
0-6 months    Keneba           GAMBIA                         [151-155) cm         NA                0.8607595   0.7817397   0.9397793
0-6 months    MAL-ED           INDIA                          >=155 cm             NA                0.6666667   0.4364044   0.8969290
0-6 months    MAL-ED           INDIA                          <151 cm              NA                0.5833333   0.4130521   0.7536146
0-6 months    MAL-ED           INDIA                          [151-155) cm         NA                0.8275862   0.6950274   0.9601450
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.7435897   0.6056205   0.8815590
0-6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                0.6978417   0.6216977   0.7739857
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7333333   0.6032537   0.8634129
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                0.8181818   0.6832135   0.9531501
0-6 months    PROVIDE          BANGLADESH                     <151 cm              NA                0.7864078   0.7080119   0.8648036
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                0.8181818   0.7125996   0.9237640
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.5681818   0.4824562   0.6539074
0-6 months    SAS-CompFeed     INDIA                          <151 cm              NA                0.5135135   0.4209204   0.6061066
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                0.4444444   0.3194995   0.5693894
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.7162791   0.6548754   0.7776827
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.7083333   0.5810486   0.8356181
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6712329   0.5613815   0.7810843
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.8573466   0.8390909   0.8756024
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.8617886   0.8005068   0.9230704
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.8582090   0.8170627   0.8993552
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.5822785   0.4987729   0.6657841
6-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.4835165   0.4395612   0.5274717
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.4935622   0.4261855   0.5609390
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.5129470   0.4763873   0.5495066
6-24 months   Keneba           GAMBIA                         <151 cm              NA                0.3548387   0.1634817   0.5461957
6-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.4962963   0.4058610   0.5867316
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.5000000   0.1136329   0.8863671
6-24 months   MAL-ED           INDIA                          <151 cm              NA                0.5000000   0.3633864   0.6366136
6-24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.6400000   0.4178946   0.8621054
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3125000   0.1302849   0.4947151
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.3120000   0.2311418   0.3928582
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2682927   0.1329833   0.4036021
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.3333333   0.0871379   0.5795287
6-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.3108108   0.2023701   0.4192516
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1764706   0.0429533   0.3099879
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.3426573   0.2616280   0.4236867
6-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.2611111   0.1966298   0.3255924
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.2608696   0.1778413   0.3438979
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.5695652   0.5043756   0.6347548
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4038462   0.2634147   0.5442776
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6206897   0.5115706   0.7298087


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4477212   0.3954919   0.4999504
0-24 months   COHORTS          INDIA                          NA                   NA                0.2557143   0.2227697   0.2886589
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
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
0-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8750000   0.6366850   1.2025176
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.8955224   0.6042766   1.3271411
0-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          0.7071197   0.5298266   0.9437396
0-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          0.7655678   0.5446634   1.0760665
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.8932416   0.8075392   0.9880393
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8972964   0.7960561   1.0114122
0-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          0.7549422   0.5637564   1.0109644
0-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0181866   0.9007999   1.1508703
0-24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          0.8865248   0.5717136   1.3746854
0-24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          1.2345679   0.8100813   1.8814875
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9378399   0.7185622   1.2240329
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9314252   0.6773642   1.2807774
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          0.9379509   0.7431366   1.1838361
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          0.9307359   0.7031963   1.2319025
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          0.8813559   0.6889589   1.1274813
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          0.8076923   0.6065032   1.0756198
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          0.7925951   0.6416779   0.9790067
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          0.7226350   0.5561512   0.9389557
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.8587719   0.7091624   1.0399441
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0051535   0.8682401   1.1636569
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0112520   0.8915969   1.1469651
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0259078   0.9421344   1.1171302
0-6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.9784615   0.7872206   1.2161610
0-6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.0266667   0.7943188   1.3269791
0-6 months    COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          <151 cm              >=155 cm          0.8463203   0.6513198   1.0997026
0-6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          0.7906977   0.5849687   1.0687800
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.0059795   0.9047734   1.1185062
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9603142   0.8470534   1.0887192
0-6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          0.7469332   0.5805890   0.9609366
0-6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.1072681   0.9999246   1.2261350
0-6 months    MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA                          <151 cm              >=155 cm          0.8750000   0.5566840   1.3753315
0-6 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          1.2413793   0.8483148   1.8165693
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9384768   0.7567310   1.1638729
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9862069   0.7629357   1.2748179
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          0.9611650   0.7926666   1.1654815
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.0000000   0.8110389   1.2329865
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          0.9037838   0.7144232   1.1433351
0-6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          0.7822222   0.5685421   1.0762117
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9889069   0.8103790   1.2067648
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          0.9371108   0.7790296   1.1272700
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0051811   0.9332688   1.0826344
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0010058   0.9498464   1.0549207
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.8303870   0.7007173   0.9840524
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8476395   0.6953803   1.0332370
6-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          0.6917649   0.4015173   1.1918258
6-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9675392   0.7955638   1.1766901
6-24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          1.0000000   0.4406005   2.2696295
6-24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          1.2800000   0.5486876   2.9860342
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.9984000   0.5273877   1.8900755
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.8585366   0.3971134   1.8561073
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          0.9324324   0.4118850   2.1108568
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          0.5294118   0.1839182   1.5239213
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          0.7620181   0.5413445   1.0726471
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          0.7613132   0.5121097   1.1317844
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.7090429   0.4916794   1.0224991
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0897605   0.8835352   1.3441207


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0522788   -0.1840184    0.0794608
0-24 months   COHORTS          INDIA                          >=155 cm             NA                -0.0600752   -0.1119056   -0.0082448
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0566834   -0.1073554   -0.0060114
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0042827   -0.0160681    0.0075027
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0067416   -0.1999367    0.2134198
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0291058   -0.1461229    0.0879114
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0354045   -0.1589419    0.0881329
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0792079   -0.2074206    0.0490048
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0665005   -0.1156391   -0.0173619
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0120806   -0.0411192    0.0169579
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0026731   -0.0068206    0.0121668
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.0075758   -0.1429684    0.1278169
0-6 months    COHORTS          INDIA                          >=155 cm             NA                -0.0513301   -0.1152659    0.0126058
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0056292   -0.0643176    0.0530592
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0007432   -0.0127862    0.0142727
0-6 months    MAL-ED           INDIA                          >=155 cm             NA                 0.0200803   -0.1814975    0.2216581
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0305853   -0.1567104    0.0955399
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0181818   -0.1399756    0.1036120
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0453060   -0.1101364    0.0195244
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0109219   -0.0482642    0.0264203
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0004336   -0.0080133    0.0088805
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0796104   -0.1554859   -0.0037349
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0073175   -0.0227732    0.0081382
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0368421   -0.3162378    0.3899220
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0094697   -0.1730023    0.1540629
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0569106   -0.2862152    0.1723941
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0549861   -0.1195512    0.0095789
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0112996   -0.0526484    0.0300491


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.1167665   -0.4538829    0.1421817
0-24 months   COHORTS          INDIA                          >=155 cm             NA                -0.2349309   -0.4558585   -0.0475292
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0934032   -0.1802473   -0.0129493
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0069604   -0.0263103    0.0120246
0-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0111111   -0.3959135    0.2994543
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0559522   -0.3064224    0.1464973
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0566839   -0.2742450    0.1237313
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1348315   -0.3762480    0.0642367
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.1729943   -0.3078807   -0.0520192
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0192254   -0.0665329    0.0259837
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0044851   -0.0115755    0.0202907
0-6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.0101010   -0.2077661    0.1552139
0-6 months    COHORTS          INDIA                          >=155 cm             NA                -0.1350641   -0.3167324    0.0215397
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0076410   -0.0905506    0.0689653
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0009552   -0.0165860    0.0181937
0-6 months    MAL-ED           INDIA                          >=155 cm             NA                 0.0292398   -0.3137924    0.2827060
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0428963   -0.2358326    0.1199191
0-6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0227273   -0.1868832    0.1187245
0-6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0866477   -0.2184394    0.0308887
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0154843   -0.0698634    0.0361309
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0005055   -0.0093907    0.0103046
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1583757   -0.3198566   -0.0166515
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0144721   -0.0455409    0.0156735
6-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0686275   -0.8916940    0.5414402
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0312500   -0.7392300    0.3885360
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.2058824   -1.3990080    0.3938527
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.1911422   -0.4372307    0.0128100
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0202406   -0.0971904    0.0513124
