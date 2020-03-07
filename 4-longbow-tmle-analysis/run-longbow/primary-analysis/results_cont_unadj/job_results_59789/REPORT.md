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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/3f18de52-b096-4bc5-ac7f-88bf4f9dd3fd/7ed3ade6-b8a2-4208-b9c3-c72573e9e2f8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3f18de52-b096-4bc5-ac7f-88bf4f9dd3fd/7ed3ade6-b8a2-4208-b9c3-c72573e9e2f8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3f18de52-b096-4bc5-ac7f-88bf4f9dd3fd/7ed3ade6-b8a2-4208-b9c3-c72573e9e2f8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA                      >=38                 NA                -0.5491986   -0.5886723   -0.5097249
0-3 months     COHORTS         GUATEMALA                      <32                  NA                -0.5061578   -0.5385350   -0.4737806
0-3 months     COHORTS         GUATEMALA                      [32-38)              NA                -0.5677987   -0.6143202   -0.5212772
0-3 months     MAL-ED          BANGLADESH                     >=38                 NA                -0.1108840   -0.1690604   -0.0527075
0-3 months     MAL-ED          BANGLADESH                     <32                  NA                -0.2098406   -0.2867203   -0.1329609
0-3 months     MAL-ED          BANGLADESH                     [32-38)              NA                -0.0974517   -0.1682715   -0.0266320
0-3 months     MAL-ED          BRAZIL                         >=38                 NA                 0.2337884    0.1037577    0.3638192
0-3 months     MAL-ED          BRAZIL                         <32                  NA                 0.1111474   -0.0927373    0.3150321
0-3 months     MAL-ED          BRAZIL                         [32-38)              NA                 0.0874400   -0.0467989    0.2216788
0-3 months     MAL-ED          INDIA                          >=38                 NA                -0.1757844   -0.2877204   -0.0638483
0-3 months     MAL-ED          INDIA                          <32                  NA                -0.0985008   -0.1760672   -0.0209344
0-3 months     MAL-ED          INDIA                          [32-38)              NA                -0.0412134   -0.1374035    0.0549768
0-3 months     MAL-ED          NEPAL                          >=38                 NA                 0.0087868   -0.1734460    0.1910197
0-3 months     MAL-ED          NEPAL                          <32                  NA                -0.0115324   -0.2088560    0.1857911
0-3 months     MAL-ED          NEPAL                          [32-38)              NA                 0.0344348   -0.0575259    0.1263956
0-3 months     MAL-ED          PERU                           >=38                 NA                -0.3610443   -0.4555787   -0.2665100
0-3 months     MAL-ED          PERU                           <32                  NA                -0.2253341   -0.3078429   -0.1428254
0-3 months     MAL-ED          PERU                           [32-38)              NA                -0.2250459   -0.3486946   -0.1013973
0-3 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.1041060   -0.2043219   -0.0038902
0-3 months     MAL-ED          SOUTH AFRICA                   <32                  NA                -0.1566827   -0.4867251    0.1733598
0-3 months     MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.1701766   -0.3754167    0.0350636
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1253797   -0.2127302   -0.0380293
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1109315   -0.2479841    0.0261210
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.2215482   -0.3303567   -0.1127397
0-3 months     PROBIT          BELARUS                        >=38                 NA                -0.4541083   -0.5280840   -0.3801326
0-3 months     PROBIT          BELARUS                        <32                  NA                -0.4259296   -0.4852934   -0.3665658
0-3 months     PROBIT          BELARUS                        [32-38)              NA                -0.4329257   -0.4878156   -0.3780358
0-3 months     SAS-CompFeed    INDIA                          >=38                 NA                -0.3263318   -0.4444169   -0.2082467
0-3 months     SAS-CompFeed    INDIA                          <32                  NA                -0.1125090   -0.1422361   -0.0827819
0-3 months     SAS-CompFeed    INDIA                          [32-38)              NA                -0.1751253   -0.2355440   -0.1147066
3-6 months     COHORTS         GUATEMALA                      >=38                 NA                -0.1092637   -0.1394928   -0.0790347
3-6 months     COHORTS         GUATEMALA                      <32                  NA                -0.0829490   -0.1037110   -0.0621870
3-6 months     COHORTS         GUATEMALA                      [32-38)              NA                -0.1135144   -0.1423527   -0.0846760
3-6 months     MAL-ED          BANGLADESH                     >=38                 NA                -0.0187856   -0.0663142    0.0287431
3-6 months     MAL-ED          BANGLADESH                     <32                  NA                -0.0382556   -0.1049526    0.0284414
3-6 months     MAL-ED          BANGLADESH                     [32-38)              NA                -0.0438769   -0.0911654    0.0034115
3-6 months     MAL-ED          BRAZIL                         >=38                 NA                 0.0725200   -0.0169482    0.1619881
3-6 months     MAL-ED          BRAZIL                         <32                  NA                 0.1816390    0.0332427    0.3300353
3-6 months     MAL-ED          BRAZIL                         [32-38)              NA                 0.0798205   -0.0024875    0.1621286
3-6 months     MAL-ED          INDIA                          >=38                 NA                 0.0080602   -0.0489970    0.0651175
3-6 months     MAL-ED          INDIA                          <32                  NA                -0.0257282   -0.0845903    0.0331339
3-6 months     MAL-ED          INDIA                          [32-38)              NA                -0.0534990   -0.1143527    0.0073546
3-6 months     MAL-ED          NEPAL                          >=38                 NA                -0.0648442   -0.1757516    0.0460631
3-6 months     MAL-ED          NEPAL                          <32                  NA                -0.0608507   -0.1761249    0.0544235
3-6 months     MAL-ED          NEPAL                          [32-38)              NA                -0.0583366   -0.1166045   -0.0000686
3-6 months     MAL-ED          PERU                           >=38                 NA                 0.0799442   -0.0202655    0.1801539
3-6 months     MAL-ED          PERU                           <32                  NA                 0.0211006   -0.0775114    0.1197125
3-6 months     MAL-ED          PERU                           [32-38)              NA                 0.0140631   -0.0769205    0.1050467
3-6 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0494797   -0.1135083    0.0145490
3-6 months     MAL-ED          SOUTH AFRICA                   <32                  NA                -0.1020784   -0.3183353    0.1141784
3-6 months     MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0171357   -0.1343106    0.1000392
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0700446   -0.1245132   -0.0155760
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1211202   -0.2172156   -0.0250247
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0609440   -0.1335390    0.0116511
3-6 months     PROBIT          BELARUS                        >=38                 NA                 0.0422374    0.0110454    0.0734294
3-6 months     PROBIT          BELARUS                        <32                  NA                 0.0527998    0.0337065    0.0718931
3-6 months     PROBIT          BELARUS                        [32-38)              NA                 0.0380519    0.0131327    0.0629710
3-6 months     SAS-CompFeed    INDIA                          >=38                 NA                -0.0633235   -0.1253301   -0.0013169
3-6 months     SAS-CompFeed    INDIA                          <32                  NA                -0.0168805   -0.0344906    0.0007297
3-6 months     SAS-CompFeed    INDIA                          [32-38)              NA                -0.0053843   -0.0622258    0.0514572
6-9 months     COHORTS         GUATEMALA                      >=38                 NA                -0.1095438   -0.1331285   -0.0859591
6-9 months     COHORTS         GUATEMALA                      <32                  NA                -0.1100004   -0.1277780   -0.0922228
6-9 months     COHORTS         GUATEMALA                      [32-38)              NA                -0.1509722   -0.1727955   -0.1291488
6-9 months     LCNI-5          MALAWI                         >=38                 NA                 0.0322874   -0.0486599    0.1132347
6-9 months     LCNI-5          MALAWI                         <32                  NA                -0.0421792   -0.1002774    0.0159190
6-9 months     LCNI-5          MALAWI                         [32-38)              NA                -0.0310438   -0.1266319    0.0645442
6-9 months     MAL-ED          BANGLADESH                     >=38                 NA                -0.1055752   -0.1377542   -0.0733961
6-9 months     MAL-ED          BANGLADESH                     <32                  NA                -0.0021332   -0.0416800    0.0374137
6-9 months     MAL-ED          BANGLADESH                     [32-38)              NA                -0.0657076   -0.1018488   -0.0295664
6-9 months     MAL-ED          BRAZIL                         >=38                 NA                -0.0171427   -0.0941607    0.0598753
6-9 months     MAL-ED          BRAZIL                         <32                  NA                -0.0122637   -0.1127699    0.0882426
6-9 months     MAL-ED          BRAZIL                         [32-38)              NA                 0.0182560   -0.0717315    0.1082436
6-9 months     MAL-ED          INDIA                          >=38                 NA                -0.0892329   -0.1467927   -0.0316730
6-9 months     MAL-ED          INDIA                          <32                  NA                -0.0642662   -0.1046675   -0.0238648
6-9 months     MAL-ED          INDIA                          [32-38)              NA                -0.0908234   -0.1333543   -0.0482925
6-9 months     MAL-ED          NEPAL                          >=38                 NA                -0.0598272   -0.1295573    0.0099028
6-9 months     MAL-ED          NEPAL                          <32                  NA                -0.0404515   -0.0797430   -0.0011601
6-9 months     MAL-ED          NEPAL                          [32-38)              NA                -0.0565903   -0.0962294   -0.0169512
6-9 months     MAL-ED          PERU                           >=38                 NA                -0.0446828   -0.1030844    0.0137187
6-9 months     MAL-ED          PERU                           <32                  NA                -0.0960397   -0.1651956   -0.0268838
6-9 months     MAL-ED          PERU                           [32-38)              NA                -0.0482298   -0.1253755    0.0289159
6-9 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0010910   -0.0503889    0.0525708
6-9 months     MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0133949   -0.1311157    0.1043259
6-9 months     MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.0260373   -0.0486750    0.1007497
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0725780   -0.1545020    0.0093460
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1450943   -0.2032945   -0.0868941
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0518377   -0.1554511    0.0517757
6-9 months     PROBIT          BELARUS                        >=38                 NA                 0.0366545    0.0115150    0.0617940
6-9 months     PROBIT          BELARUS                        <32                  NA                 0.0531010    0.0379074    0.0682946
6-9 months     PROBIT          BELARUS                        [32-38)              NA                 0.0448741    0.0255388    0.0642093
6-9 months     SAS-CompFeed    INDIA                          >=38                 NA                -0.0302270   -0.1318241    0.0713700
6-9 months     SAS-CompFeed    INDIA                          <32                  NA                -0.0829461   -0.0930442   -0.0728480
6-9 months     SAS-CompFeed    INDIA                          [32-38)              NA                -0.0876703   -0.1158999   -0.0594407
6-9 months     SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0636879   -0.1243800   -0.0029957
6-9 months     SAS-FoodSuppl   INDIA                          <32                  NA                -0.1078540   -0.1288827   -0.0868253
6-9 months     SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.1184718   -0.1594822   -0.0774614
9-12 months    COHORTS         GUATEMALA                      >=38                 NA                -0.0715049   -0.0908967   -0.0521132
9-12 months    COHORTS         GUATEMALA                      <32                  NA                -0.1005799   -0.1157850   -0.0853748
9-12 months    COHORTS         GUATEMALA                      [32-38)              NA                -0.0869313   -0.1052775   -0.0685851
9-12 months    LCNI-5          MALAWI                         >=38                 NA                -0.0342592   -0.1289118    0.0603935
9-12 months    LCNI-5          MALAWI                         <32                  NA                -0.0108929   -0.1338573    0.1120714
9-12 months    LCNI-5          MALAWI                         [32-38)              NA                -0.0087416   -0.1727251    0.1552419
9-12 months    MAL-ED          BANGLADESH                     >=38                 NA                -0.0920642   -0.1229179   -0.0612104
9-12 months    MAL-ED          BANGLADESH                     <32                  NA                -0.1075446   -0.1476062   -0.0674831
9-12 months    MAL-ED          BANGLADESH                     [32-38)              NA                -0.0989041   -0.1328516   -0.0649566
9-12 months    MAL-ED          BRAZIL                         >=38                 NA                 0.0796044   -0.0058506    0.1650594
9-12 months    MAL-ED          BRAZIL                         <32                  NA                 0.0806533   -0.0096913    0.1709980
9-12 months    MAL-ED          BRAZIL                         [32-38)              NA                 0.0132843   -0.0602455    0.0868142
9-12 months    MAL-ED          INDIA                          >=38                 NA                -0.0342983   -0.0788459    0.0102494
9-12 months    MAL-ED          INDIA                          <32                  NA                -0.1142063   -0.1480574   -0.0803552
9-12 months    MAL-ED          INDIA                          [32-38)              NA                -0.1041515   -0.1321885   -0.0761145
9-12 months    MAL-ED          NEPAL                          >=38                 NA                -0.0096104   -0.0742375    0.0550166
9-12 months    MAL-ED          NEPAL                          <32                  NA                -0.1008151   -0.1674822   -0.0341481
9-12 months    MAL-ED          NEPAL                          [32-38)              NA                -0.0686739   -0.0966649   -0.0406829
9-12 months    MAL-ED          PERU                           >=38                 NA                -0.0973285   -0.1593260   -0.0353310
9-12 months    MAL-ED          PERU                           <32                  NA                -0.0064031   -0.0720087    0.0592025
9-12 months    MAL-ED          PERU                           [32-38)              NA                -0.0062569   -0.0809390    0.0684251
9-12 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.1155567   -0.1726333   -0.0584801
9-12 months    MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0696293   -0.2131818    0.0739232
9-12 months    MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0762157   -0.1495062   -0.0029251
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1266161   -0.2078429   -0.0453894
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1350655   -0.2191826   -0.0509484
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.2005196   -0.3159693   -0.0850700
9-12 months    PROBIT          BELARUS                        >=38                 NA                 0.0383951    0.0007572    0.0760329
9-12 months    PROBIT          BELARUS                        <32                  NA                 0.0373865    0.0162370    0.0585359
9-12 months    PROBIT          BELARUS                        [32-38)              NA                 0.0323103    0.0074078    0.0572129
9-12 months    SAS-CompFeed    INDIA                          >=38                 NA                -0.1050242   -0.1833222   -0.0267263
9-12 months    SAS-CompFeed    INDIA                          <32                  NA                -0.0778292   -0.0880278   -0.0676306
9-12 months    SAS-CompFeed    INDIA                          [32-38)              NA                -0.0941425   -0.1391157   -0.0491694
9-12 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -0.1459584   -0.3042700    0.0123532
9-12 months    SAS-FoodSuppl   INDIA                          <32                  NA                -0.1647886   -0.2275573   -0.1020199
9-12 months    SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.0919001   -0.2321494    0.0483492
12-15 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0879244   -0.1075145   -0.0683343
12-15 months   COHORTS         GUATEMALA                      <32                  NA                -0.0849079   -0.1009235   -0.0688923
12-15 months   COHORTS         GUATEMALA                      [32-38)              NA                -0.0917900   -0.1097451   -0.0738349
12-15 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0573774   -0.0839281   -0.0308266
12-15 months   MAL-ED          BANGLADESH                     <32                  NA                -0.0508529   -0.0984364   -0.0032694
12-15 months   MAL-ED          BANGLADESH                     [32-38)              NA                -0.0458738   -0.0735978   -0.0181498
12-15 months   MAL-ED          BRAZIL                         >=38                 NA                 0.0285747   -0.0215960    0.0787454
12-15 months   MAL-ED          BRAZIL                         <32                  NA                -0.0271708   -0.0775487    0.0232071
12-15 months   MAL-ED          BRAZIL                         [32-38)              NA                 0.0112312   -0.0443207    0.0667832
12-15 months   MAL-ED          INDIA                          >=38                 NA                -0.0538544   -0.0886378   -0.0190711
12-15 months   MAL-ED          INDIA                          <32                  NA                -0.0359663   -0.0647850   -0.0071475
12-15 months   MAL-ED          INDIA                          [32-38)              NA                -0.0594594   -0.0885611   -0.0303577
12-15 months   MAL-ED          NEPAL                          >=38                 NA                -0.0386915   -0.0959018    0.0185188
12-15 months   MAL-ED          NEPAL                          <32                  NA                -0.0486310   -0.1002846    0.0030227
12-15 months   MAL-ED          NEPAL                          [32-38)              NA                -0.0468794   -0.0748732   -0.0188856
12-15 months   MAL-ED          PERU                           >=38                 NA                -0.0780204   -0.1142275   -0.0418132
12-15 months   MAL-ED          PERU                           <32                  NA                -0.0903904   -0.1505888   -0.0301920
12-15 months   MAL-ED          PERU                           [32-38)              NA                -0.0499326   -0.1099908    0.0101256
12-15 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0422398   -0.0778416   -0.0066380
12-15 months   MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0806234   -0.1574820   -0.0037648
12-15 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0132647   -0.1100483    0.0835190
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1206416   -0.1692625   -0.0720207
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0186119   -0.1536296    0.1164059
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0588960   -0.1107992   -0.0069929
12-15 months   PROBIT          BELARUS                        >=38                 NA                -0.0181765   -0.3327521    0.2963992
12-15 months   PROBIT          BELARUS                        <32                  NA                 0.0015792   -0.1189732    0.1221317
12-15 months   PROBIT          BELARUS                        [32-38)              NA                 0.0667264   -0.2164342    0.3498870
12-15 months   SAS-CompFeed    INDIA                          >=38                 NA                -0.1168616   -0.1943950   -0.0393281
12-15 months   SAS-CompFeed    INDIA                          <32                  NA                -0.0815354   -0.0950112   -0.0680595
12-15 months   SAS-CompFeed    INDIA                          [32-38)              NA                -0.1041221   -0.1471648   -0.0610793
12-15 months   SAS-FoodSuppl   INDIA                          >=38                 NA                 0.0564685    0.0180842    0.0948528
12-15 months   SAS-FoodSuppl   INDIA                          <32                  NA                -0.0122469   -0.0637993    0.0393054
12-15 months   SAS-FoodSuppl   INDIA                          [32-38)              NA                 0.0504535    0.0209123    0.0799947
15-18 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0556655   -0.0770348   -0.0342962
15-18 months   COHORTS         GUATEMALA                      <32                  NA                -0.0559361   -0.0718304   -0.0400417
15-18 months   COHORTS         GUATEMALA                      [32-38)              NA                -0.0525113   -0.0750562   -0.0299664
15-18 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0502053   -0.0746272   -0.0257834
15-18 months   MAL-ED          BANGLADESH                     <32                  NA                -0.0158699   -0.0494970    0.0177572
15-18 months   MAL-ED          BANGLADESH                     [32-38)              NA                -0.0304297   -0.0562759   -0.0045835
15-18 months   MAL-ED          BRAZIL                         >=38                 NA                -0.0458778   -0.0958031    0.0040475
15-18 months   MAL-ED          BRAZIL                         <32                  NA                -0.0470949   -0.1052373    0.0110474
15-18 months   MAL-ED          BRAZIL                         [32-38)              NA                -0.0157369   -0.0725401    0.0410663
15-18 months   MAL-ED          INDIA                          >=38                 NA                -0.0128213   -0.0497190    0.0240764
15-18 months   MAL-ED          INDIA                          <32                  NA                -0.0562137   -0.0810012   -0.0314262
15-18 months   MAL-ED          INDIA                          [32-38)              NA                -0.0483422   -0.0708353   -0.0258491
15-18 months   MAL-ED          NEPAL                          >=38                 NA                -0.0411147   -0.0871481    0.0049186
15-18 months   MAL-ED          NEPAL                          <32                  NA                -0.0509614   -0.0982241   -0.0036987
15-18 months   MAL-ED          NEPAL                          [32-38)              NA                -0.0461253   -0.0791238   -0.0131268
15-18 months   MAL-ED          PERU                           >=38                 NA                -0.0626437   -0.1048884   -0.0203989
15-18 months   MAL-ED          PERU                           <32                  NA                 0.0292048   -0.0215456    0.0799553
15-18 months   MAL-ED          PERU                           [32-38)              NA                -0.0282197   -0.0775852    0.0211459
15-18 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0436615   -0.0798437   -0.0074794
15-18 months   MAL-ED          SOUTH AFRICA                   <32                  NA                 0.0988467    0.0181821    0.1795114
15-18 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0425738   -0.0880219    0.0028742
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0447929   -0.0842256   -0.0053602
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0664886   -0.1409536    0.0079763
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0934016   -0.1513590   -0.0354442
15-18 months   PROBIT          BELARUS                        >=38                 NA                -0.0438842   -0.1208685    0.0331002
15-18 months   PROBIT          BELARUS                        <32                  NA                -0.0129302   -0.1953997    0.1695393
15-18 months   PROBIT          BELARUS                        [32-38)              NA                -0.0084892   -0.3170679    0.3000895
15-18 months   SAS-CompFeed    INDIA                          >=38                 NA                 0.0930829    0.0170667    0.1690990
15-18 months   SAS-CompFeed    INDIA                          <32                  NA                -0.0139441   -0.0278189   -0.0000692
15-18 months   SAS-CompFeed    INDIA                          [32-38)              NA                -0.0200594   -0.0838219    0.0437030
15-18 months   SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0507486   -0.0899042   -0.0115929
15-18 months   SAS-FoodSuppl   INDIA                          <32                  NA                -0.0403035   -0.0556459   -0.0249610
15-18 months   SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.0184608   -0.0498636    0.0129420
18-21 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0080519   -0.0111400    0.0272438
18-21 months   COHORTS         GUATEMALA                      <32                  NA                -0.0387479   -0.0518796   -0.0256162
18-21 months   COHORTS         GUATEMALA                      [32-38)              NA                -0.0200237   -0.0424669    0.0024194
18-21 months   LCNI-5          MALAWI                         >=38                 NA                -0.0206301   -0.0963998    0.0551397
18-21 months   LCNI-5          MALAWI                         <32                  NA                -0.1046586   -0.1849506   -0.0243665
18-21 months   LCNI-5          MALAWI                         [32-38)              NA                -0.0398590   -0.1003637    0.0206457
18-21 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0259303   -0.0463106   -0.0055499
18-21 months   MAL-ED          BANGLADESH                     <32                  NA                -0.0229052   -0.0513298    0.0055194
18-21 months   MAL-ED          BANGLADESH                     [32-38)              NA                -0.0221300   -0.0441528   -0.0001073
18-21 months   MAL-ED          BRAZIL                         >=38                 NA                -0.0053026   -0.0822312    0.0716259
18-21 months   MAL-ED          BRAZIL                         <32                  NA                -0.0343400   -0.0813895    0.0127095
18-21 months   MAL-ED          BRAZIL                         [32-38)              NA                -0.0223204   -0.1050492    0.0604084
18-21 months   MAL-ED          INDIA                          >=38                 NA                -0.0030388   -0.0296482    0.0235706
18-21 months   MAL-ED          INDIA                          <32                  NA                 0.0024217   -0.0207160    0.0255593
18-21 months   MAL-ED          INDIA                          [32-38)              NA                 0.0167321   -0.0058838    0.0393479
18-21 months   MAL-ED          NEPAL                          >=38                 NA                -0.0576860   -0.0999401   -0.0154318
18-21 months   MAL-ED          NEPAL                          <32                  NA                -0.0360531   -0.0749741    0.0028679
18-21 months   MAL-ED          NEPAL                          [32-38)              NA                -0.0631466   -0.0857912   -0.0405020
18-21 months   MAL-ED          PERU                           >=38                 NA                 0.0115560   -0.0338130    0.0569251
18-21 months   MAL-ED          PERU                           <32                  NA                 0.0212247   -0.0282298    0.0706792
18-21 months   MAL-ED          PERU                           [32-38)              NA                 0.0118123   -0.0237209    0.0473456
18-21 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0482845   -0.0810541   -0.0155150
18-21 months   MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0927999   -0.1781038   -0.0074961
18-21 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.0120261   -0.0494927    0.0735450
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0200512   -0.0632585    0.0231561
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0501966   -0.1622964    0.0619032
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0534715   -0.1040734   -0.0028696
18-21 months   PROBIT          BELARUS                        >=38                 NA                -0.0453323   -0.1499636    0.0592990
18-21 months   PROBIT          BELARUS                        <32                  NA                -0.0385696   -0.3060004    0.2288612
18-21 months   PROBIT          BELARUS                        [32-38)              NA                 0.0199858   -0.0648032    0.1047749
21-24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0038546   -0.0180511    0.0103418
21-24 months   COHORTS         GUATEMALA                      <32                  NA                 0.0014942   -0.0098318    0.0128202
21-24 months   COHORTS         GUATEMALA                      [32-38)              NA                -0.0208028   -0.0386178   -0.0029879
21-24 months   LCNI-5          MALAWI                         >=38                 NA                 0.0233689   -0.0659687    0.1127065
21-24 months   LCNI-5          MALAWI                         <32                  NA                 0.0518515   -0.0251979    0.1289009
21-24 months   LCNI-5          MALAWI                         [32-38)              NA                 0.0849710    0.0174882    0.1524537
21-24 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0466074    0.0252617    0.0679530
21-24 months   MAL-ED          BANGLADESH                     <32                  NA                 0.0285533   -0.0059220    0.0630286
21-24 months   MAL-ED          BANGLADESH                     [32-38)              NA                 0.0124404   -0.0058386    0.0307194
21-24 months   MAL-ED          BRAZIL                         >=38                 NA                 0.0157848   -0.0177761    0.0493457
21-24 months   MAL-ED          BRAZIL                         <32                  NA                 0.0826996    0.0464703    0.1189289
21-24 months   MAL-ED          BRAZIL                         [32-38)              NA                -0.0092441   -0.0465624    0.0280742
21-24 months   MAL-ED          INDIA                          >=38                 NA                 0.0067087   -0.0220840    0.0355013
21-24 months   MAL-ED          INDIA                          <32                  NA                 0.0425810    0.0208515    0.0643105
21-24 months   MAL-ED          INDIA                          [32-38)              NA                 0.0226669    0.0033937    0.0419402
21-24 months   MAL-ED          NEPAL                          >=38                 NA                -0.0095424   -0.0551242    0.0360394
21-24 months   MAL-ED          NEPAL                          <32                  NA                 0.0060714   -0.0345145    0.0466572
21-24 months   MAL-ED          NEPAL                          [32-38)              NA                 0.0218205   -0.0123031    0.0559441
21-24 months   MAL-ED          PERU                           >=38                 NA                 0.0933674    0.0350329    0.1517019
21-24 months   MAL-ED          PERU                           <32                  NA                 0.0422912    0.0032175    0.0813648
21-24 months   MAL-ED          PERU                           [32-38)              NA                 0.0548757    0.0164527    0.0932988
21-24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0443685    0.0134110    0.0753259
21-24 months   MAL-ED          SOUTH AFRICA                   <32                  NA                 0.1494046   -0.0461148    0.3449241
21-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.0316490   -0.0229631    0.0862611
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0080521   -0.0238310    0.0399353
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0129123   -0.0912460    0.0654213
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.0103862   -0.0424622    0.0632346
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
0-3 months     COHORTS         GUATEMALA                      <32                  >=38               0.0430408   -0.0080127    0.0940943
0-3 months     COHORTS         GUATEMALA                      [32-38)              >=38              -0.0186001   -0.0796118    0.0424116
0-3 months     MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          BANGLADESH                     <32                  >=38              -0.0989566   -0.1953671   -0.0025461
0-3 months     MAL-ED          BANGLADESH                     [32-38)              >=38               0.0134323   -0.0782189    0.1050834
0-3 months     MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          BRAZIL                         <32                  >=38              -0.1226410   -0.3644611    0.1191791
0-3 months     MAL-ED          BRAZIL                         [32-38)              >=38              -0.1463485   -0.3332390    0.0405420
0-3 months     MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          INDIA                          <32                  >=38               0.0772835   -0.0589010    0.2134681
0-3 months     MAL-ED          INDIA                          [32-38)              >=38               0.1345710   -0.0130170    0.2821590
0-3 months     MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          NEPAL                          <32                  >=38              -0.0203193   -0.2889182    0.2482797
0-3 months     MAL-ED          NEPAL                          [32-38)              >=38               0.0256480   -0.1784735    0.2297695
0-3 months     MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          PERU                           <32                  >=38               0.1357102    0.0102334    0.2611870
0-3 months     MAL-ED          PERU                           [32-38)              >=38               0.1359984   -0.0196478    0.2916445
0-3 months     MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0525766   -0.3974987    0.2923454
0-3 months     MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0660705   -0.2944709    0.1623298
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0144482   -0.1480741    0.1769705
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0961685   -0.2357012    0.0433643
0-3 months     PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     PROBIT          BELARUS                        <32                  >=38               0.0281787   -0.0121100    0.0684673
0-3 months     PROBIT          BELARUS                        [32-38)              >=38               0.0211826   -0.0188326    0.0611977
0-3 months     SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed    INDIA                          <32                  >=38               0.2138228    0.1057351    0.3219105
0-3 months     SAS-CompFeed    INDIA                          [32-38)              >=38               0.1512065    0.0115647    0.2908483
3-6 months     COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     COHORTS         GUATEMALA                      <32                  >=38               0.0263147   -0.0103576    0.0629870
3-6 months     COHORTS         GUATEMALA                      [32-38)              >=38              -0.0042506   -0.0460292    0.0375279
3-6 months     MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          BANGLADESH                     <32                  >=38              -0.0194701   -0.1013691    0.0624290
3-6 months     MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0250913   -0.0921373    0.0419547
3-6 months     MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          BRAZIL                         <32                  >=38               0.1091190   -0.0641611    0.2823992
3-6 months     MAL-ED          BRAZIL                         [32-38)              >=38               0.0073006   -0.1142690    0.1288701
3-6 months     MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          INDIA                          <32                  >=38              -0.0337884   -0.1157658    0.0481889
3-6 months     MAL-ED          INDIA                          [32-38)              >=38              -0.0615593   -0.1449781    0.0218595
3-6 months     MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          NEPAL                          <32                  >=38               0.0039935   -0.1559708    0.1639579
3-6 months     MAL-ED          NEPAL                          [32-38)              >=38               0.0065077   -0.1187744    0.1317897
3-6 months     MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          PERU                           <32                  >=38              -0.0588436   -0.1994363    0.0817491
3-6 months     MAL-ED          PERU                           [32-38)              >=38              -0.0658811   -0.2012325    0.0694703
3-6 months     MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0525988   -0.2781352    0.1729377
3-6 months     MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0323440   -0.1011837    0.1658716
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0510756   -0.1615344    0.0593833
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0091006   -0.0816566    0.0998578
3-6 months     PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     PROBIT          BELARUS                        <32                  >=38               0.0105624   -0.0139235    0.0350483
3-6 months     PROBIT          BELARUS                        [32-38)              >=38              -0.0041855   -0.0337821    0.0254111
3-6 months     SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed    INDIA                          <32                  >=38               0.0464430   -0.0172980    0.1101840
3-6 months     SAS-CompFeed    INDIA                          [32-38)              >=38               0.0579392   -0.0200672    0.1359456
6-9 months     COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     COHORTS         GUATEMALA                      <32                  >=38              -0.0004566   -0.0299910    0.0290778
6-9 months     COHORTS         GUATEMALA                      [32-38)              >=38              -0.0414284   -0.0735609   -0.0092959
6-9 months     LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5          MALAWI                         <32                  >=38              -0.0744666   -0.1741052    0.0251721
6-9 months     LCNI-5          MALAWI                         [32-38)              >=38              -0.0633312   -0.1885891    0.0619267
6-9 months     MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          BANGLADESH                     <32                  >=38               0.1034420    0.0524573    0.1544267
6-9 months     MAL-ED          BANGLADESH                     [32-38)              >=38               0.0398675   -0.0085233    0.0882584
6-9 months     MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          BRAZIL                         <32                  >=38               0.0048790   -0.1217436    0.1315016
6-9 months     MAL-ED          BRAZIL                         [32-38)              >=38               0.0353987   -0.0830476    0.1538450
6-9 months     MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          INDIA                          <32                  >=38               0.0249667   -0.0453569    0.0952903
6-9 months     MAL-ED          INDIA                          [32-38)              >=38              -0.0015906   -0.0731589    0.0699777
6-9 months     MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          NEPAL                          <32                  >=38               0.0193757   -0.0606624    0.0994138
6-9 months     MAL-ED          NEPAL                          [32-38)              >=38               0.0032369   -0.0769724    0.0834462
6-9 months     MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          PERU                           <32                  >=38              -0.0513569   -0.1418736    0.0391598
6-9 months     MAL-ED          PERU                           [32-38)              >=38              -0.0035470   -0.1003054    0.0932115
6-9 months     MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0144859   -0.1429707    0.1139990
6-9 months     MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0249464   -0.0657846    0.1156773
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0725163   -0.1730091    0.0279765
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0207403   -0.1113478    0.1528284
6-9 months     PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     PROBIT          BELARUS                        <32                  >=38               0.0164465   -0.0141973    0.0470902
6-9 months     PROBIT          BELARUS                        [32-38)              >=38               0.0082196   -0.0177152    0.0341543
6-9 months     SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed    INDIA                          <32                  >=38              -0.0527190   -0.1568656    0.0514276
6-9 months     SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0574432   -0.1595059    0.0446194
6-9 months     SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0441662   -0.1083981    0.0200658
6-9 months     SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0547839   -0.1280328    0.0184649
9-12 months    COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    COHORTS         GUATEMALA                      <32                  >=38              -0.0290749   -0.0537171   -0.0044328
9-12 months    COHORTS         GUATEMALA                      [32-38)              >=38              -0.0154263   -0.0421213    0.0112687
9-12 months    LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5          MALAWI                         <32                  >=38               0.0233662   -0.1318090    0.1785415
9-12 months    LCNI-5          MALAWI                         [32-38)              >=38               0.0255176   -0.1638226    0.2148578
9-12 months    MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          BANGLADESH                     <32                  >=38              -0.0154805   -0.0660461    0.0350851
9-12 months    MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0068399   -0.0527135    0.0390336
9-12 months    MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          BRAZIL                         <32                  >=38               0.0010489   -0.1233083    0.1254061
9-12 months    MAL-ED          BRAZIL                         [32-38)              >=38              -0.0663201   -0.1790552    0.0464150
9-12 months    MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          INDIA                          <32                  >=38              -0.0799081   -0.1358580   -0.0239582
9-12 months    MAL-ED          INDIA                          [32-38)              >=38              -0.0698532   -0.1224894   -0.0172170
9-12 months    MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          NEPAL                          <32                  >=38              -0.0912047   -0.1840549    0.0016455
9-12 months    MAL-ED          NEPAL                          [32-38)              >=38              -0.0590635   -0.1294918    0.0113649
9-12 months    MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          PERU                           <32                  >=38               0.0909254    0.0006603    0.1811905
9-12 months    MAL-ED          PERU                           [32-38)              >=38               0.0910715   -0.0059908    0.1881339
9-12 months    MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0459274   -0.1085558    0.2004106
9-12 months    MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0393410   -0.0535527    0.1322348
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0084493   -0.1253829    0.1084843
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0739035   -0.2150644    0.0672574
9-12 months    PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    PROBIT          BELARUS                        <32                  >=38              -0.0010086   -0.0378056    0.0357883
9-12 months    PROBIT          BELARUS                        [32-38)              >=38              -0.0060847   -0.0427344    0.0305650
9-12 months    SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed    INDIA                          <32                  >=38               0.0271950   -0.0469926    0.1013827
9-12 months    SAS-CompFeed    INDIA                          [32-38)              >=38               0.0108817   -0.0830147    0.1047781
9-12 months    SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0188302   -0.1891313    0.1514709
9-12 months    SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0540583   -0.1574421    0.2655587
12-15 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   COHORTS         GUATEMALA                      <32                  >=38               0.0030165   -0.0222871    0.0283201
12-15 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0038656   -0.0304393    0.0227081
12-15 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          BANGLADESH                     <32                  >=38               0.0065244   -0.0479653    0.0610142
12-15 months   MAL-ED          BANGLADESH                     [32-38)              >=38               0.0115036   -0.0268835    0.0498906
12-15 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          BRAZIL                         <32                  >=38              -0.0557455   -0.1268442    0.0153532
12-15 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.0173434   -0.0921974    0.0575105
12-15 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          INDIA                          <32                  >=38               0.0178882   -0.0272826    0.0630590
12-15 months   MAL-ED          INDIA                          [32-38)              >=38              -0.0056050   -0.0509568    0.0397468
12-15 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          NEPAL                          <32                  >=38              -0.0099395   -0.0870181    0.0671392
12-15 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.0081879   -0.0718799    0.0555041
12-15 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          PERU                           <32                  >=38              -0.0123700   -0.0826182    0.0578781
12-15 months   MAL-ED          PERU                           [32-38)              >=38               0.0280877   -0.0420403    0.0982158
12-15 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0383836   -0.1230874    0.0463201
12-15 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0289751   -0.0741489    0.1320991
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.1020297   -0.0414756    0.2455351
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0617456   -0.0093735    0.1328647
12-15 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   PROBIT          BELARUS                        <32                  >=38               0.0197557   -0.2920934    0.3316049
12-15 months   PROBIT          BELARUS                        [32-38)              >=38               0.0849029   -0.3657652    0.5355711
12-15 months   SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed    INDIA                          <32                  >=38               0.0353262   -0.0526814    0.1233338
12-15 months   SAS-CompFeed    INDIA                          [32-38)              >=38               0.0127395   -0.1003885    0.1258675
12-15 months   SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0687154   -0.1329883   -0.0044426
12-15 months   SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0060150   -0.0544509    0.0424209
15-18 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   COHORTS         GUATEMALA                      <32                  >=38              -0.0002705   -0.0269028    0.0263618
15-18 months   COHORTS         GUATEMALA                      [32-38)              >=38               0.0031542   -0.0279089    0.0342174
15-18 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          BANGLADESH                     <32                  >=38               0.0343354   -0.0072244    0.0758951
15-18 months   MAL-ED          BANGLADESH                     [32-38)              >=38               0.0197756   -0.0157836    0.0553347
15-18 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          BRAZIL                         <32                  >=38              -0.0012171   -0.0778531    0.0754188
15-18 months   MAL-ED          BRAZIL                         [32-38)              >=38               0.0301409   -0.0454841    0.1057659
15-18 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          INDIA                          <32                  >=38              -0.0433924   -0.0878430    0.0010582
15-18 months   MAL-ED          INDIA                          [32-38)              >=38              -0.0355209   -0.0787341    0.0076923
15-18 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          NEPAL                          <32                  >=38              -0.0098466   -0.0758226    0.0561293
15-18 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.0050106   -0.0616495    0.0516283
15-18 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          PERU                           <32                  >=38               0.0918485    0.0258165    0.1578805
15-18 months   MAL-ED          PERU                           [32-38)              >=38               0.0344240   -0.0305496    0.0993976
15-18 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1425082    0.0541005    0.2309160
15-18 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0010877   -0.0570043    0.0591796
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0216958   -0.1059570    0.0625655
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0486087   -0.1187086    0.0214912
15-18 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   PROBIT          BELARUS                        <32                  >=38               0.0309539   -0.1640760    0.2259838
15-18 months   PROBIT          BELARUS                        [32-38)              >=38               0.0353949   -0.2869192    0.3577091
15-18 months   SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed    INDIA                          <32                  >=38              -0.1070270   -0.1883008   -0.0257531
15-18 months   SAS-CompFeed    INDIA                          [32-38)              >=38              -0.1131423   -0.2072846   -0.0189999
15-18 months   SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA                          <32                  >=38               0.0104451   -0.0316091    0.0524993
15-18 months   SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0322878   -0.0179049    0.0824804
18-21 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   COHORTS         GUATEMALA                      <32                  >=38              -0.0467998   -0.0700543   -0.0235453
18-21 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0280757   -0.0576058    0.0014544
18-21 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5          MALAWI                         <32                  >=38              -0.0840285   -0.1944272    0.0263702
18-21 months   LCNI-5          MALAWI                         [32-38)              >=38              -0.0192289   -0.1161922    0.0777343
18-21 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          BANGLADESH                     <32                  >=38               0.0030251   -0.0319508    0.0380010
18-21 months   MAL-ED          BANGLADESH                     [32-38)              >=38               0.0038002   -0.0262058    0.0338063
18-21 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          BRAZIL                         <32                  >=38              -0.0290374   -0.1192131    0.0611383
18-21 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.0170178   -0.1299870    0.0959515
18-21 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          INDIA                          <32                  >=38               0.0054604   -0.0298016    0.0407225
18-21 months   MAL-ED          INDIA                          [32-38)              >=38               0.0197709   -0.0151510    0.0546927
18-21 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          NEPAL                          <32                  >=38               0.0216328   -0.0358150    0.0790807
18-21 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.0054607   -0.0534001    0.0424788
18-21 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          PERU                           <32                  >=38               0.0096687   -0.0574439    0.0767813
18-21 months   MAL-ED          PERU                           [32-38)              >=38               0.0002563   -0.0573715    0.0578841
18-21 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0445154   -0.1358970    0.0468662
18-21 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0603107   -0.0093916    0.1300130
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0301454   -0.1502838    0.0899930
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0334203   -0.0999592    0.0331186
18-21 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   PROBIT          BELARUS                        <32                  >=38               0.0067627   -0.2808842    0.2944096
18-21 months   PROBIT          BELARUS                        [32-38)              >=38               0.0653181   -0.0766591    0.2072953
21-24 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   COHORTS         GUATEMALA                      <32                  >=38               0.0053489   -0.0128120    0.0235097
21-24 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0169482   -0.0397278    0.0058314
21-24 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5          MALAWI                         <32                  >=38               0.0284826   -0.0894912    0.1464564
21-24 months   LCNI-5          MALAWI                         [32-38)              >=38               0.0616021   -0.0503583    0.1735625
21-24 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.0180541   -0.0586026    0.0224945
21-24 months   MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0341670   -0.0622696   -0.0060643
21-24 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          BRAZIL                         <32                  >=38               0.0669148    0.0175296    0.1162999
21-24 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.0250290   -0.0752185    0.0251606
21-24 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          INDIA                          <32                  >=38               0.0358724   -0.0001996    0.0719444
21-24 months   MAL-ED          INDIA                          [32-38)              >=38               0.0159583   -0.0186896    0.0506062
21-24 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          NEPAL                          <32                  >=38               0.0156138   -0.0454183    0.0766459
21-24 months   MAL-ED          NEPAL                          [32-38)              >=38               0.0313629   -0.0255767    0.0883025
21-24 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          PERU                           <32                  >=38              -0.0510762   -0.1212878    0.0191353
21-24 months   MAL-ED          PERU                           [32-38)              >=38              -0.0384916   -0.1083432    0.0313599
21-24 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1050362   -0.0929189    0.3029913
21-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0127194   -0.0754956    0.0500567
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0209645   -0.1055381    0.0636092
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0023341   -0.0593870    0.0640551
21-24 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   PROBIT          BELARUS                        <32                  >=38              -0.0226841   -1.9023838    1.8570157
21-24 months   PROBIT          BELARUS                        [32-38)              >=38              -0.0289560   -1.9606475    1.9027354


### Parameter: PAR


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA                      >=38                 NA                 0.0146279   -0.0186145    0.0478703
0-3 months     MAL-ED          BANGLADESH                     >=38                 NA                -0.0151348   -0.0586871    0.0284175
0-3 months     MAL-ED          BRAZIL                         >=38                 NA                -0.0819734   -0.1874990    0.0235521
0-3 months     MAL-ED          INDIA                          >=38                 NA                 0.0840191   -0.0154259    0.1834642
0-3 months     MAL-ED          NEPAL                          >=38                 NA                 0.0118123   -0.1405638    0.1641884
0-3 months     MAL-ED          PERU                           >=38                 NA                 0.0894231    0.0089875    0.1698586
0-3 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0184718   -0.0794891    0.0425455
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0335495   -0.1004545    0.0333555
0-3 months     PROBIT          BELARUS                        >=38                 NA                 0.0258118   -0.0120173    0.0636409
0-3 months     SAS-CompFeed    INDIA                          >=38                 NA                 0.1989727    0.0915477    0.3063977
3-6 months     COHORTS         GUATEMALA                      >=38                 NA                 0.0106478   -0.0138605    0.0351562
3-6 months     MAL-ED          BANGLADESH                     >=38                 NA                -0.0124234   -0.0456134    0.0207666
3-6 months     MAL-ED          BRAZIL                         >=38                 NA                 0.0277273   -0.0455028    0.1009574
3-6 months     MAL-ED          INDIA                          >=38                 NA                -0.0388531   -0.0949164    0.0172102
3-6 months     MAL-ED          NEPAL                          >=38                 NA                 0.0046299   -0.0915849    0.1008447
3-6 months     MAL-ED          PERU                           >=38                 NA                -0.0420758   -0.1236872    0.0395356
3-6 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0001353   -0.0350989    0.0353695
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0042941   -0.0460928    0.0375046
3-6 months     PROBIT          BELARUS                        >=38                 NA                 0.0078253   -0.0157086    0.0313591
3-6 months     SAS-CompFeed    INDIA                          >=38                 NA                 0.0464381   -0.0147981    0.1076744
6-9 months     COHORTS         GUATEMALA                      >=38                 NA                -0.0107768   -0.0303919    0.0088384
6-9 months     LCNI-5          MALAWI                         >=38                 NA                -0.0524623   -0.1227036    0.0177791
6-9 months     MAL-ED          BANGLADESH                     >=38                 NA                 0.0346710    0.0109436    0.0583984
6-9 months     MAL-ED          BRAZIL                         >=38                 NA                 0.0150023   -0.0487689    0.0787735
6-9 months     MAL-ED          INDIA                          >=38                 NA                 0.0076020   -0.0434240    0.0586280
6-9 months     MAL-ED          NEPAL                          >=38                 NA                 0.0056765   -0.0551675    0.0665205
6-9 months     MAL-ED          PERU                           >=38                 NA                -0.0187477   -0.0723064    0.0348111
6-9 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0027781   -0.0188530    0.0244093
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0037303   -0.0611777    0.0537171
6-9 months     PROBIT          BELARUS                        >=38                 NA                 0.0144265   -0.0135907    0.0424436
6-9 months     SAS-CompFeed    INDIA                          >=38                 NA                -0.0514795   -0.1515352    0.0485762
6-9 months     SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0415426   -0.0980189    0.0149337
9-12 months    COHORTS         GUATEMALA                      >=38                 NA                -0.0174386   -0.0336457   -0.0012315
9-12 months    LCNI-5          MALAWI                         >=38                 NA                 0.0176916   -0.0842858    0.1196690
9-12 months    MAL-ED          BANGLADESH                     >=38                 NA                -0.0054393   -0.0271360    0.0162575
9-12 months    MAL-ED          BRAZIL                         >=38                 NA                -0.0257854   -0.0899564    0.0383857
9-12 months    MAL-ED          INDIA                          >=38                 NA                -0.0573258   -0.0959359   -0.0187156
9-12 months    MAL-ED          NEPAL                          >=38                 NA                -0.0531289   -0.1090896    0.0028318
9-12 months    MAL-ED          PERU                           >=38                 NA                 0.0614258    0.0068596    0.1159920
9-12 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0108525   -0.0126705    0.0343754
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0277838   -0.0885103    0.0329427
9-12 months    PROBIT          BELARUS                        >=38                 NA                -0.0017301   -0.0361628    0.0327026
9-12 months    SAS-CompFeed    INDIA                          >=38                 NA                 0.0240549   -0.0493663    0.0974761
9-12 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0003053   -0.1502221    0.1496116
12-15 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0004422   -0.0159085    0.0167929
12-15 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0051473   -0.0141323    0.0244269
12-15 months   MAL-ED          BRAZIL                         >=38                 NA                -0.0195072   -0.0594728    0.0204585
12-15 months   MAL-ED          INDIA                          >=38                 NA                 0.0033474   -0.0280269    0.0347217
12-15 months   MAL-ED          NEPAL                          >=38                 NA                -0.0067585   -0.0556476    0.0421305
12-15 months   MAL-ED          PERU                           >=38                 NA                 0.0056850   -0.0312784    0.0426485
12-15 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0027774   -0.0188754    0.0244302
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0386937   -0.0003143    0.0777016
12-15 months   PROBIT          BELARUS                        >=38                 NA                 0.0274962   -0.2819677    0.3369602
12-15 months   SAS-CompFeed    INDIA                          >=38                 NA                 0.0311942   -0.0567544    0.1191427
12-15 months   SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0475939   -0.0969666    0.0017788
15-18 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0006610   -0.0170750    0.0183970
15-18 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0136282   -0.0039833    0.0312397
15-18 months   MAL-ED          BRAZIL                         >=38                 NA                 0.0114587   -0.0292155    0.0521328
15-18 months   MAL-ED          INDIA                          >=38                 NA                -0.0303581   -0.0620969    0.0013806
15-18 months   MAL-ED          NEPAL                          >=38                 NA                -0.0048485   -0.0467753    0.0370782
15-18 months   MAL-ED          PERU                           >=38                 NA                 0.0426170    0.0044901    0.0807438
15-18 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0119407   -0.0048862    0.0287676
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0213922   -0.0535201    0.0107356
15-18 months   PROBIT          BELARUS                        >=38                 NA                 0.0304077   -0.1478602    0.2086757
15-18 months   SAS-CompFeed    INDIA                          >=38                 NA                -0.1042989   -0.1805506   -0.0280471
15-18 months   SAS-FoodSuppl   INDIA                          >=38                 NA                 0.0138360   -0.0232898    0.0509619
18-21 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0285021   -0.0443512   -0.0126529
18-21 months   LCNI-5          MALAWI                         >=38                 NA                -0.0456204   -0.1146294    0.0233886
18-21 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0019411   -0.0128349    0.0167171
18-21 months   MAL-ED          BRAZIL                         >=38                 NA                -0.0134183   -0.0722924    0.0454558
18-21 months   MAL-ED          INDIA                          >=38                 NA                 0.0107386   -0.0136442    0.0351215
18-21 months   MAL-ED          NEPAL                          >=38                 NA                 0.0009398   -0.0355521    0.0374316
18-21 months   MAL-ED          PERU                           >=38                 NA                 0.0032257   -0.0329096    0.0393611
18-21 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0069982   -0.0105255    0.0245220
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0173016   -0.0519759    0.0173727
18-21 months   PROBIT          BELARUS                        >=38                 NA                 0.0135082   -0.2400211    0.2670376
21-24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0015261   -0.0136583    0.0106061
21-24 months   LCNI-5          MALAWI                         >=38                 NA                 0.0268207   -0.0491135    0.1027548
21-24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0156480   -0.0308967   -0.0003992
21-24 months   MAL-ED          BRAZIL                         >=38                 NA                 0.0054249   -0.0224463    0.0332961
21-24 months   MAL-ED          INDIA                          >=38                 NA                 0.0188398   -0.0062066    0.0438861
21-24 months   MAL-ED          NEPAL                          >=38                 NA                 0.0216236   -0.0203206    0.0635678
21-24 months   MAL-ED          PERU                           >=38                 NA                -0.0294631   -0.0721512    0.0132250
21-24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0071548   -0.0155890    0.0298986
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0024004   -0.0312463    0.0264455
21-24 months   PROBIT          BELARUS                        >=38                 NA                -0.0227476   -1.8330867    1.7875916
