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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid         country                        fage       n_cell       n
-------------  --------------  -----------------------------  --------  -------  ------
0-3 months     COHORTS         GUATEMALA                      >=38          214     706
0-3 months     COHORTS         GUATEMALA                      <32           316     706
0-3 months     COHORTS         GUATEMALA                      [32-38)       176     706
0-3 months     MAL-ED          BANGLADESH                     >=38           68     150
0-3 months     MAL-ED          BANGLADESH                     <32            30     150
0-3 months     MAL-ED          BANGLADESH                     [32-38)        52     150
0-3 months     MAL-ED          BRAZIL                         >=38           26      65
0-3 months     MAL-ED          BRAZIL                         <32            16      65
0-3 months     MAL-ED          BRAZIL                         [32-38)        23      65
0-3 months     MAL-ED          INDIA                          >=38           28     121
0-3 months     MAL-ED          INDIA                          <32            41     121
0-3 months     MAL-ED          INDIA                          [32-38)        52     121
0-3 months     MAL-ED          NEPAL                          >=38           13      54
0-3 months     MAL-ED          NEPAL                          <32             9      54
0-3 months     MAL-ED          NEPAL                          [32-38)        32      54
0-3 months     MAL-ED          PERU                           >=38           27      79
0-3 months     MAL-ED          PERU                           <32            26      79
0-3 months     MAL-ED          PERU                           [32-38)        26      79
0-3 months     MAL-ED          SOUTH AFRICA                   >=38           49      70
0-3 months     MAL-ED          SOUTH AFRICA                   <32             7      70
0-3 months     MAL-ED          SOUTH AFRICA                   [32-38)        14      70
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           42      91
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      91
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        34      91
0-3 months     PROBIT          BELARUS                        >=38          680   14764
0-3 months     PROBIT          BELARUS                        <32         11828   14764
0-3 months     PROBIT          BELARUS                        [32-38)      2256   14764
0-3 months     SAS-CompFeed    INDIA                          >=38           37    1258
0-3 months     SAS-CompFeed    INDIA                          <32          1049    1258
0-3 months     SAS-CompFeed    INDIA                          [32-38)       172    1258
3-6 months     COHORTS         GUATEMALA                      >=38          228     779
3-6 months     COHORTS         GUATEMALA                      <32           348     779
3-6 months     COHORTS         GUATEMALA                      [32-38)       203     779
3-6 months     MAL-ED          BANGLADESH                     >=38           68     148
3-6 months     MAL-ED          BANGLADESH                     <32            30     148
3-6 months     MAL-ED          BANGLADESH                     [32-38)        50     148
3-6 months     MAL-ED          BRAZIL                         >=38           30      79
3-6 months     MAL-ED          BRAZIL                         <32            18      79
3-6 months     MAL-ED          BRAZIL                         [32-38)        31      79
3-6 months     MAL-ED          INDIA                          >=38           34     157
3-6 months     MAL-ED          INDIA                          <32            53     157
3-6 months     MAL-ED          INDIA                          [32-38)        70     157
3-6 months     MAL-ED          NEPAL                          >=38           17      79
3-6 months     MAL-ED          NEPAL                          <32            15      79
3-6 months     MAL-ED          NEPAL                          [32-38)        47      79
3-6 months     MAL-ED          PERU                           >=38           27      83
3-6 months     MAL-ED          PERU                           <32            28      83
3-6 months     MAL-ED          PERU                           [32-38)        28      83
3-6 months     MAL-ED          SOUTH AFRICA                   >=38           63      87
3-6 months     MAL-ED          SOUTH AFRICA                   <32             9      87
3-6 months     MAL-ED          SOUTH AFRICA                   [32-38)        15      87
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
3-6 months     PROBIT          BELARUS                        >=38          594   12815
3-6 months     PROBIT          BELARUS                        <32         10268   12815
3-6 months     PROBIT          BELARUS                        [32-38)      1953   12815
3-6 months     SAS-CompFeed    INDIA                          >=38           37    1121
3-6 months     SAS-CompFeed    INDIA                          <32           935    1121
3-6 months     SAS-CompFeed    INDIA                          [32-38)       149    1121
6-9 months     COHORTS         GUATEMALA                      >=38          225     792
6-9 months     COHORTS         GUATEMALA                      <32           365     792
6-9 months     COHORTS         GUATEMALA                      [32-38)       202     792
6-9 months     LCNI-5          MALAWI                         >=38           18      68
6-9 months     LCNI-5          MALAWI                         <32            36      68
6-9 months     LCNI-5          MALAWI                         [32-38)        14      68
6-9 months     MAL-ED          BANGLADESH                     >=38           67     147
6-9 months     MAL-ED          BANGLADESH                     <32            30     147
6-9 months     MAL-ED          BANGLADESH                     [32-38)        50     147
6-9 months     MAL-ED          BRAZIL                         >=38           30      79
6-9 months     MAL-ED          BRAZIL                         <32            18      79
6-9 months     MAL-ED          BRAZIL                         [32-38)        31      79
6-9 months     MAL-ED          INDIA                          >=38           34     159
6-9 months     MAL-ED          INDIA                          <32            53     159
6-9 months     MAL-ED          INDIA                          [32-38)        72     159
6-9 months     MAL-ED          NEPAL                          >=38           16      78
6-9 months     MAL-ED          NEPAL                          <32            15      78
6-9 months     MAL-ED          NEPAL                          [32-38)        47      78
6-9 months     MAL-ED          PERU                           >=38           26      82
6-9 months     MAL-ED          PERU                           <32            28      82
6-9 months     MAL-ED          PERU                           [32-38)        28      82
6-9 months     MAL-ED          SOUTH AFRICA                   >=38           62      84
6-9 months     MAL-ED          SOUTH AFRICA                   <32             8      84
6-9 months     MAL-ED          SOUTH AFRICA                   [32-38)        14      84
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           47      97
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      97
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        35      97
6-9 months     PROBIT          BELARUS                        >=38          563   11984
6-9 months     PROBIT          BELARUS                        <32          9604   11984
6-9 months     PROBIT          BELARUS                        [32-38)      1817   11984
6-9 months     SAS-CompFeed    INDIA                          >=38           40    1141
6-9 months     SAS-CompFeed    INDIA                          <32           954    1141
6-9 months     SAS-CompFeed    INDIA                          [32-38)       147    1141
6-9 months     SAS-FoodSuppl   INDIA                          >=38           35     314
6-9 months     SAS-FoodSuppl   INDIA                          <32           211     314
6-9 months     SAS-FoodSuppl   INDIA                          [32-38)        68     314
9-12 months    COHORTS         GUATEMALA                      >=38          258     898
9-12 months    COHORTS         GUATEMALA                      <32           424     898
9-12 months    COHORTS         GUATEMALA                      [32-38)       216     898
9-12 months    LCNI-5          MALAWI                         >=38           12      46
9-12 months    LCNI-5          MALAWI                         <32            25      46
9-12 months    LCNI-5          MALAWI                         [32-38)         9      46
9-12 months    MAL-ED          BANGLADESH                     >=38           68     147
9-12 months    MAL-ED          BANGLADESH                     <32            30     147
9-12 months    MAL-ED          BANGLADESH                     [32-38)        49     147
9-12 months    MAL-ED          BRAZIL                         >=38           30      79
9-12 months    MAL-ED          BRAZIL                         <32            18      79
9-12 months    MAL-ED          BRAZIL                         [32-38)        31      79
9-12 months    MAL-ED          INDIA                          >=38           36     159
9-12 months    MAL-ED          INDIA                          <32            52     159
9-12 months    MAL-ED          INDIA                          [32-38)        71     159
9-12 months    MAL-ED          NEPAL                          >=38           16      78
9-12 months    MAL-ED          NEPAL                          <32            15      78
9-12 months    MAL-ED          NEPAL                          [32-38)        47      78
9-12 months    MAL-ED          PERU                           >=38           26      80
9-12 months    MAL-ED          PERU                           <32            26      80
9-12 months    MAL-ED          PERU                           [32-38)        28      80
9-12 months    MAL-ED          SOUTH AFRICA                   >=38           62      84
9-12 months    MAL-ED          SOUTH AFRICA                   <32             7      84
9-12 months    MAL-ED          SOUTH AFRICA                   [32-38)        15      84
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           46      95
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      95
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        34      95
9-12 months    PROBIT          BELARUS                        >=38          583   12236
9-12 months    PROBIT          BELARUS                        <32          9798   12236
9-12 months    PROBIT          BELARUS                        [32-38)      1855   12236
9-12 months    SAS-CompFeed    INDIA                          >=38           42    1143
9-12 months    SAS-CompFeed    INDIA                          <32           951    1143
9-12 months    SAS-CompFeed    INDIA                          [32-38)       150    1143
9-12 months    SAS-FoodSuppl   INDIA                          >=38           35     311
9-12 months    SAS-FoodSuppl   INDIA                          <32           206     311
9-12 months    SAS-FoodSuppl   INDIA                          [32-38)        70     311
12-15 months   COHORTS         GUATEMALA                      >=38          248     852
12-15 months   COHORTS         GUATEMALA                      <32           394     852
12-15 months   COHORTS         GUATEMALA                      [32-38)       210     852
12-15 months   LCNI-5          MALAWI                         >=38            4      14
12-15 months   LCNI-5          MALAWI                         <32             8      14
12-15 months   LCNI-5          MALAWI                         [32-38)         2      14
12-15 months   MAL-ED          BANGLADESH                     >=38           68     145
12-15 months   MAL-ED          BANGLADESH                     <32            28     145
12-15 months   MAL-ED          BANGLADESH                     [32-38)        49     145
12-15 months   MAL-ED          BRAZIL                         >=38           30      79
12-15 months   MAL-ED          BRAZIL                         <32            18      79
12-15 months   MAL-ED          BRAZIL                         [32-38)        31      79
12-15 months   MAL-ED          INDIA                          >=38           36     159
12-15 months   MAL-ED          INDIA                          <32            52     159
12-15 months   MAL-ED          INDIA                          [32-38)        71     159
12-15 months   MAL-ED          NEPAL                          >=38           17      79
12-15 months   MAL-ED          NEPAL                          <32            15      79
12-15 months   MAL-ED          NEPAL                          [32-38)        47      79
12-15 months   MAL-ED          PERU                           >=38           27      79
12-15 months   MAL-ED          PERU                           <32            25      79
12-15 months   MAL-ED          PERU                           [32-38)        27      79
12-15 months   MAL-ED          SOUTH AFRICA                   >=38           62      84
12-15 months   MAL-ED          SOUTH AFRICA                   <32             6      84
12-15 months   MAL-ED          SOUTH AFRICA                   [32-38)        16      84
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           46      97
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      97
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36      97
12-15 months   PROBIT          BELARUS                        >=38           44     965
12-15 months   PROBIT          BELARUS                        <32           793     965
12-15 months   PROBIT          BELARUS                        [32-38)       128     965
12-15 months   SAS-CompFeed    INDIA                          >=38           41    1165
12-15 months   SAS-CompFeed    INDIA                          <32           975    1165
12-15 months   SAS-CompFeed    INDIA                          [32-38)       149    1165
12-15 months   SAS-FoodSuppl   INDIA                          >=38           32     303
12-15 months   SAS-FoodSuppl   INDIA                          <32           204     303
12-15 months   SAS-FoodSuppl   INDIA                          [32-38)        67     303
15-18 months   COHORTS         GUATEMALA                      >=38          222     763
15-18 months   COHORTS         GUATEMALA                      <32           351     763
15-18 months   COHORTS         GUATEMALA                      [32-38)       190     763
15-18 months   LCNI-5          MALAWI                         >=38            4      13
15-18 months   LCNI-5          MALAWI                         <32             7      13
15-18 months   LCNI-5          MALAWI                         [32-38)         2      13
15-18 months   MAL-ED          BANGLADESH                     >=38           66     146
15-18 months   MAL-ED          BANGLADESH                     <32            28     146
15-18 months   MAL-ED          BANGLADESH                     [32-38)        52     146
15-18 months   MAL-ED          BRAZIL                         >=38           29      77
15-18 months   MAL-ED          BRAZIL                         <32            18      77
15-18 months   MAL-ED          BRAZIL                         [32-38)        30      77
15-18 months   MAL-ED          INDIA                          >=38           35     160
15-18 months   MAL-ED          INDIA                          <32            53     160
15-18 months   MAL-ED          INDIA                          [32-38)        72     160
15-18 months   MAL-ED          NEPAL                          >=38           17      78
15-18 months   MAL-ED          NEPAL                          <32            15      78
15-18 months   MAL-ED          NEPAL                          [32-38)        46      78
15-18 months   MAL-ED          PERU                           >=38           26      80
15-18 months   MAL-ED          PERU                           <32            27      80
15-18 months   MAL-ED          PERU                           [32-38)        27      80
15-18 months   MAL-ED          SOUTH AFRICA                   >=38           62      85
15-18 months   MAL-ED          SOUTH AFRICA                   <32             7      85
15-18 months   MAL-ED          SOUTH AFRICA                   [32-38)        16      85
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           46      96
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            14      96
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36      96
15-18 months   PROBIT          BELARUS                        >=38            9     258
15-18 months   PROBIT          BELARUS                        <32           218     258
15-18 months   PROBIT          BELARUS                        [32-38)        31     258
15-18 months   SAS-CompFeed    INDIA                          >=38           38    1168
15-18 months   SAS-CompFeed    INDIA                          <32           986    1168
15-18 months   SAS-CompFeed    INDIA                          [32-38)       144    1168
15-18 months   SAS-FoodSuppl   INDIA                          >=38           31     291
15-18 months   SAS-FoodSuppl   INDIA                          <32           200     291
15-18 months   SAS-FoodSuppl   INDIA                          [32-38)        60     291
18-21 months   COHORTS         GUATEMALA                      >=38          222     752
18-21 months   COHORTS         GUATEMALA                      <32           350     752
18-21 months   COHORTS         GUATEMALA                      [32-38)       180     752
18-21 months   LCNI-5          MALAWI                         >=38           18      63
18-21 months   LCNI-5          MALAWI                         <32            31      63
18-21 months   LCNI-5          MALAWI                         [32-38)        14      63
18-21 months   MAL-ED          BANGLADESH                     >=38           66     147
18-21 months   MAL-ED          BANGLADESH                     <32            29     147
18-21 months   MAL-ED          BANGLADESH                     [32-38)        52     147
18-21 months   MAL-ED          BRAZIL                         >=38           29      77
18-21 months   MAL-ED          BRAZIL                         <32            18      77
18-21 months   MAL-ED          BRAZIL                         [32-38)        30      77
18-21 months   MAL-ED          INDIA                          >=38           35     159
18-21 months   MAL-ED          INDIA                          <32            52     159
18-21 months   MAL-ED          INDIA                          [32-38)        72     159
18-21 months   MAL-ED          NEPAL                          >=38           17      78
18-21 months   MAL-ED          NEPAL                          <32            15      78
18-21 months   MAL-ED          NEPAL                          [32-38)        46      78
18-21 months   MAL-ED          PERU                           >=38           26      77
18-21 months   MAL-ED          PERU                           <32            25      77
18-21 months   MAL-ED          PERU                           [32-38)        26      77
18-21 months   MAL-ED          SOUTH AFRICA                   >=38           63      87
18-21 months   MAL-ED          SOUTH AFRICA                   <32             8      87
18-21 months   MAL-ED          SOUTH AFRICA                   [32-38)        16      87
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           43      92
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            14      92
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        35      92
18-21 months   PROBIT          BELARUS                        >=38            6     211
18-21 months   PROBIT          BELARUS                        <32           180     211
18-21 months   PROBIT          BELARUS                        [32-38)        25     211
21-24 months   COHORTS         GUATEMALA                      >=38          244     832
21-24 months   COHORTS         GUATEMALA                      <32           390     832
21-24 months   COHORTS         GUATEMALA                      [32-38)       198     832
21-24 months   LCNI-5          MALAWI                         >=38           16      55
21-24 months   LCNI-5          MALAWI                         <32            28      55
21-24 months   LCNI-5          MALAWI                         [32-38)        11      55
21-24 months   MAL-ED          BANGLADESH                     >=38           66     147
21-24 months   MAL-ED          BANGLADESH                     <32            29     147
21-24 months   MAL-ED          BANGLADESH                     [32-38)        52     147
21-24 months   MAL-ED          BRAZIL                         >=38           30      79
21-24 months   MAL-ED          BRAZIL                         <32            18      79
21-24 months   MAL-ED          BRAZIL                         [32-38)        31      79
21-24 months   MAL-ED          INDIA                          >=38           36     160
21-24 months   MAL-ED          INDIA                          <32            52     160
21-24 months   MAL-ED          INDIA                          [32-38)        72     160
21-24 months   MAL-ED          NEPAL                          >=38           17      79
21-24 months   MAL-ED          NEPAL                          <32            15      79
21-24 months   MAL-ED          NEPAL                          [32-38)        47      79
21-24 months   MAL-ED          PERU                           >=38           26      76
21-24 months   MAL-ED          PERU                           <32            25      76
21-24 months   MAL-ED          PERU                           [32-38)        25      76
21-24 months   MAL-ED          SOUTH AFRICA                   >=38           65      89
21-24 months   MAL-ED          SOUTH AFRICA                   <32             8      89
21-24 months   MAL-ED          SOUTH AFRICA                   [32-38)        16      89
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           45      96
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      96
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36      96
21-24 months   PROBIT          BELARUS                        >=38            8     204
21-24 months   PROBIT          BELARUS                        <32           165     204
21-24 months   PROBIT          BELARUS                        [32-38)        31     204


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/c5a858b8-8db6-4984-8d91-1b1b503309f4/efa529d7-2e8f-4645-b431-e523cae17b53/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c5a858b8-8db6-4984-8d91-1b1b503309f4/efa529d7-2e8f-4645-b431-e523cae17b53/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c5a858b8-8db6-4984-8d91-1b1b503309f4/efa529d7-2e8f-4645-b431-e523cae17b53/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     COHORTS         GUATEMALA                      >=38                 NA                2.6220023    2.5146769   2.7293276
0-3 months     COHORTS         GUATEMALA                      <32                  NA                2.5912546    2.5190817   2.6634276
0-3 months     COHORTS         GUATEMALA                      [32-38)              NA                2.5230185    2.3987066   2.6473303
0-3 months     MAL-ED          BANGLADESH                     >=38                 NA                3.3977063    3.2655776   3.5298350
0-3 months     MAL-ED          BANGLADESH                     <32                  NA                3.2363708    3.0106634   3.4620782
0-3 months     MAL-ED          BANGLADESH                     [32-38)              NA                3.4521727    3.2833509   3.6209946
0-3 months     MAL-ED          BRAZIL                         >=38                 NA                3.9206025    3.6581343   4.1830708
0-3 months     MAL-ED          BRAZIL                         <32                  NA                3.6505039    3.2779596   4.0230482
0-3 months     MAL-ED          BRAZIL                         [32-38)              NA                3.7911438    3.5302512   4.0520363
0-3 months     MAL-ED          INDIA                          >=38                 NA                3.0833990    2.7780223   3.3887756
0-3 months     MAL-ED          INDIA                          <32                  NA                3.3247760    3.2064910   3.4430610
0-3 months     MAL-ED          INDIA                          [32-38)              NA                3.4231713    3.2087537   3.6375890
0-3 months     MAL-ED          NEPAL                          >=38                 NA                3.5520298    3.1530633   3.9509964
0-3 months     MAL-ED          NEPAL                          <32                  NA                3.3972082    3.0245983   3.7698180
0-3 months     MAL-ED          NEPAL                          [32-38)              NA                3.5611691    3.3848421   3.7374962
0-3 months     MAL-ED          PERU                           >=38                 NA                2.8746788    2.6969263   3.0524312
0-3 months     MAL-ED          PERU                           <32                  NA                3.1461170    2.9555827   3.3366514
0-3 months     MAL-ED          PERU                           [32-38)              NA                3.0820910    2.7638517   3.4003304
0-3 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                3.2933269    3.0861138   3.5005400
0-3 months     MAL-ED          SOUTH AFRICA                   <32                  NA                3.2667673    2.6373150   3.8962196
0-3 months     MAL-ED          SOUTH AFRICA                   [32-38)              NA                3.1882784    2.8224884   3.5540684
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                3.2652460    3.1016571   3.4288348
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                3.4242851    3.1495985   3.6989716
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                3.0476793    2.8061493   3.2892094
0-3 months     PROBIT          BELARUS                        >=38                 NA                2.8040122    2.7021813   2.9058432
0-3 months     PROBIT          BELARUS                        <32                  NA                2.8174922    2.7026080   2.9323763
0-3 months     PROBIT          BELARUS                        [32-38)              NA                2.8281007    2.7052363   2.9509652
0-3 months     SAS-CompFeed    INDIA                          >=38                 NA                2.9889304    2.7205268   3.2573339
0-3 months     SAS-CompFeed    INDIA                          <32                  NA                3.3819017    3.3233554   3.4404480
0-3 months     SAS-CompFeed    INDIA                          [32-38)              NA                3.2394469    3.0863837   3.3925102
3-6 months     COHORTS         GUATEMALA                      >=38                 NA                1.6646300    1.5733470   1.7559131
3-6 months     COHORTS         GUATEMALA                      <32                  NA                1.7863527    1.7429233   1.8297821
3-6 months     COHORTS         GUATEMALA                      [32-38)              NA                1.7348117    1.6497764   1.8198470
3-6 months     MAL-ED          BANGLADESH                     >=38                 NA                1.9600642    1.8561438   2.0639845
3-6 months     MAL-ED          BANGLADESH                     <32                  NA                1.8922177    1.7436700   2.0407653
3-6 months     MAL-ED          BANGLADESH                     [32-38)              NA                1.9033958    1.7793635   2.0274282
3-6 months     MAL-ED          BRAZIL                         >=38                 NA                2.1444317    1.9216921   2.3671713
3-6 months     MAL-ED          BRAZIL                         <32                  NA                2.4244752    2.0980024   2.7509481
3-6 months     MAL-ED          BRAZIL                         [32-38)              NA                2.2065343    2.0000936   2.4129751
3-6 months     MAL-ED          INDIA                          >=38                 NA                1.9549942    1.7842725   2.1257160
3-6 months     MAL-ED          INDIA                          <32                  NA                1.8570053    1.6384249   2.0755858
3-6 months     MAL-ED          INDIA                          [32-38)              NA                1.8796245    1.7222356   2.0370134
3-6 months     MAL-ED          NEPAL                          >=38                 NA                1.8594011    1.6151342   2.1036680
3-6 months     MAL-ED          NEPAL                          <32                  NA                1.8285823    1.5718162   2.0853483
3-6 months     MAL-ED          NEPAL                          [32-38)              NA                1.8777403    1.7540024   2.0014781
3-6 months     MAL-ED          PERU                           >=38                 NA                2.1831461    1.9537409   2.4125513
3-6 months     MAL-ED          PERU                           <32                  NA                2.0548027    1.7984689   2.3111365
3-6 months     MAL-ED          PERU                           [32-38)              NA                2.0123866    1.8065144   2.2182587
3-6 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                1.8759677    1.7377058   2.0142296
3-6 months     MAL-ED          SOUTH AFRICA                   <32                  NA                1.7766280    1.3254495   2.2278064
3-6 months     MAL-ED          SOUTH AFRICA                   [32-38)              NA                1.9390510    1.6953495   2.1827524
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                1.8132514    1.6835609   1.9429419
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                1.7684062    1.5253458   2.0114665
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                1.8649894    1.7034659   2.0265129
3-6 months     PROBIT          BELARUS                        >=38                 NA                2.1521272    2.0946785   2.2095759
3-6 months     PROBIT          BELARUS                        <32                  NA                2.0935009    2.0537384   2.1332633
3-6 months     PROBIT          BELARUS                        [32-38)              NA                2.0689505    2.0056526   2.1322484
3-6 months     SAS-CompFeed    INDIA                          >=38                 NA                1.8343344    1.6942003   1.9744685
3-6 months     SAS-CompFeed    INDIA                          <32                  NA                1.9399233    1.8992036   1.9806429
3-6 months     SAS-CompFeed    INDIA                          [32-38)              NA                1.9663994    1.8341628   2.0986359
6-9 months     COHORTS         GUATEMALA                      >=38                 NA                1.1176063    1.0468848   1.1883279
6-9 months     COHORTS         GUATEMALA                      <32                  NA                1.1315470    1.0820325   1.1810615
6-9 months     COHORTS         GUATEMALA                      [32-38)              NA                1.0387927    0.9528580   1.1247274
6-9 months     LCNI-5          MALAWI                         >=38                 NA                1.4761113    1.2658496   1.6863729
6-9 months     LCNI-5          MALAWI                         <32                  NA                1.3235743    1.1865675   1.4605810
6-9 months     LCNI-5          MALAWI                         [32-38)              NA                1.3431302    1.0774336   1.6088268
6-9 months     MAL-ED          BANGLADESH                     >=38                 NA                1.1762767    1.0899017   1.2626516
6-9 months     MAL-ED          BANGLADESH                     <32                  NA                1.4130254    1.3102029   1.5158480
6-9 months     MAL-ED          BANGLADESH                     [32-38)              NA                1.2508671    1.1544665   1.3472677
6-9 months     MAL-ED          BRAZIL                         >=38                 NA                1.4223961    1.2296699   1.6151223
6-9 months     MAL-ED          BRAZIL                         <32                  NA                1.4553706    1.2162588   1.6944824
6-9 months     MAL-ED          BRAZIL                         [32-38)              NA                1.5034742    1.2929222   1.7140262
6-9 months     MAL-ED          INDIA                          >=38                 NA                1.1817087    1.0271980   1.3362195
6-9 months     MAL-ED          INDIA                          <32                  NA                1.2807342    1.1705081   1.3909603
6-9 months     MAL-ED          INDIA                          [32-38)              NA                1.2261284    1.0992745   1.3529823
6-9 months     MAL-ED          NEPAL                          >=38                 NA                1.2935500    1.1177688   1.4693311
6-9 months     MAL-ED          NEPAL                          <32                  NA                1.3087890    1.2043929   1.4131852
6-9 months     MAL-ED          NEPAL                          [32-38)              NA                1.2709626    1.1740516   1.3678737
6-9 months     MAL-ED          PERU                           >=38                 NA                1.3249334    1.1476649   1.5022019
6-9 months     MAL-ED          PERU                           <32                  NA                1.1637822    1.0167895   1.3107749
6-9 months     MAL-ED          PERU                           [32-38)              NA                1.3287766    1.0876269   1.5699262
6-9 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                1.4270536    1.3105373   1.5435699
6-9 months     MAL-ED          SOUTH AFRICA                   <32                  NA                1.3882002    1.1346907   1.6417096
6-9 months     MAL-ED          SOUTH AFRICA                   [32-38)              NA                1.4679147    1.2908188   1.6450105
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                1.2159132    1.0191013   1.4127250
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                1.0414626    0.8789033   1.2040219
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                1.2595207    1.0064820   1.5125594
6-9 months     PROBIT          BELARUS                        >=38                 NA                1.5107056    1.4453184   1.5760927
6-9 months     PROBIT          BELARUS                        <32                  NA                1.5748752    1.5422413   1.6075092
6-9 months     PROBIT          BELARUS                        [32-38)              NA                1.5693233    1.4906896   1.6479569
6-9 months     SAS-CompFeed    INDIA                          >=38                 NA                1.3154228    1.0799690   1.5508766
6-9 months     SAS-CompFeed    INDIA                          <32                  NA                1.2136165    1.1920715   1.2351614
6-9 months     SAS-CompFeed    INDIA                          [32-38)              NA                1.2237660    1.1589232   1.2886087
6-9 months     SAS-FoodSuppl   INDIA                          >=38                 NA                1.1876147    1.0146170   1.3606123
6-9 months     SAS-FoodSuppl   INDIA                          <32                  NA                1.0858051    1.0339812   1.1376289
6-9 months     SAS-FoodSuppl   INDIA                          [32-38)              NA                1.2030439    1.0413159   1.3647719
9-12 months    COHORTS         GUATEMALA                      >=38                 NA                0.9524946    0.8778997   1.0270895
9-12 months    COHORTS         GUATEMALA                      <32                  NA                0.9004831    0.8595727   0.9413936
9-12 months    COHORTS         GUATEMALA                      [32-38)              NA                0.9461898    0.8730426   1.0193369
9-12 months    LCNI-5          MALAWI                         >=38                 NA                1.1610501    0.9198168   1.4022835
9-12 months    LCNI-5          MALAWI                         <32                  NA                1.1861374    0.8906439   1.4816309
9-12 months    LCNI-5          MALAWI                         [32-38)              NA                1.1821339    0.7814667   1.5828011
9-12 months    MAL-ED          BANGLADESH                     >=38                 NA                0.9766632    0.8924776   1.0608489
9-12 months    MAL-ED          BANGLADESH                     <32                  NA                0.9352687    0.8164528   1.0540845
9-12 months    MAL-ED          BANGLADESH                     [32-38)              NA                0.9644275    0.8688471   1.0600078
9-12 months    MAL-ED          BRAZIL                         >=38                 NA                1.4630558    1.2535394   1.6725722
9-12 months    MAL-ED          BRAZIL                         <32                  NA                1.4755653    1.1963825   1.7547480
9-12 months    MAL-ED          BRAZIL                         [32-38)              NA                1.3361998    1.1486169   1.5237827
9-12 months    MAL-ED          INDIA                          >=38                 NA                1.1209398    1.0080883   1.2337914
9-12 months    MAL-ED          INDIA                          <32                  NA                0.9555158    0.8546801   1.0563515
9-12 months    MAL-ED          INDIA                          [32-38)              NA                0.9181297    0.8351116   1.0011478
9-12 months    MAL-ED          NEPAL                          >=38                 NA                1.2157281    1.0402647   1.3911915
9-12 months    MAL-ED          NEPAL                          <32                  NA                1.0111257    0.8269083   1.1953432
9-12 months    MAL-ED          NEPAL                          [32-38)              NA                1.0614561    0.9909493   1.1319630
9-12 months    MAL-ED          PERU                           >=38                 NA                0.9937579    0.8268098   1.1607060
9-12 months    MAL-ED          PERU                           <32                  NA                1.2077435    1.0469713   1.3685157
9-12 months    MAL-ED          PERU                           [32-38)              NA                1.1306304    0.9589588   1.3023020
9-12 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                0.9488065    0.8097391   1.0878739
9-12 months    MAL-ED          SOUTH AFRICA                   <32                  NA                1.0679340    0.7327871   1.4030809
9-12 months    MAL-ED          SOUTH AFRICA                   [32-38)              NA                1.0180433    0.8448339   1.1912526
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.8625655    0.6693537   1.0557772
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.8264435    0.6125726   1.0403143
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.6755105    0.3848357   0.9661853
9-12 months    PROBIT          BELARUS                        >=38                 NA                1.4200118    1.3607045   1.4793191
9-12 months    PROBIT          BELARUS                        <32                  NA                1.3746555    1.3242735   1.4250375
9-12 months    PROBIT          BELARUS                        [32-38)              NA                1.3371744    1.2709440   1.4034049
9-12 months    SAS-CompFeed    INDIA                          >=38                 NA                0.9564870    0.7914432   1.1215307
9-12 months    SAS-CompFeed    INDIA                          <32                  NA                1.0071807    0.9857996   1.0285617
9-12 months    SAS-CompFeed    INDIA                          [32-38)              NA                0.9612143    0.8324160   1.0900126
9-12 months    SAS-FoodSuppl   INDIA                          >=38                 NA                0.7337626    0.3215600   1.1459653
9-12 months    SAS-FoodSuppl   INDIA                          <32                  NA                0.7644842    0.6062123   0.9227560
9-12 months    SAS-FoodSuppl   INDIA                          [32-38)              NA                0.9507588    0.6066640   1.2948535
12-15 months   COHORTS         GUATEMALA                      >=38                 NA                0.7871334    0.7236809   0.8505859
12-15 months   COHORTS         GUATEMALA                      <32                  NA                0.8152744    0.7701882   0.8603607
12-15 months   COHORTS         GUATEMALA                      [32-38)              NA                0.7738026    0.7137403   0.8338648
12-15 months   MAL-ED          BANGLADESH                     >=38                 NA                0.8991231    0.8262584   0.9719879
12-15 months   MAL-ED          BANGLADESH                     <32                  NA                0.9083206    0.7905729   1.0260683
12-15 months   MAL-ED          BANGLADESH                     [32-38)              NA                0.9348847    0.8472525   1.0225170
12-15 months   MAL-ED          BRAZIL                         >=38                 NA                1.2550770    1.1149827   1.3951713
12-15 months   MAL-ED          BRAZIL                         <32                  NA                1.0704564    0.9398207   1.2010921
12-15 months   MAL-ED          BRAZIL                         [32-38)              NA                1.1658389    1.0131657   1.3185120
12-15 months   MAL-ED          INDIA                          >=38                 NA                0.9225586    0.8235707   1.0215464
12-15 months   MAL-ED          INDIA                          <32                  NA                0.9516622    0.8728536   1.0304707
12-15 months   MAL-ED          INDIA                          [32-38)              NA                0.8880341    0.8117911   0.9642771
12-15 months   MAL-ED          NEPAL                          >=38                 NA                1.0110282    0.8503990   1.1716573
12-15 months   MAL-ED          NEPAL                          <32                  NA                0.9739807    0.8126713   1.1352902
12-15 months   MAL-ED          NEPAL                          [32-38)              NA                0.9621794    0.8905042   1.0338546
12-15 months   MAL-ED          PERU                           >=38                 NA                0.8549180    0.7514185   0.9584176
12-15 months   MAL-ED          PERU                           <32                  NA                0.7921508    0.6237430   0.9605586
12-15 months   MAL-ED          PERU                           [32-38)              NA                0.9773361    0.8204549   1.1342173
12-15 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                0.9701546    0.8777156   1.0625935
12-15 months   MAL-ED          SOUTH AFRICA                   <32                  NA                0.8911482    0.6833992   1.0988971
12-15 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                1.0422629    0.7929638   1.2915619
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.7296902    0.6000563   0.8593241
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.8989911    0.5191018   1.2788803
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.8927576    0.7407409   1.0447742
12-15 months   PROBIT          BELARUS                        >=38                 NA                0.6940611   -0.0943942   1.4825164
12-15 months   PROBIT          BELARUS                        <32                  NA                1.1880198    0.8517859   1.5242537
12-15 months   PROBIT          BELARUS                        [32-38)              NA                1.8147025    0.3773685   3.2520366
12-15 months   SAS-CompFeed    INDIA                          >=38                 NA                0.7189980    0.4861603   0.9518357
12-15 months   SAS-CompFeed    INDIA                          <32                  NA                0.8474043    0.8125433   0.8822654
12-15 months   SAS-CompFeed    INDIA                          [32-38)              NA                0.7787622    0.6432355   0.9142890
12-15 months   SAS-FoodSuppl   INDIA                          >=38                 NA                1.2413409    1.0914761   1.3912057
12-15 months   SAS-FoodSuppl   INDIA                          <32                  NA                1.0146062    0.9080826   1.1211299
12-15 months   SAS-FoodSuppl   INDIA                          [32-38)              NA                1.1888821    1.0702177   1.3075465
15-18 months   COHORTS         GUATEMALA                      >=38                 NA                0.7305890    0.6506622   0.8105158
15-18 months   COHORTS         GUATEMALA                      <32                  NA                0.8135643    0.7691370   0.8579917
15-18 months   COHORTS         GUATEMALA                      [32-38)              NA                0.7554685    0.6219407   0.8889963
15-18 months   MAL-ED          BANGLADESH                     >=38                 NA                0.8137680    0.7458122   0.8817239
15-18 months   MAL-ED          BANGLADESH                     <32                  NA                0.8998654    0.7986356   1.0010952
15-18 months   MAL-ED          BANGLADESH                     [32-38)              NA                0.8618632    0.7873143   0.9364121
15-18 months   MAL-ED          BRAZIL                         >=38                 NA                0.9449251    0.7980366   1.0918136
15-18 months   MAL-ED          BRAZIL                         <32                  NA                0.9238425    0.7527406   1.0949444
15-18 months   MAL-ED          BRAZIL                         [32-38)              NA                1.0081295    0.8367554   1.1795036
15-18 months   MAL-ED          INDIA                          >=38                 NA                0.8617066    0.7458630   0.9775501
15-18 months   MAL-ED          INDIA                          <32                  NA                0.8242063    0.7736820   0.8747306
15-18 months   MAL-ED          INDIA                          [32-38)              NA                0.8365812    0.7564134   0.9167491
15-18 months   MAL-ED          NEPAL                          >=38                 NA                0.8831766    0.7257743   1.0405789
15-18 months   MAL-ED          NEPAL                          <32                  NA                0.8329118    0.6886542   0.9771694
15-18 months   MAL-ED          NEPAL                          [32-38)              NA                0.8464902    0.7583001   0.9346803
15-18 months   MAL-ED          PERU                           >=38                 NA                0.8117602    0.6921964   0.9313240
15-18 months   MAL-ED          PERU                           <32                  NA                0.9945835    0.8454102   1.1437568
15-18 months   MAL-ED          PERU                           [32-38)              NA                0.8707583    0.6882444   1.0532722
15-18 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                0.8579317    0.7585445   0.9573190
15-18 months   MAL-ED          SOUTH AFRICA                   <32                  NA                1.2680730    1.0363720   1.4997740
15-18 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.8538727    0.7177219   0.9900235
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.7860517    0.6727880   0.8993153
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.8102031    0.6161186   1.0042877
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.6439439    0.4670179   0.8208699
15-18 months   PROBIT          BELARUS                        >=38                 NA                0.9547210    0.7456755   1.1637665
15-18 months   PROBIT          BELARUS                        <32                  NA                1.0319011    0.5120563   1.5517458
15-18 months   PROBIT          BELARUS                        [32-38)              NA                1.0260272    0.1760237   1.8760308
15-18 months   SAS-CompFeed    INDIA                          >=38                 NA                1.1927045    0.9657379   1.4196711
15-18 months   SAS-CompFeed    INDIA                          <32                  NA                0.8987207    0.8616492   0.9357922
15-18 months   SAS-CompFeed    INDIA                          [32-38)              NA                0.8804195    0.7048630   1.0559760
15-18 months   SAS-FoodSuppl   INDIA                          >=38                 NA                0.7067094    0.5456353   0.8677836
15-18 months   SAS-FoodSuppl   INDIA                          <32                  NA                0.7925757    0.7389551   0.8461963
15-18 months   SAS-FoodSuppl   INDIA                          [32-38)              NA                0.9014187    0.7535229   1.0493145
18-21 months   COHORTS         GUATEMALA                      >=38                 NA                0.8851199    0.8080291   0.9622108
18-21 months   COHORTS         GUATEMALA                      <32                  NA                0.7199614    0.6839666   0.7559562
18-21 months   COHORTS         GUATEMALA                      [32-38)              NA                0.7386565    0.6232533   0.8540597
18-21 months   LCNI-5          MALAWI                         >=38                 NA                0.7795883    0.5374843   1.0216923
18-21 months   LCNI-5          MALAWI                         <32                  NA                0.5803972    0.3585767   0.8022177
18-21 months   LCNI-5          MALAWI                         [32-38)              NA                0.6837185    0.4599190   0.9075181
18-21 months   MAL-ED          BANGLADESH                     >=38                 NA                0.7714691    0.7062720   0.8366663
18-21 months   MAL-ED          BANGLADESH                     <32                  NA                0.7483225    0.6691491   0.8274960
18-21 months   MAL-ED          BANGLADESH                     [32-38)              NA                0.7833757    0.7079356   0.8588158
18-21 months   MAL-ED          BRAZIL                         >=38                 NA                0.9949190    0.7659112   1.2239268
18-21 months   MAL-ED          BRAZIL                         <32                  NA                0.8571684    0.6919741   1.0223627
18-21 months   MAL-ED          BRAZIL                         [32-38)              NA                0.9175330    0.6914036   1.1436624
18-21 months   MAL-ED          INDIA                          >=38                 NA                0.8683120    0.7851242   0.9514998
18-21 months   MAL-ED          INDIA                          <32                  NA                0.8633155    0.7893580   0.9372730
18-21 months   MAL-ED          INDIA                          [32-38)              NA                0.9130273    0.8405511   0.9855035
18-21 months   MAL-ED          NEPAL                          >=38                 NA                0.7398726    0.6191113   0.8606339
18-21 months   MAL-ED          NEPAL                          <32                  NA                0.7782995    0.6545924   0.9020066
18-21 months   MAL-ED          NEPAL                          [32-38)              NA                0.6999807    0.6320212   0.7679401
18-21 months   MAL-ED          PERU                           >=38                 NA                0.8327851    0.7128225   0.9527477
18-21 months   MAL-ED          PERU                           <32                  NA                1.0147425    0.8398770   1.1896081
18-21 months   MAL-ED          PERU                           [32-38)              NA                0.8968441    0.7999739   0.9937142
18-21 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                0.7456706    0.6482415   0.8430996
18-21 months   MAL-ED          SOUTH AFRICA                   <32                  NA                0.6471890    0.3890002   0.9053777
18-21 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.9088091    0.7412631   1.0763551
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.7600741    0.6320077   0.8881404
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.7180307    0.3321612   1.1039003
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.6775608    0.5220792   0.8330425
18-21 months   PROBIT          BELARUS                        >=38                 NA                0.8616190    0.5995946   1.1236435
18-21 months   PROBIT          BELARUS                        <32                  NA                0.8715535    0.1387389   1.6043681
18-21 months   PROBIT          BELARUS                        [32-38)              NA                1.0409599    0.7919490   1.2899708
21-24 months   COHORTS         GUATEMALA                      >=38                 NA                0.6720391    0.6140450   0.7300332
21-24 months   COHORTS         GUATEMALA                      <32                  NA                0.7574031    0.7223565   0.7924496
21-24 months   COHORTS         GUATEMALA                      [32-38)              NA                0.6555662    0.5803663   0.7307660
21-24 months   LCNI-5          MALAWI                         >=38                 NA                0.8162792    0.5420683   1.0904901
21-24 months   LCNI-5          MALAWI                         <32                  NA                0.8700508    0.6565505   1.0835512
21-24 months   LCNI-5          MALAWI                         [32-38)              NA                1.0933096    0.8316900   1.3549292
21-24 months   MAL-ED          BANGLADESH                     >=38                 NA                0.8293053    0.7524856   0.9061249
21-24 months   MAL-ED          BANGLADESH                     <32                  NA                0.8158214    0.7163433   0.9152995
21-24 months   MAL-ED          BANGLADESH                     [32-38)              NA                0.7061137    0.6367049   0.7755224
21-24 months   MAL-ED          BRAZIL                         >=38                 NA                0.8005546    0.7014000   0.8997091
21-24 months   MAL-ED          BRAZIL                         <32                  NA                0.9744216    0.8603493   1.0884939
21-24 months   MAL-ED          BRAZIL                         [32-38)              NA                0.7724704    0.6796995   0.8652412
21-24 months   MAL-ED          INDIA                          >=38                 NA                0.7967443    0.7040907   0.8893979
21-24 months   MAL-ED          INDIA                          <32                  NA                0.8535453    0.7939802   0.9131105
21-24 months   MAL-ED          INDIA                          [32-38)              NA                0.8144872    0.7545026   0.8744718
21-24 months   MAL-ED          NEPAL                          >=38                 NA                0.7162709    0.5948752   0.8376665
21-24 months   MAL-ED          NEPAL                          <32                  NA                0.7346740    0.5965842   0.8727638
21-24 months   MAL-ED          NEPAL                          [32-38)              NA                0.8294441    0.7182285   0.9406597
21-24 months   MAL-ED          PERU                           >=38                 NA                0.8577268    0.6779220   1.0375316
21-24 months   MAL-ED          PERU                           <32                  NA                0.7828955    0.6336804   0.9321106
21-24 months   MAL-ED          PERU                           [32-38)              NA                0.7550031    0.6144463   0.8955600
21-24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                0.8495434    0.7524155   0.9466714
21-24 months   MAL-ED          SOUTH AFRICA                   <32                  NA                1.2155486    0.5831306   1.8479666
21-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.8399900    0.6796321   1.0003479
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.7583828    0.6583202   0.8584454
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.6569220    0.4239065   0.8899376
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.6914239    0.5348081   0.8480398
21-24 months   PROBIT          BELARUS                        >=38                 NA                0.9277474   -5.1841731   7.0396679
21-24 months   PROBIT          BELARUS                        <32                  NA                0.9219092    0.5343864   1.3094320
21-24 months   PROBIT          BELARUS                        [32-38)              NA                0.9095926   -0.0551294   1.8743146


### Parameter: E(Y)


agecat         studyid         country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS         GUATEMALA                      NA                   NA                2.5875315   2.5434733   2.6315896
0-3 months     MAL-ED          BANGLADESH                     NA                   NA                3.3491161   3.2717886   3.4264437
0-3 months     MAL-ED          BRAZIL                         NA                   NA                3.8031391   3.6383467   3.9679315
0-3 months     MAL-ED          INDIA                          NA                   NA                3.2960481   3.1870759   3.4050203
0-3 months     MAL-ED          NEPAL                          NA                   NA                3.5316421   3.3758765   3.6874077
0-3 months     MAL-ED          PERU                           NA                   NA                3.0501989   2.9295886   3.1708093
0-3 months     MAL-ED          SOUTH AFRICA                   NA                   NA                3.2696613   3.0951646   3.4441579
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2061985   3.0825156   3.3298814
0-3 months     PROBIT          BELARUS                        NA                   NA                2.8141081   2.7011972   2.9270190
0-3 months     SAS-CompFeed    INDIA                          NA                   NA                3.3515519   3.2970118   3.4060920
3-6 months     COHORTS         GUATEMALA                      NA                   NA                1.7566595   1.7253717   1.7879472
3-6 months     MAL-ED          BANGLADESH                     NA                   NA                1.9147816   1.8504595   1.9791037
3-6 months     MAL-ED          BRAZIL                         NA                   NA                2.2288260   2.1021293   2.3555227
3-6 months     MAL-ED          INDIA                          NA                   NA                1.9080852   1.8302412   1.9859292
3-6 months     MAL-ED          NEPAL                          NA                   NA                1.8753144   1.7759777   1.9746511
3-6 months     MAL-ED          PERU                           NA                   NA                2.0445080   1.9244992   2.1645168
3-6 months     MAL-ED          SOUTH AFRICA                   NA                   NA                1.8765676   1.7580590   1.9950762
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8134766   1.7288377   1.8981155
3-6 months     PROBIT          BELARUS                        NA                   NA                2.0924210   2.0511787   2.1336633
3-6 months     SAS-CompFeed    INDIA                          NA                   NA                1.9401040   1.8974682   1.9827398
6-9 months     COHORTS         GUATEMALA                      NA                   NA                1.1079428   1.0805938   1.1352919
6-9 months     LCNI-5          MALAWI                         NA                   NA                1.3577587   1.2608409   1.4546764
6-9 months     MAL-ED          BANGLADESH                     NA                   NA                1.2440582   1.1939196   1.2941968
6-9 months     MAL-ED          BRAZIL                         NA                   NA                1.4607769   1.3430762   1.5784776
6-9 months     MAL-ED          INDIA                          NA                   NA                1.2222273   1.1612882   1.2831664
6-9 months     MAL-ED          NEPAL                          NA                   NA                1.3014532   1.2353703   1.3675362
6-9 months     MAL-ED          PERU                           NA                   NA                1.2525442   1.1613943   1.3436940
6-9 months     MAL-ED          SOUTH AFRICA                   NA                   NA                1.4301634   1.3359869   1.5243400
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.2258886   1.0940255   1.3577517
6-9 months     PROBIT          BELARUS                        NA                   NA                1.5730920   1.5426519   1.6035321
6-9 months     SAS-CompFeed    INDIA                          NA                   NA                1.2179942   1.1975880   1.2384003
6-9 months     SAS-FoodSuppl   INDIA                          NA                   NA                1.1426155   1.1021386   1.1830923
9-12 months    COHORTS         GUATEMALA                      NA                   NA                0.9503206   0.9255547   0.9750866
9-12 months    LCNI-5          MALAWI                         NA                   NA                1.1788096   0.9893217   1.3682975
9-12 months    MAL-ED          BANGLADESH                     NA                   NA                0.9638244   0.9162830   1.0113657
9-12 months    MAL-ED          BRAZIL                         NA                   NA                1.4129719   1.2953507   1.5305931
9-12 months    MAL-ED          INDIA                          NA                   NA                0.9808657   0.9322032   1.0295281
9-12 months    MAL-ED          NEPAL                          NA                   NA                1.0778136   1.0136680   1.1419593
9-12 months    MAL-ED          PERU                           NA                   NA                1.1090022   1.0147042   1.2033003
9-12 months    MAL-ED          SOUTH AFRICA                   NA                   NA                0.9710975   0.8599937   1.0822013
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8061088   0.6645672   0.9476504
9-12 months    PROBIT          BELARUS                        NA                   NA                1.3718946   1.3219354   1.4218539
9-12 months    SAS-CompFeed    INDIA                          NA                   NA                1.0004042   0.9688633   1.0319452
9-12 months    SAS-FoodSuppl   INDIA                          NA                   NA                0.8106649   0.6745544   0.9467754
12-15 months   COHORTS         GUATEMALA                      NA                   NA                0.7864613   0.7595811   0.8133415
12-15 months   MAL-ED          BANGLADESH                     NA                   NA                0.9195436   0.8725575   0.9665297
12-15 months   MAL-ED          BRAZIL                         NA                   NA                1.1830889   1.1009226   1.2652552
12-15 months   MAL-ED          INDIA                          NA                   NA                0.9265063   0.8804996   0.9725130
12-15 months   MAL-ED          NEPAL                          NA                   NA                0.9703198   0.9108527   1.0297869
12-15 months   MAL-ED          PERU                           NA                   NA                0.8734417   0.7936064   0.9532771
12-15 months   MAL-ED          SOUTH AFRICA                   NA                   NA                0.9782462   0.8934306   1.0630618
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8169458   0.7225030   0.9113885
12-15 months   PROBIT          BELARUS                        NA                   NA                1.1914383   0.8653012   1.5175754
12-15 months   SAS-CompFeed    INDIA                          NA                   NA                0.8313011   0.7943319   0.8682702
12-15 months   SAS-FoodSuppl   INDIA                          NA                   NA                1.0267825   0.9374856   1.1160794
15-18 months   COHORTS         GUATEMALA                      NA                   NA                0.7452175   0.7150258   0.7754093
15-18 months   MAL-ED          BANGLADESH                     NA                   NA                0.8463325   0.8029895   0.8896755
15-18 months   MAL-ED          BRAZIL                         NA                   NA                0.9748426   0.8843846   1.0653007
15-18 months   MAL-ED          INDIA                          NA                   NA                0.8317492   0.7874866   0.8760119
15-18 months   MAL-ED          NEPAL                          NA                   NA                0.8557048   0.7917206   0.9196890
15-18 months   MAL-ED          PERU                           NA                   NA                0.8916664   0.8141547   0.9691781
15-18 months   MAL-ED          SOUTH AFRICA                   NA                   NA                0.8909440   0.8081180   0.9737700
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7315725   0.6465481   0.8165969
15-18 months   PROBIT          BELARUS                        NA                   NA                1.0285030   0.5623973   1.4946086
15-18 months   SAS-CompFeed    INDIA                          NA                   NA                0.9061147   0.8810452   0.9311841
15-18 months   SAS-FoodSuppl   INDIA                          NA                   NA                0.7947861   0.7590601   0.8305122
18-21 months   COHORTS         GUATEMALA                      NA                   NA                0.7471283   0.7180550   0.7762016
18-21 months   LCNI-5          MALAWI                         NA                   NA                0.6693894   0.5307616   0.8080171
18-21 months   MAL-ED          BANGLADESH                     NA                   NA                0.7879921   0.7483367   0.8276476
18-21 months   MAL-ED          BRAZIL                         NA                   NA                0.9279027   0.7990301   1.0567753
18-21 months   MAL-ED          INDIA                          NA                   NA                0.8857196   0.8418371   0.9296020
18-21 months   MAL-ED          NEPAL                          NA                   NA                0.7267903   0.6739002   0.7796804
18-21 months   MAL-ED          PERU                           NA                   NA                0.9086860   0.8345500   0.9828220
18-21 months   MAL-ED          SOUTH AFRICA                   NA                   NA                0.7666173   0.6845834   0.8486512
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7115890   0.6134511   0.8097268
18-21 months   PROBIT          BELARUS                        NA                   NA                0.8913428   0.2568085   1.5258772
21-24 months   COHORTS         GUATEMALA                      NA                   NA                0.6811370   0.6575053   0.7047687
21-24 months   LCNI-5          MALAWI                         NA                   NA                0.8211667   0.6788314   0.9635020
21-24 months   MAL-ED          BANGLADESH                     NA                   NA                0.7803676   0.7387346   0.8220005
21-24 months   MAL-ED          BRAZIL                         NA                   NA                0.8253408   0.7645970   0.8860847
21-24 months   MAL-ED          INDIA                          NA                   NA                0.8202421   0.7822662   0.8582179
21-24 months   MAL-ED          NEPAL                          NA                   NA                0.8045285   0.7325617   0.8764954
21-24 months   MAL-ED          PERU                           NA                   NA                0.7938145   0.7104356   0.8771934
21-24 months   MAL-ED          SOUTH AFRICA                   NA                   NA                0.8807253   0.7828557   0.9785949
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7026174   0.6218016   0.7834332
21-24 months   PROBIT          BELARUS                        NA                   NA                0.9202665   0.4518431   1.3886899


### Parameter: ATE


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     COHORTS         GUATEMALA                      <32                  >=38              -0.0307476   -0.1598159    0.0983206
0-3 months     COHORTS         GUATEMALA                      [32-38)              >=38              -0.0989838   -0.2628848    0.0649172
0-3 months     MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          BANGLADESH                     <32                  >=38              -0.1613355   -0.4284481    0.1057771
0-3 months     MAL-ED          BANGLADESH                     [32-38)              >=38               0.0544664   -0.1685459    0.2774787
0-3 months     MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          BRAZIL                         <32                  >=38              -0.2700986   -0.7281883    0.1879911
0-3 months     MAL-ED          BRAZIL                         [32-38)              >=38              -0.1294588   -0.5001842    0.2412667
0-3 months     MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          INDIA                          <32                  >=38               0.2413770   -0.0865518    0.5693059
0-3 months     MAL-ED          INDIA                          [32-38)              >=38               0.3397724   -0.0350572    0.7146019
0-3 months     MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          NEPAL                          <32                  >=38              -0.1548217   -0.7007268    0.3910835
0-3 months     MAL-ED          NEPAL                          [32-38)              >=38               0.0091393   -0.4270551    0.4453337
0-3 months     MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          PERU                           <32                  >=38               0.2714383    0.0084352    0.5344413
0-3 months     MAL-ED          PERU                           [32-38)              >=38               0.2074123   -0.1585110    0.5733355
0-3 months     MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0265596   -0.6892416    0.6361224
0-3 months     MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.1050485   -0.5254526    0.3153556
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.1590391   -0.1602135    0.4782918
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.2175666   -0.5131244    0.0779912
0-3 months     PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     PROBIT          BELARUS                        <32                  >=38               0.0134800   -0.0553452    0.0823051
0-3 months     PROBIT          BELARUS                        [32-38)              >=38               0.0240885   -0.0594161    0.1075931
0-3 months     SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed    INDIA                          <32                  >=38               0.3929713    0.1516664    0.6342763
0-3 months     SAS-CompFeed    INDIA                          [32-38)              >=38               0.2505166   -0.0995592    0.6005923
3-6 months     COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     COHORTS         GUATEMALA                      <32                  >=38               0.1217227    0.0205401    0.2229052
3-6 months     COHORTS         GUATEMALA                      [32-38)              >=38               0.0701817   -0.0547848    0.1951482
3-6 months     MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          BANGLADESH                     <32                  >=38              -0.0678465   -0.2499210    0.1142281
3-6 months     MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0566683   -0.2196624    0.1063258
3-6 months     MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          BRAZIL                         <32                  >=38               0.2800436   -0.1169180    0.6770051
3-6 months     MAL-ED          BRAZIL                         [32-38)              >=38               0.0621027   -0.2448435    0.3690488
3-6 months     MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          INDIA                          <32                  >=38              -0.0979889   -0.3753136    0.1793358
3-6 months     MAL-ED          INDIA                          [32-38)              >=38              -0.0753697   -0.3075546    0.1568152
3-6 months     MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          NEPAL                          <32                  >=38              -0.0308189   -0.3875554    0.3259177
3-6 months     MAL-ED          NEPAL                          [32-38)              >=38               0.0183391   -0.2578633    0.2945416
3-6 months     MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          PERU                           <32                  >=38              -0.1283434   -0.4725349    0.2158481
3-6 months     MAL-ED          PERU                           [32-38)              >=38              -0.1707596   -0.4804392    0.1389201
3-6 months     MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0993398   -0.5712279    0.3725483
3-6 months     MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0630833   -0.2171073    0.3432738
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0448452   -0.3193157    0.2296252
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0517380   -0.1542756    0.2577517
3-6 months     PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     PROBIT          BELARUS                        <32                  >=38              -0.0586263   -0.1174684    0.0002158
3-6 months     PROBIT          BELARUS                        [32-38)              >=38              -0.0831767   -0.1702579    0.0039046
3-6 months     SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed    INDIA                          <32                  >=38               0.1055889   -0.0449299    0.2561076
3-6 months     SAS-CompFeed    INDIA                          [32-38)              >=38               0.1320650   -0.0784133    0.3425432
6-9 months     COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     COHORTS         GUATEMALA                      <32                  >=38               0.0139407   -0.0723862    0.1002676
6-9 months     COHORTS         GUATEMALA                      [32-38)              >=38              -0.0788136   -0.1900512    0.0324240
6-9 months     LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5          MALAWI                         <32                  >=38              -0.1525370   -0.4086878    0.1036138
6-9 months     LCNI-5          MALAWI                         [32-38)              >=38              -0.1329811   -0.4748779    0.2089158
6-9 months     MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          BANGLADESH                     <32                  >=38               0.2367488    0.1016824    0.3718152
6-9 months     MAL-ED          BANGLADESH                     [32-38)              >=38               0.0745904   -0.0552451    0.2044260
6-9 months     MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          BRAZIL                         <32                  >=38               0.0329745   -0.2757055    0.3416544
6-9 months     MAL-ED          BRAZIL                         [32-38)              >=38               0.0810781   -0.2053185    0.3674747
6-9 months     MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          INDIA                          <32                  >=38               0.0990254   -0.0912183    0.2892691
6-9 months     MAL-ED          INDIA                          [32-38)              >=38               0.0444197   -0.1585657    0.2474050
6-9 months     MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          NEPAL                          <32                  >=38               0.0152390   -0.1881603    0.2186384
6-9 months     MAL-ED          NEPAL                          [32-38)              >=38              -0.0225873   -0.2259795    0.1808048
6-9 months     MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          PERU                           <32                  >=38              -0.1611512   -0.3939956    0.0716932
6-9 months     MAL-ED          PERU                           [32-38)              >=38               0.0038432   -0.3033339    0.3110202
6-9 months     MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0388534   -0.3178572    0.2401504
6-9 months     MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0408611   -0.1711271    0.2528493
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.1744506   -0.4309597    0.0820585
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0436075   -0.2759562    0.3631712
6-9 months     PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     PROBIT          BELARUS                        <32                  >=38               0.0641697   -0.0103086    0.1386480
6-9 months     PROBIT          BELARUS                        [32-38)              >=38               0.0586177   -0.0418650    0.1591005
6-9 months     SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed    INDIA                          <32                  >=38              -0.1018064   -0.3406299    0.1370171
6-9 months     SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0916569   -0.3254332    0.1421195
6-9 months     SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA                          <32                  >=38              -0.1018096   -0.2821054    0.0784863
6-9 months     SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0154293   -0.2214608    0.2523193
9-12 months    COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    COHORTS         GUATEMALA                      <32                  >=38              -0.0520115   -0.1372048    0.0331819
9-12 months    COHORTS         GUATEMALA                      [32-38)              >=38              -0.0063048   -0.1107877    0.0981781
9-12 months    LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5          MALAWI                         <32                  >=38               0.0250873   -0.3563703    0.4065449
9-12 months    LCNI-5          MALAWI                         [32-38)              >=38               0.0210838   -0.4465996    0.4887671
9-12 months    MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          BANGLADESH                     <32                  >=38              -0.0413946   -0.1873099    0.1045208
9-12 months    MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0122358   -0.1399054    0.1154338
9-12 months    MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          BRAZIL                         <32                  >=38               0.0125095   -0.3365622    0.3615812
9-12 months    MAL-ED          BRAZIL                         [32-38)              >=38              -0.1268560   -0.4075445    0.1538325
9-12 months    MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          INDIA                          <32                  >=38              -0.1654240   -0.3171134   -0.0137346
9-12 months    MAL-ED          INDIA                          [32-38)              >=38              -0.2028102   -0.3421837   -0.0634366
9-12 months    MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          NEPAL                          <32                  >=38              -0.2046024   -0.4581112    0.0489064
9-12 months    MAL-ED          NEPAL                          [32-38)              >=38              -0.1542720   -0.3438859    0.0353419
9-12 months    MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          PERU                           <32                  >=38               0.2139856   -0.0174152    0.4453864
9-12 months    MAL-ED          PERU                           [32-38)              >=38               0.1368726   -0.1045307    0.3782758
9-12 months    MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1191275   -0.2437267    0.4819817
9-12 months    MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0692367   -0.1528921    0.2913655
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0361220   -0.3240558    0.2518118
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.1870550   -0.5376735    0.1635636
9-12 months    PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    PROBIT          BELARUS                        <32                  >=38              -0.0453563   -0.1050566    0.0143440
9-12 months    PROBIT          BELARUS                        [32-38)              >=38              -0.0828374   -0.1597494   -0.0059253
9-12 months    SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed    INDIA                          <32                  >=38               0.0506937   -0.1116152    0.2130026
9-12 months    SAS-CompFeed    INDIA                          [32-38)              >=38               0.0047274   -0.2139881    0.2234429
9-12 months    SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA                          <32                  >=38               0.0307215   -0.4113941    0.4728372
9-12 months    SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.2169961   -0.3219581    0.7559503
12-15 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   COHORTS         GUATEMALA                      <32                  >=38               0.0281410   -0.0498078    0.1060899
12-15 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0133308   -0.1009598    0.0742982
12-15 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          BANGLADESH                     <32                  >=38               0.0091975   -0.1295013    0.1478962
12-15 months   MAL-ED          BANGLADESH                     [32-38)              >=38               0.0357616   -0.0786901    0.1502133
12-15 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          BRAZIL                         <32                  >=38              -0.1846206   -0.3780977    0.0088565
12-15 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.0892381   -0.2963104    0.1178341
12-15 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          INDIA                          <32                  >=38               0.0291036   -0.0992931    0.1575003
12-15 months   MAL-ED          INDIA                          [32-38)              >=38              -0.0345245   -0.1622084    0.0931594
12-15 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          NEPAL                          <32                  >=38              -0.0370474   -0.2664858    0.1923909
12-15 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.0488487   -0.2240670    0.1263696
12-15 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          PERU                           <32                  >=38              -0.0627672   -0.2583655    0.1328310
12-15 months   MAL-ED          PERU                           [32-38)              >=38               0.1224181   -0.0665873    0.3114235
12-15 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0790064   -0.3063928    0.1483800
12-15 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0721083   -0.1937769    0.3379936
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.1693009   -0.2332609    0.5718626
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.1630674   -0.0364240    0.3625588
12-15 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   PROBIT          BELARUS                        <32                  >=38               0.4939587   -0.3426351    1.3305525
12-15 months   PROBIT          BELARUS                        [32-38)              >=38               1.1206414   -0.5604605    2.8017433
12-15 months   SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed    INDIA                          <32                  >=38               0.1284063   -0.1288177    0.3856303
12-15 months   SAS-CompFeed    INDIA                          [32-38)              >=38               0.0597642   -0.2691685    0.3886969
12-15 months   SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA                          <32                  >=38              -0.2267347   -0.4116439   -0.0418255
12-15 months   SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0524588   -0.2446433    0.1397256
15-18 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   COHORTS         GUATEMALA                      <32                  >=38               0.0829754   -0.0084383    0.1743891
15-18 months   COHORTS         GUATEMALA                      [32-38)              >=38               0.0248795   -0.1313212    0.1810802
15-18 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          BANGLADESH                     <32                  >=38               0.0860974   -0.0355802    0.2077749
15-18 months   MAL-ED          BANGLADESH                     [32-38)              >=38               0.0480951   -0.0536764    0.1498667
15-18 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          BRAZIL                         <32                  >=38              -0.0210826   -0.2469948    0.2048297
15-18 months   MAL-ED          BRAZIL                         [32-38)              >=38               0.0632044   -0.1649116    0.2913203
15-18 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          INDIA                          <32                  >=38              -0.0375003   -0.1635054    0.0885048
15-18 months   MAL-ED          INDIA                          [32-38)              >=38              -0.0251253   -0.1656778    0.1154271
15-18 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          NEPAL                          <32                  >=38              -0.0502648   -0.2647122    0.1641826
15-18 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.0366864   -0.2183128    0.1449400
15-18 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          PERU                           <32                  >=38               0.1828233   -0.0089038    0.3745503
15-18 months   MAL-ED          PERU                           [32-38)              >=38               0.0589981   -0.1592956    0.2772917
15-18 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.4101412    0.1580239    0.6622586
15-18 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0040590   -0.1726261    0.1645080
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0241514   -0.2029476    0.2512505
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.1421078   -0.3537592    0.0695437
15-18 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   PROBIT          BELARUS                        <32                  >=38               0.0771801   -0.4761176    0.6304777
15-18 months   PROBIT          BELARUS                        [32-38)              >=38               0.0713063   -0.8105273    0.9531398
15-18 months   SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed    INDIA                          <32                  >=38              -0.2939839   -0.5380309   -0.0499368
15-18 months   SAS-CompFeed    INDIA                          [32-38)              >=38              -0.3122850   -0.5794716   -0.0450984
15-18 months   SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA                          <32                  >=38               0.0858662   -0.0836023    0.2553348
15-18 months   SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.1947093   -0.0237337    0.4131522
18-21 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   COHORTS         GUATEMALA                      <32                  >=38              -0.1651585   -0.2507408   -0.0795762
18-21 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.1464635   -0.2860303   -0.0068966
18-21 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5          MALAWI                         <32                  >=38              -0.1991911   -0.5312836    0.1329015
18-21 months   LCNI-5          MALAWI                         [32-38)              >=38              -0.0958697   -0.4242289    0.2324894
18-21 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.0231466   -0.1252112    0.0789180
18-21 months   MAL-ED          BANGLADESH                     [32-38)              >=38               0.0119065   -0.0882166    0.1120297
18-21 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          BRAZIL                         <32                  >=38              -0.1377506   -0.4245461    0.1490449
18-21 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.0773860   -0.4022725    0.2475005
18-21 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          INDIA                          <32                  >=38              -0.0049965   -0.1157974    0.1058045
18-21 months   MAL-ED          INDIA                          [32-38)              >=38               0.0447153   -0.0655684    0.1549989
18-21 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          NEPAL                          <32                  >=38               0.0384269   -0.1344484    0.2113022
18-21 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.0398919   -0.1777175    0.0979337
18-21 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          PERU                           <32                  >=38               0.1819575   -0.0279539    0.3918688
18-21 months   MAL-ED          PERU                           [32-38)              >=38               0.0640590   -0.0903767    0.2184946
18-21 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0984816   -0.3744415    0.1774782
18-21 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.1631385   -0.0306760    0.3569531
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0420433   -0.4493562    0.3652696
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0825132   -0.2823130    0.1172866
18-21 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   PROBIT          BELARUS                        <32                  >=38               0.0099345   -0.7718812    0.7917501
18-21 months   PROBIT          BELARUS                        [32-38)              >=38               0.1793409   -0.2023654    0.5610472
21-24 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   COHORTS         GUATEMALA                      <32                  >=38               0.0853640    0.0177431    0.1529849
21-24 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0164730   -0.1113224    0.0783765
21-24 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5          MALAWI                         <32                  >=38               0.0537716   -0.2967955    0.4043388
21-24 months   LCNI-5          MALAWI                         [32-38)              >=38               0.2770304   -0.1087944    0.6628552
21-24 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.0134838   -0.1393772    0.1124095
21-24 months   MAL-ED          BANGLADESH                     [32-38)              >=38              -0.1231916   -0.2277478   -0.0186354
21-24 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          BRAZIL                         <32                  >=38               0.1738670    0.0234651    0.3242690
21-24 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.0280842   -0.1633848    0.1072164
21-24 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          INDIA                          <32                  >=38               0.0568011   -0.0535715    0.1671736
21-24 months   MAL-ED          INDIA                          [32-38)              >=38               0.0177429   -0.0933828    0.1288686
21-24 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          NEPAL                          <32                  >=38               0.0184031   -0.1683129    0.2051192
21-24 months   MAL-ED          NEPAL                          [32-38)              >=38               0.1131733   -0.0509284    0.2772750
21-24 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          PERU                           <32                  >=38              -0.0748313   -0.3095953    0.1599328
21-24 months   MAL-ED          PERU                           [32-38)              >=38              -0.1027236   -0.3285039    0.1230566
21-24 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.3660052   -0.2738279    1.0058383
21-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0095534   -0.1970328    0.1779259
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.1014608   -0.3494372    0.1465157
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0669589   -0.2527594    0.1188416
21-24 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   PROBIT          BELARUS                        <32                  >=38              -0.0058382   -6.0336967    6.0220203
21-24 months   PROBIT          BELARUS                        [32-38)              >=38              -0.0181548   -6.1865615    6.1502518


### Parameter: PAR


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA                      >=38                 NA                -0.0344708   -0.1350236    0.0660820
0-3 months     MAL-ED          BANGLADESH                     >=38                 NA                -0.0485902   -0.1596046    0.0624243
0-3 months     MAL-ED          BRAZIL                         >=38                 NA                -0.1174634   -0.3387267    0.1037999
0-3 months     MAL-ED          INDIA                          >=38                 NA                 0.2126491   -0.0685565    0.4938548
0-3 months     MAL-ED          NEPAL                          >=38                 NA                -0.0203877   -0.3471870    0.3064115
0-3 months     MAL-ED          PERU                           >=38                 NA                 0.1755202    0.0158551    0.3351852
0-3 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0236657   -0.1388792    0.0915479
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0590474   -0.1951176    0.0770228
0-3 months     PROBIT          BELARUS                        >=38                 NA                 0.0100959   -0.0518476    0.0720393
0-3 months     SAS-CompFeed    INDIA                          >=38                 NA                 0.3626216    0.1200183    0.6052248
3-6 months     COHORTS         GUATEMALA                      >=38                 NA                 0.0920294    0.0094326    0.1746262
3-6 months     MAL-ED          BANGLADESH                     >=38                 NA                -0.0452826   -0.1205717    0.0300065
3-6 months     MAL-ED          BRAZIL                         >=38                 NA                 0.0843943   -0.0989352    0.2677239
3-6 months     MAL-ED          INDIA                          >=38                 NA                -0.0469091   -0.2129325    0.1191144
3-6 months     MAL-ED          NEPAL                          >=38                 NA                 0.0159133   -0.1978974    0.2297240
3-6 months     MAL-ED          PERU                           >=38                 NA                -0.1386381   -0.3375249    0.0602487
3-6 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0005999   -0.0733926    0.0745923
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0002252   -0.0969063    0.0973567
3-6 months     PROBIT          BELARUS                        >=38                 NA                -0.0597061   -0.1193615   -0.0000508
3-6 months     SAS-CompFeed    INDIA                          >=38                 NA                 0.1057696   -0.0434228    0.2549621
6-9 months     COHORTS         GUATEMALA                      >=38                 NA                -0.0096635   -0.0752880    0.0559609
6-9 months     LCNI-5          MALAWI                         >=38                 NA                -0.1183526   -0.3044973    0.0677922
6-9 months     MAL-ED          BANGLADESH                     >=38                 NA                 0.0677816    0.0020308    0.1335324
6-9 months     MAL-ED          BRAZIL                         >=38                 NA                 0.0383808   -0.1190690    0.1958305
6-9 months     MAL-ED          INDIA                          >=38                 NA                 0.0405185   -0.1039408    0.1849779
6-9 months     MAL-ED          NEPAL                          >=38                 NA                 0.0079033   -0.1522009    0.1680074
6-9 months     MAL-ED          PERU                           >=38                 NA                -0.0723892   -0.2391368    0.0943583
6-9 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0031099   -0.0459252    0.0521449
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0099754   -0.1293527    0.1493035
6-9 months     PROBIT          BELARUS                        >=38                 NA                 0.0623865   -0.0060872    0.1308601
6-9 months     SAS-CompFeed    INDIA                          >=38                 NA                -0.0974287   -0.3283420    0.1334846
6-9 months     SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0449992   -0.2133842    0.1233858
9-12 months    COHORTS         GUATEMALA                      >=38                 NA                -0.0021740   -0.0730686    0.0687206
9-12 months    LCNI-5          MALAWI                         >=38                 NA                 0.0177595   -0.2347031    0.2702221
9-12 months    MAL-ED          BANGLADESH                     >=38                 NA                -0.0128389   -0.0756224    0.0499447
9-12 months    MAL-ED          BRAZIL                         >=38                 NA                -0.0500839   -0.2076090    0.1074412
9-12 months    MAL-ED          INDIA                          >=38                 NA                -0.1400742   -0.2431209   -0.0370274
9-12 months    MAL-ED          NEPAL                          >=38                 NA                -0.1379145   -0.2908069    0.0149779
9-12 months    MAL-ED          PERU                           >=38                 NA                 0.1152444   -0.0330978    0.2635866
9-12 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0222910   -0.0336970    0.0782790
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0564567   -0.2032161    0.0903028
9-12 months    PROBIT          BELARUS                        >=38                 NA                -0.0481172   -0.1045776    0.0083432
9-12 months    SAS-CompFeed    INDIA                          >=38                 NA                 0.0439173   -0.1149948    0.2028294
9-12 months    SAS-FoodSuppl   INDIA                          >=38                 NA                 0.0769023   -0.3157621    0.4695666
12-15 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0006721   -0.0601870    0.0588428
12-15 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0204205   -0.0333169    0.0741578
12-15 months   MAL-ED          BRAZIL                         >=38                 NA                -0.0719881   -0.1850331    0.0410570
12-15 months   MAL-ED          INDIA                          >=38                 NA                 0.0039477   -0.0848749    0.0927703
12-15 months   MAL-ED          NEPAL                          >=38                 NA                -0.0407084   -0.1783843    0.0969676
12-15 months   MAL-ED          PERU                           >=38                 NA                 0.0185237   -0.0848119    0.1218594
12-15 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0080916   -0.0478070    0.0639902
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0872556   -0.0179788    0.1924899
12-15 months   PROBIT          BELARUS                        >=38                 NA                 0.4973772   -0.3262468    1.3210012
12-15 months   SAS-CompFeed    INDIA                          >=38                 NA                 0.1123031   -0.1452410    0.3698471
12-15 months   SAS-FoodSuppl   INDIA                          >=38                 NA                -0.2145584   -0.3841579   -0.0449589
15-18 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0146286   -0.0602075    0.0894647
15-18 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0325645   -0.0167590    0.0818879
15-18 months   MAL-ED          BRAZIL                         >=38                 NA                 0.0299175   -0.0899954    0.1498304
15-18 months   MAL-ED          INDIA                          >=38                 NA                -0.0299573   -0.1342339    0.0743192
15-18 months   MAL-ED          NEPAL                          >=38                 NA                -0.0274718   -0.1688460    0.1139024
15-18 months   MAL-ED          PERU                           >=38                 NA                 0.0799062   -0.0326939    0.1925062
15-18 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0330123   -0.0152367    0.0812613
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0544792   -0.1465655    0.0376072
15-18 months   PROBIT          BELARUS                        >=38                 NA                 0.0737820   -0.4287018    0.5762657
15-18 months   SAS-CompFeed    INDIA                          >=38                 NA                -0.2865898   -0.5160557   -0.0571240
15-18 months   SAS-FoodSuppl   INDIA                          >=38                 NA                 0.0880767   -0.0716866    0.2478400
18-21 months   COHORTS         GUATEMALA                      >=38                 NA                -0.1379916   -0.2104952   -0.0654880
18-21 months   LCNI-5          MALAWI                         >=38                 NA                -0.1101989   -0.3300322    0.1096344
18-21 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0165230   -0.0321177    0.0651637
18-21 months   MAL-ED          BRAZIL                         >=38                 NA                -0.0670163   -0.2431769    0.1091443
18-21 months   MAL-ED          INDIA                          >=38                 NA                 0.0174075   -0.0594480    0.0942631
18-21 months   MAL-ED          NEPAL                          >=38                 NA                -0.0130823   -0.1183764    0.0922117
18-21 months   MAL-ED          PERU                           >=38                 NA                 0.0759009   -0.0205987    0.1724005
18-21 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0209467   -0.0287961    0.0706895
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0484851   -0.1518845    0.0549143
18-21 months   PROBIT          BELARUS                        >=38                 NA                 0.0297238   -0.6584871    0.7179347
21-24 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0090979   -0.0457564    0.0639523
21-24 months   LCNI-5          MALAWI                         >=38                 NA                 0.0048875   -0.2326826    0.2424576
21-24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0489377   -0.1097921    0.0119167
21-24 months   MAL-ED          BRAZIL                         >=38                 NA                 0.0247863   -0.0527695    0.1023420
21-24 months   MAL-ED          INDIA                          >=38                 NA                 0.0234978   -0.0572881    0.1042837
21-24 months   MAL-ED          NEPAL                          >=38                 NA                 0.0882577   -0.0310153    0.2075306
21-24 months   MAL-ED          PERU                           >=38                 NA                -0.0639123   -0.2041509    0.0763263
21-24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0311819   -0.0411544    0.1035181
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0557654   -0.1439531    0.0324223
21-24 months   PROBIT          BELARUS                        >=38                 NA                -0.0074809   -5.8096645    5.7947027
