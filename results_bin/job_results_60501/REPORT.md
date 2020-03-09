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

**Outcome Variable:** pers_wast

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

agecat        studyid          country                        mhtcm           pers_wast   n_cell       n
------------  ---------------  -----------------------------  -------------  ----------  -------  ------
0-24 months   COHORTS          GUATEMALA                      >=155 cm                0      126    1026
0-24 months   COHORTS          GUATEMALA                      >=155 cm                1        6    1026
0-24 months   COHORTS          GUATEMALA                      <151 cm                 0      653    1026
0-24 months   COHORTS          GUATEMALA                      <151 cm                 1       23    1026
0-24 months   COHORTS          GUATEMALA                      [151-155) cm            0      212    1026
0-24 months   COHORTS          GUATEMALA                      [151-155) cm            1        6    1026
0-24 months   COHORTS          INDIA                          >=155 cm                0      439    1635
0-24 months   COHORTS          INDIA                          >=155 cm                1       42    1635
0-24 months   COHORTS          INDIA                          <151 cm                 0      654    1635
0-24 months   COHORTS          INDIA                          <151 cm                 1       67    1635
0-24 months   COHORTS          INDIA                          [151-155) cm            0      401    1635
0-24 months   COHORTS          INDIA                          [151-155) cm            1       32    1635
0-24 months   COHORTS          PHILIPPINES                    >=155 cm                0      557    2811
0-24 months   COHORTS          PHILIPPINES                    >=155 cm                1       26    2811
0-24 months   COHORTS          PHILIPPINES                    <151 cm                 0     1345    2811
0-24 months   COHORTS          PHILIPPINES                    <151 cm                 1       77    2811
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm            0      765    2811
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm            1       41    2811
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                0       35     214
0-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                1        0     214
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm                 0      124     214
0-24 months   Guatemala BSC    GUATEMALA                      <151 cm                 1        3     214
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm            0       51     214
0-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm            1        1     214
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                0     1323    1645
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                1      164    1645
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                 0       34    1645
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                 1       10    1645
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm            0       95    1645
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm            1       19    1645
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm                0     2426   15760
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm                1      107   15760
0-24 months   JiVitA-3         BANGLADESH                     <151 cm                 0     8597   15760
0-24 months   JiVitA-3         BANGLADESH                     <151 cm                 1      540   15760
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm            0     3842   15760
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm            1      248   15760
0-24 months   Keneba           GAMBIA                         >=155 cm                0     1687    2154
0-24 months   Keneba           GAMBIA                         >=155 cm                1      101    2154
0-24 months   Keneba           GAMBIA                         <151 cm                 0       66    2154
0-24 months   Keneba           GAMBIA                         <151 cm                 1       11    2154
0-24 months   Keneba           GAMBIA                         [151-155) cm            0      274    2154
0-24 months   Keneba           GAMBIA                         [151-155) cm            1       15    2154
0-24 months   LCNI-5           MALAWI                         >=155 cm                0      435     716
0-24 months   LCNI-5           MALAWI                         >=155 cm                1        5     716
0-24 months   LCNI-5           MALAWI                         <151 cm                 0      114     716
0-24 months   LCNI-5           MALAWI                         <151 cm                 1        0     716
0-24 months   LCNI-5           MALAWI                         [151-155) cm            0      161     716
0-24 months   LCNI-5           MALAWI                         [151-155) cm            1        1     716
0-24 months   MAL-ED           BANGLADESH                     >=155 cm                0       21     248
0-24 months   MAL-ED           BANGLADESH                     >=155 cm                1        3     248
0-24 months   MAL-ED           BANGLADESH                     <151 cm                 0      154     248
0-24 months   MAL-ED           BANGLADESH                     <151 cm                 1        7     248
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm            0       60     248
0-24 months   MAL-ED           BANGLADESH                     [151-155) cm            1        3     248
0-24 months   MAL-ED           BRAZIL                         >=155 cm                0      124     217
0-24 months   MAL-ED           BRAZIL                         >=155 cm                1        2     217
0-24 months   MAL-ED           BRAZIL                         <151 cm                 0       52     217
0-24 months   MAL-ED           BRAZIL                         <151 cm                 1        0     217
0-24 months   MAL-ED           BRAZIL                         [151-155) cm            0       39     217
0-24 months   MAL-ED           BRAZIL                         [151-155) cm            1        0     217
0-24 months   MAL-ED           INDIA                          >=155 cm                0       53     240
0-24 months   MAL-ED           INDIA                          >=155 cm                1        2     240
0-24 months   MAL-ED           INDIA                          <151 cm                 0      102     240
0-24 months   MAL-ED           INDIA                          <151 cm                 1       13     240
0-24 months   MAL-ED           INDIA                          [151-155) cm            0       64     240
0-24 months   MAL-ED           INDIA                          [151-155) cm            1        6     240
0-24 months   MAL-ED           NEPAL                          >=155 cm                0       41     238
0-24 months   MAL-ED           NEPAL                          >=155 cm                1        0     238
0-24 months   MAL-ED           NEPAL                          <151 cm                 0      131     238
0-24 months   MAL-ED           NEPAL                          <151 cm                 1        2     238
0-24 months   MAL-ED           NEPAL                          [151-155) cm            0       62     238
0-24 months   MAL-ED           NEPAL                          [151-155) cm            1        2     238
0-24 months   MAL-ED           PERU                           >=155 cm                0       58     283
0-24 months   MAL-ED           PERU                           >=155 cm                1        0     283
0-24 months   MAL-ED           PERU                           <151 cm                 0      165     283
0-24 months   MAL-ED           PERU                           <151 cm                 1        0     283
0-24 months   MAL-ED           PERU                           [151-155) cm            0       59     283
0-24 months   MAL-ED           PERU                           [151-155) cm            1        1     283
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                0      200     266
0-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                1        1     266
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                 0       31     266
0-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                 1        1     266
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm            0       33     266
0-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm            1        0     266
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                0      151     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                 0       50     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0       52     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1        0     253
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm                0       88     534
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm                1        9     534
0-24 months   NIH-Birth        BANGLADESH                     <151 cm                 0      287     534
0-24 months   NIH-Birth        BANGLADESH                     <151 cm                 1       26     534
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm            0      112     534
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm            1       12     534
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                0      135     730
0-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                1        3     730
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm                 0      401     730
0-24 months   NIH-Crypto       BANGLADESH                     <151 cm                 1       18     730
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm            0      168     730
0-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm            1        5     730
0-24 months   PROBIT           BELARUS                        >=155 cm                0    13104   13720
0-24 months   PROBIT           BELARUS                        >=155 cm                1       93   13720
0-24 months   PROBIT           BELARUS                        <151 cm                 0      125   13720
0-24 months   PROBIT           BELARUS                        <151 cm                 1        0   13720
0-24 months   PROBIT           BELARUS                        [151-155) cm            0      395   13720
0-24 months   PROBIT           BELARUS                        [151-155) cm            1        3   13720
0-24 months   PROVIDE          BANGLADESH                     >=155 cm                0      133     640
0-24 months   PROVIDE          BANGLADESH                     >=155 cm                1        5     640
0-24 months   PROVIDE          BANGLADESH                     <151 cm                 0      343     640
0-24 months   PROVIDE          BANGLADESH                     <151 cm                 1        5     640
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm            0      149     640
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm            1        5     640
0-24 months   SAS-CompFeed     INDIA                          >=155 cm                0      510    1257
0-24 months   SAS-CompFeed     INDIA                          >=155 cm                1       25    1257
0-24 months   SAS-CompFeed     INDIA                          <151 cm                 0      372    1257
0-24 months   SAS-CompFeed     INDIA                          <151 cm                 1       53    1257
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm            0      270    1257
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm            1       27    1257
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                0       60     375
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                1       14     375
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm                 0      161     375
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm                 1       33     375
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm            0       89     375
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm            1       18     375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                0     1316    2133
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                1       29    2133
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 0      319    2133
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        7    2133
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0      441    2133
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1       21    2133
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                0     6377    8178
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                1      107    8178
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                 0      474    8178
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                 1       14    8178
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm            0     1187    8178
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm            1       19    8178
0-6 months    COHORTS          PHILIPPINES                    >=155 cm                0      165     853
0-6 months    COHORTS          PHILIPPINES                    >=155 cm                1       15     853
0-6 months    COHORTS          PHILIPPINES                    <151 cm                 0      406     853
0-6 months    COHORTS          PHILIPPINES                    <151 cm                 1       22     853
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm            0      230     853
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm            1       15     853
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm                0        7      50
0-6 months    JiVitA-3         BANGLADESH                     >=155 cm                1        1      50
0-6 months    JiVitA-3         BANGLADESH                     <151 cm                 0       25      50
0-6 months    JiVitA-3         BANGLADESH                     <151 cm                 1        1      50
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm            0       16      50
0-6 months    JiVitA-3         BANGLADESH                     [151-155) cm            1        0      50
0-6 months    Keneba           GAMBIA                         >=155 cm                0     1511    1853
0-6 months    Keneba           GAMBIA                         >=155 cm                1       46    1853
0-6 months    Keneba           GAMBIA                         <151 cm                 0       60    1853
0-6 months    Keneba           GAMBIA                         <151 cm                 1        7    1853
0-6 months    Keneba           GAMBIA                         [151-155) cm            0      224    1853
0-6 months    Keneba           GAMBIA                         [151-155) cm            1        5    1853
0-6 months    MAL-ED           BANGLADESH                     >=155 cm                0       22     248
0-6 months    MAL-ED           BANGLADESH                     >=155 cm                1        2     248
0-6 months    MAL-ED           BANGLADESH                     <151 cm                 0      157     248
0-6 months    MAL-ED           BANGLADESH                     <151 cm                 1        4     248
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm            0       62     248
0-6 months    MAL-ED           BANGLADESH                     [151-155) cm            1        1     248
0-6 months    MAL-ED           BRAZIL                         >=155 cm                0      125     217
0-6 months    MAL-ED           BRAZIL                         >=155 cm                1        1     217
0-6 months    MAL-ED           BRAZIL                         <151 cm                 0       52     217
0-6 months    MAL-ED           BRAZIL                         <151 cm                 1        0     217
0-6 months    MAL-ED           BRAZIL                         [151-155) cm            0       39     217
0-6 months    MAL-ED           BRAZIL                         [151-155) cm            1        0     217
0-6 months    MAL-ED           INDIA                          >=155 cm                0       49     239
0-6 months    MAL-ED           INDIA                          >=155 cm                1        6     239
0-6 months    MAL-ED           INDIA                          <151 cm                 0      105     239
0-6 months    MAL-ED           INDIA                          <151 cm                 1        9     239
0-6 months    MAL-ED           INDIA                          [151-155) cm            0       66     239
0-6 months    MAL-ED           INDIA                          [151-155) cm            1        4     239
0-6 months    MAL-ED           NEPAL                          >=155 cm                0       41     238
0-6 months    MAL-ED           NEPAL                          >=155 cm                1        0     238
0-6 months    MAL-ED           NEPAL                          <151 cm                 0      128     238
0-6 months    MAL-ED           NEPAL                          <151 cm                 1        5     238
0-6 months    MAL-ED           NEPAL                          [151-155) cm            0       62     238
0-6 months    MAL-ED           NEPAL                          [151-155) cm            1        2     238
0-6 months    MAL-ED           PERU                           >=155 cm                0       58     283
0-6 months    MAL-ED           PERU                           >=155 cm                1        0     283
0-6 months    MAL-ED           PERU                           <151 cm                 0      165     283
0-6 months    MAL-ED           PERU                           <151 cm                 1        0     283
0-6 months    MAL-ED           PERU                           [151-155) cm            0       60     283
0-6 months    MAL-ED           PERU                           [151-155) cm            1        0     283
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm                0      200     265
0-6 months    MAL-ED           SOUTH AFRICA                   >=155 cm                1        1     265
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm                 0       30     265
0-6 months    MAL-ED           SOUTH AFRICA                   <151 cm                 1        1     265
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm            0       33     265
0-6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm            1        0     265
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                0      151     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                 0       50     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0       52     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1        0     253
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm                0       18     169
0-6 months    NIH-Birth        BANGLADESH                     >=155 cm                1        3     169
0-6 months    NIH-Birth        BANGLADESH                     <151 cm                 0      104     169
0-6 months    NIH-Birth        BANGLADESH                     <151 cm                 1        4     169
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm            0       36     169
0-6 months    NIH-Birth        BANGLADESH                     [151-155) cm            1        4     169
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm                0       54     250
0-6 months    NIH-Crypto       BANGLADESH                     >=155 cm                1        1     250
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm                 0      142     250
0-6 months    NIH-Crypto       BANGLADESH                     <151 cm                 1        2     250
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm            0       49     250
0-6 months    NIH-Crypto       BANGLADESH                     [151-155) cm            1        2     250
0-6 months    PROBIT           BELARUS                        >=155 cm                0    11622   13158
0-6 months    PROBIT           BELARUS                        >=155 cm                1     1040   13158
0-6 months    PROBIT           BELARUS                        <151 cm                 0      115   13158
0-6 months    PROBIT           BELARUS                        <151 cm                 1        5   13158
0-6 months    PROBIT           BELARUS                        [151-155) cm            0      350   13158
0-6 months    PROBIT           BELARUS                        [151-155) cm            1       26   13158
0-6 months    PROVIDE          BANGLADESH                     >=155 cm                0      134     637
0-6 months    PROVIDE          BANGLADESH                     >=155 cm                1        4     637
0-6 months    PROVIDE          BANGLADESH                     <151 cm                 0      338     637
0-6 months    PROVIDE          BANGLADESH                     <151 cm                 1        7     637
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm            0      151     637
0-6 months    PROVIDE          BANGLADESH                     [151-155) cm            1        3     637
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                0     1249    2029
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                1       31    2029
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 0      302    2029
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        6    2029
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0      427    2029
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1       14    2029
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm                0      451     584
0-6 months    ZVITAMBO         ZIMBABWE                       >=155 cm                1       10     584
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm                 0       38     584
0-6 months    ZVITAMBO         ZIMBABWE                       <151 cm                 1        0     584
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm            0       83     584
0-6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm            1        2     584
6-24 months   COHORTS          GUATEMALA                      >=155 cm                0      126    1026
6-24 months   COHORTS          GUATEMALA                      >=155 cm                1        6    1026
6-24 months   COHORTS          GUATEMALA                      <151 cm                 0      653    1026
6-24 months   COHORTS          GUATEMALA                      <151 cm                 1       23    1026
6-24 months   COHORTS          GUATEMALA                      [151-155) cm            0      212    1026
6-24 months   COHORTS          GUATEMALA                      [151-155) cm            1        6    1026
6-24 months   COHORTS          INDIA                          >=155 cm                0      439    1635
6-24 months   COHORTS          INDIA                          >=155 cm                1       42    1635
6-24 months   COHORTS          INDIA                          <151 cm                 0      654    1635
6-24 months   COHORTS          INDIA                          <151 cm                 1       67    1635
6-24 months   COHORTS          INDIA                          [151-155) cm            0      401    1635
6-24 months   COHORTS          INDIA                          [151-155) cm            1       32    1635
6-24 months   COHORTS          PHILIPPINES                    >=155 cm                0      557    2811
6-24 months   COHORTS          PHILIPPINES                    >=155 cm                1       26    2811
6-24 months   COHORTS          PHILIPPINES                    <151 cm                 0     1345    2811
6-24 months   COHORTS          PHILIPPINES                    <151 cm                 1       77    2811
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm            0      765    2811
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm            1       41    2811
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                0       35     214
6-24 months   Guatemala BSC    GUATEMALA                      >=155 cm                1        0     214
6-24 months   Guatemala BSC    GUATEMALA                      <151 cm                 0      124     214
6-24 months   Guatemala BSC    GUATEMALA                      <151 cm                 1        3     214
6-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm            0       51     214
6-24 months   Guatemala BSC    GUATEMALA                      [151-155) cm            1        1     214
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                0     1323    1645
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm                1      164    1645
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                 0       34    1645
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm                 1       10    1645
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm            0       95    1645
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm            1       19    1645
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm                0     2426   15760
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm                1      107   15760
6-24 months   JiVitA-3         BANGLADESH                     <151 cm                 0     8597   15760
6-24 months   JiVitA-3         BANGLADESH                     <151 cm                 1      540   15760
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm            0     3842   15760
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm            1      248   15760
6-24 months   Keneba           GAMBIA                         >=155 cm                0     1687    2154
6-24 months   Keneba           GAMBIA                         >=155 cm                1      101    2154
6-24 months   Keneba           GAMBIA                         <151 cm                 0       66    2154
6-24 months   Keneba           GAMBIA                         <151 cm                 1       11    2154
6-24 months   Keneba           GAMBIA                         [151-155) cm            0      274    2154
6-24 months   Keneba           GAMBIA                         [151-155) cm            1       15    2154
6-24 months   LCNI-5           MALAWI                         >=155 cm                0      435     716
6-24 months   LCNI-5           MALAWI                         >=155 cm                1        5     716
6-24 months   LCNI-5           MALAWI                         <151 cm                 0      114     716
6-24 months   LCNI-5           MALAWI                         <151 cm                 1        0     716
6-24 months   LCNI-5           MALAWI                         [151-155) cm            0      161     716
6-24 months   LCNI-5           MALAWI                         [151-155) cm            1        1     716
6-24 months   MAL-ED           BANGLADESH                     >=155 cm                0       21     248
6-24 months   MAL-ED           BANGLADESH                     >=155 cm                1        3     248
6-24 months   MAL-ED           BANGLADESH                     <151 cm                 0      154     248
6-24 months   MAL-ED           BANGLADESH                     <151 cm                 1        7     248
6-24 months   MAL-ED           BANGLADESH                     [151-155) cm            0       60     248
6-24 months   MAL-ED           BANGLADESH                     [151-155) cm            1        3     248
6-24 months   MAL-ED           BRAZIL                         >=155 cm                0      124     217
6-24 months   MAL-ED           BRAZIL                         >=155 cm                1        2     217
6-24 months   MAL-ED           BRAZIL                         <151 cm                 0       52     217
6-24 months   MAL-ED           BRAZIL                         <151 cm                 1        0     217
6-24 months   MAL-ED           BRAZIL                         [151-155) cm            0       39     217
6-24 months   MAL-ED           BRAZIL                         [151-155) cm            1        0     217
6-24 months   MAL-ED           INDIA                          >=155 cm                0       53     240
6-24 months   MAL-ED           INDIA                          >=155 cm                1        2     240
6-24 months   MAL-ED           INDIA                          <151 cm                 0      102     240
6-24 months   MAL-ED           INDIA                          <151 cm                 1       13     240
6-24 months   MAL-ED           INDIA                          [151-155) cm            0       64     240
6-24 months   MAL-ED           INDIA                          [151-155) cm            1        6     240
6-24 months   MAL-ED           NEPAL                          >=155 cm                0       41     238
6-24 months   MAL-ED           NEPAL                          >=155 cm                1        0     238
6-24 months   MAL-ED           NEPAL                          <151 cm                 0      131     238
6-24 months   MAL-ED           NEPAL                          <151 cm                 1        2     238
6-24 months   MAL-ED           NEPAL                          [151-155) cm            0       62     238
6-24 months   MAL-ED           NEPAL                          [151-155) cm            1        2     238
6-24 months   MAL-ED           PERU                           >=155 cm                0       58     283
6-24 months   MAL-ED           PERU                           >=155 cm                1        0     283
6-24 months   MAL-ED           PERU                           <151 cm                 0      165     283
6-24 months   MAL-ED           PERU                           <151 cm                 1        0     283
6-24 months   MAL-ED           PERU                           [151-155) cm            0       59     283
6-24 months   MAL-ED           PERU                           [151-155) cm            1        1     283
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                0      200     266
6-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm                1        1     266
6-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                 0       31     266
6-24 months   MAL-ED           SOUTH AFRICA                   <151 cm                 1        1     266
6-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm            0       33     266
6-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm            1        0     266
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                0      151     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm                1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                 0       50     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0       52     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1        0     253
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm                0       88     534
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm                1        9     534
6-24 months   NIH-Birth        BANGLADESH                     <151 cm                 0      287     534
6-24 months   NIH-Birth        BANGLADESH                     <151 cm                 1       26     534
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm            0      112     534
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm            1       12     534
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                0      135     730
6-24 months   NIH-Crypto       BANGLADESH                     >=155 cm                1        3     730
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm                 0      401     730
6-24 months   NIH-Crypto       BANGLADESH                     <151 cm                 1       18     730
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm            0      168     730
6-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm            1        5     730
6-24 months   PROBIT           BELARUS                        >=155 cm                0    13104   13720
6-24 months   PROBIT           BELARUS                        >=155 cm                1       93   13720
6-24 months   PROBIT           BELARUS                        <151 cm                 0      125   13720
6-24 months   PROBIT           BELARUS                        <151 cm                 1        0   13720
6-24 months   PROBIT           BELARUS                        [151-155) cm            0      395   13720
6-24 months   PROBIT           BELARUS                        [151-155) cm            1        3   13720
6-24 months   PROVIDE          BANGLADESH                     >=155 cm                0      133     640
6-24 months   PROVIDE          BANGLADESH                     >=155 cm                1        5     640
6-24 months   PROVIDE          BANGLADESH                     <151 cm                 0      343     640
6-24 months   PROVIDE          BANGLADESH                     <151 cm                 1        5     640
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm            0      149     640
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm            1        5     640
6-24 months   SAS-CompFeed     INDIA                          >=155 cm                0      510    1257
6-24 months   SAS-CompFeed     INDIA                          >=155 cm                1       25    1257
6-24 months   SAS-CompFeed     INDIA                          <151 cm                 0      372    1257
6-24 months   SAS-CompFeed     INDIA                          <151 cm                 1       53    1257
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm            0      270    1257
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm            1       27    1257
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                0       60     375
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm                1       14     375
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm                 0      161     375
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm                 1       33     375
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm            0       89     375
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm            1       18     375
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                0     1316    2133
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                1       29    2133
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 0      319    2133
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        7    2133
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0      441    2133
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1       21    2133
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                0     6377    8178
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm                1      107    8178
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                 0      474    8178
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm                 1       14    8178
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm            0     1187    8178
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm            1       19    8178


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
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/43e847b7-8333-4c71-b543-31c60f34a2a5/1433dcc5-4b96-4c24-b1d0-64e3f89da5cf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/43e847b7-8333-4c71-b543-31c60f34a2a5/1433dcc5-4b96-4c24-b1d0-64e3f89da5cf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/43e847b7-8333-4c71-b543-31c60f34a2a5/1433dcc5-4b96-4c24-b1d0-64e3f89da5cf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/43e847b7-8333-4c71-b543-31c60f34a2a5/1433dcc5-4b96-4c24-b1d0-64e3f89da5cf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.0454545    0.0099029   0.0810062
0-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.0340237    0.0203508   0.0476966
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.0275229    0.0057950   0.0492509
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.0905481    0.0652447   0.1158516
0-24 months   COHORTS          INDIA                          <151 cm              NA                0.0907789    0.0695445   0.1120134
0-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.0725547    0.0478305   0.0972788
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.0451060    0.0283101   0.0619020
0-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.0534775    0.0417605   0.0651945
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0511155    0.0358177   0.0664134
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1101741    0.0824757   0.1378725
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2217924   -0.0539880   0.4975727
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1663632    0.0166623   0.3160640
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0410969    0.0329624   0.0492315
0-24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                0.0582440    0.0527591   0.0637290
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.0616209    0.0531267   0.0701152
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.0569001    0.0461959   0.0676043
0-24 months   Keneba           GAMBIA                         <151 cm              NA                0.1513463    0.0713532   0.2313393
0-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.0525054    0.0269607   0.0780501
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0927835    0.0349925   0.1505745
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.0830671    0.0524639   0.1136702
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0967742    0.0446880   0.1488603
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0362319    0.0050301   0.0674337
0-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.0143678    0.0018551   0.0268805
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.0324675    0.0044529   0.0604822
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.0491300    0.0336953   0.0645648
0-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.1194392    0.0718928   0.1669856
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.0899800    0.0554871   0.1244730
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1703446    0.0814504   0.2592387
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.1688123    0.1157492   0.2218754
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.1558107    0.0840412   0.2275803
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0215613    0.0137972   0.0293255
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0214724    0.0057337   0.0372111
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0454545    0.0264562   0.0644529
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0165550    0.0134456   0.0196644
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0270552    0.0130932   0.0410172
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0157465    0.0086643   0.0228287
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.0805386    0.0398164   0.1212608
0-6 months    COHORTS          PHILIPPINES                    <151 cm              NA                0.0512139    0.0302347   0.0721931
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0590121    0.0288692   0.0891550
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                0.0295440    0.0211311   0.0379569
0-6 months    Keneba           GAMBIA                         <151 cm              NA                0.1044776    0.0312158   0.1777394
0-6 months    Keneba           GAMBIA                         [151-155) cm         NA                0.0218341    0.0029010   0.0407671
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                0.0821355    0.0565180   0.1077530
0-6 months    PROBIT           BELARUS                        <151 cm              NA                0.0416667    0.0202046   0.0631287
0-6 months    PROBIT           BELARUS                        [151-155) cm         NA                0.0691489    0.0394049   0.0988930
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0242187    0.0157951   0.0326424
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0194805    0.0040419   0.0349191
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0317460    0.0153788   0.0481133
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.0454545    0.0099029   0.0810062
6-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.0340237    0.0203508   0.0476966
6-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.0275229    0.0057950   0.0492509
6-24 months   COHORTS          INDIA                          >=155 cm             NA                0.0906437    0.0653184   0.1159689
6-24 months   COHORTS          INDIA                          <151 cm              NA                0.0912182    0.0700194   0.1124170
6-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.0735877    0.0489414   0.0982339
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.0449346    0.0282687   0.0616005
6-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.0533387    0.0416250   0.0650523
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0512890    0.0359989   0.0665791
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1101919    0.0825313   0.1378525
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2208967   -0.0476038   0.4893972
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1649881    0.0150331   0.3149431
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0412777    0.0330518   0.0495036
6-24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                0.0580500    0.0525947   0.0635053
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.0617318    0.0532021   0.0702614
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.0567714    0.0460727   0.0674701
6-24 months   Keneba           GAMBIA                         <151 cm              NA                0.1370197    0.0571894   0.2168500
6-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.0513306    0.0256393   0.0770219
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0927835    0.0349925   0.1505745
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.0830671    0.0524639   0.1136702
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0967742    0.0446880   0.1488603
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0362319    0.0050301   0.0674337
6-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.0143678    0.0018551   0.0268805
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.0324675    0.0044529   0.0604822
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.0491300    0.0336953   0.0645648
6-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.1194392    0.0718928   0.1669856
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.0899800    0.0554871   0.1244730
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1670620    0.0759677   0.2581563
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.1684233    0.1151738   0.2216727
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.1659758    0.0949032   0.2370484
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0215613    0.0137972   0.0293255
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0214724    0.0057337   0.0372111
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0454545    0.0264562   0.0644529
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0165722    0.0134614   0.0196831
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0272515    0.0132901   0.0412129
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0158160    0.0087072   0.0229247


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0341131   0.0230006   0.0452255
0-24 months   COHORTS          INDIA                          NA                   NA                0.0862385   0.0726276   0.0998495
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1173252   0.0921861   0.1424644
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0567893   0.0526505   0.0609282
0-24 months   Keneba           GAMBIA                         NA                   NA                0.0589601   0.0490104   0.0689098
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0835322   0.0594080   0.1076564
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267229   0.0198773   0.0335686
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0171191   0.0143076   0.0199306
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
0-6 months    Keneba           GAMBIA                         NA                   NA                0.0313006   0.0233701   0.0392311
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0813953   0.0559264   0.1068643
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0251355   0.0183227   0.0319484
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0341131   0.0230006   0.0452255
6-24 months   COHORTS          INDIA                          NA                   NA                0.0862385   0.0726276   0.0998495
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1173252   0.0921861   0.1424644
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0567893   0.0526505   0.0609282
6-24 months   Keneba           GAMBIA                         NA                   NA                0.0589601   0.0490104   0.0689098
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0835322   0.0594080   0.1076564
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267229   0.0198773   0.0335686
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0171191   0.0143076   0.0199306


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.7485207   0.3106798   1.8034108
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6055046   0.1992921   1.8396905
0-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          1.0025489   0.6963425   1.4434050
0-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8012827   0.5159227   1.2444772
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.1855950   0.7696337   1.8263695
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1332302   0.7028242   1.8272148
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.0131080   0.5250809   7.7180556
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.5100025   0.5846676   3.8998361
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          1.4172357   1.1461819   1.7523893
0-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.4994050   1.1712152   1.9195579
0-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          2.6598604   1.5173846   4.6625341
0-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9227652   0.5478385   1.5542821
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.8952787   0.4341874   1.8460323
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0430108   0.4579132   2.3757155
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          0.3965517   0.1165174   1.3496122
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          0.8961039   0.2648038   3.0324416
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          2.4310831   1.7037375   3.4689411
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.8314674   1.2554105   2.6718535
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          0.9910048   0.5395706   1.8201334
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          0.9146796   0.4574803   1.8287974
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9958748   0.4400867   2.2535709
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.1081505   1.2142426   3.6601405
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6342649   0.9437388   2.8300434
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9511665   0.5842228   1.5485833
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.6358928   0.3315291   1.2196809
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.7327179   0.3569855   1.5039140
0-6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          3.5363400   1.6590731   7.5377634
0-6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.7390355   0.2966796   1.8409542
0-6 months    PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        <151 cm              >=155 cm          0.5072917   0.2926352   0.8794048
0-6 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.8418883   0.6604120   1.0732330
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.8043569   0.3385130   1.9112712
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.3108039   0.7037859   2.4413773
6-24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.7485207   0.3106798   1.8034108
6-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6055046   0.1992921   1.8396905
6-24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          1.0063384   0.6998452   1.4470587
6-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8118347   0.5250838   1.2551816
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.1870291   0.7713558   1.8267031
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1414146   0.7092446   1.8369223
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.0046549   0.5386884   7.4600480
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.4972798   0.5747387   3.9006363
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          1.4063288   1.1356687   1.7414945
6-24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.4955233   1.1669475   1.9166158
6-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          2.4135334   1.3080835   4.4531894
6-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9041625   0.5297081   1.5433216
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.8952787   0.4341874   1.8460323
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0430108   0.4579132   2.3757155
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          0.3965517   0.1165174   1.3496122
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          0.8961039   0.2648038   3.0324416
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          2.4310831   1.7037375   3.4689411
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.8314674   1.2554105   2.6718535
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          1.0081483   0.5371647   1.8920880
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          0.9934982   0.4984711   1.9801321
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9958748   0.4400867   2.2535709
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.1081505   1.2142426   3.6601405
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6444077   0.9530110   2.8374036
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9543659   0.5863754   1.5532956


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0113415   -0.0439327    0.0212497
0-24 months   COHORTS          INDIA                          >=155 cm             NA                -0.0043096   -0.0255222    0.0169030
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0061213   -0.0091180    0.0213606
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0071511   -0.0067341    0.0210364
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0156924    0.0079539    0.0234309
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0020600   -0.0027790    0.0068990
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0047685   -0.0567779    0.0472409
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0127944   -0.0390871    0.0134983
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0344022    0.0172931    0.0515112
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0029887   -0.0760612    0.0820387
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0051616   -0.0004171    0.0107402
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0005641   -0.0009466    0.0020749
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0195773   -0.0545679    0.0154133
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0017566   -0.0020811    0.0055943
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0007402   -0.0014507   -0.0000297
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0009168   -0.0043601    0.0061936
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0113415   -0.0439327    0.0212497
6-24 months   COHORTS          INDIA                          >=155 cm             NA                -0.0044051   -0.0256249    0.0168147
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0062927   -0.0088295    0.0214149
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0071333   -0.0067043    0.0209710
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0155116    0.0076654    0.0233579
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0021887   -0.0026465    0.0070238
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0047685   -0.0567779    0.0472409
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0127944   -0.0390871    0.0134983
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0344022    0.0172931    0.0515112
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0062713   -0.0747812    0.0873239
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0051616   -0.0004171    0.0107402
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0005469   -0.0009641    0.0020579


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.3324675   -1.7178844    0.3467457
0-24 months   COHORTS          INDIA                          >=155 cm             NA                -0.0499732   -0.3272228    0.1693605
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1194925   -0.2334887    0.3714628
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0609513   -0.0647733    0.1718308
0-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.2763266    0.1287181    0.3989280
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0349389   -0.0504319    0.1133714
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0541785   -0.8462698    0.3980878
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.5458937   -2.1301295    0.2365212
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.4118434    0.2586684    0.5333691
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0172428   -0.5632994    0.3821965
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1931520   -0.0377679    0.3726886
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0329530   -0.0592690    0.1171459
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3211431   -1.0291658    0.1398341
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0561203   -0.0739221    0.1704158
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0090936   -0.0177657   -0.0004954
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0364737   -0.1978128    0.2249348
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.3324675   -1.7178844    0.3467457
6-24 months   COHORTS          INDIA                          >=155 cm             NA                -0.0510809   -0.3283910    0.1683390
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1228393   -0.2270824    0.3729753
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0607996   -0.0644449    0.1713076
6-24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.2731437    0.1233421    0.3973474
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0371211   -0.0481788    0.1154793
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0541785   -0.8462698    0.3980878
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.5458937   -2.1301295    0.2365212
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.4118434    0.2586684    0.5333691
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0361808   -0.5663174    0.4069226
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1931520   -0.0377679    0.3726886
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0319456   -0.0602911    0.1161585
