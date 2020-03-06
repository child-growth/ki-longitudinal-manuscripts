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

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mwtkg         sstunted   n_cell       n
----------  ---------------  -----------------------------  -----------  ---------  -------  ------
Birth       MAL-ED           BANGLADESH                     >=58 kg              0       38     222
Birth       MAL-ED           BANGLADESH                     >=58 kg              1        0     222
Birth       MAL-ED           BANGLADESH                     <52 kg               0      136     222
Birth       MAL-ED           BANGLADESH                     <52 kg               1        7     222
Birth       MAL-ED           BANGLADESH                     [52-58) kg           0       41     222
Birth       MAL-ED           BANGLADESH                     [52-58) kg           1        0     222
Birth       MAL-ED           BRAZIL                         >=58 kg              0       32      64
Birth       MAL-ED           BRAZIL                         >=58 kg              1        2      64
Birth       MAL-ED           BRAZIL                         <52 kg               0       15      64
Birth       MAL-ED           BRAZIL                         <52 kg               1        0      64
Birth       MAL-ED           BRAZIL                         [52-58) kg           0       14      64
Birth       MAL-ED           BRAZIL                         [52-58) kg           1        1      64
Birth       MAL-ED           INDIA                          >=58 kg              0        6      43
Birth       MAL-ED           INDIA                          >=58 kg              1        0      43
Birth       MAL-ED           INDIA                          <52 kg               0       28      43
Birth       MAL-ED           INDIA                          <52 kg               1        1      43
Birth       MAL-ED           INDIA                          [52-58) kg           0        7      43
Birth       MAL-ED           INDIA                          [52-58) kg           1        1      43
Birth       MAL-ED           NEPAL                          >=58 kg              0        9      27
Birth       MAL-ED           NEPAL                          >=58 kg              1        0      27
Birth       MAL-ED           NEPAL                          <52 kg               0        7      27
Birth       MAL-ED           NEPAL                          <52 kg               1        1      27
Birth       MAL-ED           NEPAL                          [52-58) kg           0       10      27
Birth       MAL-ED           NEPAL                          [52-58) kg           1        0      27
Birth       MAL-ED           PERU                           >=58 kg              0       82     226
Birth       MAL-ED           PERU                           >=58 kg              1        1     226
Birth       MAL-ED           PERU                           <52 kg               0       81     226
Birth       MAL-ED           PERU                           <52 kg               1        3     226
Birth       MAL-ED           PERU                           [52-58) kg           0       59     226
Birth       MAL-ED           PERU                           [52-58) kg           1        0     226
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              0       69     101
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              1        0     101
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               0       10     101
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               1        0     101
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           0       21     101
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           1        1     101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              0       44     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        3     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               0       40     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               1        5     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0       29     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        1     122
Birth       NIH-Birth        BANGLADESH                     >=58 kg              0       79     608
Birth       NIH-Birth        BANGLADESH                     >=58 kg              1        1     608
Birth       NIH-Birth        BANGLADESH                     <52 kg               0      424     608
Birth       NIH-Birth        BANGLADESH                     <52 kg               1       17     608
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           0       86     608
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           1        1     608
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              0      184     729
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              1        2     729
Birth       NIH-Crypto       BANGLADESH                     <52 kg               0      392     729
Birth       NIH-Crypto       BANGLADESH                     <52 kg               1        3     729
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           0      143     729
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           1        5     729
Birth       PROBIT           BELARUS                        >=58 kg              0    10275   13770
Birth       PROBIT           BELARUS                        >=58 kg              1        2   13770
Birth       PROBIT           BELARUS                        <52 kg               0     1130   13770
Birth       PROBIT           BELARUS                        <52 kg               1        1   13770
Birth       PROBIT           BELARUS                        [52-58) kg           0     2360   13770
Birth       PROBIT           BELARUS                        [52-58) kg           1        2   13770
Birth       PROVIDE          BANGLADESH                     >=58 kg              0       91     517
Birth       PROVIDE          BANGLADESH                     >=58 kg              1        0     517
Birth       PROVIDE          BANGLADESH                     <52 kg               0      327     517
Birth       PROVIDE          BANGLADESH                     <52 kg               1        3     517
Birth       PROVIDE          BANGLADESH                     [52-58) kg           0       95     517
Birth       PROVIDE          BANGLADESH                     [52-58) kg           1        1     517
Birth       SAS-CompFeed     INDIA                          >=58 kg              0       90    1235
Birth       SAS-CompFeed     INDIA                          >=58 kg              1        0    1235
Birth       SAS-CompFeed     INDIA                          <52 kg               0      877    1235
Birth       SAS-CompFeed     INDIA                          <52 kg               1       79    1235
Birth       SAS-CompFeed     INDIA                          [52-58) kg           0      180    1235
Birth       SAS-CompFeed     INDIA                          [52-58) kg           1        9    1235
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              0     5628   11031
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              1      129   11031
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               0     2261   11031
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               1      104   11031
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           0     2812   11031
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           1       97   11031
6 months    LCNI-5           MALAWI                         >=58 kg              0      108     837
6 months    LCNI-5           MALAWI                         >=58 kg              1        6     837
6 months    LCNI-5           MALAWI                         <52 kg               0      452     837
6 months    LCNI-5           MALAWI                         <52 kg               1       52     837
6 months    LCNI-5           MALAWI                         [52-58) kg           0      206     837
6 months    LCNI-5           MALAWI                         [52-58) kg           1       13     837
6 months    MAL-ED           BANGLADESH                     >=58 kg              0       45     241
6 months    MAL-ED           BANGLADESH                     >=58 kg              1        1     241
6 months    MAL-ED           BANGLADESH                     <52 kg               0      147     241
6 months    MAL-ED           BANGLADESH                     <52 kg               1        7     241
6 months    MAL-ED           BANGLADESH                     [52-58) kg           0       41     241
6 months    MAL-ED           BANGLADESH                     [52-58) kg           1        0     241
6 months    MAL-ED           BRAZIL                         >=58 kg              0      137     208
6 months    MAL-ED           BRAZIL                         >=58 kg              1        0     208
6 months    MAL-ED           BRAZIL                         <52 kg               0       37     208
6 months    MAL-ED           BRAZIL                         <52 kg               1        0     208
6 months    MAL-ED           BRAZIL                         [52-58) kg           0       34     208
6 months    MAL-ED           BRAZIL                         [52-58) kg           1        0     208
6 months    MAL-ED           INDIA                          >=58 kg              0       40     235
6 months    MAL-ED           INDIA                          >=58 kg              1        0     235
6 months    MAL-ED           INDIA                          <52 kg               0      140     235
6 months    MAL-ED           INDIA                          <52 kg               1        6     235
6 months    MAL-ED           INDIA                          [52-58) kg           0       46     235
6 months    MAL-ED           INDIA                          [52-58) kg           1        3     235
6 months    MAL-ED           NEPAL                          >=58 kg              0       79     236
6 months    MAL-ED           NEPAL                          >=58 kg              1        0     236
6 months    MAL-ED           NEPAL                          <52 kg               0       74     236
6 months    MAL-ED           NEPAL                          <52 kg               1        1     236
6 months    MAL-ED           NEPAL                          [52-58) kg           0       82     236
6 months    MAL-ED           NEPAL                          [52-58) kg           1        0     236
6 months    MAL-ED           PERU                           >=58 kg              0       97     272
6 months    MAL-ED           PERU                           >=58 kg              1        3     272
6 months    MAL-ED           PERU                           <52 kg               0      101     272
6 months    MAL-ED           PERU                           <52 kg               1        6     272
6 months    MAL-ED           PERU                           [52-58) kg           0       64     272
6 months    MAL-ED           PERU                           [52-58) kg           1        1     272
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              0      176     249
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              1        3     249
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               0       28     249
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               1        1     249
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           0       39     249
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           1        2     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              0       89     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        5     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               0       87     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               1        8     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0       57     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        1     247
6 months    NIH-Birth        BANGLADESH                     >=58 kg              0       69     537
6 months    NIH-Birth        BANGLADESH                     >=58 kg              1        2     537
6 months    NIH-Birth        BANGLADESH                     <52 kg               0      353     537
6 months    NIH-Birth        BANGLADESH                     <52 kg               1       32     537
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           0       80     537
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           1        1     537
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              0      181     715
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              1        3     715
6 months    NIH-Crypto       BANGLADESH                     <52 kg               0      369     715
6 months    NIH-Crypto       BANGLADESH                     <52 kg               1       14     715
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           0      142     715
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           1        6     715
6 months    PROBIT           BELARUS                        >=58 kg              0     9648   13066
6 months    PROBIT           BELARUS                        >=58 kg              1       92   13066
6 months    PROBIT           BELARUS                        <52 kg               0     1065   13066
6 months    PROBIT           BELARUS                        <52 kg               1       18   13066
6 months    PROBIT           BELARUS                        [52-58) kg           0     2219   13066
6 months    PROBIT           BELARUS                        [52-58) kg           1       24   13066
6 months    PROVIDE          BANGLADESH                     >=58 kg              0      107     603
6 months    PROVIDE          BANGLADESH                     >=58 kg              1        2     603
6 months    PROVIDE          BANGLADESH                     <52 kg               0      375     603
6 months    PROVIDE          BANGLADESH                     <52 kg               1       10     603
6 months    PROVIDE          BANGLADESH                     [52-58) kg           0      107     603
6 months    PROVIDE          BANGLADESH                     [52-58) kg           1        2     603
6 months    SAS-CompFeed     INDIA                          >=58 kg              0       98    1330
6 months    SAS-CompFeed     INDIA                          >=58 kg              1        1    1330
6 months    SAS-CompFeed     INDIA                          <52 kg               0      901    1330
6 months    SAS-CompFeed     INDIA                          <52 kg               1      118    1330
6 months    SAS-CompFeed     INDIA                          [52-58) kg           0      204    1330
6 months    SAS-CompFeed     INDIA                          [52-58) kg           1        8    1330
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              0     1246    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        9    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               0      318    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               1        7    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0      406    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        3    1989
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              0     4239    8254
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              1      124    8254
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               0     1612    8254
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               1      114    8254
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           0     2069    8254
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           1       96    8254
24 months   LCNI-5           MALAWI                         >=58 kg              0       73     578
24 months   LCNI-5           MALAWI                         >=58 kg              1        4     578
24 months   LCNI-5           MALAWI                         <52 kg               0      294     578
24 months   LCNI-5           MALAWI                         <52 kg               1       54     578
24 months   LCNI-5           MALAWI                         [52-58) kg           0      141     578
24 months   LCNI-5           MALAWI                         [52-58) kg           1       12     578
24 months   MAL-ED           BANGLADESH                     >=58 kg              0       40     212
24 months   MAL-ED           BANGLADESH                     >=58 kg              1        0     212
24 months   MAL-ED           BANGLADESH                     <52 kg               0      107     212
24 months   MAL-ED           BANGLADESH                     <52 kg               1       28     212
24 months   MAL-ED           BANGLADESH                     [52-58) kg           0       37     212
24 months   MAL-ED           BANGLADESH                     [52-58) kg           1        0     212
24 months   MAL-ED           BRAZIL                         >=58 kg              0      109     168
24 months   MAL-ED           BRAZIL                         >=58 kg              1        0     168
24 months   MAL-ED           BRAZIL                         <52 kg               0       27     168
24 months   MAL-ED           BRAZIL                         <52 kg               1        1     168
24 months   MAL-ED           BRAZIL                         [52-58) kg           0       31     168
24 months   MAL-ED           BRAZIL                         [52-58) kg           1        0     168
24 months   MAL-ED           INDIA                          >=58 kg              0       36     226
24 months   MAL-ED           INDIA                          >=58 kg              1        2     226
24 months   MAL-ED           INDIA                          <52 kg               0      122     226
24 months   MAL-ED           INDIA                          <52 kg               1       19     226
24 months   MAL-ED           INDIA                          [52-58) kg           0       38     226
24 months   MAL-ED           INDIA                          [52-58) kg           1        9     226
24 months   MAL-ED           NEPAL                          >=58 kg              0       75     228
24 months   MAL-ED           NEPAL                          >=58 kg              1        1     228
24 months   MAL-ED           NEPAL                          <52 kg               0       68     228
24 months   MAL-ED           NEPAL                          <52 kg               1        6     228
24 months   MAL-ED           NEPAL                          [52-58) kg           0       78     228
24 months   MAL-ED           NEPAL                          [52-58) kg           1        0     228
24 months   MAL-ED           PERU                           >=58 kg              0       76     201
24 months   MAL-ED           PERU                           >=58 kg              1        1     201
24 months   MAL-ED           PERU                           <52 kg               0       65     201
24 months   MAL-ED           PERU                           <52 kg               1       10     201
24 months   MAL-ED           PERU                           [52-58) kg           0       45     201
24 months   MAL-ED           PERU                           [52-58) kg           1        4     201
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              0      153     234
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              1       15     234
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               0       22     234
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               1        6     234
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           0       32     234
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           1        6     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              0       62     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              1       20     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               0       48     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               1       36     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0       34     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1       14     214
24 months   NIH-Birth        BANGLADESH                     >=58 kg              0       48     429
24 months   NIH-Birth        BANGLADESH                     >=58 kg              1        9     429
24 months   NIH-Birth        BANGLADESH                     <52 kg               0      230     429
24 months   NIH-Birth        BANGLADESH                     <52 kg               1       78     429
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           0       56     429
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           1        8     429
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              0      137     514
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              1        1     514
24 months   NIH-Crypto       BANGLADESH                     <52 kg               0      245     514
24 months   NIH-Crypto       BANGLADESH                     <52 kg               1       28     514
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           0       96     514
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           1        7     514
24 months   PROBIT           BELARUS                        >=58 kg              0     2966    4013
24 months   PROBIT           BELARUS                        >=58 kg              1       45    4013
24 months   PROBIT           BELARUS                        <52 kg               0      316    4013
24 months   PROBIT           BELARUS                        <52 kg               1        9    4013
24 months   PROBIT           BELARUS                        [52-58) kg           0      666    4013
24 months   PROBIT           BELARUS                        [52-58) kg           1       11    4013
24 months   PROVIDE          BANGLADESH                     >=58 kg              0      110     577
24 months   PROVIDE          BANGLADESH                     >=58 kg              1        1     577
24 months   PROVIDE          BANGLADESH                     <52 kg               0      315     577
24 months   PROVIDE          BANGLADESH                     <52 kg               1       47     577
24 months   PROVIDE          BANGLADESH                     [52-58) kg           0      100     577
24 months   PROVIDE          BANGLADESH                     [52-58) kg           1        4     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        0       6
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              0      774    1588
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              1       59    1588
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               0      270    1588
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               1       64    1588
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           0      372    1588
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           1       49    1588


The following strata were considered:

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
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
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
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/b058abff-77be-42e7-8db9-8a15220aa200/013cb164-9602-4d43-8c14-7d8520599ec5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b058abff-77be-42e7-8db9-8a15220aa200/013cb164-9602-4d43-8c14-7d8520599ec5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b058abff-77be-42e7-8db9-8a15220aa200/013cb164-9602-4d43-8c14-7d8520599ec5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b058abff-77be-42e7-8db9-8a15220aa200/013cb164-9602-4d43-8c14-7d8520599ec5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0224075    0.0185841   0.0262309
Birth       ZVITAMBO    ZIMBABWE                       <52 kg               NA                0.0439746    0.0357107   0.0522386
Birth       ZVITAMBO    ZIMBABWE                       [52-58) kg           NA                0.0333448    0.0268203   0.0398693
6 months    LCNI-5      MALAWI                         >=58 kg              NA                0.0526316    0.0116170   0.0936461
6 months    LCNI-5      MALAWI                         <52 kg               NA                0.1031746    0.0766021   0.1297471
6 months    LCNI-5      MALAWI                         [52-58) kg           NA                0.0593607    0.0280461   0.0906753
6 months    PROBIT      BELARUS                        >=58 kg              NA                0.0094456    0.0040527   0.0148385
6 months    PROBIT      BELARUS                        <52 kg               NA                0.0166205    0.0038215   0.0294195
6 months    PROBIT      BELARUS                        [52-58) kg           NA                0.0107000    0.0049808   0.0164191
6 months    ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0284208    0.0234898   0.0333519
6 months    ZVITAMBO    ZIMBABWE                       <52 kg               NA                0.0660487    0.0543308   0.0777665
6 months    ZVITAMBO    ZIMBABWE                       [52-58) kg           NA                0.0443418    0.0356701   0.0530135
24 months   MAL-ED      SOUTH AFRICA                   >=58 kg              NA                0.0892857    0.0460736   0.1324978
24 months   MAL-ED      SOUTH AFRICA                   <52 kg               NA                0.2142857    0.0619759   0.3665956
24 months   MAL-ED      SOUTH AFRICA                   [52-58) kg           NA                0.1578947    0.0417089   0.2740806
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2439024    0.1507369   0.3370680
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.4285714    0.3224952   0.5346477
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2916667    0.1627804   0.4205530
24 months   NIH-Birth   BANGLADESH                     >=58 kg              NA                0.1578947    0.0631218   0.2526677
24 months   NIH-Birth   BANGLADESH                     <52 kg               NA                0.2532468    0.2046239   0.3018696
24 months   NIH-Birth   BANGLADESH                     [52-58) kg           NA                0.1250000    0.0438808   0.2061192
24 months   PROBIT      BELARUS                        >=58 kg              NA                0.0149452    0.0035926   0.0262978
24 months   PROBIT      BELARUS                        <52 kg               NA                0.0276923    0.0043761   0.0510085
24 months   PROBIT      BELARUS                        [52-58) kg           NA                0.0162482   -0.0152062   0.0477025
24 months   ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0708283    0.0534017   0.0882550
24 months   ZVITAMBO    ZIMBABWE                       <52 kg               NA                0.1916168    0.1493949   0.2338386
24 months   ZVITAMBO    ZIMBABWE                       [52-58) kg           NA                0.1163895    0.0857466   0.1470325


### Parameter: E(Y)


agecat      studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ZVITAMBO    ZIMBABWE                       NA                   NA                0.0299157   0.0267365   0.0330949
6 months    LCNI-5      MALAWI                         NA                   NA                0.0848268   0.0659398   0.1037138
6 months    PROBIT      BELARUS                        NA                   NA                0.0102556   0.0050084   0.0155028
6 months    ZVITAMBO    ZIMBABWE                       NA                   NA                0.0404652   0.0362140   0.0447164
24 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.1153846   0.0743622   0.1564070
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3271028   0.2640978   0.3901078
24 months   NIH-Birth   BANGLADESH                     NA                   NA                0.2214452   0.1821080   0.2607825
24 months   PROBIT      BELARUS                        NA                   NA                0.0161974   0.0018682   0.0305265
24 months   ZVITAMBO    ZIMBABWE                       NA                   NA                0.1083123   0.0930224   0.1236023


### Parameter: RR


agecat      studyid     country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ZVITAMBO    ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ZVITAMBO    ZIMBABWE                       <52 kg               >=58 kg           1.9624957   1.5225492   2.529566
Birth       ZVITAMBO    ZIMBABWE                       [52-58) kg           >=58 kg           1.4881083   1.1478506   1.929229
6 months    LCNI-5      MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    LCNI-5      MALAWI                         <52 kg               >=58 kg           1.9603175   0.8627530   4.454166
6 months    LCNI-5      MALAWI                         [52-58) kg           >=58 kg           1.1278539   0.4401123   2.890295
6 months    PROBIT      BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    PROBIT      BELARUS                        <52 kg               >=58 kg           1.7596050   0.8518311   3.634769
6 months    PROBIT      BELARUS                        [52-58) kg           >=58 kg           1.1327996   0.7197205   1.782963
6 months    ZVITAMBO    ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ZVITAMBO    ZIMBABWE                       <52 kg               >=58 kg           2.3239543   1.8132509   2.978498
6 months    ZVITAMBO    ZIMBABWE                       [52-58) kg           >=58 kg           1.5601877   1.2012604   2.026360
24 months   MAL-ED      SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   MAL-ED      SOUTH AFRICA                   <52 kg               >=58 kg           2.4000000   1.0156837   5.671057
24 months   MAL-ED      SOUTH AFRICA                   [52-58) kg           >=58 kg           1.7684211   0.7329701   4.266631
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.7571429   1.1146387   2.770001
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1958333   0.6668017   2.144592
24 months   NIH-Birth   BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   NIH-Birth   BANGLADESH                     <52 kg               >=58 kg           1.6038961   0.8540608   3.012060
24 months   NIH-Birth   BANGLADESH                     [52-58) kg           >=58 kg           0.7916667   0.3270664   1.916235
24 months   PROBIT      BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   PROBIT      BELARUS                        <52 kg               >=58 kg           1.8529231   0.9193047   3.734696
24 months   PROBIT      BELARUS                        [52-58) kg           >=58 kg           1.0871820   0.2415308   4.893639
24 months   ZVITAMBO    ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ZVITAMBO    ZIMBABWE                       <52 kg               >=58 kg           2.7053689   1.9444003   3.764153
24 months   ZVITAMBO    ZIMBABWE                       [52-58) kg           >=58 kg           1.6432626   1.1460642   2.356161


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0075082    0.0044313   0.0105851
6 months    LCNI-5      MALAWI                         >=58 kg              NA                0.0321952   -0.0075626   0.0719530
6 months    PROBIT      BELARUS                        >=58 kg              NA                0.0008100   -0.0003613   0.0019814
6 months    ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0120444    0.0079600   0.0161288
24 months   MAL-ED      SOUTH AFRICA                   >=58 kg              NA                0.0260989   -0.0033781   0.0555759
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0832004    0.0057561   0.1606447
24 months   NIH-Birth   BANGLADESH                     >=58 kg              NA                0.0635505   -0.0266855   0.1537865
24 months   PROBIT      BELARUS                        >=58 kg              NA                0.0012522   -0.0040902   0.0065945
24 months   ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.0374840    0.0226899   0.0522781


### Parameter: PAF


agecat      studyid     country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.2509783    0.1445691   0.3441509
6 months    LCNI-5      MALAWI                         >=58 kg              NA                0.3795404   -0.3062459   0.7052851
6 months    PROBIT      BELARUS                        >=58 kg              NA                0.0789850   -0.0511264   0.1929908
6 months    ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.2976486    0.1944669   0.3876136
24 months   MAL-ED      SOUTH AFRICA                   >=58 kg              NA                0.2261905   -0.0622499   0.4363086
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2543554   -0.0223868   0.4561884
24 months   NIH-Birth   BANGLADESH                     >=58 kg              NA                0.2869806   -0.2593344   0.5962973
24 months   PROBIT      BELARUS                        >=58 kg              NA                0.0773063   -0.2597202   0.3241645
24 months   ZVITAMBO    ZIMBABWE                       >=58 kg              NA                0.3460733    0.2034341   0.4631704
