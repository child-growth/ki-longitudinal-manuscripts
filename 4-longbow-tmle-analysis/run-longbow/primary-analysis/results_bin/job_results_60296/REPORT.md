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

agecat      studyid          country                        mwtkg         wasted   n_cell       n
----------  ---------------  -----------------------------  -----------  -------  -------  ------
Birth       JiVitA-3         BANGLADESH                     >=58 kg            0      383   17995
Birth       JiVitA-3         BANGLADESH                     >=58 kg            1       44   17995
Birth       JiVitA-3         BANGLADESH                     <52 kg             0    14554   17995
Birth       JiVitA-3         BANGLADESH                     <52 kg             1     1797   17995
Birth       JiVitA-3         BANGLADESH                     [52-58) kg         0     1086   17995
Birth       JiVitA-3         BANGLADESH                     [52-58) kg         1      131   17995
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
Birth       SAS-CompFeed     INDIA                          >=58 kg            0       84    1091
Birth       SAS-CompFeed     INDIA                          >=58 kg            1        5    1091
Birth       SAS-CompFeed     INDIA                          <52 kg             0      725    1091
Birth       SAS-CompFeed     INDIA                          <52 kg             1       99    1091
Birth       SAS-CompFeed     INDIA                          [52-58) kg         0      165    1091
Birth       SAS-CompFeed     INDIA                          [52-58) kg         1       13    1091
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg            0     4692   10286
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg            1      763   10286
Birth       ZVITAMBO         ZIMBABWE                       <52 kg             0     1749   10286
Birth       ZVITAMBO         ZIMBABWE                       <52 kg             1      393   10286
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg         0     2268   10286
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg         1      421   10286
6 months    JiVitA-3         BANGLADESH                     >=58 kg            0      376   16775
6 months    JiVitA-3         BANGLADESH                     >=58 kg            1       32   16775
6 months    JiVitA-3         BANGLADESH                     <52 kg             0    13905   16775
6 months    JiVitA-3         BANGLADESH                     <52 kg             1     1311   16775
6 months    JiVitA-3         BANGLADESH                     [52-58) kg         0     1075   16775
6 months    JiVitA-3         BANGLADESH                     [52-58) kg         1       76   16775
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
6 months    SAS-CompFeed     INDIA                          >=58 kg            0       94    1329
6 months    SAS-CompFeed     INDIA                          >=58 kg            1        9    1329
6 months    SAS-CompFeed     INDIA                          <52 kg             0      882    1329
6 months    SAS-CompFeed     INDIA                          <52 kg             1      129    1329
6 months    SAS-CompFeed     INDIA                          [52-58) kg         0      187    1329
6 months    SAS-CompFeed     INDIA                          [52-58) kg         1       28    1329
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
24 months   JiVitA-3         BANGLADESH                     >=58 kg            0      155    8598
24 months   JiVitA-3         BANGLADESH                     >=58 kg            1       40    8598
24 months   JiVitA-3         BANGLADESH                     <52 kg             0     6117    8598
24 months   JiVitA-3         BANGLADESH                     <52 kg             1     1718    8598
24 months   JiVitA-3         BANGLADESH                     [52-58) kg         0      451    8598
24 months   JiVitA-3         BANGLADESH                     [52-58) kg         1      117    8598
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




# Results Detail

## Results Plots
![](/tmp/c9e24952-0660-4951-8e36-95ba8fa2760d/ee06aa57-e285-4e90-807d-b20c399c732e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c9e24952-0660-4951-8e36-95ba8fa2760d/ee06aa57-e285-4e90-807d-b20c399c732e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c9e24952-0660-4951-8e36-95ba8fa2760d/ee06aa57-e285-4e90-807d-b20c399c732e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c9e24952-0660-4951-8e36-95ba8fa2760d/ee06aa57-e285-4e90-807d-b20c399c732e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                0.1093511   0.0828193   0.1358829
Birth       JiVitA-3         BANGLADESH                     <52 kg               NA                0.1098961   0.1045849   0.1152072
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.1082969   0.0883108   0.1282830
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2010628   0.1143746   0.2877509
Birth       NIH-Birth        BANGLADESH                     <52 kg               NA                0.3181855   0.2732196   0.3631514
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2654248   0.1703751   0.3604746
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.1384267   0.0867780   0.1900754
Birth       NIH-Crypto       BANGLADESH                     <52 kg               NA                0.2935602   0.2473409   0.3397795
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.2192303   0.1449173   0.2935432
Birth       PROBIT           BELARUS                        >=58 kg              NA                0.2056909   0.1401223   0.2712595
Birth       PROBIT           BELARUS                        <52 kg               NA                0.2239329   0.1552370   0.2926288
Birth       PROBIT           BELARUS                        [52-58) kg           NA                0.2190769   0.1518450   0.2863088
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                0.1543497   0.0776009   0.2310984
Birth       PROVIDE          BANGLADESH                     <52 kg               NA                0.2484940   0.2017212   0.2952668
Birth       PROVIDE          BANGLADESH                     [52-58) kg           NA                0.1908260   0.1118925   0.2697595
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                0.0561798   0.0184587   0.0939008
Birth       SAS-CompFeed     INDIA                          <52 kg               NA                0.1201456   0.0811367   0.1591546
Birth       SAS-CompFeed     INDIA                          [52-58) kg           NA                0.0730337   0.0346496   0.1114178
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1421906   0.1328184   0.1515627
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1817596   0.1650223   0.1984969
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1555150   0.1414702   0.1695598
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                0.0803593   0.0549803   0.1057384
6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                0.0860910   0.0810486   0.0911333
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.0672246   0.0508455   0.0836037
6 months    PROBIT           BELARUS                        >=58 kg              NA                0.0064688   0.0042416   0.0086961
6 months    PROBIT           BELARUS                        <52 kg               NA                0.0083102   0.0002681   0.0163524
6 months    PROBIT           BELARUS                        [52-58) kg           NA                0.0066905   0.0036382   0.0097427
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                0.0873786   0.0376907   0.1370666
6 months    SAS-CompFeed     INDIA                          <52 kg               NA                0.1275964   0.0982369   0.1569559
6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                0.1302326   0.0903997   0.1700654
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0366400   0.0262391   0.0470409
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0490044   0.0254078   0.0726010
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0568877   0.0344291   0.0793463
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0263113   0.0214452   0.0311775
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0503235   0.0394357   0.0612112
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0305399   0.0227706   0.0383093
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                0.2213592   0.1663684   0.2763501
24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                0.2191868   0.2089284   0.2294451
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                0.2084839   0.1710358   0.2459319
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                0.0579710   0.0189437   0.0969984
24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                0.1098901   0.0727545   0.1470257
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                0.0679612   0.0193093   0.1166131
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                0.0446429   0.0063627   0.0829230
24 months   PROVIDE          BANGLADESH                     <52 kg               NA                0.1408840   0.1050144   0.1767536
24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                0.0576923   0.0128423   0.1025423
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1696399   0.1128304   0.2264494
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2301094   0.1597453   0.3004735
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1435532   0.0815418   0.2055646


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1095860   0.1044555   0.1147165
Birth       NIH-Birth        BANGLADESH                     NA                   NA                0.2921739   0.2549711   0.3293768
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.2428977   0.2111977   0.2745977
Birth       PROBIT           BELARUS                        NA                   NA                0.2101650   0.1447462   0.2755839
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.2215686   0.1854897   0.2576475
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.1072411   0.0763212   0.1381609
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1533152   0.1463521   0.1602782
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0845902   0.0797842   0.0893962
6 months    PROBIT           BELARUS                        NA                   NA                0.0066595   0.0045730   0.0087461
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.1249059   0.0994146   0.1503973
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0427565   0.0338612   0.0516519
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0315660   0.0277605   0.0353714
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2180740   0.2082038   0.2279441
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1072664   0.0820169   0.1325160
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1757720   0.1393703   0.2121737


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.0049832   0.7851320   1.286397
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           0.9903591   0.7298893   1.343781
Birth       NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.5825184   1.0049413   2.492050
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.3201095   0.7540739   2.311032
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           2.1206909   1.4136470   3.181367
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.5837284   0.9578154   2.618663
Birth       PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       PROBIT           BELARUS                        <52 kg               >=58 kg           1.0886863   0.9216799   1.285954
Birth       PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0650781   0.9862181   1.150244
Birth       PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       PROVIDE          BANGLADESH                     <52 kg               >=58 kg           1.6099419   0.9460269   2.739788
Birth       PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.2363224   0.6478084   2.359484
Birth       SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed     INDIA                          <52 kg               >=58 kg           2.1385922   1.2224537   3.741309
Birth       SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.3000000   0.4894687   3.452723
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.2782818   1.1414162   1.431559
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.0937086   0.9780802   1.223007
6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           1.0713251   0.7775499   1.476095
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           0.8365505   0.5595874   1.250594
6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           1.2846590   0.5056167   3.264031
6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0342594   0.5892762   1.815265
6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           1.4602704   0.8663108   2.461460
6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           1.4904393   0.8935131   2.486152
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.3374566   0.7646668   2.339307
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.5526137   0.9548076   2.524707
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.9126157   1.4387949   2.542474
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1607139   0.8474485   1.589780
24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           0.9901858   0.7686358   1.275595
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           0.9418351   0.6883880   1.288595
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           1.8956044   0.8924902   4.026169
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           1.1723301   0.4388000   3.132082
24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           3.1558011   1.2901595   7.719263
24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           1.2923077   0.4061679   4.111746
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.3564583   0.8630489   2.131953
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           0.8462234   0.4900487   1.461271


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0002349   -0.0260405   0.0265102
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0911112    0.0083802   0.1738421
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.1044711    0.0554950   0.1534471
Birth       PROBIT           BELARUS                        >=58 kg              NA                 0.0044741    0.0000525   0.0088958
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                 0.0672189   -0.0045112   0.1389491
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                 0.0510613    0.0186947   0.0834278
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0111246    0.0043635   0.0178857
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0042308   -0.0208977   0.0293594
6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.0001907   -0.0008192   0.0012005
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                 0.0375273   -0.0015559   0.0766105
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0061166   -0.0010080   0.0132412
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0052546    0.0015222   0.0089871
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.0032853   -0.0579471   0.0513766
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.0295776   -0.0065257   0.0656810
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                 0.0626236    0.0234443   0.1018028
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0061321   -0.0379427   0.0502069


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0021431   -0.2688788   0.2152771
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.3118388   -0.0357068   0.5427607
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.4301030    0.1960874   0.5959977
Birth       PROBIT           BELARUS                        >=58 kg              NA                 0.0212885   -0.0010205   0.0431004
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                 0.3033775   -0.1062696   0.5613340
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                 0.4761356    0.0833933   0.7005980
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0725605    0.0275003   0.1155329
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                 0.0500159   -0.2985873   0.3050372
6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.0286335   -0.1347673   0.1685055
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                 0.3004445   -0.1172837   0.5619932
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1430554   -0.0378996   0.2924614
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.1664652    0.0413267   0.2752690
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.0150649   -0.2994340   0.2070727
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.3378422   -0.2166810   0.6396320
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                 0.5838134    0.0552311   0.8166628
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0348868   -0.2514689   0.2557198
