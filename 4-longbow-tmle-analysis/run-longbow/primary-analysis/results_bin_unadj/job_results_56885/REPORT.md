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

**Outcome Variable:** wasted

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

agecat      studyid          country                        mwtkg         wasted   n_cell       n
----------  ---------------  -----------------------------  -----------  -------  -------  ------
Birth       MAL-ED           BANGLADESH                     >=58 kg            0       34     209
Birth       MAL-ED           BANGLADESH                     >=58 kg            1        3     209
Birth       MAL-ED           BANGLADESH                     <52 kg             0      107     209
Birth       MAL-ED           BANGLADESH                     <52 kg             1       24     209
Birth       MAL-ED           BANGLADESH                     [52-58) kg         0       33     209
Birth       MAL-ED           BANGLADESH                     [52-58) kg         1        8     209
Birth       MAL-ED           BRAZIL                         >=58 kg            0       33      61
Birth       MAL-ED           BRAZIL                         >=58 kg            1        0      61
Birth       MAL-ED           BRAZIL                         <52 kg             0       13      61
Birth       MAL-ED           BRAZIL                         <52 kg             1        1      61
Birth       MAL-ED           BRAZIL                         [52-58) kg         0       13      61
Birth       MAL-ED           BRAZIL                         [52-58) kg         1        1      61
Birth       MAL-ED           INDIA                          >=58 kg            0        6      41
Birth       MAL-ED           INDIA                          >=58 kg            1        0      41
Birth       MAL-ED           INDIA                          <52 kg             0       23      41
Birth       MAL-ED           INDIA                          <52 kg             1        5      41
Birth       MAL-ED           INDIA                          [52-58) kg         0        7      41
Birth       MAL-ED           INDIA                          [52-58) kg         1        0      41
Birth       MAL-ED           NEPAL                          >=58 kg            0        9      26
Birth       MAL-ED           NEPAL                          >=58 kg            1        0      26
Birth       MAL-ED           NEPAL                          <52 kg             0        6      26
Birth       MAL-ED           NEPAL                          <52 kg             1        1      26
Birth       MAL-ED           NEPAL                          [52-58) kg         0        9      26
Birth       MAL-ED           NEPAL                          [52-58) kg         1        1      26
Birth       MAL-ED           PERU                           >=58 kg            0       80     221
Birth       MAL-ED           PERU                           >=58 kg            1        2     221
Birth       MAL-ED           PERU                           <52 kg             0       78     221
Birth       MAL-ED           PERU                           <52 kg             1        3     221
Birth       MAL-ED           PERU                           [52-58) kg         0       58     221
Birth       MAL-ED           PERU                           [52-58) kg         1        0     221
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg            0       62     100
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg            1        7     100
Birth       MAL-ED           SOUTH AFRICA                   <52 kg             0        9     100
Birth       MAL-ED           SOUTH AFRICA                   <52 kg             1        1     100
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg         0       19     100
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg         1        2     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg            0       44     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg            1        0     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg             0       40     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg             1        0     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0       28     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1        1     113
Birth       NIH-Birth        BANGLADESH                     >=58 kg            0       64     575
Birth       NIH-Birth        BANGLADESH                     >=58 kg            1       15     575
Birth       NIH-Birth        BANGLADESH                     <52 kg             0      282     575
Birth       NIH-Birth        BANGLADESH                     <52 kg             1      132     575
Birth       NIH-Birth        BANGLADESH                     [52-58) kg         0       61     575
Birth       NIH-Birth        BANGLADESH                     [52-58) kg         1       21     575
Birth       NIH-Crypto       BANGLADESH                     >=58 kg            0      156     704
Birth       NIH-Crypto       BANGLADESH                     >=58 kg            1       27     704
Birth       NIH-Crypto       BANGLADESH                     <52 kg             0      266     704
Birth       NIH-Crypto       BANGLADESH                     <52 kg             1      115     704
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg         0      111     704
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg         1       29     704
Birth       PROBIT           BELARUS                        >=58 kg            0     8127   13694
Birth       PROBIT           BELARUS                        >=58 kg            1     2095   13694
Birth       PROBIT           BELARUS                        <52 kg             0      868   13694
Birth       PROBIT           BELARUS                        <52 kg             1      256   13694
Birth       PROBIT           BELARUS                        [52-58) kg         0     1821   13694
Birth       PROBIT           BELARUS                        [52-58) kg         1      527   13694
Birth       PROVIDE          BANGLADESH                     >=58 kg            0       75     510
Birth       PROVIDE          BANGLADESH                     >=58 kg            1       14     510
Birth       PROVIDE          BANGLADESH                     <52 kg             0      245     510
Birth       PROVIDE          BANGLADESH                     <52 kg             1       81     510
Birth       PROVIDE          BANGLADESH                     [52-58) kg         0       77     510
Birth       PROVIDE          BANGLADESH                     [52-58) kg         1       18     510
Birth       SAS-CompFeed     INDIA                          >=58 kg            0       80    1090
Birth       SAS-CompFeed     INDIA                          >=58 kg            1        6    1090
Birth       SAS-CompFeed     INDIA                          <52 kg             0      727    1090
Birth       SAS-CompFeed     INDIA                          <52 kg             1      101    1090
Birth       SAS-CompFeed     INDIA                          [52-58) kg         0      166    1090
Birth       SAS-CompFeed     INDIA                          [52-58) kg         1       10    1090
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg            0     4692   10286
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg            1      763   10286
Birth       ZVITAMBO         ZIMBABWE                       <52 kg             0     1749   10286
Birth       ZVITAMBO         ZIMBABWE                       <52 kg             1      393   10286
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg         0     2268   10286
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg         1      421   10286
6 months    LCNI-5           MALAWI                         >=58 kg            0      113     837
6 months    LCNI-5           MALAWI                         >=58 kg            1        1     837
6 months    LCNI-5           MALAWI                         <52 kg             0      494     837
6 months    LCNI-5           MALAWI                         <52 kg             1       10     837
6 months    LCNI-5           MALAWI                         [52-58) kg         0      216     837
6 months    LCNI-5           MALAWI                         [52-58) kg         1        3     837
6 months    MAL-ED           BANGLADESH                     >=58 kg            0       44     241
6 months    MAL-ED           BANGLADESH                     >=58 kg            1        2     241
6 months    MAL-ED           BANGLADESH                     <52 kg             0      148     241
6 months    MAL-ED           BANGLADESH                     <52 kg             1        6     241
6 months    MAL-ED           BANGLADESH                     [52-58) kg         0       41     241
6 months    MAL-ED           BANGLADESH                     [52-58) kg         1        0     241
6 months    MAL-ED           BRAZIL                         >=58 kg            0      136     208
6 months    MAL-ED           BRAZIL                         >=58 kg            1        1     208
6 months    MAL-ED           BRAZIL                         <52 kg             0       37     208
6 months    MAL-ED           BRAZIL                         <52 kg             1        0     208
6 months    MAL-ED           BRAZIL                         [52-58) kg         0       34     208
6 months    MAL-ED           BRAZIL                         [52-58) kg         1        0     208
6 months    MAL-ED           INDIA                          >=58 kg            0       39     235
6 months    MAL-ED           INDIA                          >=58 kg            1        1     235
6 months    MAL-ED           INDIA                          <52 kg             0      130     235
6 months    MAL-ED           INDIA                          <52 kg             1       16     235
6 months    MAL-ED           INDIA                          [52-58) kg         0       47     235
6 months    MAL-ED           INDIA                          [52-58) kg         1        2     235
6 months    MAL-ED           NEPAL                          >=58 kg            0       79     236
6 months    MAL-ED           NEPAL                          >=58 kg            1        0     236
6 months    MAL-ED           NEPAL                          <52 kg             0       72     236
6 months    MAL-ED           NEPAL                          <52 kg             1        3     236
6 months    MAL-ED           NEPAL                          [52-58) kg         0       81     236
6 months    MAL-ED           NEPAL                          [52-58) kg         1        1     236
6 months    MAL-ED           PERU                           >=58 kg            0      100     272
6 months    MAL-ED           PERU                           >=58 kg            1        0     272
6 months    MAL-ED           PERU                           <52 kg             0      107     272
6 months    MAL-ED           PERU                           <52 kg             1        0     272
6 months    MAL-ED           PERU                           [52-58) kg         0       65     272
6 months    MAL-ED           PERU                           [52-58) kg         1        0     272
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg            0      175     249
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg            1        4     249
6 months    MAL-ED           SOUTH AFRICA                   <52 kg             0       28     249
6 months    MAL-ED           SOUTH AFRICA                   <52 kg             1        1     249
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg         0       39     249
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg         1        2     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg            0       94     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg            1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg             0       94     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg             1        1     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0       58     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1        0     247
6 months    NIH-Birth        BANGLADESH                     >=58 kg            0       69     537
6 months    NIH-Birth        BANGLADESH                     >=58 kg            1        2     537
6 months    NIH-Birth        BANGLADESH                     <52 kg             0      356     537
6 months    NIH-Birth        BANGLADESH                     <52 kg             1       29     537
6 months    NIH-Birth        BANGLADESH                     [52-58) kg         0       77     537
6 months    NIH-Birth        BANGLADESH                     [52-58) kg         1        4     537
6 months    NIH-Crypto       BANGLADESH                     >=58 kg            0      182     715
6 months    NIH-Crypto       BANGLADESH                     >=58 kg            1        2     715
6 months    NIH-Crypto       BANGLADESH                     <52 kg             0      365     715
6 months    NIH-Crypto       BANGLADESH                     <52 kg             1       18     715
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg         0      147     715
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg         1        1     715
6 months    PROBIT           BELARUS                        >=58 kg            0     9676   13064
6 months    PROBIT           BELARUS                        >=58 kg            1       63   13064
6 months    PROBIT           BELARUS                        <52 kg             0     1074   13064
6 months    PROBIT           BELARUS                        <52 kg             1        9   13064
6 months    PROBIT           BELARUS                        [52-58) kg         0     2227   13064
6 months    PROBIT           BELARUS                        [52-58) kg         1       15   13064
6 months    PROVIDE          BANGLADESH                     >=58 kg            0      104     602
6 months    PROVIDE          BANGLADESH                     >=58 kg            1        4     602
6 months    PROVIDE          BANGLADESH                     <52 kg             0      366     602
6 months    PROVIDE          BANGLADESH                     <52 kg             1       19     602
6 months    PROVIDE          BANGLADESH                     [52-58) kg         0      107     602
6 months    PROVIDE          BANGLADESH                     [52-58) kg         1        2     602
6 months    SAS-CompFeed     INDIA                          >=58 kg            0       90    1328
6 months    SAS-CompFeed     INDIA                          >=58 kg            1        9    1328
6 months    SAS-CompFeed     INDIA                          <52 kg             0      884    1328
6 months    SAS-CompFeed     INDIA                          <52 kg             1      132    1328
6 months    SAS-CompFeed     INDIA                          [52-58) kg         0      188    1328
6 months    SAS-CompFeed     INDIA                          [52-58) kg         1       25    1328
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            0     1209    1988
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            1       46    1988
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             0      308    1988
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       16    1988
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0      386    1988
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       23    1988
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg            0     4143    8110
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg            1      112    8110
6 months    ZVITAMBO         ZIMBABWE                       <52 kg             0     1631    8110
6 months    ZVITAMBO         ZIMBABWE                       <52 kg             1       82    8110
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg         0     2080    8110
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg         1       62    8110
24 months   LCNI-5           MALAWI                         >=58 kg            0       73     562
24 months   LCNI-5           MALAWI                         >=58 kg            1        0     562
24 months   LCNI-5           MALAWI                         <52 kg             0      330     562
24 months   LCNI-5           MALAWI                         <52 kg             1        7     562
24 months   LCNI-5           MALAWI                         [52-58) kg         0      149     562
24 months   LCNI-5           MALAWI                         [52-58) kg         1        3     562
24 months   MAL-ED           BANGLADESH                     >=58 kg            0       38     212
24 months   MAL-ED           BANGLADESH                     >=58 kg            1        2     212
24 months   MAL-ED           BANGLADESH                     <52 kg             0      119     212
24 months   MAL-ED           BANGLADESH                     <52 kg             1       16     212
24 months   MAL-ED           BANGLADESH                     [52-58) kg         0       34     212
24 months   MAL-ED           BANGLADESH                     [52-58) kg         1        3     212
24 months   MAL-ED           BRAZIL                         >=58 kg            0      107     168
24 months   MAL-ED           BRAZIL                         >=58 kg            1        2     168
24 months   MAL-ED           BRAZIL                         <52 kg             0       28     168
24 months   MAL-ED           BRAZIL                         <52 kg             1        0     168
24 months   MAL-ED           BRAZIL                         [52-58) kg         0       30     168
24 months   MAL-ED           BRAZIL                         [52-58) kg         1        1     168
24 months   MAL-ED           INDIA                          >=58 kg            0       37     226
24 months   MAL-ED           INDIA                          >=58 kg            1        1     226
24 months   MAL-ED           INDIA                          <52 kg             0      119     226
24 months   MAL-ED           INDIA                          <52 kg             1       22     226
24 months   MAL-ED           INDIA                          [52-58) kg         0       43     226
24 months   MAL-ED           INDIA                          [52-58) kg         1        4     226
24 months   MAL-ED           NEPAL                          >=58 kg            0       75     228
24 months   MAL-ED           NEPAL                          >=58 kg            1        1     228
24 months   MAL-ED           NEPAL                          <52 kg             0       71     228
24 months   MAL-ED           NEPAL                          <52 kg             1        3     228
24 months   MAL-ED           NEPAL                          [52-58) kg         0       77     228
24 months   MAL-ED           NEPAL                          [52-58) kg         1        1     228
24 months   MAL-ED           PERU                           >=58 kg            0       77     201
24 months   MAL-ED           PERU                           >=58 kg            1        0     201
24 months   MAL-ED           PERU                           <52 kg             0       71     201
24 months   MAL-ED           PERU                           <52 kg             1        4     201
24 months   MAL-ED           PERU                           [52-58) kg         0       49     201
24 months   MAL-ED           PERU                           [52-58) kg         1        0     201
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg            0      167     234
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg            1        1     234
24 months   MAL-ED           SOUTH AFRICA                   <52 kg             0       28     234
24 months   MAL-ED           SOUTH AFRICA                   <52 kg             1        0     234
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg         0       38     234
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg         1        0     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg            0       81     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg            1        1     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg             0       81     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg             1        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0       48     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1        0     214
24 months   NIH-Birth        BANGLADESH                     >=58 kg            0       56     428
24 months   NIH-Birth        BANGLADESH                     >=58 kg            1        0     428
24 months   NIH-Birth        BANGLADESH                     <52 kg             0      259     428
24 months   NIH-Birth        BANGLADESH                     <52 kg             1       49     428
24 months   NIH-Birth        BANGLADESH                     [52-58) kg         0       60     428
24 months   NIH-Birth        BANGLADESH                     [52-58) kg         1        4     428
24 months   NIH-Crypto       BANGLADESH                     >=58 kg            0      130     514
24 months   NIH-Crypto       BANGLADESH                     >=58 kg            1        8     514
24 months   NIH-Crypto       BANGLADESH                     <52 kg             0      243     514
24 months   NIH-Crypto       BANGLADESH                     <52 kg             1       30     514
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg         0       96     514
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg         1        7     514
24 months   PROBIT           BELARUS                        >=58 kg            0     2937    3948
24 months   PROBIT           BELARUS                        >=58 kg            1       19    3948
24 months   PROBIT           BELARUS                        <52 kg             0      319    3948
24 months   PROBIT           BELARUS                        <52 kg             1        3    3948
24 months   PROBIT           BELARUS                        [52-58) kg         0      660    3948
24 months   PROBIT           BELARUS                        [52-58) kg         1       10    3948
24 months   PROVIDE          BANGLADESH                     >=58 kg            0      107     578
24 months   PROVIDE          BANGLADESH                     >=58 kg            1        5     578
24 months   PROVIDE          BANGLADESH                     <52 kg             0      311     578
24 months   PROVIDE          BANGLADESH                     <52 kg             1       51     578
24 months   PROVIDE          BANGLADESH                     [52-58) kg         0       98     578
24 months   PROVIDE          BANGLADESH                     [52-58) kg         1        6     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1        0       6
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg            0      141     421
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg            1       29     421
24 months   ZVITAMBO         ZIMBABWE                       <52 kg             0      103     421
24 months   ZVITAMBO         ZIMBABWE                       <52 kg             1       29     421
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg         0      103     421
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg         1       16     421


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
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/d26caa05-7ada-41ec-8f40-fbf940c25584/5e61a68b-695a-49ed-abf7-8c44f0c046cd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d26caa05-7ada-41ec-8f40-fbf940c25584/5e61a68b-695a-49ed-abf7-8c44f0c046cd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d26caa05-7ada-41ec-8f40-fbf940c25584/5e61a68b-695a-49ed-abf7-8c44f0c046cd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d26caa05-7ada-41ec-8f40-fbf940c25584/5e61a68b-695a-49ed-abf7-8c44f0c046cd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1898734   0.1033127   0.2764342
Birth       NIH-Birth        BANGLADESH                     <52 kg               NA                0.3188406   0.2739105   0.3637706
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2560976   0.1615436   0.3506515
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1475410   0.0961219   0.1989601
Birth       NIH-Crypto       BANGLADESH                     <52 kg               NA                0.3018373   0.2557099   0.3479647
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.2071429   0.1399651   0.2743206
Birth       PROBIT           BELARUS                        >=58 kg              NA                0.2049501   0.1395726   0.2703276
Birth       PROBIT           BELARUS                        <52 kg               NA                0.2277580   0.1549101   0.3006059
Birth       PROBIT           BELARUS                        [52-58) kg           NA                0.2244463   0.1569053   0.2919874
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                0.1573034   0.0815880   0.2330187
Birth       PROVIDE          BANGLADESH                     <52 kg               NA                0.2484663   0.2015122   0.2954203
Birth       PROVIDE          BANGLADESH                     [52-58) kg           NA                0.1894737   0.1105930   0.2683543
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                0.0697674   0.0261913   0.1133436
Birth       SAS-CompFeed     INDIA                          <52 kg               NA                0.1219807   0.0826520   0.1613094
Birth       SAS-CompFeed     INDIA                          [52-58) kg           NA                0.0568182   0.0173444   0.0962919
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1398717   0.1306668   0.1490766
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1834734   0.1670814   0.1998654
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1565638   0.1428282   0.1702993
6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0064688   0.0042416   0.0086961
6 months    PROBIT           BELARUS                        <52 kg               NA                0.0083102   0.0002681   0.0163524
6 months    PROBIT           BELARUS                        [52-58) kg           NA                0.0066905   0.0036382   0.0097427
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.0909091   0.0223007   0.1595175
6 months    SAS-CompFeed     INDIA                          <52 kg               NA                0.1299213   0.0972077   0.1626348
6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                0.1173709   0.0835538   0.1511880
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0366534   0.0262546   0.0470522
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0493827   0.0257847   0.0729807
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0562347   0.0339026   0.0785668
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0263220   0.0215115   0.0311325
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0478692   0.0377587   0.0579797
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0289449   0.0218447   0.0360452
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0579710   0.0189437   0.0969984
24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.1098901   0.0727545   0.1470257
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.0679612   0.0193093   0.1166131
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.0446429   0.0063627   0.0829230
24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.1408840   0.1050144   0.1767536
24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.0576923   0.0128423   0.1025423
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1705882   0.1139774   0.2271991
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2196970   0.1489804   0.2904135
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1344538   0.0730885   0.1958191


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       NIH-Birth        BANGLADESH                     NA                   NA                0.2921739   0.2549711   0.3293768
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.2428977   0.2111977   0.2745977
Birth       PROBIT           BELARUS                        NA                   NA                0.2101650   0.1447462   0.2755839
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.2215686   0.1854897   0.2576475
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.1073394   0.0764269   0.1382520
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1533152   0.1463521   0.1602782
6 months    PROBIT           BELARUS                        NA                   NA                0.0066595   0.0045730   0.0087461
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.1250000   0.0995459   0.1504541
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0427565   0.0338612   0.0516519
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0315660   0.0277605   0.0353714
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1072664   0.0820169   0.1325160
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1757720   0.1393702   0.2121737


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.6792271   1.0420236   2.706084
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.3487805   0.7501804   2.425028
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           2.0457859   1.3982768   2.993141
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.4039683   0.8721832   2.259992
Birth       PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       PROBIT           BELARUS                        <52 kg               >=58 kg           1.1112851   0.9473499   1.303589
Birth       PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0951267   1.0200848   1.175689
Birth       PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       PROVIDE          BANGLADESH                     <52 kg               >=58 kg           1.5795355   0.9417925   2.649132
Birth       PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.2045113   0.6374230   2.276114
Birth       SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.7483897   1.0469050   2.919908
Birth       SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           0.8143939   0.2903701   2.284111
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.3117265   1.1739574   1.465664
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1193387   1.0030721   1.249082
6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           1.2846590   0.5056167   3.264031
6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0342594   0.5892762   1.815265
6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.4291339   0.6448249   3.167408
6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.2910798   0.6535444   2.550534
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.3472893   0.7728747   2.348619
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.5342298   0.9417407   2.499479
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.8186035   1.3754296   2.404572
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.0996482   0.8098495   1.493149
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           1.8956044   0.8924902   4.026169
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.1723301   0.4388000   3.132082
24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           3.1558011   1.2901595   7.719263
24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.2923077   0.4061679   4.111746
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.2878788   0.8111352   2.044828
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           0.7881773   0.4482826   1.385785


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1023005    0.0197297   0.1848713
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0953567    0.0476674   0.1430461
Birth       PROBIT           BELARUS                        >=58 kg              NA                0.0052149    0.0011547   0.0092752
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                0.0642653   -0.0066829   0.1352134
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                0.0375720    0.0031265   0.0720175
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0134435    0.0068599   0.0200271
6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0001907   -0.0008192   0.0012005
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.0340909   -0.0312943   0.0994761
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0061032   -0.0010196   0.0132259
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0052440    0.0015916   0.0088964
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0295776   -0.0065257   0.0656810
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.0626236    0.0234443   0.1018028
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0051837   -0.0388808   0.0492483


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3501356   -0.0013667   0.5782527
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.3925798    0.1664771   0.5573496
Birth       PROBIT           BELARUS                        >=58 kg              NA                0.0248135    0.0040878   0.0451079
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                0.2900467   -0.1113089   0.5464505
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                0.3500298   -0.0719654   0.6059003
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0876854    0.0438469   0.1295140
6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0286335   -0.1347673   0.1685055
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.2727273   -0.4916470   0.6454083
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1427420   -0.0381470   0.2921125
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1661281    0.0439024   0.2727287
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.3378422   -0.2166810   0.6396320
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.5838134    0.0552311   0.8166628
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0294913   -0.2564994   0.2503878
