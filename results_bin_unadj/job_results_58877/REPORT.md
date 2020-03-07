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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/45b229b7-cbb2-4f04-941b-e02658a615da/27d8b6e9-e3b1-4ca4-935d-3bad58cec2d1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/45b229b7-cbb2-4f04-941b-e02658a615da/27d8b6e9-e3b1-4ca4-935d-3bad58cec2d1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/45b229b7-cbb2-4f04-941b-e02658a615da/27d8b6e9-e3b1-4ca4-935d-3bad58cec2d1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/45b229b7-cbb2-4f04-941b-e02658a615da/27d8b6e9-e3b1-4ca4-935d-3bad58cec2d1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                0.2520000   0.2143729   0.2896271
Birth       JiVitA-3         BANGLADESH                     <52 kg               NA                0.3342448   0.3266667   0.3418230
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.2801101   0.2547145   0.3055058
Birth       MAL-ED           PERU                           >=58 kg              NA                0.0602410   0.0089399   0.1115420
Birth       MAL-ED           PERU                           <52 kg               NA                0.1904762   0.1063160   0.2746364
Birth       MAL-ED           PERU                           [52-58) kg           NA                0.0847458   0.0135236   0.1559679
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1000000   0.0342067   0.1657933
Birth       NIH-Birth        BANGLADESH                     <52 kg               NA                0.1768707   0.1412299   0.2125116
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1264368   0.0565444   0.1963292
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0806452   0.0414872   0.1198032
Birth       NIH-Crypto       BANGLADESH                     <52 kg               NA                0.1696203   0.1325842   0.2066563
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.1283784   0.0744490   0.1823077
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                0.0989011   0.0494314   0.1483708
Birth       SAS-CompFeed     INDIA                          <52 kg               NA                0.3045311   0.2684154   0.3406468
Birth       SAS-CompFeed     INDIA                          [52-58) kg           NA                0.2091837   0.1698398   0.2485275
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0781657   0.0712314   0.0851000
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1386892   0.1247591   0.1526193
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1158474   0.1042168   0.1274780
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.1842752   0.1458420   0.2227083
6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                0.2560520   0.2475676   0.2645363
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.2144097   0.1882932   0.2405263
6 months    LCNI-5           MALAWI                         >=58 kg              NA                0.2456140   0.1665501   0.3246780
6 months    LCNI-5           MALAWI                         <52 kg               NA                0.4325397   0.3892611   0.4758183
6 months    LCNI-5           MALAWI                         [52-58) kg           NA                0.2831050   0.2234033   0.3428068
6 months    MAL-ED           PERU                           >=58 kg              NA                0.1900000   0.1129687   0.2670313
6 months    MAL-ED           PERU                           <52 kg               NA                0.2616822   0.1782441   0.3451204
6 months    MAL-ED           PERU                           [52-58) kg           NA                0.2000000   0.1025793   0.2974207
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.1675978   0.1127706   0.2224250
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.3103448   0.1416269   0.4790627
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.2682927   0.1323978   0.4041876
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2021277   0.1207801   0.2834752
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2842105   0.1933281   0.3750930
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2241379   0.1165992   0.3316767
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1971831   0.1045499   0.2898163
6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                0.3038961   0.2579105   0.3498817
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1604938   0.0804825   0.2405051
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1358696   0.0863252   0.1854139
6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                0.2558747   0.2121437   0.2996057
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.1824324   0.1201689   0.2446960
6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0343943   0.0251387   0.0436498
6 months    PROBIT           BELARUS                        <52 kg               NA                0.0590951   0.0361240   0.0820662
6 months    PROBIT           BELARUS                        [52-58) kg           NA                0.0370040   0.0242576   0.0497504
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                0.1009174   0.0443224   0.1575124
6 months    PROVIDE          BANGLADESH                     <52 kg               NA                0.1792208   0.1408778   0.2175637
6 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                0.1376147   0.0728887   0.2023406
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.1359223   0.0931183   0.1787263
6 months    SAS-CompFeed     INDIA                          <52 kg               NA                0.3244576   0.3011261   0.3477891
6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                0.1635514   0.1160680   0.2110348
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0892430   0.0734660   0.1050200
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1384615   0.1009022   0.1760208
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0855746   0.0584575   0.1126916
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1230804   0.1133315   0.1328294
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2450753   0.2247819   0.2653688
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1819861   0.1657327   0.1982396
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.4263959   0.3530067   0.4997852
24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.4996819   0.4863109   0.5130528
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.3940455   0.3496297   0.4384614
24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.2727273   0.1731657   0.3722888
24 months   LCNI-5           MALAWI                         <52 kg               NA                0.5172414   0.4646946   0.5697882
24 months   LCNI-5           MALAWI                         [52-58) kg           NA                0.3660131   0.2896177   0.4424084
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.2500000   0.1154928   0.3845072
24 months   MAL-ED           BANGLADESH                     <52 kg               NA                0.5925926   0.5095118   0.6756734
24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                0.2972973   0.1496739   0.4449207
24 months   MAL-ED           INDIA                          >=58 kg              NA                0.2894737   0.1449584   0.4339890
24 months   MAL-ED           INDIA                          <52 kg               NA                0.4680851   0.3855412   0.5506290
24 months   MAL-ED           INDIA                          [52-58) kg           NA                0.4042553   0.2636441   0.5448666
24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.1052632   0.0361148   0.1744115
24 months   MAL-ED           NEPAL                          <52 kg               NA                0.3648649   0.2549426   0.4747872
24 months   MAL-ED           NEPAL                          [52-58) kg           NA                0.1923077   0.1046527   0.2799627
24 months   MAL-ED           PERU                           >=58 kg              NA                0.2337662   0.1389992   0.3285333
24 months   MAL-ED           PERU                           <52 kg               NA                0.4800000   0.3666497   0.5933503
24 months   MAL-ED           PERU                           [52-58) kg           NA                0.4081633   0.2702040   0.5461226
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.3035714   0.2338940   0.3732489
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                0.4642857   0.2791636   0.6494078
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                0.4736842   0.3145902   0.6327783
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.6097561   0.5039272   0.7155850
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.7857143   0.6977605   0.8736681
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.8125000   0.7018231   0.9231769
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3333333   0.2108122   0.4558545
24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                0.6233766   0.5692004   0.6775528
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.5156250   0.3930441   0.6382059
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1231884   0.0683014   0.1780754
24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.3406593   0.2843857   0.3969329
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.2135922   0.1343660   0.2928185
24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0621056   0.0328865   0.0913248
24 months   PROBIT           BELARUS                        <52 kg               NA                0.1138462   0.0639741   0.1637182
24 months   PROBIT           BELARUS                        [52-58) kg           NA                0.0723781   0.0266810   0.1180753
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.1621622   0.0935315   0.2307928
24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.4060773   0.3554436   0.4567111
24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.2307692   0.1497244   0.3118141
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2833133   0.2527035   0.3139231
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.4880240   0.4344002   0.5416477
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.3610451   0.3151507   0.4069395


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
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4910166   0.4779104   0.5041227
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
Birth       JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.3263684   1.1402828   1.542822
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.1115481   0.9389641   1.315853
Birth       MAL-ED           PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       MAL-ED           PERU                           <52 kg               >=58 kg           3.1619048   1.2114019   8.252952
Birth       MAL-ED           PERU                           [52-58) kg           >=58 kg           1.4067797   0.4252149   4.654186
Birth       NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.7687075   0.8888286   3.519606
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.2643678   0.5353913   2.985902
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           2.1032911   1.2350477   3.581913
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.5918919   0.8376685   3.025206
Birth       SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed     INDIA                          <52 kg               >=58 kg           3.0791476   1.9560693   4.847042
Birth       SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           2.1150794   1.3057415   3.426069
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.7742974   1.5517689   2.028737
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4820740   1.2962392   1.694551
6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.3895086   1.1272159   1.712835
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           1.1635301   0.9160340   1.477895
6 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    LCNI-5           MALAWI                         <52 kg               >=58 kg           1.7610544   1.2571127   2.467013
6 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.1526419   0.7844504   1.693649
6 months    MAL-ED           PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    MAL-ED           PERU                           <52 kg               >=58 kg           1.3772750   0.8222730   2.306881
6 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           1.0526316   0.5585235   1.983862
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           1.8517241   0.9818013   3.492440
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           1.6008130   0.8759360   2.925559
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.4060942   0.8409589   2.351008
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1088929   0.5928161   2.074241
6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.5411874   0.9408243   2.524657
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.8139330   0.4102941   1.614663
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           1.8832376   1.2589540   2.817088
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.3427027   0.8148385   2.212525
6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           1.7181682   1.1838578   2.493629
6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0758779   0.7922662   1.461015
6 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           1.7759150   0.9744205   3.236666
6 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.3636364   0.6558806   2.835126
6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           2.3870809   1.6706325   3.410777
6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.2032710   0.8333103   1.737481
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5515110   1.1223725   2.144730
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9588936   0.6670865   1.378347
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.9911799   1.7756010   2.232933
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4785951   1.3122162   1.666070
24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.1718730   0.9857054   1.393202
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           0.9241306   0.7539047   1.132792
24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           1.8965517   1.2983657   2.770335
24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.3420479   0.8813338   2.043599
24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           2.3703704   1.3594104   4.133156
24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           1.1891892   0.5718523   2.472965
24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           1.6170213   0.9522968   2.745738
24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           1.3965184   0.7599715   2.566233
24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           3.4662162   1.6826428   7.140348
24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           1.8269231   0.8212547   4.064084
24 months   MAL-ED           PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   MAL-ED           PERU                           <52 kg               >=58 kg           2.0533333   1.2844206   3.282552
24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           1.7460317   1.0299725   2.959911
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           1.5294118   0.9654262   2.422868
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           1.5603715   1.0388584   2.343687
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.2885714   1.0481288   1.584172
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.3325000   1.0686815   1.661446
24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.8701299   1.2818569   2.728375
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.5468750   0.9984940   2.396431
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           2.7653523   1.7194045   4.447571
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.7338664   0.9710389   3.095955
24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           1.8331057   1.0566530   3.180114
24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.1654042   0.5986614   2.268673
24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           2.5041436   1.6108124   3.892902
24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.4230769   0.8210779   2.466450
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.7225591   1.4765552   2.009549
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2743669   1.0785547   1.505729


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0769051    0.0395836   0.1142266
Birth       MAL-ED           PERU                           >=58 kg              NA                0.0548033    0.0054382   0.1041683
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0595395   -0.0040073   0.1230863
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0579008    0.0207433   0.0950583
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                0.1753707    0.1316984   0.2190431
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0229131    0.0174781   0.0283481
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0671830    0.0293634   0.1050025
6 months    LCNI-5           MALAWI                         >=58 kg              NA                0.1223668    0.0474204   0.1973133
6 months    MAL-ED           PERU                           >=58 kg              NA                0.0305882   -0.0327192   0.0938957
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.0332054   -0.0009987   0.0674096
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0367387   -0.0297425   0.1032200
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0709733   -0.0168808   0.1588274
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0739206    0.0282786   0.1195626
6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0024954    0.0000174   0.0049734
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                0.0566282    0.0028511   0.1104052
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.1480747    0.0965117   0.1996376
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0072879   -0.0028769   0.0174527
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0409612    0.0333196   0.0486029
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0646206   -0.0075341   0.1367754
24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.1719094    0.0774877   0.2663311
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.2264151    0.1006920   0.3521382
24 months   MAL-ED           INDIA                          >=58 kg              NA                0.1353051    0.0010173   0.2695928
24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.1140351    0.0470193   0.1810508
24 months   MAL-ED           PERU                           >=58 kg              NA                0.1343930    0.0533501   0.2154358
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.0468559    0.0064006   0.0873112
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1145430    0.0356875   0.1933984
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2354312    0.1204365   0.3504260
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1336209    0.0804785   0.1867634
24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0059233   -0.0049538   0.0168004
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.1653942    0.0993115   0.2314768
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0636640    0.0412488   0.0860792


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                0.2338216    0.1117220   0.3391378
Birth       MAL-ED           PERU                           >=58 kg              NA                0.4763670   -0.1196867   0.7551176
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3731959   -0.1749439   0.6656152
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.4179176    0.0911331   0.6272062
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                0.6394048    0.4340269   0.7702561
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2266852    0.1723265   0.2774738
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.2671736    0.1002531   0.4031270
6 months    LCNI-5           MALAWI                         >=58 kg              NA                0.3325359    0.0950235   0.5077128
6 months    MAL-ED           PERU                           >=58 kg              NA                0.1386667   -0.2007227   0.3821262
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.1653631   -0.0200531   0.3170760
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1538045   -0.1743662   0.3902696
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2646714   -0.1465927   0.5284217
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.3523551    0.0991330   0.5343997
6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0676447   -0.0031438   0.1334378
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                0.3594399   -0.0830134   0.6211337
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.5213952    0.3271801   0.6595484
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0754980   -0.0355930   0.1746720
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2497001    0.2028455   0.2938008
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.1316058   -0.0285765   0.2668426
24 months   LCNI-5           MALAWI                         >=58 kg              NA                0.3866289    0.1329489   0.5660878
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                0.4752475    0.1329613   0.6824073
24 months   MAL-ED           INDIA                          >=58 kg              NA                0.3185307   -0.0837576   0.5714905
24 months   MAL-ED           NEPAL                          >=58 kg              NA                0.5200000    0.1299938   0.7351743
24 months   MAL-ED           PERU                           >=58 kg              NA                0.3650404    0.1056168   0.5492159
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                0.1337108    0.0103960   0.2416593
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1581432    0.0388790   0.2626081
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4139344    0.1702772   0.5860390
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.5203118    0.2763564   0.6820248
24 months   PROBIT           BELARUS                        >=58 kg              NA                0.0870702   -0.0921559   0.2368848
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.5049335    0.2626577   0.6676024
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1834817    0.1164261   0.2454484
