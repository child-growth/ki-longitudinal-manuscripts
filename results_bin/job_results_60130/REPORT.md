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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mwtkg         stunted   n_cell       n
----------  ---------------  -----------------------------  -----------  --------  -------  ------
Birth       JiVitA-3         BANGLADESH                     >=58 kg             0      374   22432
Birth       JiVitA-3         BANGLADESH                     >=58 kg             1      126   22432
Birth       JiVitA-3         BANGLADESH                     <52 kg              0    13634   22432
Birth       JiVitA-3         BANGLADESH                     <52 kg              1     6845   22432
Birth       JiVitA-3         BANGLADESH                     [52-58) kg          0     1046   22432
Birth       JiVitA-3         BANGLADESH                     [52-58) kg          1      407   22432
Birth       MAL-ED           BANGLADESH                     >=58 kg             0       31     222
Birth       MAL-ED           BANGLADESH                     >=58 kg             1        7     222
Birth       MAL-ED           BANGLADESH                     <52 kg              0      114     222
Birth       MAL-ED           BANGLADESH                     <52 kg              1       29     222
Birth       MAL-ED           BANGLADESH                     [52-58) kg          0       37     222
Birth       MAL-ED           BANGLADESH                     [52-58) kg          1        4     222
Birth       MAL-ED           BRAZIL                         >=58 kg             0       31      64
Birth       MAL-ED           BRAZIL                         >=58 kg             1        3      64
Birth       MAL-ED           BRAZIL                         <52 kg              0       11      64
Birth       MAL-ED           BRAZIL                         <52 kg              1        4      64
Birth       MAL-ED           BRAZIL                         [52-58) kg          0       13      64
Birth       MAL-ED           BRAZIL                         [52-58) kg          1        2      64
Birth       MAL-ED           INDIA                          >=58 kg             0        5      43
Birth       MAL-ED           INDIA                          >=58 kg             1        1      43
Birth       MAL-ED           INDIA                          <52 kg              0       24      43
Birth       MAL-ED           INDIA                          <52 kg              1        5      43
Birth       MAL-ED           INDIA                          [52-58) kg          0        5      43
Birth       MAL-ED           INDIA                          [52-58) kg          1        3      43
Birth       MAL-ED           NEPAL                          >=58 kg             0        9      27
Birth       MAL-ED           NEPAL                          >=58 kg             1        0      27
Birth       MAL-ED           NEPAL                          <52 kg              0        6      27
Birth       MAL-ED           NEPAL                          <52 kg              1        2      27
Birth       MAL-ED           NEPAL                          [52-58) kg          0       10      27
Birth       MAL-ED           NEPAL                          [52-58) kg          1        0      27
Birth       MAL-ED           PERU                           >=58 kg             0       78     226
Birth       MAL-ED           PERU                           >=58 kg             1        5     226
Birth       MAL-ED           PERU                           <52 kg              0       68     226
Birth       MAL-ED           PERU                           <52 kg              1       16     226
Birth       MAL-ED           PERU                           [52-58) kg          0       54     226
Birth       MAL-ED           PERU                           [52-58) kg          1        5     226
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg             0       65     101
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg             1        4     101
Birth       MAL-ED           SOUTH AFRICA                   <52 kg              0        8     101
Birth       MAL-ED           SOUTH AFRICA                   <52 kg              1        2     101
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg          0       19     101
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg          1        3     101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       39     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        8     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              0       33     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              1       12     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       28     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        2     122
Birth       NIH-Birth        BANGLADESH                     >=58 kg             0       72     608
Birth       NIH-Birth        BANGLADESH                     >=58 kg             1        8     608
Birth       NIH-Birth        BANGLADESH                     <52 kg              0      363     608
Birth       NIH-Birth        BANGLADESH                     <52 kg              1       78     608
Birth       NIH-Birth        BANGLADESH                     [52-58) kg          0       76     608
Birth       NIH-Birth        BANGLADESH                     [52-58) kg          1       11     608
Birth       NIH-Crypto       BANGLADESH                     >=58 kg             0      171     729
Birth       NIH-Crypto       BANGLADESH                     >=58 kg             1       15     729
Birth       NIH-Crypto       BANGLADESH                     <52 kg              0      328     729
Birth       NIH-Crypto       BANGLADESH                     <52 kg              1       67     729
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg          0      129     729
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg          1       19     729
Birth       PROBIT           BELARUS                        >=58 kg             0    10255   13770
Birth       PROBIT           BELARUS                        >=58 kg             1       22   13770
Birth       PROBIT           BELARUS                        <52 kg              0     1123   13770
Birth       PROBIT           BELARUS                        <52 kg              1        8   13770
Birth       PROBIT           BELARUS                        [52-58) kg          0     2358   13770
Birth       PROBIT           BELARUS                        [52-58) kg          1        4   13770
Birth       PROVIDE          BANGLADESH                     >=58 kg             0       87     517
Birth       PROVIDE          BANGLADESH                     >=58 kg             1        4     517
Birth       PROVIDE          BANGLADESH                     <52 kg              0      302     517
Birth       PROVIDE          BANGLADESH                     <52 kg              1       28     517
Birth       PROVIDE          BANGLADESH                     [52-58) kg          0       81     517
Birth       PROVIDE          BANGLADESH                     [52-58) kg          1       15     517
Birth       SAS-CompFeed     INDIA                          >=58 kg             0       82    1236
Birth       SAS-CompFeed     INDIA                          >=58 kg             1        9    1236
Birth       SAS-CompFeed     INDIA                          <52 kg              0      660    1236
Birth       SAS-CompFeed     INDIA                          <52 kg              1      289    1236
Birth       SAS-CompFeed     INDIA                          [52-58) kg          0      155    1236
Birth       SAS-CompFeed     INDIA                          [52-58) kg          1       41    1236
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg             0     5307   11031
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg             1      450   11031
Birth       ZVITAMBO         ZIMBABWE                       <52 kg              0     2037   11031
Birth       ZVITAMBO         ZIMBABWE                       <52 kg              1      328   11031
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2572   11031
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg          1      337   11031
6 months    JiVitA-3         BANGLADESH                     >=58 kg             0      332   16802
6 months    JiVitA-3         BANGLADESH                     >=58 kg             1       75   16802
6 months    JiVitA-3         BANGLADESH                     <52 kg              0    11340   16802
6 months    JiVitA-3         BANGLADESH                     <52 kg              1     3903   16802
6 months    JiVitA-3         BANGLADESH                     [52-58) kg          0      905   16802
6 months    JiVitA-3         BANGLADESH                     [52-58) kg          1      247   16802
6 months    LCNI-5           MALAWI                         >=58 kg             0       86     837
6 months    LCNI-5           MALAWI                         >=58 kg             1       28     837
6 months    LCNI-5           MALAWI                         <52 kg              0      286     837
6 months    LCNI-5           MALAWI                         <52 kg              1      218     837
6 months    LCNI-5           MALAWI                         [52-58) kg          0      157     837
6 months    LCNI-5           MALAWI                         [52-58) kg          1       62     837
6 months    MAL-ED           BANGLADESH                     >=58 kg             0       40     241
6 months    MAL-ED           BANGLADESH                     >=58 kg             1        6     241
6 months    MAL-ED           BANGLADESH                     <52 kg              0      116     241
6 months    MAL-ED           BANGLADESH                     <52 kg              1       38     241
6 months    MAL-ED           BANGLADESH                     [52-58) kg          0       41     241
6 months    MAL-ED           BANGLADESH                     [52-58) kg          1        0     241
6 months    MAL-ED           BRAZIL                         >=58 kg             0      134     208
6 months    MAL-ED           BRAZIL                         >=58 kg             1        3     208
6 months    MAL-ED           BRAZIL                         <52 kg              0       36     208
6 months    MAL-ED           BRAZIL                         <52 kg              1        1     208
6 months    MAL-ED           BRAZIL                         [52-58) kg          0       32     208
6 months    MAL-ED           BRAZIL                         [52-58) kg          1        2     208
6 months    MAL-ED           INDIA                          >=58 kg             0       36     235
6 months    MAL-ED           INDIA                          >=58 kg             1        4     235
6 months    MAL-ED           INDIA                          <52 kg              0      116     235
6 months    MAL-ED           INDIA                          <52 kg              1       30     235
6 months    MAL-ED           INDIA                          [52-58) kg          0       39     235
6 months    MAL-ED           INDIA                          [52-58) kg          1       10     235
6 months    MAL-ED           NEPAL                          >=58 kg             0       77     236
6 months    MAL-ED           NEPAL                          >=58 kg             1        2     236
6 months    MAL-ED           NEPAL                          <52 kg              0       66     236
6 months    MAL-ED           NEPAL                          <52 kg              1        9     236
6 months    MAL-ED           NEPAL                          [52-58) kg          0       81     236
6 months    MAL-ED           NEPAL                          [52-58) kg          1        1     236
6 months    MAL-ED           PERU                           >=58 kg             0       81     272
6 months    MAL-ED           PERU                           >=58 kg             1       19     272
6 months    MAL-ED           PERU                           <52 kg              0       79     272
6 months    MAL-ED           PERU                           <52 kg              1       28     272
6 months    MAL-ED           PERU                           [52-58) kg          0       52     272
6 months    MAL-ED           PERU                           [52-58) kg          1       13     272
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg             0      149     249
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg             1       30     249
6 months    MAL-ED           SOUTH AFRICA                   <52 kg              0       20     249
6 months    MAL-ED           SOUTH AFRICA                   <52 kg              1        9     249
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg          0       30     249
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg          1       11     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       75     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       19     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              0       68     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              1       27     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       45     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       13     247
6 months    NIH-Birth        BANGLADESH                     >=58 kg             0       57     537
6 months    NIH-Birth        BANGLADESH                     >=58 kg             1       14     537
6 months    NIH-Birth        BANGLADESH                     <52 kg              0      268     537
6 months    NIH-Birth        BANGLADESH                     <52 kg              1      117     537
6 months    NIH-Birth        BANGLADESH                     [52-58) kg          0       68     537
6 months    NIH-Birth        BANGLADESH                     [52-58) kg          1       13     537
6 months    NIH-Crypto       BANGLADESH                     >=58 kg             0      159     715
6 months    NIH-Crypto       BANGLADESH                     >=58 kg             1       25     715
6 months    NIH-Crypto       BANGLADESH                     <52 kg              0      285     715
6 months    NIH-Crypto       BANGLADESH                     <52 kg              1       98     715
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg          0      121     715
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg          1       27     715
6 months    PROBIT           BELARUS                        >=58 kg             0     9405   13066
6 months    PROBIT           BELARUS                        >=58 kg             1      335   13066
6 months    PROBIT           BELARUS                        <52 kg              0     1019   13066
6 months    PROBIT           BELARUS                        <52 kg              1       64   13066
6 months    PROBIT           BELARUS                        [52-58) kg          0     2160   13066
6 months    PROBIT           BELARUS                        [52-58) kg          1       83   13066
6 months    PROVIDE          BANGLADESH                     >=58 kg             0       98     603
6 months    PROVIDE          BANGLADESH                     >=58 kg             1       11     603
6 months    PROVIDE          BANGLADESH                     <52 kg              0      316     603
6 months    PROVIDE          BANGLADESH                     <52 kg              1       69     603
6 months    PROVIDE          BANGLADESH                     [52-58) kg          0       94     603
6 months    PROVIDE          BANGLADESH                     [52-58) kg          1       15     603
6 months    SAS-CompFeed     INDIA                          >=58 kg             0       89    1331
6 months    SAS-CompFeed     INDIA                          >=58 kg             1       14    1331
6 months    SAS-CompFeed     INDIA                          <52 kg              0      685    1331
6 months    SAS-CompFeed     INDIA                          <52 kg              1      329    1331
6 months    SAS-CompFeed     INDIA                          [52-58) kg          0      179    1331
6 months    SAS-CompFeed     INDIA                          [52-58) kg          1       35    1331
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0     1143    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1      112    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0      280    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1       45    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0      374    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       35    1989
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg             0     3826    8254
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg             1      537    8254
6 months    ZVITAMBO         ZIMBABWE                       <52 kg              0     1303    8254
6 months    ZVITAMBO         ZIMBABWE                       <52 kg              1      423    8254
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg          0     1771    8254
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg          1      394    8254
24 months   JiVitA-3         BANGLADESH                     >=58 kg             0      113    8627
24 months   JiVitA-3         BANGLADESH                     >=58 kg             1       84    8627
24 months   JiVitA-3         BANGLADESH                     <52 kg              0     3932    8627
24 months   JiVitA-3         BANGLADESH                     <52 kg              1     3927    8627
24 months   JiVitA-3         BANGLADESH                     [52-58) kg          0      346    8627
24 months   JiVitA-3         BANGLADESH                     [52-58) kg          1      225    8627
24 months   LCNI-5           MALAWI                         >=58 kg             0       56     578
24 months   LCNI-5           MALAWI                         >=58 kg             1       21     578
24 months   LCNI-5           MALAWI                         <52 kg              0      168     578
24 months   LCNI-5           MALAWI                         <52 kg              1      180     578
24 months   LCNI-5           MALAWI                         [52-58) kg          0       97     578
24 months   LCNI-5           MALAWI                         [52-58) kg          1       56     578
24 months   MAL-ED           BANGLADESH                     >=58 kg             0       30     212
24 months   MAL-ED           BANGLADESH                     >=58 kg             1       10     212
24 months   MAL-ED           BANGLADESH                     <52 kg              0       55     212
24 months   MAL-ED           BANGLADESH                     <52 kg              1       80     212
24 months   MAL-ED           BANGLADESH                     [52-58) kg          0       26     212
24 months   MAL-ED           BANGLADESH                     [52-58) kg          1       11     212
24 months   MAL-ED           BRAZIL                         >=58 kg             0      105     168
24 months   MAL-ED           BRAZIL                         >=58 kg             1        4     168
24 months   MAL-ED           BRAZIL                         <52 kg              0       26     168
24 months   MAL-ED           BRAZIL                         <52 kg              1        2     168
24 months   MAL-ED           BRAZIL                         [52-58) kg          0       30     168
24 months   MAL-ED           BRAZIL                         [52-58) kg          1        1     168
24 months   MAL-ED           INDIA                          >=58 kg             0       27     226
24 months   MAL-ED           INDIA                          >=58 kg             1       11     226
24 months   MAL-ED           INDIA                          <52 kg              0       75     226
24 months   MAL-ED           INDIA                          <52 kg              1       66     226
24 months   MAL-ED           INDIA                          [52-58) kg          0       28     226
24 months   MAL-ED           INDIA                          [52-58) kg          1       19     226
24 months   MAL-ED           NEPAL                          >=58 kg             0       68     228
24 months   MAL-ED           NEPAL                          >=58 kg             1        8     228
24 months   MAL-ED           NEPAL                          <52 kg              0       47     228
24 months   MAL-ED           NEPAL                          <52 kg              1       27     228
24 months   MAL-ED           NEPAL                          [52-58) kg          0       63     228
24 months   MAL-ED           NEPAL                          [52-58) kg          1       15     228
24 months   MAL-ED           PERU                           >=58 kg             0       59     201
24 months   MAL-ED           PERU                           >=58 kg             1       18     201
24 months   MAL-ED           PERU                           <52 kg              0       39     201
24 months   MAL-ED           PERU                           <52 kg              1       36     201
24 months   MAL-ED           PERU                           [52-58) kg          0       29     201
24 months   MAL-ED           PERU                           [52-58) kg          1       20     201
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg             0      117     234
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg             1       51     234
24 months   MAL-ED           SOUTH AFRICA                   <52 kg              0       15     234
24 months   MAL-ED           SOUTH AFRICA                   <52 kg              1       13     234
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg          0       20     234
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg          1       18     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       32     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       50     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              0       18     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg              1       66     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0        9     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       39     214
24 months   NIH-Birth        BANGLADESH                     >=58 kg             0       38     429
24 months   NIH-Birth        BANGLADESH                     >=58 kg             1       19     429
24 months   NIH-Birth        BANGLADESH                     <52 kg              0      116     429
24 months   NIH-Birth        BANGLADESH                     <52 kg              1      192     429
24 months   NIH-Birth        BANGLADESH                     [52-58) kg          0       31     429
24 months   NIH-Birth        BANGLADESH                     [52-58) kg          1       33     429
24 months   NIH-Crypto       BANGLADESH                     >=58 kg             0      121     514
24 months   NIH-Crypto       BANGLADESH                     >=58 kg             1       17     514
24 months   NIH-Crypto       BANGLADESH                     <52 kg              0      180     514
24 months   NIH-Crypto       BANGLADESH                     <52 kg              1       93     514
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg          0       81     514
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg          1       22     514
24 months   PROBIT           BELARUS                        >=58 kg             0     2824    4013
24 months   PROBIT           BELARUS                        >=58 kg             1      187    4013
24 months   PROBIT           BELARUS                        <52 kg              0      288    4013
24 months   PROBIT           BELARUS                        <52 kg              1       37    4013
24 months   PROBIT           BELARUS                        [52-58) kg          0      628    4013
24 months   PROBIT           BELARUS                        [52-58) kg          1       49    4013
24 months   PROVIDE          BANGLADESH                     >=58 kg             0       93     577
24 months   PROVIDE          BANGLADESH                     >=58 kg             1       18     577
24 months   PROVIDE          BANGLADESH                     <52 kg              0      215     577
24 months   PROVIDE          BANGLADESH                     <52 kg              1      147     577
24 months   PROVIDE          BANGLADESH                     [52-58) kg          0       80     577
24 months   PROVIDE          BANGLADESH                     [52-58) kg          1       24     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        0       6
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg             0      597    1588
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg             1      236    1588
24 months   ZVITAMBO         ZIMBABWE                       <52 kg              0      171    1588
24 months   ZVITAMBO         ZIMBABWE                       <52 kg              1      163    1588
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg          0      269    1588
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg          1      152    1588


The following strata were considered:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/1a7affff-8957-4bfe-b477-f55b765ec2fd/9e5ef201-b52f-4b80-8b9c-de2a0ecb0dd1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1a7affff-8957-4bfe-b477-f55b765ec2fd/9e5ef201-b52f-4b80-8b9c-de2a0ecb0dd1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1a7affff-8957-4bfe-b477-f55b765ec2fd/9e5ef201-b52f-4b80-8b9c-de2a0ecb0dd1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1a7affff-8957-4bfe-b477-f55b765ec2fd/9e5ef201-b52f-4b80-8b9c-de2a0ecb0dd1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                0.2797846   0.2446074   0.3149617
Birth       JiVitA-3         BANGLADESH                     <52 kg               NA                0.3329127   0.3253312   0.3404942
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.2900318   0.2639072   0.3161564
Birth       MAL-ED           PERU                           >=58 kg              NA                0.0602410   0.0089399   0.1115420
Birth       MAL-ED           PERU                           <52 kg               NA                0.1904762   0.1063160   0.2746364
Birth       MAL-ED           PERU                           [52-58) kg           NA                0.0847458   0.0135236   0.1559679
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1000000   0.0342067   0.1657933
Birth       NIH-Birth        BANGLADESH                     <52 kg               NA                0.1768707   0.1412299   0.2125116
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1264368   0.0565444   0.1963292
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0917404   0.0470648   0.1364161
Birth       NIH-Crypto       BANGLADESH                     <52 kg               NA                0.1672856   0.1301839   0.2043873
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.1305654   0.0712455   0.1898852
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                0.0989011   0.0494314   0.1483708
Birth       SAS-CompFeed     INDIA                          <52 kg               NA                0.3045311   0.2684154   0.3406468
Birth       SAS-CompFeed     INDIA                          [52-58) kg           NA                0.2091837   0.1698398   0.2485275
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0784335   0.0714080   0.0854589
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1375673   0.1232567   0.1518779
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1176530   0.1056323   0.1296737
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.2092698   0.1749052   0.2436344
6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                0.2545726   0.2460968   0.2630485
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.2307134   0.2031070   0.2583198
6 months    LCNI-5           MALAWI                         >=58 kg              NA                0.2523163   0.1701671   0.3344656
6 months    LCNI-5           MALAWI                         <52 kg               NA                0.4372704   0.3940827   0.4804580
6 months    LCNI-5           MALAWI                         [52-58) kg           NA                0.2753227   0.2150803   0.3355651
6 months    MAL-ED           PERU                           >=58 kg              NA                0.1709517   0.0978839   0.2440196
6 months    MAL-ED           PERU                           <52 kg               NA                0.2370179   0.1548692   0.3191666
6 months    MAL-ED           PERU                           [52-58) kg           NA                0.2012524   0.0924588   0.3100459
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.1675978   0.1127706   0.2224250
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.3103448   0.1416269   0.4790627
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.2682927   0.1323978   0.4041876
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1969440   0.1149984   0.2788895
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2774432   0.1854838   0.3694027
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2129209   0.1030682   0.3227736
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1919695   0.0949198   0.2890191
6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                0.3070086   0.2609474   0.3530698
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1553521   0.0754682   0.2352359
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1471607   0.0919234   0.2023979
6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                0.2484942   0.2048445   0.2921439
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.1906398   0.1205561   0.2607234
6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0348144   0.0253299   0.0442989
6 months    PROBIT           BELARUS                        <52 kg               NA                0.0592580   0.0367810   0.0817349
6 months    PROBIT           BELARUS                        [52-58) kg           NA                0.0391618   0.0261916   0.0521321
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                0.0981520   0.0403977   0.1559064
6 months    PROVIDE          BANGLADESH                     <52 kg               NA                0.1804225   0.1420828   0.2187622
6 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                0.1281085   0.0611021   0.1951148
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.1536950   0.0838485   0.2235415
6 months    SAS-CompFeed     INDIA                          <52 kg               NA                0.3137229   0.2883936   0.3390523
6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                0.1702665   0.1178905   0.2226426
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0901888   0.0741962   0.1061814
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1409275   0.1023140   0.1795410
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0892636   0.0599636   0.1185637
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1227610   0.1129300   0.1325919
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2432120   0.2224545   0.2639696
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1858753   0.1689590   0.2027917
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.4617385   0.3911709   0.5323060
24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.4971414   0.4837733   0.5105095
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.4172666   0.3721363   0.4623969
24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.2790021   0.1771467   0.3808575
24 months   LCNI-5           MALAWI                         <52 kg               NA                0.5203981   0.4677739   0.5730222
24 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.3520719   0.2747970   0.4293467
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.2623138   0.1010661   0.4235615
24 months   MAL-ED           BANGLADESH                     <52 kg               NA                0.5947317   0.5100105   0.6794529
24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                0.2857011   0.1403828   0.4310194
24 months   MAL-ED           INDIA                          >=58 kg              NA                0.3183547   0.1506011   0.4861084
24 months   MAL-ED           INDIA                          <52 kg               NA                0.4750332   0.3926776   0.5573888
24 months   MAL-ED           INDIA                          [52-58) kg           NA                0.3801891   0.2367160   0.5236622
24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.1052632   0.0361148   0.1744115
24 months   MAL-ED           NEPAL                          <52 kg               NA                0.3648649   0.2549426   0.4747872
24 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.1923077   0.1046527   0.2799627
24 months   MAL-ED           PERU                           >=58 kg              NA                0.2321753   0.1313713   0.3329793
24 months   MAL-ED           PERU                           <52 kg               NA                0.4666651   0.3458994   0.5874308
24 months   MAL-ED           PERU                           [52-58) kg           NA                0.3981759   0.2357303   0.5606214
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.3036795   0.2338226   0.3735364
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.4930173   0.2986267   0.6874080
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.4637250   0.2999458   0.6275042
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.6097561   0.5039272   0.7155850
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.7857143   0.6977605   0.8736681
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.8125000   0.7018231   0.9231769
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3004026   0.1763624   0.4244428
24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.6267456   0.5725722   0.6809190
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.5224480   0.3993312   0.6455647
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1329341   0.0727409   0.1931273
24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.3213168   0.2662499   0.3763837
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.2181665   0.1362934   0.3000397
24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0620381   0.0328553   0.0912210
24 months   PROBIT           BELARUS                        <52 kg               NA                0.1140059   0.0617563   0.1662554
24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.0721750   0.0274651   0.1168849
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.2201254   0.1296106   0.3106402
24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.3908841   0.3405499   0.4412183
24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.2181760   0.1398454   0.2965066
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2858596   0.2547920   0.3169272
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.4820059   0.4279417   0.5360700
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.3606703   0.3132922   0.4080484


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.3289051   0.3215448   0.3362655
Birth       MAL-ED           PERU                           NA                   NA                0.1150442   0.0733525   0.1567360
Birth       NIH-Birth        BANGLADESH                     NA                   NA                0.1595395   0.1304091   0.1886699
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.1385460   0.1134505   0.1636414
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.2742718   0.2403806   0.3081631
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1010788   0.0954534   0.1067041
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2514582   0.2433372   0.2595791
6 months    LCNI-5           MALAWI                         NA                   NA                0.3679809   0.3352903   0.4006715
6 months    MAL-ED           PERU                           NA                   NA                0.2205882   0.1712211   0.2699554
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.2008032   0.1509453   0.2506612
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2388664   0.1855834   0.2921494
6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROBIT           BELARUS                        NA                   NA                0.0368896   0.0278229   0.0459564
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.1575456   0.1284434   0.1866478
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2839970   0.2655949   0.3023990
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965309   0.0835493   0.1095126
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1640417   0.1560523   0.1720310
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4910166   0.4779105   0.5041227
24 months   LCNI-5           MALAWI                         NA                   NA                0.4446367   0.4040904   0.4851830
24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4764151   0.4090254   0.5438047
24 months   MAL-ED           INDIA                          NA                   NA                0.4247788   0.3601902   0.4893673
24 months   MAL-ED           NEPAL                          NA                   NA                0.2192982   0.1654718   0.2731246
24 months   MAL-ED           PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.3504274   0.2891665   0.4116882
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7242991   0.6642873   0.7843108
24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5687646   0.5218455   0.6156837
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROBIT           BELARUS                        NA                   NA                0.0680289   0.0409200   0.0951378
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3275563   0.2892291   0.3658836
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3469773   0.3235580   0.3703967


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.1898895   1.0474557   1.351692
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.0366254   0.8934986   1.202679
Birth       MAL-ED           PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       MAL-ED           PERU                           <52 kg               >=58 kg           3.1619048   1.2114019   8.252952
Birth       MAL-ED           PERU                           [52-58) kg           >=58 kg           1.4067797   0.4252149   4.654186
Birth       NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.7687075   0.8888286   3.519606
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.2643678   0.5353913   2.985902
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           1.8234665   1.0673604   3.115190
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.4232038   0.7319597   2.767241
Birth       SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed     INDIA                          <52 kg               >=58 kg           3.0791476   1.9560693   4.847042
Birth       SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           2.1150794   1.3057415   3.426069
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.7539364   1.5290738   2.011867
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.5000361   1.3095710   1.718203
6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.2164804   1.0316087   1.434483
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.1024687   0.9009585   1.349049
6 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    LCNI-5           MALAWI                         <52 kg               >=58 kg           1.7330244   1.2336170   2.434608
6 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.0911806   0.7366528   1.616331
6 months    MAL-ED           PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    MAL-ED           PERU                           <52 kg               >=58 kg           1.3864609   0.7960653   2.414719
6 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           1.1772468   0.5908048   2.345800
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           1.8517241   0.9818013   3.492440
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           1.6008130   0.8759360   2.925559
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.4087420   0.8274997   2.398253
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0811242   0.5573441   2.097142
6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.5992575   0.9437198   2.710152
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.8092541   0.3937131   1.663374
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           1.6885914   1.1156407   2.555788
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.2954533   0.7660017   2.190856
6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           1.7021114   1.2058047   2.402697
6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1248745   0.8356357   1.514228
6 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           1.8381941   0.9841212   3.433477
6 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.3052043   0.5942218   2.866873
6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           2.0412045   1.2326942   3.380008
6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.1078209   0.6560958   1.870561
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5625833   1.1275567   2.165449
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9897414   0.6816438   1.437097
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.9811837   1.7624375   2.227080
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.5141240   1.3414021   1.709086
24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.0766731   0.9230877   1.255812
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           0.9036860   0.7490758   1.090208
24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           1.8652118   1.2770672   2.724222
24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.2618967   0.8240518   1.932382
24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           2.2672525   1.2042191   4.268687
24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           1.0891576   0.4890415   2.425692
24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           1.4921504   0.8552676   2.603294
24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           1.1942309   0.6245369   2.283592
24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           3.4662162   1.6826428   7.140348
24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           1.8269231   0.8212547   4.064084
24 months   MAL-ED           PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   MAL-ED           PERU                           <52 kg               >=58 kg           2.0099689   1.2101582   3.338386
24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           1.7149797   0.9445675   3.113759
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           1.6234792   1.0289502   2.561528
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           1.5270211   1.0004785   2.330678
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.2885714   1.0481288   1.584172
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.3325000   1.0686815   1.661446
24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           2.0863519   1.3666640   3.185029
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.7391593   1.0832625   2.792190
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           2.4171134   1.4907440   3.919142
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.6411630   0.9109017   2.956868
24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           1.8376740   1.0575963   3.193133
24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1633971   0.6012639   2.251080
24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           1.7757339   1.1558550   2.728051
24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           0.9911445   0.5756331   1.706586
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.6861632   1.4422786   1.971288
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2617045   1.0637668   1.496473


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0491206    0.0143247   0.0839165
Birth       MAL-ED           PERU                           >=58 kg              NA                0.0548033    0.0054382   0.1041683
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0595395   -0.0040073   0.1230863
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0468055    0.0047499   0.0888611
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                0.1753707    0.1316984   0.2190431
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0226453    0.0171023   0.0281884
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0421884    0.0084459   0.0759308
6 months    LCNI-5           MALAWI                         >=58 kg              NA                0.1156645    0.0378839   0.1934452
6 months    MAL-ED           PERU                           >=58 kg              NA                0.0496365   -0.0126962   0.1119692
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.0332054   -0.0009987   0.0674096
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0419224   -0.0250468   0.1088916
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0761869   -0.0157291   0.1681030
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0626296    0.0115877   0.1136714
6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0020752   -0.0003688   0.0045193
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                0.0593936    0.0046669   0.1141202
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.1303020    0.0502833   0.2103207
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0063421   -0.0040292   0.0167134
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0412807    0.0335167   0.0490447
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0292781   -0.0401038   0.0986600
24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.1656346    0.0690691   0.2622000
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.2141013    0.0625426   0.3656600
24 months   MAL-ED           INDIA                          >=58 kg              NA                0.1064240   -0.0497519   0.2625999
24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.1140351    0.0470193   0.1810508
24 months   MAL-ED           PERU                           >=58 kg              NA                0.1359839    0.0474296   0.2245383
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.0467479    0.0058558   0.0876399
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1145430    0.0356875   0.1933984
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2683620    0.1511583   0.3855656
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1238752    0.0663136   0.1814368
24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0059908   -0.0049113   0.0168929
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.1074310    0.0215993   0.1932626
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0611178    0.0381984   0.0840372


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                0.1493457    0.0368361   0.2487128
Birth       MAL-ED           PERU                           >=58 kg              NA                0.4763670   -0.1196867   0.7551176
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3731959   -0.1749439   0.6656152
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.3378338   -0.0385182   0.5777984
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                0.6394048    0.4340269   0.7702561
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2240362    0.1684972   0.2758656
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.1677748    0.0223092   0.2915973
6 months    LCNI-5           MALAWI                         >=58 kg              NA                0.3143222    0.0670037   0.4960815
6 months    MAL-ED           PERU                           >=58 kg              NA                0.2250188   -0.1108006   0.4593127
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.1653631   -0.0200531   0.3170760
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1755058   -0.1575667   0.4127417
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2841138   -0.1552017   0.5563606
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.2985342    0.0112655   0.5023393
6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0562554   -0.0144925   0.1220694
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                0.3769929   -0.0808722   0.6409031
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.4588147    0.1186094   0.6677052
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0657002   -0.0478198   0.1669215
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2516477    0.2040029   0.2964407
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0596275   -0.0928480   0.1908295
24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.3725166    0.1129050   0.5561519
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.4494007    0.0158550   0.6919564
24 months   MAL-ED           INDIA                          >=58 kg              NA                0.2505399   -0.2259783   0.5418431
24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.5200000    0.1299938   0.7351743
24 months   MAL-ED           PERU                           >=58 kg              NA                0.3693617    0.0806717   0.5673965
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.1334024    0.0087258   0.2423980
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1581432    0.0388790   0.2626081
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4718331    0.2172492   0.6436155
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.4823627    0.2127752   0.6596292
24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0880621   -0.0915278   0.2381040
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.3279771    0.0089040   0.5443279
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1761434    0.1075124   0.2394968
