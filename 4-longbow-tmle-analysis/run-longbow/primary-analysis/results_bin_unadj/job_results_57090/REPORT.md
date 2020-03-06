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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/b969f6f7-9eab-4e9e-a77b-ab7b0fb03af7/de79a61a-8bd0-4ab8-acdc-98cea3763258/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b969f6f7-9eab-4e9e-a77b-ab7b0fb03af7/de79a61a-8bd0-4ab8-acdc-98cea3763258/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b969f6f7-9eab-4e9e-a77b-ab7b0fb03af7/de79a61a-8bd0-4ab8-acdc-98cea3763258/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b969f6f7-9eab-4e9e-a77b-ab7b0fb03af7/de79a61a-8bd0-4ab8-acdc-98cea3763258/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.0454545    0.0099029   0.0810062
0-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.0340237    0.0203508   0.0476966
0-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.0275229    0.0057950   0.0492509
0-24 months   COHORTS          INDIA                          >=155 cm             NA                0.0873181    0.0620821   0.1125541
0-24 months   COHORTS          INDIA                          <151 cm              NA                0.0929265    0.0717280   0.1141250
0-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.0739030    0.0492542   0.0985518
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.0445969    0.0278383   0.0613555
0-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.0541491    0.0423843   0.0659138
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0508685    0.0356964   0.0660406
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1102892    0.0825662   0.1380122
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2272727   -0.0388076   0.4933530
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1666667    0.0180642   0.3152691
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.0564877    0.0457844   0.0671910
0-24 months   Keneba           GAMBIA                         <151 cm              NA                0.1428571    0.0646798   0.2210345
0-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.0519031    0.0263218   0.0774844
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0927835    0.0349925   0.1505745
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.0830671    0.0524639   0.1136702
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0967742    0.0446880   0.1488603
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0362319    0.0050301   0.0674337
0-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.0143678    0.0018551   0.0268805
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.0324675    0.0044529   0.0604822
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.0467290    0.0320565   0.0614015
0-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.1247059    0.0798920   0.1695198
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.0909091    0.0558662   0.1259520
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1891892    0.0998340   0.2785444
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.1701031    0.1171617   0.2230445
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.1682243    0.0972529   0.2391957
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0215613    0.0137972   0.0293255
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0214724    0.0057337   0.0372111
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0454545    0.0264562   0.0644529
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0165022    0.0134011   0.0196032
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0286885    0.0138771   0.0435000
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0157546    0.0087262   0.0227830
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.0833333    0.0429333   0.1237334
0-6 months    COHORTS          PHILIPPINES                    <151 cm              NA                0.0514019    0.0304698   0.0723339
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0612245    0.0311870   0.0912620
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
6-24 months   COHORTS          INDIA                          >=155 cm             NA                0.0873181    0.0620821   0.1125541
6-24 months   COHORTS          INDIA                          <151 cm              NA                0.0929265    0.0717280   0.1141250
6-24 months   COHORTS          INDIA                          [151-155) cm         NA                0.0739030    0.0492542   0.0985518
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.0445969    0.0278383   0.0613555
6-24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.0541491    0.0423843   0.0659138
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0508685    0.0356964   0.0660406
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1102892    0.0825662   0.1380122
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2272727   -0.0388076   0.4933530
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1666667    0.0180642   0.3152691
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.0564877    0.0457844   0.0671910
6-24 months   Keneba           GAMBIA                         <151 cm              NA                0.1428571    0.0646798   0.2210345
6-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.0519031    0.0263218   0.0774844
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0927835    0.0349925   0.1505745
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.0830671    0.0524639   0.1136702
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0967742    0.0446880   0.1488603
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.0362319    0.0050301   0.0674337
6-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.0143678    0.0018551   0.0268805
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.0324675    0.0044529   0.0604822
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.0467290    0.0320565   0.0614015
6-24 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.1247059    0.0798920   0.1695198
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.0909091    0.0558662   0.1259520
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1891892    0.0998340   0.2785444
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.1701031    0.1171617   0.2230445
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.1682243    0.0972529   0.2391957
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0215613    0.0137972   0.0293255
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0214724    0.0057337   0.0372111
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0454545    0.0264562   0.0644529
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0165022    0.0134011   0.0196032
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0286885    0.0138771   0.0435000
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0157546    0.0087262   0.0227830


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0341131   0.0230006   0.0452255
0-24 months   COHORTS          INDIA                          NA                   NA                0.0862385   0.0726276   0.0998495
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1173252   0.0921861   0.1424644
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
0-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          1.0642296   0.7364284   1.5379425
0-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8463653   0.5443670   1.3159032
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.2141891   0.7866355   1.8741275
0-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1406280   0.7059714   1.8428965
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.0606984   0.5772837   7.3559636
0-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.5111789   0.5889185   3.8777206
0-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          2.5289958   1.4172322   4.5128948
0-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9188393   0.5418975   1.5579802
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.8952787   0.4341874   1.8460323
0-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0430108   0.4579132   2.3757155
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          0.3965517   0.1165174   1.3496122
0-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          0.8961039   0.2648038   3.0324416
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          2.6687059   1.9289938   3.6920757
0-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.9454545   1.3376574   2.8294190
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          0.8991163   0.5106997   1.5829462
0-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          0.8891856   0.4720158   1.6750520
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9958748   0.4400867   2.2535709
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.1081505   1.2142426   3.6601405
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.7384710   1.0035909   3.0114675
0-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9546969   0.5883446   1.5491706
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.6168224   0.3274857   1.1617909
0-6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.7346939   0.3686033   1.4643793
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
6-24 months   COHORTS          INDIA                          <151 cm              >=155 cm          1.0642296   0.7364284   1.5379425
6-24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8463653   0.5443670   1.3159032
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.2141891   0.7866355   1.8741275
6-24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1406280   0.7059714   1.8428965
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.0606984   0.5772837   7.3559636
6-24 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.5111789   0.5889185   3.8777206
6-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          2.5289958   1.4172322   4.5128948
6-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9188393   0.5418975   1.5579802
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.8952787   0.4341874   1.8460323
6-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0430108   0.4579132   2.3757155
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          0.3965517   0.1165174   1.3496122
6-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          0.8961039   0.2648038   3.0324416
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          2.6687059   1.9289938   3.6920757
6-24 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.9454545   1.3376574   2.8294190
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          0.8991163   0.5106997   1.5829462
6-24 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          0.8891856   0.4720158   1.6750520
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9958748   0.4400867   2.2535709
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.1081505   1.2142426   3.6601405
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.7384710   1.0035909   3.0114675
6-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9546969   0.5883446   1.5491706


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0113415   -0.0439327    0.0212497
0-24 months   COHORTS          INDIA                          >=155 cm             NA                -0.0010796   -0.0222314    0.0200723
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0066304   -0.0085616    0.0218224
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0070361   -0.0068029    0.0208750
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0024724   -0.0023616    0.0073064
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0047685   -0.0567779    0.0472409
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0127944   -0.0390871    0.0134983
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0368032    0.0198664    0.0537401
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0158559   -0.0952596    0.0635479
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0051616   -0.0004171    0.0107402
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0006169   -0.0008904    0.0021243
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0223720   -0.0570336    0.0122896
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0017566   -0.0020811    0.0055943
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0007402   -0.0014507   -0.0000297
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0009168   -0.0043601    0.0061936
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0113415   -0.0439327    0.0212497
6-24 months   COHORTS          INDIA                          >=155 cm             NA                -0.0010796   -0.0222314    0.0200723
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0066304   -0.0085616    0.0218224
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0070361   -0.0068029    0.0208750
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0024724   -0.0023616    0.0073064
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0047685   -0.0567779    0.0472409
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0127944   -0.0390871    0.0134983
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0368032    0.0198664    0.0537401
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0158559   -0.0952596    0.0635479
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0051616   -0.0004171    0.0107402
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0006169   -0.0008904    0.0021243


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.3324675   -1.7178844    0.3467457
0-24 months   COHORTS          INDIA                          >=155 cm             NA                -0.0125182   -0.2900402    0.2053013
0-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1294311   -0.2229893    0.3802969
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0599705   -0.0653460    0.1705461
0-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0419331   -0.0433719    0.1202636
0-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0541785   -0.8462698    0.3980878
0-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.5458937   -2.1301295    0.2365212
0-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.4405874    0.2984838    0.5539057
0-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0914761   -0.6603265    0.2824784
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1931520   -0.0377679    0.3726886
0-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0360382   -0.0559478    0.1200111
0-6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3669872   -1.0617799    0.0936695
0-6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0561203   -0.0739221    0.1704158
0-6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0090936   -0.0177657   -0.0004954
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0364737   -0.1978128    0.2249348
6-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.3324675   -1.7178844    0.3467457
6-24 months   COHORTS          INDIA                          >=155 cm             NA                -0.0125182   -0.2900402    0.2053013
6-24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1294311   -0.2229893    0.3802969
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0599705   -0.0653460    0.1705461
6-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0419331   -0.0433719    0.1202636
6-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0541785   -0.8462698    0.3980878
6-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.5458937   -2.1301295    0.2365212
6-24 months   SAS-CompFeed     INDIA                          >=155 cm             NA                 0.4405874    0.2984838    0.5539057
6-24 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0914761   -0.6603265    0.2824784
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1931520   -0.0377679    0.3726886
6-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0360382   -0.0559478    0.1200111
