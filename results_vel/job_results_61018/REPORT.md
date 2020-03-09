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

**Outcome Variable:** y_rate_haz

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
![](/tmp/6c43cdf3-c3dc-4944-a99b-3ce32db37fa4/9367f462-d666-4788-9cfd-af26d1b95266/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6c43cdf3-c3dc-4944-a99b-3ce32db37fa4/9367f462-d666-4788-9cfd-af26d1b95266/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6c43cdf3-c3dc-4944-a99b-3ce32db37fa4/9367f462-d666-4788-9cfd-af26d1b95266/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA                      >=38                 NA                -0.5161492   -0.5628496   -0.4694489
0-3 months     COHORTS         GUATEMALA                      <32                  NA                -0.5431766   -0.5816038   -0.5047494
0-3 months     COHORTS         GUATEMALA                      [32-38)              NA                -0.5593371   -0.6183195   -0.5003547
0-3 months     MAL-ED          BANGLADESH                     >=38                 NA                -0.1134726   -0.1750169   -0.0519283
0-3 months     MAL-ED          BANGLADESH                     <32                  NA                -0.1906656   -0.2614642   -0.1198669
0-3 months     MAL-ED          BANGLADESH                     [32-38)              NA                -0.1052259   -0.1828543   -0.0275975
0-3 months     MAL-ED          BRAZIL                         >=38                 NA                 0.2363748    0.0930754    0.3796741
0-3 months     MAL-ED          BRAZIL                         <32                  NA                 0.1166483   -0.1122286    0.3455251
0-3 months     MAL-ED          BRAZIL                         [32-38)              NA                 0.1174803   -0.0526259    0.2875866
0-3 months     MAL-ED          INDIA                          >=38                 NA                -0.2006857   -0.3259999   -0.0753716
0-3 months     MAL-ED          INDIA                          <32                  NA                -0.1058461   -0.1867444   -0.0249477
0-3 months     MAL-ED          INDIA                          [32-38)              NA                -0.0411576   -0.1370742    0.0547590
0-3 months     MAL-ED          NEPAL                          >=38                 NA                 0.0087868   -0.1734460    0.1910197
0-3 months     MAL-ED          NEPAL                          <32                  NA                -0.0115324   -0.2088560    0.1857911
0-3 months     MAL-ED          NEPAL                          [32-38)              NA                 0.0344348   -0.0575259    0.1263956
0-3 months     MAL-ED          PERU                           >=38                 NA                -0.3195882   -0.4007822   -0.2383941
0-3 months     MAL-ED          PERU                           <32                  NA                -0.1733480   -0.2671692   -0.0795268
0-3 months     MAL-ED          PERU                           [32-38)              NA                -0.2157680   -0.3582044   -0.0733317
0-3 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.1041060   -0.2043219   -0.0038902
0-3 months     MAL-ED          SOUTH AFRICA                   <32                  NA                -0.1566827   -0.4867251    0.1733598
0-3 months     MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.1701766   -0.3754167    0.0350636
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1275054   -0.2176658   -0.0373450
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1319095   -0.2727057    0.0088867
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.2337967   -0.3469347   -0.1206588
0-3 months     PROBIT          BELARUS                        >=38                 NA                -0.4301334   -0.4817230   -0.3785438
0-3 months     PROBIT          BELARUS                        <32                  NA                -0.4270509   -0.4854642   -0.3686377
0-3 months     PROBIT          BELARUS                        [32-38)              NA                -0.4274823   -0.4883995   -0.3665651
0-3 months     SAS-CompFeed    INDIA                          >=38                 NA                -0.1182613   -0.1603861   -0.0761365
0-3 months     SAS-CompFeed    INDIA                          <32                  NA                -0.1153480   -0.1431442   -0.0875518
0-3 months     SAS-CompFeed    INDIA                          [32-38)              NA                -0.1544918   -0.2863842   -0.0225993
3-6 months     COHORTS         GUATEMALA                      >=38                 NA                -0.1177901   -0.1615164   -0.0740638
3-6 months     COHORTS         GUATEMALA                      <32                  NA                -0.0848827   -0.1082917   -0.0614738
3-6 months     COHORTS         GUATEMALA                      [32-38)              NA                -0.1058457   -0.1497280   -0.0619634
3-6 months     MAL-ED          BANGLADESH                     >=38                 NA                -0.0208885   -0.0697065    0.0279295
3-6 months     MAL-ED          BANGLADESH                     <32                  NA                -0.0230490   -0.0895421    0.0434441
3-6 months     MAL-ED          BANGLADESH                     [32-38)              NA                -0.0420288   -0.0913846    0.0073270
3-6 months     MAL-ED          BRAZIL                         >=38                 NA                 0.0863944   -0.0134322    0.1862209
3-6 months     MAL-ED          BRAZIL                         <32                  NA                 0.1456897   -0.0663732    0.3577527
3-6 months     MAL-ED          BRAZIL                         [32-38)              NA                 0.0833859   -0.0097980    0.1765698
3-6 months     MAL-ED          INDIA                          >=38                 NA                 0.0232415   -0.0556277    0.1021106
3-6 months     MAL-ED          INDIA                          <32                  NA                -0.0274175   -0.1140794    0.0592443
3-6 months     MAL-ED          INDIA                          [32-38)              NA                -0.0547030   -0.1325258    0.0231197
3-6 months     MAL-ED          NEPAL                          >=38                 NA                -0.1019668   -0.2114394    0.0075057
3-6 months     MAL-ED          NEPAL                          <32                  NA                -0.0872056   -0.2249924    0.0505812
3-6 months     MAL-ED          NEPAL                          [32-38)              NA                -0.0405871   -0.1006888    0.0195145
3-6 months     MAL-ED          PERU                           >=38                 NA                 0.0928036   -0.0045287    0.1901358
3-6 months     MAL-ED          PERU                           <32                  NA                 0.0316345   -0.0711504    0.1344193
3-6 months     MAL-ED          PERU                           [32-38)              NA                 0.0071213   -0.0843237    0.0985662
3-6 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0494797   -0.1135083    0.0145490
3-6 months     MAL-ED          SOUTH AFRICA                   <32                  NA                -0.1020784   -0.3183353    0.1141784
3-6 months     MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0171357   -0.1343106    0.1000392
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0677797   -0.1227635   -0.0127959
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1076114   -0.2064421   -0.0087807
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0608330   -0.1339494    0.0122833
3-6 months     PROBIT          BELARUS                        >=38                 NA                 0.0759547    0.0535967    0.0983127
3-6 months     PROBIT          BELARUS                        <32                  NA                 0.0504686    0.0314679    0.0694693
3-6 months     PROBIT          BELARUS                        [32-38)              NA                 0.0400998    0.0108072    0.0693923
3-6 months     SAS-CompFeed    INDIA                          >=38                 NA                -0.0647922   -0.1256476   -0.0039369
3-6 months     SAS-CompFeed    INDIA                          <32                  NA                -0.0182460   -0.0361730   -0.0003190
3-6 months     SAS-CompFeed    INDIA                          [32-38)              NA                 0.0004202   -0.0581153    0.0589557
6-9 months     COHORTS         GUATEMALA                      >=38                 NA                -0.1315605   -0.1627343   -0.1003867
6-9 months     COHORTS         GUATEMALA                      <32                  NA                -0.1106761   -0.1335908   -0.0877613
6-9 months     COHORTS         GUATEMALA                      [32-38)              NA                -0.1405766   -0.1779441   -0.1032092
6-9 months     LCNI-5          MALAWI                         >=38                 NA                 0.0262452   -0.0562378    0.1087282
6-9 months     LCNI-5          MALAWI                         <32                  NA                -0.0374706   -0.0991828    0.0242416
6-9 months     LCNI-5          MALAWI                         [32-38)              NA                -0.0305095   -0.1414345    0.0804156
6-9 months     MAL-ED          BANGLADESH                     >=38                 NA                -0.1205626   -0.1579945   -0.0831307
6-9 months     MAL-ED          BANGLADESH                     <32                  NA                -0.0361002   -0.0564274   -0.0157730
6-9 months     MAL-ED          BANGLADESH                     [32-38)              NA                -0.0620033   -0.1237737   -0.0002330
6-9 months     MAL-ED          BRAZIL                         >=38                 NA                -0.0241146   -0.0999043    0.0516752
6-9 months     MAL-ED          BRAZIL                         <32                  NA                -0.0016118   -0.1138549    0.1106313
6-9 months     MAL-ED          BRAZIL                         [32-38)              NA                -0.0044066   -0.0943280    0.0855147
6-9 months     MAL-ED          INDIA                          >=38                 NA                -0.0879634   -0.1496350   -0.0262919
6-9 months     MAL-ED          INDIA                          <32                  NA                -0.0562223   -0.0937426   -0.0187019
6-9 months     MAL-ED          INDIA                          [32-38)              NA                -0.0940664   -0.1382856   -0.0498471
6-9 months     MAL-ED          NEPAL                          >=38                 NA                -0.0664875   -0.1402206    0.0072455
6-9 months     MAL-ED          NEPAL                          <32                  NA                -0.0549669   -0.0975857   -0.0123480
6-9 months     MAL-ED          NEPAL                          [32-38)              NA                -0.0567413   -0.0971206   -0.0163620
6-9 months     MAL-ED          PERU                           >=38                 NA                -0.0474528   -0.1037625    0.0088569
6-9 months     MAL-ED          PERU                           <32                  NA                -0.0791212   -0.1512710   -0.0069713
6-9 months     MAL-ED          PERU                           [32-38)              NA                -0.0522324   -0.1382589    0.0337942
6-9 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0010910   -0.0503889    0.0525708
6-9 months     MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0133949   -0.1311157    0.1043259
6-9 months     MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.0260373   -0.0486750    0.1007497
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0659418   -0.1486313    0.0167476
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1368258   -0.1976621   -0.0759896
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0509358   -0.1534369    0.0515653
6-9 months     PROBIT          BELARUS                        >=38                 NA                 0.0274793    0.0015957    0.0533628
6-9 months     PROBIT          BELARUS                        <32                  NA                 0.0526007    0.0376641    0.0675373
6-9 months     PROBIT          BELARUS                        [32-38)              NA                 0.0488494    0.0132036    0.0844952
6-9 months     SAS-CompFeed    INDIA                          >=38                 NA                 0.0077611   -0.0750508    0.0905729
6-9 months     SAS-CompFeed    INDIA                          <32                  NA                -0.0868508   -0.0974819   -0.0762198
6-9 months     SAS-CompFeed    INDIA                          [32-38)              NA                -0.1031228   -0.1776094   -0.0286362
6-9 months     SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0455737   -0.1061947    0.0150474
6-9 months     SAS-FoodSuppl   INDIA                          <32                  NA                -0.1073945   -0.1284672   -0.0863219
6-9 months     SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.1153335   -0.1566514   -0.0740156
9-12 months    COHORTS         GUATEMALA                      >=38                 NA                -0.0685738   -0.0948256   -0.0423220
9-12 months    COHORTS         GUATEMALA                      <32                  NA                -0.1024634   -0.1212299   -0.0836968
9-12 months    COHORTS         GUATEMALA                      [32-38)              NA                -0.0846457   -0.1159148   -0.0533766
9-12 months    LCNI-5          MALAWI                         >=38                 NA                -0.0342592   -0.1289118    0.0603935
9-12 months    LCNI-5          MALAWI                         <32                  NA                -0.0108929   -0.1338573    0.1120714
9-12 months    LCNI-5          MALAWI                         [32-38)              NA                -0.0087416   -0.1727251    0.1552419
9-12 months    MAL-ED          BANGLADESH                     >=38                 NA                -0.0892332   -0.1230375   -0.0554289
9-12 months    MAL-ED          BANGLADESH                     <32                  NA                -0.1097723   -0.1610540   -0.0584906
9-12 months    MAL-ED          BANGLADESH                     [32-38)              NA                -0.0987614   -0.1377118   -0.0598110
9-12 months    MAL-ED          BRAZIL                         >=38                 NA                 0.0608264   -0.0206213    0.1422741
9-12 months    MAL-ED          BRAZIL                         <32                  NA                 0.0980317   -0.0116241    0.2076875
9-12 months    MAL-ED          BRAZIL                         [32-38)              NA                 0.0351276   -0.0435590    0.1138143
9-12 months    MAL-ED          INDIA                          >=38                 NA                -0.0326040   -0.0764427    0.0112347
9-12 months    MAL-ED          INDIA                          <32                  NA                -0.1054376   -0.1404227   -0.0704524
9-12 months    MAL-ED          INDIA                          [32-38)              NA                -0.1118640   -0.1414768   -0.0822512
9-12 months    MAL-ED          NEPAL                          >=38                 NA                 0.0055614   -0.0577523    0.0688751
9-12 months    MAL-ED          NEPAL                          <32                  NA                -0.0739288   -0.1477428   -0.0001148
9-12 months    MAL-ED          NEPAL                          [32-38)              NA                -0.0662948   -0.0946202   -0.0379693
9-12 months    MAL-ED          PERU                           >=38                 NA                -0.0919954   -0.1507961   -0.0331947
9-12 months    MAL-ED          PERU                           <32                  NA                -0.0174331   -0.0855515    0.0506853
9-12 months    MAL-ED          PERU                           [32-38)              NA                -0.0038021   -0.0865068    0.0789026
9-12 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.1155567   -0.1726333   -0.0584801
9-12 months    MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0696293   -0.2131818    0.0739232
9-12 months    MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0762157   -0.1495062   -0.0029251
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1244875   -0.2081959   -0.0407791
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1082771   -0.2070467   -0.0095075
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.2008804   -0.3224778   -0.0792831
9-12 months    PROBIT          BELARUS                        >=38                 NA                 0.0499017    0.0250181    0.0747852
9-12 months    PROBIT          BELARUS                        <32                  NA                 0.0381870    0.0174918    0.0588822
9-12 months    PROBIT          BELARUS                        [32-38)              NA                 0.0211835   -0.0039131    0.0462801
9-12 months    SAS-CompFeed    INDIA                          >=38                 NA                -0.1610494   -0.2157270   -0.1063718
9-12 months    SAS-CompFeed    INDIA                          <32                  NA                -0.0865830   -0.0986169   -0.0745491
9-12 months    SAS-CompFeed    INDIA                          [32-38)              NA                -0.1357594   -0.1814176   -0.0901013
9-12 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -0.1175594   -0.2839939    0.0488751
9-12 months    SAS-FoodSuppl   INDIA                          <32                  NA                -0.1624628   -0.2253235   -0.0996021
9-12 months    SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.0832470   -0.2236736    0.0571797
12-15 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0943082   -0.1163661   -0.0722504
12-15 months   COHORTS         GUATEMALA                      <32                  NA                -0.0802133   -0.0977474   -0.0626791
12-15 months   COHORTS         GUATEMALA                      [32-38)              NA                -0.0907106   -0.1184888   -0.0629324
12-15 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0531908   -0.0846650   -0.0217166
12-15 months   MAL-ED          BANGLADESH                     <32                  NA                -0.0903074   -0.1185993   -0.0620156
12-15 months   MAL-ED          BANGLADESH                     [32-38)              NA                -0.0508050   -0.1013998   -0.0002102
12-15 months   MAL-ED          BRAZIL                         >=38                 NA                 0.0278975   -0.0204466    0.0762417
12-15 months   MAL-ED          BRAZIL                         <32                  NA                -0.0107584   -0.0737092    0.0521924
12-15 months   MAL-ED          BRAZIL                         [32-38)              NA                 0.0027933   -0.0550085    0.0605950
12-15 months   MAL-ED          INDIA                          >=38                 NA                -0.0489376   -0.0894296   -0.0084455
12-15 months   MAL-ED          INDIA                          <32                  NA                -0.0537396   -0.0805105   -0.0269687
12-15 months   MAL-ED          INDIA                          [32-38)              NA                -0.0603479   -0.1020279   -0.0186679
12-15 months   MAL-ED          NEPAL                          >=38                 NA                -0.0374895   -0.0994009    0.0244219
12-15 months   MAL-ED          NEPAL                          <32                  NA                -0.0406170   -0.0981272    0.0168932
12-15 months   MAL-ED          NEPAL                          [32-38)              NA                -0.0427138   -0.0713582   -0.0140694
12-15 months   MAL-ED          PERU                           >=38                 NA                -0.0786693   -0.1163366   -0.0410021
12-15 months   MAL-ED          PERU                           <32                  NA                -0.0941204   -0.1565160   -0.0317247
12-15 months   MAL-ED          PERU                           [32-38)              NA                -0.0460731   -0.1054430    0.0132969
12-15 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0422398   -0.0778416   -0.0066380
12-15 months   MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0806234   -0.1574820   -0.0037648
12-15 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0132647   -0.1100483    0.0835190
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1226930   -0.1733542   -0.0720319
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0289951   -0.1796568    0.1216667
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0574296   -0.1109018   -0.0039574
12-15 months   PROBIT          BELARUS                        >=38                 NA                -0.2211950   -0.4018921   -0.0404978
12-15 months   PROBIT          BELARUS                        <32                  NA                 0.0007136   -0.1145458    0.1159729
12-15 months   PROBIT          BELARUS                        [32-38)              NA                 0.2141974   -0.5518672    0.9802619
12-15 months   SAS-CompFeed    INDIA                          >=38                 NA                -0.2435792   -0.2832275   -0.2039308
12-15 months   SAS-CompFeed    INDIA                          <32                  NA                -0.0638938   -0.0716620   -0.0561256
12-15 months   SAS-CompFeed    INDIA                          [32-38)              NA                -0.0329035   -0.1392992    0.0734921
12-15 months   SAS-FoodSuppl   INDIA                          >=38                 NA                 0.0449428    0.0066093    0.0832764
12-15 months   SAS-FoodSuppl   INDIA                          <32                  NA                -0.0125576   -0.0641808    0.0390657
12-15 months   SAS-FoodSuppl   INDIA                          [32-38)              NA                 0.0446407    0.0145000    0.0747814
15-18 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0646056   -0.0915936   -0.0376177
15-18 months   COHORTS         GUATEMALA                      <32                  NA                -0.0339367   -0.0510100   -0.0168634
15-18 months   COHORTS         GUATEMALA                      [32-38)              NA                -0.0572356   -0.1038786   -0.0105927
15-18 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0519938   -0.0773132   -0.0266744
15-18 months   MAL-ED          BANGLADESH                     <32                  NA                -0.0170596   -0.0524193    0.0183001
15-18 months   MAL-ED          BANGLADESH                     [32-38)              NA                -0.0285713   -0.0562546   -0.0008879
15-18 months   MAL-ED          BRAZIL                         >=38                 NA                -0.0451838   -0.0956425    0.0052749
15-18 months   MAL-ED          BRAZIL                         <32                  NA                -0.0216430   -0.0862098    0.0429239
15-18 months   MAL-ED          BRAZIL                         [32-38)              NA                -0.0273319   -0.0893916    0.0347279
15-18 months   MAL-ED          INDIA                          >=38                 NA                -0.0211690   -0.0603637    0.0180257
15-18 months   MAL-ED          INDIA                          <32                  NA                -0.0586984   -0.0843021   -0.0330948
15-18 months   MAL-ED          INDIA                          [32-38)              NA                -0.0476341   -0.0703364   -0.0249317
15-18 months   MAL-ED          NEPAL                          >=38                 NA                -0.0683783   -0.1207442   -0.0160123
15-18 months   MAL-ED          NEPAL                          <32                  NA                -0.0691315   -0.1205414   -0.0177216
15-18 months   MAL-ED          NEPAL                          [32-38)              NA                -0.0478011   -0.0814366   -0.0141655
15-18 months   MAL-ED          PERU                           >=38                 NA                -0.0610250   -0.1036517   -0.0183983
15-18 months   MAL-ED          PERU                           <32                  NA                 0.0333669   -0.0210659    0.0877997
15-18 months   MAL-ED          PERU                           [32-38)              NA                -0.0251660   -0.0794625    0.0291305
15-18 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0436615   -0.0798437   -0.0074794
15-18 months   MAL-ED          SOUTH AFRICA                   <32                  NA                 0.0988467    0.0181821    0.1795114
15-18 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0425738   -0.0880219    0.0028742
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0440969   -0.0840786   -0.0041152
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0632316   -0.1411853    0.0147221
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0879997   -0.1478470   -0.0281524
15-18 months   PROBIT          BELARUS                        >=38                 NA                -0.0438842   -0.1208685    0.0331002
15-18 months   PROBIT          BELARUS                        <32                  NA                -0.0129302   -0.1953997    0.1695393
15-18 months   PROBIT          BELARUS                        [32-38)              NA                -0.0084892   -0.3170679    0.3000895
15-18 months   SAS-CompFeed    INDIA                          >=38                 NA                 0.0989496    0.0290513    0.1688479
15-18 months   SAS-CompFeed    INDIA                          <32                  NA                -0.0159395   -0.0294364   -0.0024425
15-18 months   SAS-CompFeed    INDIA                          [32-38)              NA                -0.0120698   -0.0794786    0.0553390
15-18 months   SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0557596   -0.0954141   -0.0161050
15-18 months   SAS-FoodSuppl   INDIA                          <32                  NA                -0.0400891   -0.0553863   -0.0247918
15-18 months   SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.0184001   -0.0499104    0.0131102
18-21 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0206478   -0.0064882    0.0477838
18-21 months   COHORTS         GUATEMALA                      <32                  NA                -0.0324830   -0.0470168   -0.0179492
18-21 months   COHORTS         GUATEMALA                      [32-38)              NA                -0.0142918   -0.0539598    0.0253762
18-21 months   LCNI-5          MALAWI                         >=38                 NA                -0.0221645   -0.0978014    0.0534723
18-21 months   LCNI-5          MALAWI                         <32                  NA                -0.1048765   -0.1861244   -0.0236286
18-21 months   LCNI-5          MALAWI                         [32-38)              NA                -0.0404617   -0.1068798    0.0259564
18-21 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0225115   -0.0468701    0.0018470
18-21 months   MAL-ED          BANGLADESH                     <32                  NA                -0.0025330   -0.0153213    0.0102552
18-21 months   MAL-ED          BANGLADESH                     [32-38)              NA                -0.0198049   -0.0441478    0.0045381
18-21 months   MAL-ED          BRAZIL                         >=38                 NA                -0.0062626   -0.0819988    0.0694737
18-21 months   MAL-ED          BRAZIL                         <32                  NA                -0.0381465   -0.0844454    0.0081525
18-21 months   MAL-ED          BRAZIL                         [32-38)              NA                -0.0196953   -0.0966685    0.0572779
18-21 months   MAL-ED          INDIA                          >=38                 NA                -0.0074183   -0.0361952    0.0213585
18-21 months   MAL-ED          INDIA                          <32                  NA                 0.0050499   -0.0180306    0.0281304
18-21 months   MAL-ED          INDIA                          [32-38)              NA                 0.0162978   -0.0070408    0.0396363
18-21 months   MAL-ED          NEPAL                          >=38                 NA                -0.0565445   -0.1021920   -0.0108970
18-21 months   MAL-ED          NEPAL                          <32                  NA                -0.0328786   -0.0736353    0.0078781
18-21 months   MAL-ED          NEPAL                          [32-38)              NA                -0.0619393   -0.0849059   -0.0389728
18-21 months   MAL-ED          PERU                           >=38                 NA                 0.0083516   -0.0379582    0.0546614
18-21 months   MAL-ED          PERU                           <32                  NA                 0.0237688   -0.0284563    0.0759939
18-21 months   MAL-ED          PERU                           [32-38)              NA                 0.0058975   -0.0295229    0.0413179
18-21 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0482845   -0.0810541   -0.0155150
18-21 months   MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0927999   -0.1781038   -0.0074961
18-21 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.0120261   -0.0494927    0.0735450
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0228722   -0.0662542    0.0205098
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0218424   -0.1569264    0.1132417
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0440907   -0.0946154    0.0064341
18-21 months   PROBIT          BELARUS                        >=38                 NA                -0.0453323   -0.1499636    0.0592990
18-21 months   PROBIT          BELARUS                        <32                  NA                -0.0385696   -0.3060004    0.2288612
18-21 months   PROBIT          BELARUS                        [32-38)              NA                 0.0199858   -0.0648032    0.1047749
21-24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0122802   -0.0327718    0.0082115
21-24 months   COHORTS         GUATEMALA                      <32                  NA                 0.0188669    0.0070615    0.0306722
21-24 months   COHORTS         GUATEMALA                      [32-38)              NA                -0.0218057   -0.0555809    0.0119696
21-24 months   LCNI-5          MALAWI                         >=38                 NA                 0.0471110   -0.0495312    0.1437531
21-24 months   LCNI-5          MALAWI                         <32                  NA                 0.0466174   -0.0321435    0.1253783
21-24 months   LCNI-5          MALAWI                         [32-38)              NA                 0.1016323    0.0121011    0.1911634
21-24 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0481624    0.0258792    0.0704455
21-24 months   MAL-ED          BANGLADESH                     <32                  NA                -0.0257517   -0.0489715   -0.0025319
21-24 months   MAL-ED          BANGLADESH                     [32-38)              NA                -0.0031844   -0.0303370    0.0239683
21-24 months   MAL-ED          BRAZIL                         >=38                 NA                 0.0108674   -0.0241273    0.0458621
21-24 months   MAL-ED          BRAZIL                         <32                  NA                 0.0752028    0.0426744    0.1077311
21-24 months   MAL-ED          BRAZIL                         [32-38)              NA                -0.0014378   -0.0392184    0.0363427
21-24 months   MAL-ED          INDIA                          >=38                 NA                 0.0125145   -0.0192956    0.0443246
21-24 months   MAL-ED          INDIA                          <32                  NA                 0.0403625    0.0183480    0.0623769
21-24 months   MAL-ED          INDIA                          [32-38)              NA                 0.0231993    0.0029574    0.0434413
21-24 months   MAL-ED          NEPAL                          >=38                 NA                -0.0078383   -0.0550238    0.0393472
21-24 months   MAL-ED          NEPAL                          <32                  NA                 0.0183793   -0.0306185    0.0673771
21-24 months   MAL-ED          NEPAL                          [32-38)              NA                 0.0209505   -0.0138403    0.0557413
21-24 months   MAL-ED          PERU                           >=38                 NA                 0.0840878    0.0051418    0.1630337
21-24 months   MAL-ED          PERU                           <32                  NA                -0.0065016   -0.0413617    0.0283585
21-24 months   MAL-ED          PERU                           [32-38)              NA                 0.0578566    0.0006491    0.1150641
21-24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0443685    0.0134110    0.0753259
21-24 months   MAL-ED          SOUTH AFRICA                   <32                  NA                 0.1494046   -0.0461148    0.3449241
21-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.0316490   -0.0229631    0.0862611
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0095422   -0.0239169    0.0430013
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.0085644   -0.0776403    0.0947690
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.0109384   -0.0432373    0.0651142
21-24 months   PROBIT          BELARUS                        >=38                 NA                 0.0763016   -1.8326258    1.9852290
21-24 months   PROBIT          BELARUS                        <32                  NA                 0.0536176   -0.0758853    0.1831204
21-24 months   PROBIT          BELARUS                        [32-38)              NA                 0.0473456   -0.2880878    0.3827790


### Parameter: E(Y)


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA                      NA                   NA                -0.5345707   -0.5567405   -0.5124010
0-3 months     MAL-ED          BANGLADESH                     NA                   NA                -0.1260188   -0.1657795   -0.0862581
0-3 months     MAL-ED          BRAZIL                         NA                   NA                 0.1518150    0.0637580    0.2398721
0-3 months     MAL-ED          INDIA                          NA                   NA                -0.0917652   -0.1479657   -0.0355647
0-3 months     MAL-ED          NEPAL                          NA                   NA                 0.0205991   -0.0568547    0.0980529
0-3 months     MAL-ED          PERU                           NA                   NA                -0.2716212   -0.3319685   -0.2112740
0-3 months     MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1225778   -0.2105573   -0.0345983
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1589292   -0.2212938   -0.0965646
0-3 months     PROBIT          BELARUS                        NA                   NA                -0.4282965   -0.4867509   -0.3698421
0-3 months     SAS-CompFeed    INDIA                          NA                   NA                -0.1273591   -0.1551143   -0.0996039
3-6 months     COHORTS         GUATEMALA                      NA                   NA                -0.0986159   -0.1135079   -0.0837240
3-6 months     MAL-ED          BANGLADESH                     NA                   NA                -0.0312090   -0.0615144   -0.0009036
3-6 months     MAL-ED          BRAZIL                         NA                   NA                 0.1002473    0.0416171    0.1588775
3-6 months     MAL-ED          INDIA                          NA                   NA                -0.0307929   -0.0668151    0.0052294
3-6 months     MAL-ED          NEPAL                          NA                   NA                -0.0602143   -0.1076559   -0.0127727
3-6 months     MAL-ED          PERU                           NA                   NA                 0.0378684   -0.0182723    0.0940091
3-6 months     MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0493444   -0.1048352    0.0061465
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0743387   -0.1146928   -0.0339846
3-6 months     PROBIT          BELARUS                        NA                   NA                 0.0500626    0.0308156    0.0693097
3-6 months     SAS-CompFeed    INDIA                          NA                   NA                -0.0168853   -0.0357401    0.0019694
6-9 months     COHORTS         GUATEMALA                      NA                   NA                -0.1203205   -0.1323439   -0.1082972
6-9 months     LCNI-5          MALAWI                         NA                   NA                -0.0201749   -0.0631904    0.0228406
6-9 months     MAL-ED          BANGLADESH                     NA                   NA                -0.0709042   -0.0926163   -0.0491920
6-9 months     MAL-ED          BRAZIL                         NA                   NA                -0.0021404   -0.0535226    0.0492418
6-9 months     MAL-ED          INDIA                          NA                   NA                -0.0816309   -0.1082289   -0.0550329
6-9 months     MAL-ED          NEPAL                          NA                   NA                -0.0541507   -0.0830383   -0.0252631
6-9 months     MAL-ED          PERU                           NA                   NA                -0.0634305   -0.1036884   -0.0231725
6-9 months     MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0038691   -0.0377229    0.0454611
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0763082   -0.1319197   -0.0206968
6-9 months     PROBIT          BELARUS                        NA                   NA                 0.0510810    0.0369017    0.0652603
6-9 months     SAS-CompFeed    INDIA                          NA                   NA                -0.0817065   -0.0897503   -0.0736627
6-9 months     SAS-FoodSuppl   INDIA                          NA                   NA                -0.1052304   -0.1233192   -0.0871417
9-12 months    COHORTS         GUATEMALA                      NA                   NA                -0.0889435   -0.0990780   -0.0788091
9-12 months    LCNI-5          MALAWI                         NA                   NA                -0.0165676   -0.0947634    0.0616283
9-12 months    MAL-ED          BANGLADESH                     NA                   NA                -0.0975034   -0.1174913   -0.0775156
9-12 months    MAL-ED          BRAZIL                         NA                   NA                 0.0538191    0.0052226    0.1024155
9-12 months    MAL-ED          INDIA                          NA                   NA                -0.0916240   -0.1117458   -0.0715022
9-12 months    MAL-ED          NEPAL                          NA                   NA                -0.0627393   -0.0885935   -0.0368851
9-12 months    MAL-ED          PERU                           NA                   NA                -0.0359027   -0.0763029    0.0044976
9-12 months    MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1047043   -0.1505805   -0.0588280
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1543999   -0.2133860   -0.0954138
9-12 months    PROBIT          BELARUS                        NA                   NA                 0.0366650    0.0162277    0.0571022
9-12 months    SAS-CompFeed    INDIA                          NA                   NA                -0.0809694   -0.0945744   -0.0673643
9-12 months    SAS-FoodSuppl   INDIA                          NA                   NA                -0.1462637   -0.2015231   -0.0910043
12-15 months   COHORTS         GUATEMALA                      NA                   NA                -0.0874822   -0.0978258   -0.0771387
12-15 months   MAL-ED          BANGLADESH                     NA                   NA                -0.0522301   -0.0703393   -0.0341208
12-15 months   MAL-ED          BRAZIL                         NA                   NA                 0.0090675   -0.0224265    0.0405616
12-15 months   MAL-ED          INDIA                          NA                   NA                -0.0505071   -0.0684609   -0.0325533
12-15 months   MAL-ED          NEPAL                          NA                   NA                -0.0454500   -0.0683796   -0.0225205
12-15 months   MAL-ED          PERU                           NA                   NA                -0.0723353   -0.1031807   -0.0414900
12-15 months   MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0394624   -0.0722101   -0.0067147
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0819479   -0.1193613   -0.0445345
12-15 months   PROBIT          BELARUS                        NA                   NA                 0.0093197   -0.1159785    0.1346180
12-15 months   SAS-CompFeed    INDIA                          NA                   NA                -0.0856674   -0.0993862   -0.0719486
12-15 months   SAS-FoodSuppl   INDIA                          NA                   NA                 0.0088746   -0.0268397    0.0445889
15-18 months   COHORTS         GUATEMALA                      NA                   NA                -0.0550045   -0.0661243   -0.0438848
15-18 months   MAL-ED          BANGLADESH                     NA                   NA                -0.0365770   -0.0524822   -0.0206719
15-18 months   MAL-ED          BRAZIL                         NA                   NA                -0.0344191   -0.0666580   -0.0021802
15-18 months   MAL-ED          INDIA                          NA                   NA                -0.0431795   -0.0587210   -0.0276380
15-18 months   MAL-ED          NEPAL                          NA                   NA                -0.0459633   -0.0696800   -0.0222466
15-18 months   MAL-ED          PERU                           NA                   NA                -0.0200267   -0.0488198    0.0087664
15-18 months   MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0317208   -0.0614498   -0.0019918
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0661851   -0.0972883   -0.0350819
15-18 months   PROBIT          BELARUS                        NA                   NA                -0.0134764   -0.1777317    0.1507789
15-18 months   SAS-CompFeed    INDIA                          NA                   NA                -0.0112160   -0.0212566   -0.0011754
15-18 months   SAS-FoodSuppl   INDIA                          NA                   NA                -0.0369125   -0.0500204   -0.0238046
18-21 months   COHORTS         GUATEMALA                      NA                   NA                -0.0204501   -0.0304670   -0.0104333
18-21 months   LCNI-5          MALAWI                         NA                   NA                -0.0662505   -0.1142275   -0.0182735
18-21 months   MAL-ED          BANGLADESH                     NA                   NA                -0.0239892   -0.0372537   -0.0107247
18-21 months   MAL-ED          BRAZIL                         NA                   NA                -0.0187209   -0.0635079    0.0260661
18-21 months   MAL-ED          INDIA                          NA                   NA                 0.0076999   -0.0063780    0.0217778
18-21 months   MAL-ED          NEPAL                          NA                   NA                -0.0567462   -0.0747600   -0.0387323
18-21 months   MAL-ED          PERU                           NA                   NA                 0.0147818   -0.0104664    0.0400299
18-21 months   MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0412863   -0.0693658   -0.0132067
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0373528   -0.0702246   -0.0044810
18-21 months   PROBIT          BELARUS                        NA                   NA                -0.0318241   -0.2631665    0.1995184
21-24 months   COHORTS         GUATEMALA                      NA                   NA                -0.0053807   -0.0133720    0.0026106
21-24 months   LCNI-5          MALAWI                         NA                   NA                 0.0501896    0.0009107    0.0994684
21-24 months   MAL-ED          BANGLADESH                     NA                   NA                 0.0309594    0.0173201    0.0445987
21-24 months   MAL-ED          BRAZIL                         NA                   NA                 0.0212097   -0.0012828    0.0437023
21-24 months   MAL-ED          INDIA                          NA                   NA                 0.0255484    0.0124580    0.0386389
21-24 months   MAL-ED          NEPAL                          NA                   NA                 0.0120812   -0.0119150    0.0360773
21-24 months   MAL-ED          PERU                           NA                   NA                 0.0639043    0.0365607    0.0912478
21-24 months   MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0515233    0.0205592    0.0824873
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0056517   -0.0220711    0.0333745
21-24 months   PROBIT          BELARUS                        NA                   NA                 0.0535540   -0.0995813    0.2066894


### Parameter: ATE


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     COHORTS         GUATEMALA                      <32                  >=38              -0.0270274   -0.0873882    0.0333334
0-3 months     COHORTS         GUATEMALA                      [32-38)              >=38              -0.0431879   -0.1179962    0.0316204
0-3 months     MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          BANGLADESH                     <32                  >=38              -0.0771930   -0.1706982    0.0163123
0-3 months     MAL-ED          BANGLADESH                     [32-38)              >=38               0.0082467   -0.0913726    0.1078660
0-3 months     MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          BRAZIL                         <32                  >=38              -0.1197265   -0.3926857    0.1532327
0-3 months     MAL-ED          BRAZIL                         [32-38)              >=38              -0.1188944   -0.3449158    0.1071270
0-3 months     MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          INDIA                          <32                  >=38               0.0948397   -0.0547350    0.2444144
0-3 months     MAL-ED          INDIA                          [32-38)              >=38               0.1595281    0.0011831    0.3178732
0-3 months     MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          NEPAL                          <32                  >=38              -0.0203193   -0.2889182    0.2482797
0-3 months     MAL-ED          NEPAL                          [32-38)              >=38               0.0256480   -0.1784735    0.2297695
0-3 months     MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          PERU                           <32                  >=38               0.1462402    0.0207574    0.2717229
0-3 months     MAL-ED          PERU                           [32-38)              >=38               0.1038202   -0.0609295    0.2685698
0-3 months     MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0525766   -0.3974987    0.2923454
0-3 months     MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0660705   -0.2944709    0.1623298
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0044041   -0.1719439    0.1631357
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.1062913   -0.2509511    0.0383685
0-3 months     PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     PROBIT          BELARUS                        <32                  >=38               0.0030825   -0.0327996    0.0389646
0-3 months     PROBIT          BELARUS                        [32-38)              >=38               0.0026512   -0.0351777    0.0404800
0-3 months     SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed    INDIA                          <32                  >=38               0.0029133   -0.0468190    0.0526456
0-3 months     SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0362305   -0.1530986    0.0806377
3-6 months     COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     COHORTS         GUATEMALA                      <32                  >=38               0.0329073   -0.0166589    0.0824735
3-6 months     COHORTS         GUATEMALA                      [32-38)              >=38               0.0119444   -0.0501008    0.0739895
3-6 months     MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          BANGLADESH                     <32                  >=38              -0.0021605   -0.0849506    0.0806296
3-6 months     MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0211403   -0.0905922    0.0483117
3-6 months     MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          BRAZIL                         <32                  >=38               0.0592954   -0.1763315    0.2949222
3-6 months     MAL-ED          BRAZIL                         [32-38)              >=38              -0.0030084   -0.1400992    0.1340824
3-6 months     MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          INDIA                          <32                  >=38              -0.0506590   -0.1702068    0.0688888
3-6 months     MAL-ED          INDIA                          [32-38)              >=38              -0.0779445   -0.1883631    0.0324741
3-6 months     MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          NEPAL                          <32                  >=38               0.0147612   -0.1605351    0.1900575
3-6 months     MAL-ED          NEPAL                          [32-38)              >=38               0.0613797   -0.0615631    0.1843225
3-6 months     MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          PERU                           <32                  >=38              -0.0611691   -0.2005017    0.0781634
3-6 months     MAL-ED          PERU                           [32-38)              >=38              -0.0856823   -0.2170760    0.0457114
3-6 months     MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0525988   -0.2781352    0.1729377
3-6 months     MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0323440   -0.1011837    0.1658716
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0398317   -0.1544645    0.0748011
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0069467   -0.0843180    0.0982114
3-6 months     PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     PROBIT          BELARUS                        <32                  >=38              -0.0254861   -0.0493267   -0.0016455
3-6 months     PROBIT          BELARUS                        [32-38)              >=38              -0.0358549   -0.0732648    0.0015549
3-6 months     SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed    INDIA                          <32                  >=38               0.0465462   -0.0150941    0.1081865
3-6 months     SAS-CompFeed    INDIA                          [32-38)              >=38               0.0652124   -0.0182787    0.1487036
6-9 months     COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     COHORTS         GUATEMALA                      <32                  >=38               0.0208845   -0.0178230    0.0595920
6-9 months     COHORTS         GUATEMALA                      [32-38)              >=38              -0.0090161   -0.0576745    0.0396423
6-9 months     LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5          MALAWI                         <32                  >=38              -0.0637158   -0.1679213    0.0404896
6-9 months     LCNI-5          MALAWI                         [32-38)              >=38              -0.0567547   -0.1956752    0.0821659
6-9 months     MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          BANGLADESH                     <32                  >=38               0.0844624    0.0413031    0.1276217
6-9 months     MAL-ED          BANGLADESH                     [32-38)              >=38               0.0585593   -0.0133930    0.1305116
6-9 months     MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          BRAZIL                         <32                  >=38               0.0225027   -0.1138325    0.1588380
6-9 months     MAL-ED          BRAZIL                         [32-38)              >=38               0.0197079   -0.0988933    0.1383091
6-9 months     MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          INDIA                          <32                  >=38               0.0317412   -0.0409979    0.1044802
6-9 months     MAL-ED          INDIA                          [32-38)              >=38              -0.0061029   -0.0819751    0.0697693
6-9 months     MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          NEPAL                          <32                  >=38               0.0115207   -0.0736615    0.0967028
6-9 months     MAL-ED          NEPAL                          [32-38)              >=38               0.0097463   -0.0745430    0.0940355
6-9 months     MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          PERU                           <32                  >=38              -0.0316684   -0.1249008    0.0615640
6-9 months     MAL-ED          PERU                           [32-38)              >=38              -0.0047796   -0.1064086    0.0968494
6-9 months     MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0144859   -0.1429707    0.1139990
6-9 months     MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0249464   -0.0657846    0.1156773
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0708840   -0.1740921    0.0323241
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0150060   -0.1166746    0.1466866
6-9 months     PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     PROBIT          BELARUS                        <32                  >=38               0.0251214   -0.0043581    0.0546010
6-9 months     PROBIT          BELARUS                        [32-38)              >=38               0.0213701   -0.0191297    0.0618699
6-9 months     SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed    INDIA                          <32                  >=38              -0.0946119   -0.1770475   -0.0121763
6-9 months     SAS-CompFeed    INDIA                          [32-38)              >=38              -0.1108839   -0.2259993    0.0042316
6-9 months     SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0618209   -0.1259960    0.0023543
6-9 months     SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0697598   -0.1432804    0.0037608
9-12 months    COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    COHORTS         GUATEMALA                      <32                  >=38              -0.0338896   -0.0661556   -0.0016235
9-12 months    COHORTS         GUATEMALA                      [32-38)              >=38              -0.0160719   -0.0569485    0.0248048
9-12 months    LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5          MALAWI                         <32                  >=38               0.0233662   -0.1318090    0.1785415
9-12 months    LCNI-5          MALAWI                         [32-38)              >=38               0.0255176   -0.1638226    0.2148578
9-12 months    MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          BANGLADESH                     <32                  >=38              -0.0205391   -0.0822712    0.0411930
9-12 months    MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0095282   -0.0612055    0.0421491
9-12 months    MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          BRAZIL                         <32                  >=38               0.0372053   -0.0979277    0.1723383
9-12 months    MAL-ED          BRAZIL                         [32-38)              >=38              -0.0256988   -0.1363705    0.0849730
9-12 months    MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          INDIA                          <32                  >=38              -0.0728336   -0.1292189   -0.0164482
9-12 months    MAL-ED          INDIA                          [32-38)              >=38              -0.0792600   -0.1323690   -0.0261510
9-12 months    MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          NEPAL                          <32                  >=38              -0.0794902   -0.1776977    0.0187174
9-12 months    MAL-ED          NEPAL                          [32-38)              >=38              -0.0718561   -0.1418990   -0.0018133
9-12 months    MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          PERU                           <32                  >=38               0.0745623   -0.0152892    0.1644138
9-12 months    MAL-ED          PERU                           [32-38)              >=38               0.0881933   -0.0142063    0.1905929
9-12 months    MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0459274   -0.1085558    0.2004106
9-12 months    MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0393410   -0.0535527    0.1322348
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0162104   -0.1135799    0.1460007
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0763929   -0.2248561    0.0720702
9-12 months    PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    PROBIT          BELARUS                        <32                  >=38              -0.0117146   -0.0375833    0.0141540
9-12 months    PROBIT          BELARUS                        [32-38)              >=38              -0.0287182   -0.0581596    0.0007232
9-12 months    SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed    INDIA                          <32                  >=38               0.0744664    0.0265012    0.1224315
9-12 months    SAS-CompFeed    INDIA                          [32-38)              >=38               0.0252900   -0.0243369    0.0749168
9-12 months    SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0449034   -0.2235195    0.1337127
9-12 months    SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0343124   -0.1839696    0.2525944
12-15 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   COHORTS         GUATEMALA                      <32                  >=38               0.0140950   -0.0141862    0.0423762
12-15 months   COHORTS         GUATEMALA                      [32-38)              >=38               0.0035976   -0.0319925    0.0391878
12-15 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.0371166   -0.0794697    0.0052365
12-15 months   MAL-ED          BANGLADESH                     [32-38)              >=38               0.0023858   -0.0573208    0.0620924
12-15 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          BRAZIL                         <32                  >=38              -0.0386559   -0.1189935    0.0416816
12-15 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.0251042   -0.0999226    0.0497141
12-15 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          INDIA                          <32                  >=38              -0.0048021   -0.0534186    0.0438145
12-15 months   MAL-ED          INDIA                          [32-38)              >=38              -0.0114104   -0.0697382    0.0469174
12-15 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          NEPAL                          <32                  >=38              -0.0031276   -0.0882935    0.0820384
12-15 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.0052243   -0.0738509    0.0634022
12-15 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          PERU                           <32                  >=38              -0.0154510   -0.0876151    0.0567130
12-15 months   MAL-ED          PERU                           [32-38)              >=38               0.0325963   -0.0368182    0.1020108
12-15 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0383836   -0.1230874    0.0463201
12-15 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0289751   -0.0741489    0.1320991
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0936980   -0.0657619    0.2531578
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0652634   -0.0092710    0.1397979
12-15 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   PROBIT          BELARUS                        <32                  >=38               0.2219085    0.0152488    0.4285683
12-15 months   PROBIT          BELARUS                        [32-38)              >=38               0.4353924   -0.3585266    1.2293113
12-15 months   SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed    INDIA                          <32                  >=38               0.1796854    0.1341604    0.2252105
12-15 months   SAS-CompFeed    INDIA                          [32-38)              >=38               0.2106757    0.0732295    0.3481218
12-15 months   SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0575004   -0.1218124    0.0068116
12-15 months   SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0003022   -0.0492137    0.0486094
15-18 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   COHORTS         GUATEMALA                      <32                  >=38               0.0306689   -0.0012336    0.0625714
15-18 months   COHORTS         GUATEMALA                      [32-38)              >=38               0.0073700   -0.0466917    0.0614317
15-18 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          BANGLADESH                     <32                  >=38               0.0349342   -0.0083038    0.0781721
15-18 months   MAL-ED          BANGLADESH                     [32-38)              >=38               0.0234225   -0.0143346    0.0611795
15-18 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          BRAZIL                         <32                  >=38               0.0235408   -0.0579243    0.1050059
15-18 months   MAL-ED          BRAZIL                         [32-38)              >=38               0.0178519   -0.0625864    0.0982902
15-18 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          INDIA                          <32                  >=38              -0.0375295   -0.0846076    0.0095486
15-18 months   MAL-ED          INDIA                          [32-38)              >=38              -0.0264651   -0.0719736    0.0190433
15-18 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          NEPAL                          <32                  >=38              -0.0007532   -0.0742998    0.0727934
15-18 months   MAL-ED          NEPAL                          [32-38)              >=38               0.0205772   -0.0420539    0.0832083
15-18 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          PERU                           <32                  >=38               0.0943919    0.0251482    0.1636357
15-18 months   MAL-ED          PERU                           [32-38)              >=38               0.0358590   -0.0331639    0.1048819
15-18 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1425082    0.0541005    0.2309160
15-18 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0010877   -0.0570043    0.0591796
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0191347   -0.1067976    0.0685281
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0439028   -0.1163172    0.0285116
15-18 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   PROBIT          BELARUS                        <32                  >=38               0.0309539   -0.1640760    0.2259838
15-18 months   PROBIT          BELARUS                        [32-38)              >=38               0.0353949   -0.2869192    0.3577091
15-18 months   SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed    INDIA                          <32                  >=38              -0.1148891   -0.1873045   -0.0424736
15-18 months   SAS-CompFeed    INDIA                          [32-38)              >=38              -0.1110193   -0.2154657   -0.0065730
15-18 months   SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA                          <32                  >=38               0.0156705   -0.0266706    0.0580116
15-18 months   SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0373594   -0.0132187    0.0879376
18-21 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   COHORTS         GUATEMALA                      <32                  >=38              -0.0531308   -0.0838732   -0.0223884
18-21 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0349396   -0.0832319    0.0133527
18-21 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5          MALAWI                         <32                  >=38              -0.0827119   -0.1940297    0.0286058
18-21 months   LCNI-5          MALAWI                         [32-38)              >=38              -0.0182971   -0.1191692    0.0825749
18-21 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          BANGLADESH                     <32                  >=38               0.0199785   -0.0074728    0.0474298
18-21 months   MAL-ED          BANGLADESH                     [32-38)              >=38               0.0027067   -0.0317934    0.0372068
18-21 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          BRAZIL                         <32                  >=38              -0.0318839   -0.1210299    0.0572620
18-21 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.0134327   -0.1219091    0.0950437
18-21 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          INDIA                          <32                  >=38               0.0124682   -0.0245234    0.0494598
18-21 months   MAL-ED          INDIA                          [32-38)              >=38               0.0237161   -0.0136133    0.0610455
18-21 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          NEPAL                          <32                  >=38               0.0236659   -0.0378917    0.0852234
18-21 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.0053948   -0.0565668    0.0457771
18-21 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          PERU                           <32                  >=38               0.0154172   -0.0536023    0.0844367
18-21 months   MAL-ED          PERU                           [32-38)              >=38              -0.0024541   -0.0601994    0.0552912
18-21 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0445154   -0.1358970    0.0468662
18-21 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0603107   -0.0093916    0.1300130
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0010299   -0.1410759    0.1431356
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0212185   -0.0881925    0.0457556
18-21 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   PROBIT          BELARUS                        <32                  >=38               0.0067627   -0.2808842    0.2944096
18-21 months   PROBIT          BELARUS                        [32-38)              >=38               0.0653181   -0.0766591    0.2072953
21-24 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   COHORTS         GUATEMALA                      <32                  >=38               0.0311470    0.0074876    0.0548064
21-24 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0095255   -0.0491254    0.0300743
21-24 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5          MALAWI                         <32                  >=38              -0.0004936   -0.1262925    0.1253053
21-24 months   LCNI-5          MALAWI                         [32-38)              >=38               0.0545213   -0.0780781    0.1871207
21-24 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.0739140   -0.1058272   -0.0420009
21-24 months   MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0513467   -0.0868537   -0.0158398
21-24 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          BRAZIL                         <32                  >=38               0.0643354    0.0162001    0.1124706
21-24 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.0123052   -0.0641018    0.0394913
21-24 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          INDIA                          <32                  >=38               0.0278480   -0.0108258    0.0665218
21-24 months   MAL-ED          INDIA                          [32-38)              >=38               0.0106848   -0.0270596    0.0484292
21-24 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          NEPAL                          <32                  >=38               0.0262176   -0.0416512    0.0940864
21-24 months   MAL-ED          NEPAL                          [32-38)              >=38               0.0287888   -0.0294428    0.0870204
21-24 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          PERU                           <32                  >=38              -0.0905894   -0.1783278   -0.0028511
21-24 months   MAL-ED          PERU                           [32-38)              >=38              -0.0262312   -0.1236728    0.0712104
21-24 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1050362   -0.0929189    0.3029913
21-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0127194   -0.0754956    0.0500567
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0009778   -0.0914850    0.0895294
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0013962   -0.0618435    0.0646360
21-24 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   PROBIT          BELARUS                        <32                  >=38              -0.0226841   -1.9023838    1.8570157
21-24 months   PROBIT          BELARUS                        [32-38)              >=38              -0.0289560   -1.9606475    1.9027354


### Parameter: PAR


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA                      >=38                 NA                -0.0184215   -0.0617281    0.0248851
0-3 months     MAL-ED          BANGLADESH                     >=38                 NA                -0.0125462   -0.0588709    0.0337784
0-3 months     MAL-ED          BRAZIL                         >=38                 NA                -0.0845597   -0.2088916    0.0397722
0-3 months     MAL-ED          INDIA                          >=38                 NA                 0.1089205   -0.0028402    0.2206813
0-3 months     MAL-ED          NEPAL                          >=38                 NA                 0.0118123   -0.1405638    0.1641884
0-3 months     MAL-ED          PERU                           >=38                 NA                 0.0479669   -0.0267995    0.1227333
0-3 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0184718   -0.0794891    0.0425455
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0314238   -0.1004733    0.0376256
0-3 months     PROBIT          BELARUS                        >=38                 NA                 0.0018369   -0.0312302    0.0349040
0-3 months     SAS-CompFeed    INDIA                          >=38                 NA                -0.0090978   -0.0590199    0.0408242
3-6 months     COHORTS         GUATEMALA                      >=38                 NA                 0.0191742   -0.0208628    0.0592111
3-6 months     MAL-ED          BANGLADESH                     >=38                 NA                -0.0103205   -0.0450713    0.0244303
3-6 months     MAL-ED          BRAZIL                         >=38                 NA                 0.0138529   -0.0701394    0.0978453
3-6 months     MAL-ED          INDIA                          >=38                 NA                -0.0540343   -0.1324040    0.0243354
3-6 months     MAL-ED          NEPAL                          >=38                 NA                 0.0417525   -0.0537422    0.1372472
3-6 months     MAL-ED          PERU                           >=38                 NA                -0.0549352   -0.1343529    0.0244825
3-6 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0001353   -0.0350989    0.0353695
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0065590   -0.0494519    0.0363339
3-6 months     PROBIT          BELARUS                        >=38                 NA                -0.0258921   -0.0502286   -0.0015555
3-6 months     SAS-CompFeed    INDIA                          >=38                 NA                 0.0479069   -0.0117101    0.1075238
6-9 months     COHORTS         GUATEMALA                      >=38                 NA                 0.0112400   -0.0177242    0.0402041
6-9 months     LCNI-5          MALAWI                         >=38                 NA                -0.0464201   -0.1190225    0.0261824
6-9 months     MAL-ED          BANGLADESH                     >=38                 NA                 0.0496584    0.0176299    0.0816870
6-9 months     MAL-ED          BRAZIL                         >=38                 NA                 0.0219742   -0.0443418    0.0882902
6-9 months     MAL-ED          INDIA                          >=38                 NA                 0.0063325   -0.0486819    0.0613469
6-9 months     MAL-ED          NEPAL                          >=38                 NA                 0.0123369   -0.0523765    0.0770502
6-9 months     MAL-ED          PERU                           >=38                 NA                -0.0159777   -0.0691625    0.0372071
6-9 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0027781   -0.0188530    0.0244093
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0103664   -0.0685910    0.0478582
6-9 months     PROBIT          BELARUS                        >=38                 NA                 0.0236017   -0.0032170    0.0504204
6-9 months     SAS-CompFeed    INDIA                          >=38                 NA                -0.0894676   -0.1691636   -0.0097717
6-9 months     SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0596568   -0.1162874   -0.0030261
9-12 months    COHORTS         GUATEMALA                      >=38                 NA                -0.0203697   -0.0445171    0.0037776
9-12 months    LCNI-5          MALAWI                         >=38                 NA                 0.0176916   -0.0842858    0.1196690
9-12 months    MAL-ED          BANGLADESH                     >=38                 NA                -0.0082702   -0.0329043    0.0163638
9-12 months    MAL-ED          BRAZIL                         >=38                 NA                -0.0070073   -0.0679399    0.0539252
9-12 months    MAL-ED          INDIA                          >=38                 NA                -0.0590201   -0.0977599   -0.0202802
9-12 months    MAL-ED          NEPAL                          >=38                 NA                -0.0683007   -0.1240560   -0.0125454
9-12 months    MAL-ED          PERU                           >=38                 NA                 0.0560927    0.0030782    0.1091072
9-12 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0108525   -0.0126705    0.0343754
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0299124   -0.0930402    0.0332154
9-12 months    PROBIT          BELARUS                        >=38                 NA                -0.0132367   -0.0370412    0.0105678
9-12 months    SAS-CompFeed    INDIA                          >=38                 NA                 0.0800800    0.0333893    0.1267707
9-12 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0287043   -0.1871276    0.1297190
12-15 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0068260   -0.0137400    0.0273920
12-15 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0009608   -0.0255217    0.0274432
12-15 months   MAL-ED          BRAZIL                         >=38                 NA                -0.0188300   -0.0576665    0.0200065
12-15 months   MAL-ED          INDIA                          >=38                 NA                -0.0015695   -0.0396015    0.0364625
12-15 months   MAL-ED          NEPAL                          >=38                 NA                -0.0079606   -0.0613499    0.0454288
12-15 months   MAL-ED          PERU                           >=38                 NA                 0.0063340   -0.0307637    0.0434317
12-15 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0027774   -0.0188754    0.0244302
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0407451   -0.0003851    0.0818753
12-15 months   PROBIT          BELARUS                        >=38                 NA                 0.2305147    0.0230740    0.4379555
12-15 months   SAS-CompFeed    INDIA                          >=38                 NA                 0.1579118    0.1083561    0.2074674
12-15 months   SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0360682   -0.0854526    0.0133161
15-18 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0096011   -0.0157039    0.0349061
15-18 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0154167   -0.0030538    0.0338872
15-18 months   MAL-ED          BRAZIL                         >=38                 NA                 0.0107647   -0.0307147    0.0522440
15-18 months   MAL-ED          INDIA                          >=38                 NA                -0.0220105   -0.0560251    0.0120040
15-18 months   MAL-ED          NEPAL                          >=38                 NA                 0.0224150   -0.0252124    0.0700424
15-18 months   MAL-ED          PERU                           >=38                 NA                 0.0409983    0.0021834    0.0798132
15-18 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0119407   -0.0048862    0.0287676
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0220882   -0.0547183    0.0105418
15-18 months   PROBIT          BELARUS                        >=38                 NA                 0.0304077   -0.1478602    0.2086757
15-18 months   SAS-CompFeed    INDIA                          >=38                 NA                -0.1101656   -0.1809408   -0.0393903
15-18 months   SAS-FoodSuppl   INDIA                          >=38                 NA                 0.0188470   -0.0187121    0.0564062
18-21 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0410980   -0.0663695   -0.0158264
18-21 months   LCNI-5          MALAWI                         >=38                 NA                -0.0440860   -0.1133352    0.0251633
18-21 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0014776   -0.0211926    0.0182373
18-21 months   MAL-ED          BRAZIL                         >=38                 NA                -0.0124583   -0.0707968    0.0458801
18-21 months   MAL-ED          INDIA                          >=38                 NA                 0.0151182   -0.0112840    0.0415204
18-21 months   MAL-ED          NEPAL                          >=38                 NA                -0.0002017   -0.0398790    0.0394757
18-21 months   MAL-ED          PERU                           >=38                 NA                 0.0064302   -0.0302341    0.0430944
18-21 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0069982   -0.0105255    0.0245220
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0144806   -0.0494106    0.0204494
18-21 months   PROBIT          BELARUS                        >=38                 NA                 0.0135082   -0.2400211    0.2670376
21-24 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0068995   -0.0127045    0.0265034
21-24 months   LCNI-5          MALAWI                         >=38                 NA                 0.0030786   -0.0798626    0.0860198
21-24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0172030   -0.0347142    0.0003083
21-24 months   MAL-ED          BRAZIL                         >=38                 NA                 0.0103424   -0.0192129    0.0398976
21-24 months   MAL-ED          INDIA                          >=38                 NA                 0.0130339   -0.0147916    0.0408594
21-24 months   MAL-ED          NEPAL                          >=38                 NA                 0.0199195   -0.0237376    0.0635765
21-24 months   MAL-ED          PERU                           >=38                 NA                -0.0201835   -0.0845167    0.0441496
21-24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0071548   -0.0155890    0.0298986
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0038905   -0.0334396    0.0256587
21-24 months   PROBIT          BELARUS                        >=38                 NA                -0.0227476   -1.8330867    1.7875916
