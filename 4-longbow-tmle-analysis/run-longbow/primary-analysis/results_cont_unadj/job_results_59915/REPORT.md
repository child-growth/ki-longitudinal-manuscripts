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

**Outcome Variable:** y_rate_wtkg

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
0-3 months     COHORTS         GUATEMALA                      >=38          234     777
0-3 months     COHORTS         GUATEMALA                      <32           341     777
0-3 months     COHORTS         GUATEMALA                      [32-38)       202     777
0-3 months     MAL-ED          BANGLADESH                     >=38           69     151
0-3 months     MAL-ED          BANGLADESH                     <32            30     151
0-3 months     MAL-ED          BANGLADESH                     [32-38)        52     151
0-3 months     MAL-ED          BRAZIL                         >=38           30      79
0-3 months     MAL-ED          BRAZIL                         <32            18      79
0-3 months     MAL-ED          BRAZIL                         [32-38)        31      79
0-3 months     MAL-ED          INDIA                          >=38           36     159
0-3 months     MAL-ED          INDIA                          <32            53     159
0-3 months     MAL-ED          INDIA                          [32-38)        70     159
0-3 months     MAL-ED          NEPAL                          >=38           17      78
0-3 months     MAL-ED          NEPAL                          <32            14      78
0-3 months     MAL-ED          NEPAL                          [32-38)        47      78
0-3 months     MAL-ED          PERU                           >=38           27      84
0-3 months     MAL-ED          PERU                           <32            29      84
0-3 months     MAL-ED          PERU                           [32-38)        28      84
0-3 months     MAL-ED          SOUTH AFRICA                   >=38           64      89
0-3 months     MAL-ED          SOUTH AFRICA                   <32             9      89
0-3 months     MAL-ED          SOUTH AFRICA                   [32-38)        16      89
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           44      94
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      94
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        35      94
0-3 months     PROBIT          BELARUS                        >=38          681   14768
0-3 months     PROBIT          BELARUS                        <32         11831   14768
0-3 months     PROBIT          BELARUS                        [32-38)      2256   14768
0-3 months     SAS-CompFeed    INDIA                          >=38           39    1262
0-3 months     SAS-CompFeed    INDIA                          <32          1052    1262
0-3 months     SAS-CompFeed    INDIA                          [32-38)       171    1262
3-6 months     COHORTS         GUATEMALA                      >=38          233     783
3-6 months     COHORTS         GUATEMALA                      <32           349     783
3-6 months     COHORTS         GUATEMALA                      [32-38)       201     783
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
3-6 months     PROBIT          BELARUS                        >=38          594   12824
3-6 months     PROBIT          BELARUS                        <32         10277   12824
3-6 months     PROBIT          BELARUS                        [32-38)      1953   12824
3-6 months     SAS-CompFeed    INDIA                          >=38           38    1115
3-6 months     SAS-CompFeed    INDIA                          <32           931    1115
3-6 months     SAS-CompFeed    INDIA                          [32-38)       146    1115
6-9 months     COHORTS         GUATEMALA                      >=38          227     794
6-9 months     COHORTS         GUATEMALA                      <32           365     794
6-9 months     COHORTS         GUATEMALA                      [32-38)       202     794
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
6-9 months     PROBIT          BELARUS                        >=38          563   11994
6-9 months     PROBIT          BELARUS                        <32          9614   11994
6-9 months     PROBIT          BELARUS                        [32-38)      1817   11994
6-9 months     SAS-CompFeed    INDIA                          >=38           39    1135
6-9 months     SAS-CompFeed    INDIA                          <32           950    1135
6-9 months     SAS-CompFeed    INDIA                          [32-38)       146    1135
6-9 months     SAS-FoodSuppl   INDIA                          >=38           35     309
6-9 months     SAS-FoodSuppl   INDIA                          <32           210     309
6-9 months     SAS-FoodSuppl   INDIA                          [32-38)        64     309
9-12 months    COHORTS         GUATEMALA                      >=38          260     899
9-12 months    COHORTS         GUATEMALA                      <32           424     899
9-12 months    COHORTS         GUATEMALA                      [32-38)       215     899
9-12 months    LCNI-5          MALAWI                         >=38           12      45
9-12 months    LCNI-5          MALAWI                         <32            24      45
9-12 months    LCNI-5          MALAWI                         [32-38)         9      45
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
9-12 months    PROBIT          BELARUS                        >=38          584   12242
9-12 months    PROBIT          BELARUS                        <32          9801   12242
9-12 months    PROBIT          BELARUS                        [32-38)      1857   12242
9-12 months    SAS-CompFeed    INDIA                          >=38           40    1138
9-12 months    SAS-CompFeed    INDIA                          <32           950    1138
9-12 months    SAS-CompFeed    INDIA                          [32-38)       148    1138
9-12 months    SAS-FoodSuppl   INDIA                          >=38           34     298
9-12 months    SAS-FoodSuppl   INDIA                          <32           199     298
9-12 months    SAS-FoodSuppl   INDIA                          [32-38)        65     298
12-15 months   COHORTS         GUATEMALA                      >=38          252     858
12-15 months   COHORTS         GUATEMALA                      <32           396     858
12-15 months   COHORTS         GUATEMALA                      [32-38)       210     858
12-15 months   LCNI-5          MALAWI                         >=38            4      13
12-15 months   LCNI-5          MALAWI                         <32             7      13
12-15 months   LCNI-5          MALAWI                         [32-38)         2      13
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
12-15 months   PROBIT          BELARUS                        >=38           43     965
12-15 months   PROBIT          BELARUS                        <32           790     965
12-15 months   PROBIT          BELARUS                        [32-38)       132     965
12-15 months   SAS-CompFeed    INDIA                          >=38           40    1162
12-15 months   SAS-CompFeed    INDIA                          <32           973    1162
12-15 months   SAS-CompFeed    INDIA                          [32-38)       149    1162
12-15 months   SAS-FoodSuppl   INDIA                          >=38           32     300
12-15 months   SAS-FoodSuppl   INDIA                          <32           202     300
12-15 months   SAS-FoodSuppl   INDIA                          [32-38)        66     300
15-18 months   COHORTS         GUATEMALA                      >=38          227     773
15-18 months   COHORTS         GUATEMALA                      <32           353     773
15-18 months   COHORTS         GUATEMALA                      [32-38)       193     773
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
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           47      98
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            14      98
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37      98
15-18 months   PROBIT          BELARUS                        >=38            9     262
15-18 months   PROBIT          BELARUS                        <32           221     262
15-18 months   PROBIT          BELARUS                        [32-38)        32     262
15-18 months   SAS-CompFeed    INDIA                          >=38           38    1168
15-18 months   SAS-CompFeed    INDIA                          <32           986    1168
15-18 months   SAS-CompFeed    INDIA                          [32-38)       144    1168
15-18 months   SAS-FoodSuppl   INDIA                          >=38           31     290
15-18 months   SAS-FoodSuppl   INDIA                          <32           198     290
15-18 months   SAS-FoodSuppl   INDIA                          [32-38)        61     290
18-21 months   COHORTS         GUATEMALA                      >=38          226     768
18-21 months   COHORTS         GUATEMALA                      <32           356     768
18-21 months   COHORTS         GUATEMALA                      [32-38)       186     768
18-21 months   LCNI-5          MALAWI                         >=38           15      59
18-21 months   LCNI-5          MALAWI                         <32            30      59
18-21 months   LCNI-5          MALAWI                         [32-38)        14      59
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
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           44      94
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            14      94
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36      94
18-21 months   PROBIT          BELARUS                        >=38            6     207
18-21 months   PROBIT          BELARUS                        <32           177     207
18-21 months   PROBIT          BELARUS                        [32-38)        24     207
21-24 months   COHORTS         GUATEMALA                      >=38          247     846
21-24 months   COHORTS         GUATEMALA                      <32           396     846
21-24 months   COHORTS         GUATEMALA                      [32-38)       203     846
21-24 months   LCNI-5          MALAWI                         >=38           15      53
21-24 months   LCNI-5          MALAWI                         <32            27      53
21-24 months   LCNI-5          MALAWI                         [32-38)        11      53
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
21-24 months   PROBIT          BELARUS                        >=38            8     205
21-24 months   PROBIT          BELARUS                        <32           166     205
21-24 months   PROBIT          BELARUS                        [32-38)        31     205


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
![](/tmp/94e18e10-2832-4d25-89ab-afa3330216b9/330afdd0-dfaf-4509-8864-b4f792afcb3a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/94e18e10-2832-4d25-89ab-afa3330216b9/330afdd0-dfaf-4509-8864-b4f792afcb3a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/94e18e10-2832-4d25-89ab-afa3330216b9/330afdd0-dfaf-4509-8864-b4f792afcb3a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     COHORTS         GUATEMALA                      >=38                 NA                0.7524389    0.7212868   0.7835909
0-3 months     COHORTS         GUATEMALA                      <32                  NA                0.8401402    0.8166318   0.8636486
0-3 months     COHORTS         GUATEMALA                      [32-38)              NA                0.7802898    0.7447995   0.8157800
0-3 months     MAL-ED          BANGLADESH                     >=38                 NA                0.8603298    0.8157560   0.9049037
0-3 months     MAL-ED          BANGLADESH                     <32                  NA                0.9338046    0.8807909   0.9868183
0-3 months     MAL-ED          BANGLADESH                     [32-38)              NA                0.8788873    0.8288416   0.9289330
0-3 months     MAL-ED          BRAZIL                         >=38                 NA                1.0264506    0.9096696   1.1432316
0-3 months     MAL-ED          BRAZIL                         <32                  NA                1.0464863    0.9699445   1.1230281
0-3 months     MAL-ED          BRAZIL                         [32-38)              NA                1.0797069    0.9862063   1.1732075
0-3 months     MAL-ED          INDIA                          >=38                 NA                0.7461118    0.6878681   0.8043556
0-3 months     MAL-ED          INDIA                          <32                  NA                0.7599505    0.7118247   0.8080764
0-3 months     MAL-ED          INDIA                          [32-38)              NA                0.7750781    0.7353092   0.8148469
0-3 months     MAL-ED          NEPAL                          >=38                 NA                0.9617983    0.8549305   1.0686661
0-3 months     MAL-ED          NEPAL                          <32                  NA                0.8853853    0.7961840   0.9745865
0-3 months     MAL-ED          NEPAL                          [32-38)              NA                0.9434420    0.8787964   1.0080875
0-3 months     MAL-ED          PERU                           >=38                 NA                0.9356826    0.8592973   1.0120678
0-3 months     MAL-ED          PERU                           <32                  NA                0.9470468    0.8901296   1.0039639
0-3 months     MAL-ED          PERU                           [32-38)              NA                0.9991473    0.9115266   1.0867680
0-3 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                0.9808637    0.9231370   1.0385903
0-3 months     MAL-ED          SOUTH AFRICA                   <32                  NA                0.9550553    0.8205106   1.0896001
0-3 months     MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.9396671    0.8693825   1.0099517
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.8377312    0.7783402   0.8971222
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.9549746    0.8194726   1.0904767
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.8803547    0.7962714   0.9644380
0-3 months     PROBIT          BELARUS                        >=38                 NA                0.8247803    0.8001859   0.8493747
0-3 months     PROBIT          BELARUS                        <32                  NA                0.8378403    0.8273019   0.8483787
0-3 months     PROBIT          BELARUS                        [32-38)              NA                0.8267632    0.8150376   0.8384887
0-3 months     SAS-CompFeed    INDIA                          >=38                 NA                0.6767348    0.6084487   0.7450209
0-3 months     SAS-CompFeed    INDIA                          <32                  NA                0.7993236    0.7813418   0.8173055
0-3 months     SAS-CompFeed    INDIA                          [32-38)              NA                0.7636888    0.7176879   0.8096898
3-6 months     COHORTS         GUATEMALA                      >=38                 NA                0.4583662    0.4363477   0.4803846
3-6 months     COHORTS         GUATEMALA                      <32                  NA                0.4625546    0.4466484   0.4784608
3-6 months     COHORTS         GUATEMALA                      [32-38)              NA                0.4458557    0.4255085   0.4662029
3-6 months     MAL-ED          BANGLADESH                     >=38                 NA                0.4608073    0.4324506   0.4891640
3-6 months     MAL-ED          BANGLADESH                     <32                  NA                0.4965268    0.4540916   0.5389620
3-6 months     MAL-ED          BANGLADESH                     [32-38)              NA                0.4568159    0.4188847   0.4947471
3-6 months     MAL-ED          BRAZIL                         >=38                 NA                0.5954922    0.5140837   0.6769008
3-6 months     MAL-ED          BRAZIL                         <32                  NA                0.6020896    0.5052341   0.6989452
3-6 months     MAL-ED          BRAZIL                         [32-38)              NA                0.5437046    0.4777990   0.6096103
3-6 months     MAL-ED          INDIA                          >=38                 NA                0.4668659    0.4312139   0.5025179
3-6 months     MAL-ED          INDIA                          <32                  NA                0.4133944    0.3740677   0.4527211
3-6 months     MAL-ED          INDIA                          [32-38)              NA                0.4456767    0.4164618   0.4748916
3-6 months     MAL-ED          NEPAL                          >=38                 NA                0.5209690    0.4554197   0.5865182
3-6 months     MAL-ED          NEPAL                          <32                  NA                0.4680272    0.3897087   0.5463457
3-6 months     MAL-ED          NEPAL                          [32-38)              NA                0.5047229    0.4722426   0.5372033
3-6 months     MAL-ED          PERU                           >=38                 NA                0.5310167    0.4540591   0.6079742
3-6 months     MAL-ED          PERU                           <32                  NA                0.4649796    0.4199513   0.5100079
3-6 months     MAL-ED          PERU                           [32-38)              NA                0.5114997    0.4512038   0.5717955
3-6 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                0.4469201    0.4017536   0.4920865
3-6 months     MAL-ED          SOUTH AFRICA                   <32                  NA                0.4196559    0.2494437   0.5898682
3-6 months     MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.4424206    0.3493899   0.5354512
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.4716805    0.4035074   0.5398536
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.4949172    0.3762989   0.6135356
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.4318431    0.3716451   0.4920411
3-6 months     PROBIT          BELARUS                        >=38                 NA                0.6596672    0.6381100   0.6812245
3-6 months     PROBIT          BELARUS                        <32                  NA                0.6667159    0.6589393   0.6744926
3-6 months     PROBIT          BELARUS                        [32-38)              NA                0.6624614    0.6487427   0.6761801
3-6 months     SAS-CompFeed    INDIA                          >=38                 NA                0.4096365    0.3656956   0.4535774
3-6 months     SAS-CompFeed    INDIA                          <32                  NA                0.4519764    0.4372111   0.4667417
3-6 months     SAS-CompFeed    INDIA                          [32-38)              NA                0.4512429    0.4254229   0.4770629
6-9 months     COHORTS         GUATEMALA                      >=38                 NA                0.2225048    0.2045407   0.2404689
6-9 months     COHORTS         GUATEMALA                      <32                  NA                0.2085479    0.1932629   0.2238330
6-9 months     COHORTS         GUATEMALA                      [32-38)              NA                0.2165611    0.1983508   0.2347714
6-9 months     LCNI-5          MALAWI                         >=38                 NA                0.2705770    0.2207508   0.3204031
6-9 months     LCNI-5          MALAWI                         <32                  NA                0.3000015    0.2576467   0.3423563
6-9 months     LCNI-5          MALAWI                         [32-38)              NA                0.2095239    0.1277849   0.2912628
6-9 months     MAL-ED          BANGLADESH                     >=38                 NA                0.2295035    0.2099970   0.2490100
6-9 months     MAL-ED          BANGLADESH                     <32                  NA                0.2342105    0.1930500   0.2753711
6-9 months     MAL-ED          BANGLADESH                     [32-38)              NA                0.2450439    0.2134022   0.2766856
6-9 months     MAL-ED          BRAZIL                         >=38                 NA                0.4337795    0.3627312   0.5048277
6-9 months     MAL-ED          BRAZIL                         <32                  NA                0.3513360    0.2607879   0.4418840
6-9 months     MAL-ED          BRAZIL                         [32-38)              NA                0.3993558    0.3399742   0.4587374
6-9 months     MAL-ED          INDIA                          >=38                 NA                0.2370392    0.1986896   0.2753888
6-9 months     MAL-ED          INDIA                          <32                  NA                0.2219318    0.1849478   0.2589159
6-9 months     MAL-ED          INDIA                          [32-38)              NA                0.2395955    0.2193302   0.2598608
6-9 months     MAL-ED          NEPAL                          >=38                 NA                0.2559748    0.1973926   0.3145569
6-9 months     MAL-ED          NEPAL                          <32                  NA                0.2911655    0.2082564   0.3740746
6-9 months     MAL-ED          NEPAL                          [32-38)              NA                0.2492145    0.2195791   0.2788499
6-9 months     MAL-ED          PERU                           >=38                 NA                0.2542624    0.1923069   0.3162179
6-9 months     MAL-ED          PERU                           <32                  NA                0.2588988    0.2188580   0.2989397
6-9 months     MAL-ED          PERU                           [32-38)              NA                0.2718637    0.2185931   0.3251342
6-9 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                0.2484049    0.2076383   0.2891715
6-9 months     MAL-ED          SOUTH AFRICA                   <32                  NA                0.2801037    0.1710843   0.3891231
6-9 months     MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.2643039    0.1726743   0.3559335
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.2513860    0.1781751   0.3245969
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1636467    0.0663221   0.2609713
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.2707139    0.2091523   0.3322755
6-9 months     PROBIT          BELARUS                        >=38                 NA                0.4770811    0.4560581   0.4981042
6-9 months     PROBIT          BELARUS                        <32                  NA                0.4743260    0.4651034   0.4835486
6-9 months     PROBIT          BELARUS                        [32-38)              NA                0.4706069    0.4548426   0.4863712
6-9 months     SAS-CompFeed    INDIA                          >=38                 NA                0.1865985    0.0963532   0.2768439
6-9 months     SAS-CompFeed    INDIA                          <32                  NA                0.2098741    0.1937880   0.2259602
6-9 months     SAS-CompFeed    INDIA                          [32-38)              NA                0.2161614    0.1963742   0.2359486
6-9 months     SAS-FoodSuppl   INDIA                          >=38                 NA                0.2349853    0.1775129   0.2924578
6-9 months     SAS-FoodSuppl   INDIA                          <32                  NA                0.1873946    0.1689194   0.2058698
6-9 months     SAS-FoodSuppl   INDIA                          [32-38)              NA                0.2136279    0.1748453   0.2524105
9-12 months    COHORTS         GUATEMALA                      >=38                 NA                0.1737318    0.1579297   0.1895339
9-12 months    COHORTS         GUATEMALA                      <32                  NA                0.1492288    0.1366773   0.1617803
9-12 months    COHORTS         GUATEMALA                      [32-38)              NA                0.1515862    0.1330552   0.1701172
9-12 months    LCNI-5          MALAWI                         >=38                 NA                0.2336709    0.2022926   0.2650493
9-12 months    LCNI-5          MALAWI                         <32                  NA                0.1414750    0.0732717   0.2096783
9-12 months    LCNI-5          MALAWI                         [32-38)              NA                0.2485001    0.1515497   0.3454505
9-12 months    MAL-ED          BANGLADESH                     >=38                 NA                0.1606463    0.1396359   0.1816566
9-12 months    MAL-ED          BANGLADESH                     <32                  NA                0.1561983    0.1180635   0.1943331
9-12 months    MAL-ED          BANGLADESH                     [32-38)              NA                0.1850855    0.1577899   0.2123811
9-12 months    MAL-ED          BRAZIL                         >=38                 NA                0.3391691    0.2582954   0.4200428
9-12 months    MAL-ED          BRAZIL                         <32                  NA                0.4319406    0.3047106   0.5591706
9-12 months    MAL-ED          BRAZIL                         [32-38)              NA                0.2509788    0.1735961   0.3283615
9-12 months    MAL-ED          INDIA                          >=38                 NA                0.2139640    0.1803703   0.2475576
9-12 months    MAL-ED          INDIA                          <32                  NA                0.1761080    0.1453794   0.2068367
9-12 months    MAL-ED          INDIA                          [32-38)              NA                0.1587536    0.1335481   0.1839591
9-12 months    MAL-ED          NEPAL                          >=38                 NA                0.1746271    0.1302282   0.2190260
9-12 months    MAL-ED          NEPAL                          <32                  NA                0.1260011    0.0230728   0.2289294
9-12 months    MAL-ED          NEPAL                          [32-38)              NA                0.2065985    0.1817708   0.2314262
9-12 months    MAL-ED          PERU                           >=38                 NA                0.2374494    0.1845504   0.2903484
9-12 months    MAL-ED          PERU                           <32                  NA                0.2052409    0.1617411   0.2487407
9-12 months    MAL-ED          PERU                           [32-38)              NA                0.2105216    0.1678336   0.2532096
9-12 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                0.1980120    0.1593030   0.2367210
9-12 months    MAL-ED          SOUTH AFRICA                   <32                  NA                0.2023962    0.0364316   0.3683609
9-12 months    MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.2048793    0.1002975   0.3094610
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.1511590    0.1124105   0.1899076
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1090737    0.0398680   0.1782793
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1280759    0.0757648   0.1803871
9-12 months    PROBIT          BELARUS                        >=38                 NA                0.3766500    0.3523945   0.4009054
9-12 months    PROBIT          BELARUS                        <32                  NA                0.3673971    0.3525302   0.3822639
9-12 months    PROBIT          BELARUS                        [32-38)              NA                0.3593980    0.3439368   0.3748591
9-12 months    SAS-CompFeed    INDIA                          >=38                 NA                0.1615740    0.0904075   0.2327406
9-12 months    SAS-CompFeed    INDIA                          <32                  NA                0.1982612    0.1902167   0.2063057
9-12 months    SAS-CompFeed    INDIA                          [32-38)              NA                0.1774884    0.1378241   0.2171527
9-12 months    SAS-FoodSuppl   INDIA                          >=38                 NA                0.1963848    0.1455207   0.2472488
9-12 months    SAS-FoodSuppl   INDIA                          <32                  NA                0.1234195    0.0992035   0.1476356
9-12 months    SAS-FoodSuppl   INDIA                          [32-38)              NA                0.1660691    0.1305769   0.2015613
12-15 months   COHORTS         GUATEMALA                      >=38                 NA                0.1568424    0.1396634   0.1740213
12-15 months   COHORTS         GUATEMALA                      <32                  NA                0.1506738    0.1366152   0.1647323
12-15 months   COHORTS         GUATEMALA                      [32-38)              NA                0.1411129    0.1230584   0.1591675
12-15 months   MAL-ED          BANGLADESH                     >=38                 NA                0.1403029    0.1147580   0.1658479
12-15 months   MAL-ED          BANGLADESH                     <32                  NA                0.1254164    0.0814371   0.1693957
12-15 months   MAL-ED          BANGLADESH                     [32-38)              NA                0.1507994    0.1191867   0.1824122
12-15 months   MAL-ED          BRAZIL                         >=38                 NA                0.1794265    0.1164830   0.2423700
12-15 months   MAL-ED          BRAZIL                         <32                  NA                0.1887703    0.1042331   0.2733074
12-15 months   MAL-ED          BRAZIL                         [32-38)              NA                0.2244852    0.1656092   0.2833612
12-15 months   MAL-ED          INDIA                          >=38                 NA                0.2078098    0.1691859   0.2464338
12-15 months   MAL-ED          INDIA                          <32                  NA                0.1636766    0.1325594   0.1947938
12-15 months   MAL-ED          INDIA                          [32-38)              NA                0.1812861    0.1496114   0.2129609
12-15 months   MAL-ED          NEPAL                          >=38                 NA                0.1449413    0.1045334   0.1853492
12-15 months   MAL-ED          NEPAL                          <32                  NA                0.1614893    0.0639571   0.2590215
12-15 months   MAL-ED          NEPAL                          [32-38)              NA                0.0917672    0.0587298   0.1248047
12-15 months   MAL-ED          PERU                           >=38                 NA                0.1335082    0.0846154   0.1824010
12-15 months   MAL-ED          PERU                           <32                  NA                0.1791586    0.1356470   0.2226702
12-15 months   MAL-ED          PERU                           [32-38)              NA                0.1234665    0.0696736   0.1772593
12-15 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                0.1996143    0.1473285   0.2519002
12-15 months   MAL-ED          SOUTH AFRICA                   <32                  NA                0.3423189    0.1877118   0.4969260
12-15 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.2261022    0.1250355   0.3271689
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.2074859    0.1569428   0.2580291
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1777497    0.0809348   0.2745647
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1177335    0.0524647   0.1830022
12-15 months   PROBIT          BELARUS                        >=38                 NA                0.2708368    0.1141077   0.4275659
12-15 months   PROBIT          BELARUS                        <32                  NA                0.2195748    0.1565264   0.2826231
12-15 months   PROBIT          BELARUS                        [32-38)              NA                0.2154752    0.0402969   0.3906534
12-15 months   SAS-CompFeed    INDIA                          >=38                 NA                0.2385759    0.1763551   0.3007968
12-15 months   SAS-CompFeed    INDIA                          <32                  NA                0.1822533    0.1717335   0.1927730
12-15 months   SAS-CompFeed    INDIA                          [32-38)              NA                0.1887076    0.1595013   0.2179139
12-15 months   SAS-FoodSuppl   INDIA                          >=38                 NA                0.1731038    0.1339336   0.2122740
12-15 months   SAS-FoodSuppl   INDIA                          <32                  NA                0.1812459    0.1611273   0.2013646
12-15 months   SAS-FoodSuppl   INDIA                          [32-38)              NA                0.1577530    0.1228657   0.1926403
15-18 months   COHORTS         GUATEMALA                      >=38                 NA                0.1668010    0.1467105   0.1868916
15-18 months   COHORTS         GUATEMALA                      <32                  NA                0.1304464    0.1134005   0.1474923
15-18 months   COHORTS         GUATEMALA                      [32-38)              NA                0.1294075    0.1081834   0.1506317
15-18 months   MAL-ED          BANGLADESH                     >=38                 NA                0.1360798    0.1117554   0.1604043
15-18 months   MAL-ED          BANGLADESH                     <32                  NA                0.1260728    0.0819614   0.1701842
15-18 months   MAL-ED          BANGLADESH                     [32-38)              NA                0.1579438    0.1249947   0.1908929
15-18 months   MAL-ED          BRAZIL                         >=38                 NA                0.1637056    0.0868040   0.2406072
15-18 months   MAL-ED          BRAZIL                         <32                  NA                0.2295796    0.1408742   0.3182850
15-18 months   MAL-ED          BRAZIL                         [32-38)              NA                0.2558659    0.1896192   0.3221125
15-18 months   MAL-ED          INDIA                          >=38                 NA                0.1297166    0.1014556   0.1579777
15-18 months   MAL-ED          INDIA                          <32                  NA                0.1627883    0.1334093   0.1921674
15-18 months   MAL-ED          INDIA                          [32-38)              NA                0.1648992    0.1345018   0.1952965
15-18 months   MAL-ED          NEPAL                          >=38                 NA                0.1464924    0.0861888   0.2067960
15-18 months   MAL-ED          NEPAL                          <32                  NA                0.1854244    0.1249585   0.2458903
15-18 months   MAL-ED          NEPAL                          [32-38)              NA                0.1638503    0.1374130   0.1902875
15-18 months   MAL-ED          PERU                           >=38                 NA                0.1451676    0.0894941   0.2008412
15-18 months   MAL-ED          PERU                           <32                  NA                0.1395637    0.0771153   0.2020122
15-18 months   MAL-ED          PERU                           [32-38)              NA                0.1683184    0.1302048   0.2064320
15-18 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                0.2105611    0.1517265   0.2693957
15-18 months   MAL-ED          SOUTH AFRICA                   <32                  NA                0.3279582    0.2333677   0.4225486
15-18 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.2505200    0.1574704   0.3435695
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.1286511    0.0776327   0.1796696
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1660277    0.0826869   0.2493686
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1515571    0.0897285   0.2133858
15-18 months   PROBIT          BELARUS                        >=38                 NA                0.1155309   -0.0280589   0.2591206
15-18 months   PROBIT          BELARUS                        <32                  NA                0.2370689    0.1630291   0.3111088
15-18 months   PROBIT          BELARUS                        [32-38)              NA                0.1824111    0.1457463   0.2190759
15-18 months   SAS-CompFeed    INDIA                          >=38                 NA                0.2133035    0.1623736   0.2642334
15-18 months   SAS-CompFeed    INDIA                          <32                  NA                0.1735295    0.1583855   0.1886735
15-18 months   SAS-CompFeed    INDIA                          [32-38)              NA                0.1986516    0.1683962   0.2289069
15-18 months   SAS-FoodSuppl   INDIA                          >=38                 NA                0.1601098    0.1228622   0.1973574
15-18 months   SAS-FoodSuppl   INDIA                          <32                  NA                0.1645971    0.1446293   0.1845648
15-18 months   SAS-FoodSuppl   INDIA                          [32-38)              NA                0.1682441    0.1356885   0.2007997
18-21 months   COHORTS         GUATEMALA                      >=38                 NA                0.1901057    0.1709756   0.2092359
18-21 months   COHORTS         GUATEMALA                      <32                  NA                0.1515309    0.1359776   0.1670843
18-21 months   COHORTS         GUATEMALA                      [32-38)              NA                0.1541699    0.1314007   0.1769390
18-21 months   LCNI-5          MALAWI                         >=38                 NA                0.2015064    0.1306209   0.2723919
18-21 months   LCNI-5          MALAWI                         <32                  NA                0.1594402    0.0615150   0.2573653
18-21 months   LCNI-5          MALAWI                         [32-38)              NA                0.1372781    0.0485780   0.2259783
18-21 months   MAL-ED          BANGLADESH                     >=38                 NA                0.1608294    0.1318955   0.1897634
18-21 months   MAL-ED          BANGLADESH                     <32                  NA                0.1226007    0.0777296   0.1674718
18-21 months   MAL-ED          BANGLADESH                     [32-38)              NA                0.1144605    0.0816643   0.1472568
18-21 months   MAL-ED          BRAZIL                         >=38                 NA                0.2040412    0.1415690   0.2665133
18-21 months   MAL-ED          BRAZIL                         <32                  NA                0.1623121    0.1168382   0.2077860
18-21 months   MAL-ED          BRAZIL                         [32-38)              NA                0.1752696    0.0999336   0.2506057
18-21 months   MAL-ED          INDIA                          >=38                 NA                0.1840651    0.1556871   0.2124432
18-21 months   MAL-ED          INDIA                          <32                  NA                0.1806998    0.1474784   0.2139213
18-21 months   MAL-ED          INDIA                          [32-38)              NA                0.1762485    0.1482818   0.2042151
18-21 months   MAL-ED          NEPAL                          >=38                 NA                0.1832125    0.1346373   0.2317877
18-21 months   MAL-ED          NEPAL                          <32                  NA                0.2118013    0.1444131   0.2791895
18-21 months   MAL-ED          NEPAL                          [32-38)              NA                0.1670210    0.1385133   0.1955286
18-21 months   MAL-ED          PERU                           >=38                 NA                0.1787064    0.1193819   0.2380308
18-21 months   MAL-ED          PERU                           <32                  NA                0.1526733    0.1012341   0.2041125
18-21 months   MAL-ED          PERU                           [32-38)              NA                0.1256757    0.0656537   0.1856977
18-21 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                0.1606211    0.1045368   0.2167055
18-21 months   MAL-ED          SOUTH AFRICA                   <32                  NA                0.2423864    0.1680511   0.3167216
18-21 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.1937025    0.0485500   0.3388549
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.2045508    0.1491514   0.2599502
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1339409    0.0411931   0.2266886
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1191441    0.0547998   0.1834884
18-21 months   PROBIT          BELARUS                        >=38                 NA                0.1521327   -0.0337959   0.3380613
18-21 months   PROBIT          BELARUS                        <32                  NA                0.1678687    0.0073711   0.3283662
18-21 months   PROBIT          BELARUS                        [32-38)              NA                0.2230056   -0.4855090   0.9315203
21-24 months   COHORTS         GUATEMALA                      >=38                 NA                0.1658042    0.1470990   0.1845094
21-24 months   COHORTS         GUATEMALA                      <32                  NA                0.1992663    0.1846947   0.2138379
21-24 months   COHORTS         GUATEMALA                      [32-38)              NA                0.1825007    0.1622343   0.2027670
21-24 months   LCNI-5          MALAWI                         >=38                 NA                0.1766502    0.0534233   0.2998771
21-24 months   LCNI-5          MALAWI                         <32                  NA                0.0981511    0.0093182   0.1869839
21-24 months   LCNI-5          MALAWI                         [32-38)              NA                0.1901823    0.0630439   0.3173207
21-24 months   MAL-ED          BANGLADESH                     >=38                 NA                0.1605953    0.1311070   0.1900835
21-24 months   MAL-ED          BANGLADESH                     <32                  NA                0.1426316    0.1056965   0.1795667
21-24 months   MAL-ED          BANGLADESH                     [32-38)              NA                0.1483005    0.1231560   0.1734449
21-24 months   MAL-ED          BRAZIL                         >=38                 NA                0.1673878    0.0905274   0.2442483
21-24 months   MAL-ED          BRAZIL                         <32                  NA                0.1599279    0.1015319   0.2183240
21-24 months   MAL-ED          BRAZIL                         [32-38)              NA                0.1210768    0.0697984   0.1723552
21-24 months   MAL-ED          INDIA                          >=38                 NA                0.1756173    0.1447413   0.2064932
21-24 months   MAL-ED          INDIA                          <32                  NA                0.1558497    0.1269415   0.1847579
21-24 months   MAL-ED          INDIA                          [32-38)              NA                0.1681862    0.1451465   0.1912258
21-24 months   MAL-ED          NEPAL                          >=38                 NA                0.2015591    0.1378140   0.2653041
21-24 months   MAL-ED          NEPAL                          <32                  NA                0.1927681    0.1200476   0.2654886
21-24 months   MAL-ED          NEPAL                          [32-38)              NA                0.1818713    0.1309309   0.2328117
21-24 months   MAL-ED          PERU                           >=38                 NA                0.1980027    0.1495936   0.2464117
21-24 months   MAL-ED          PERU                           <32                  NA                0.1481789    0.0978433   0.1985144
21-24 months   MAL-ED          PERU                           [32-38)              NA                0.2147859    0.1374046   0.2921672
21-24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                0.2193163    0.1755606   0.2630719
21-24 months   MAL-ED          SOUTH AFRICA                   <32                  NA                0.1550059    0.1141767   0.1958351
21-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.1494783    0.0749127   0.2240438
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.1710400    0.1079926   0.2340875
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.0675482   -0.0496797   0.1847760
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1102601    0.0440324   0.1764877
21-24 months   PROBIT          BELARUS                        >=38                 NA                0.1958065   -0.8415511   1.2331642
21-24 months   PROBIT          BELARUS                        <32                  NA                0.1637931    0.0816589   0.2459273
21-24 months   PROBIT          BELARUS                        [32-38)              NA                0.1920891   -0.0147880   0.3989662


### Parameter: E(Y)


agecat         studyid         country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     COHORTS         GUATEMALA                      NA                   NA                0.7981686    0.7812292   0.8151080
0-3 months     MAL-ED          BANGLADESH                     NA                   NA                0.8813181    0.8523002   0.9103361
0-3 months     MAL-ED          BRAZIL                         NA                   NA                1.0519137    0.9915451   1.1122824
0-3 months     MAL-ED          INDIA                          NA                   NA                0.7634772    0.7362560   0.7906983
0-3 months     MAL-ED          NEPAL                          NA                   NA                0.9370223    0.8885664   0.9854781
0-3 months     MAL-ED          PERU                           NA                   NA                0.9607608    0.9174356   1.0040861
0-3 months     MAL-ED          SOUTH AFRICA                   NA                   NA                0.9708477    0.9252425   1.0164529
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8723107    0.8244598   0.9201616
0-3 months     PROBIT          BELARUS                        NA                   NA                0.8355459    0.8249769   0.8461148
0-3 months     SAS-CompFeed    INDIA                          NA                   NA                0.7907067    0.7702767   0.8111368
3-6 months     COHORTS         GUATEMALA                      NA                   NA                0.4570216    0.4460350   0.4680081
3-6 months     MAL-ED          BANGLADESH                     NA                   NA                0.4666993    0.4463537   0.4870449
3-6 months     MAL-ED          BRAZIL                         NA                   NA                0.5766737    0.5303441   0.6230033
3-6 months     MAL-ED          INDIA                          NA                   NA                0.4393676    0.4189812   0.4597541
3-6 months     MAL-ED          NEPAL                          NA                   NA                0.5012513    0.4728207   0.5296820
3-6 months     MAL-ED          PERU                           NA                   NA                0.5021551    0.4660009   0.5383093
3-6 months     MAL-ED          SOUTH AFRICA                   NA                   NA                0.4433239    0.4028262   0.4838216
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4604262    0.4167857   0.5040667
3-6 months     PROBIT          BELARUS                        NA                   NA                0.6657415    0.6578412   0.6736419
3-6 months     SAS-CompFeed    INDIA                          NA                   NA                0.4504374    0.4371549   0.4637198
6-9 months     COHORTS         GUATEMALA                      NA                   NA                0.2145767    0.2047084   0.2244451
6-9 months     LCNI-5          MALAWI                         NA                   NA                0.2735849    0.2414957   0.3056741
6-9 months     MAL-ED          BANGLADESH                     NA                   NA                0.2357500    0.2194193   0.2520807
6-9 months     MAL-ED          BRAZIL                         NA                   NA                0.4014869    0.3597213   0.4432525
6-9 months     MAL-ED          INDIA                          NA                   NA                0.2331610    0.2156968   0.2506252
6-9 months     MAL-ED          NEPAL                          NA                   NA                0.2586687    0.2316430   0.2856945
6-9 months     MAL-ED          PERU                           NA                   NA                0.2618558    0.2317502   0.2919613
6-9 months     MAL-ED          SOUTH AFRICA                   NA                   NA                0.2540737    0.2186999   0.2894474
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2447921    0.1997413   0.2898428
6-9 months     PROBIT          BELARUS                        NA                   NA                0.4738919    0.4649168   0.4828670
6-9 months     SAS-CompFeed    INDIA                          NA                   NA                0.2098831    0.1951058   0.2246604
6-9 months     SAS-FoodSuppl   INDIA                          NA                   NA                0.1982186    0.1818458   0.2145914
9-12 months    COHORTS         GUATEMALA                      NA                   NA                0.1568791    0.1481574   0.1656008
9-12 months    LCNI-5          MALAWI                         NA                   NA                0.1874656    0.1429417   0.2319895
9-12 months    MAL-ED          BANGLADESH                     NA                   NA                0.1678849    0.1523357   0.1834342
9-12 months    MAL-ED          BRAZIL                         NA                   NA                0.3257006    0.2714459   0.3799553
9-12 months    MAL-ED          INDIA                          NA                   NA                0.1769297    0.1597056   0.1941539
9-12 months    MAL-ED          NEPAL                          NA                   NA                0.1845408    0.1572083   0.2118732
9-12 months    MAL-ED          PERU                           NA                   NA                0.2175569    0.1905725   0.2445413
9-12 months    MAL-ED          SOUTH AFRICA                   NA                   NA                0.1996036    0.1627703   0.2364369
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1362526    0.1074068   0.1650985
9-12 months    PROBIT          BELARUS                        NA                   NA                0.3666251    0.3519773   0.3812729
9-12 months    SAS-CompFeed    INDIA                          NA                   NA                0.1942701    0.1877716   0.2007686
9-12 months    SAS-FoodSuppl   INDIA                          NA                   NA                0.1410472    0.1219662   0.1601282
12-15 months   COHORTS         GUATEMALA                      NA                   NA                0.1501455    0.1408055   0.1594854
12-15 months   MAL-ED          BANGLADESH                     NA                   NA                0.1409754    0.1227577   0.1591931
12-15 months   MAL-ED          BRAZIL                         NA                   NA                0.1992367    0.1605457   0.2379277
12-15 months   MAL-ED          INDIA                          NA                   NA                0.1815324    0.1618745   0.2011903
12-15 months   MAL-ED          NEPAL                          NA                   NA                0.1164481    0.0872881   0.1456081
12-15 months   MAL-ED          PERU                           NA                   NA                0.1445225    0.1156255   0.1734195
12-15 months   MAL-ED          SOUTH AFRICA                   NA                   NA                0.2148528    0.1696351   0.2600706
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1695773    0.1314588   0.2076959
12-15 months   PROBIT          BELARUS                        NA                   NA                0.2212982    0.1477335   0.2948630
12-15 months   SAS-CompFeed    INDIA                          NA                   NA                0.1850197    0.1777323   0.1923071
12-15 months   SAS-FoodSuppl   INDIA                          NA                   NA                0.1752090    0.1590517   0.1913663
15-18 months   COHORTS         GUATEMALA                      NA                   NA                0.1408629    0.1296882   0.1520377
15-18 months   MAL-ED          BANGLADESH                     NA                   NA                0.1419478    0.1236639   0.1602318
15-18 months   MAL-ED          BRAZIL                         NA                   NA                0.2150113    0.1700612   0.2599614
15-18 months   MAL-ED          INDIA                          NA                   NA                0.1565038    0.1384785   0.1745291
15-18 months   MAL-ED          NEPAL                          NA                   NA                0.1642160    0.1405776   0.1878544
15-18 months   MAL-ED          PERU                           NA                   NA                0.1510897    0.1203542   0.1818252
15-18 months   MAL-ED          SOUTH AFRICA                   NA                   NA                0.2277508    0.1801980   0.2753036
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1426388    0.1066757   0.1786020
15-18 months   PROBIT          BELARUS                        NA                   NA                0.2262182    0.1619666   0.2904698
15-18 months   SAS-CompFeed    INDIA                          NA                   NA                0.1779207    0.1649792   0.1908623
15-18 months   SAS-FoodSuppl   INDIA                          NA                   NA                0.1648845    0.1491151   0.1806540
18-21 months   COHORTS         GUATEMALA                      NA                   NA                0.1635215    0.1527716   0.1742713
18-21 months   LCNI-5          MALAWI                         NA                   NA                0.1648762    0.1075820   0.2221704
18-21 months   MAL-ED          BANGLADESH                     NA                   NA                0.1368851    0.1170300   0.1567402
18-21 months   MAL-ED          BRAZIL                         NA                   NA                0.1830766    0.1437984   0.2223548
18-21 months   MAL-ED          INDIA                          NA                   NA                0.1794249    0.1616011   0.1972487
18-21 months   MAL-ED          NEPAL                          NA                   NA                0.1791615    0.1551321   0.2031909
18-21 months   MAL-ED          PERU                           NA                   NA                0.1523476    0.1189567   0.1857385
18-21 months   MAL-ED          SOUTH AFRICA                   NA                   NA                0.1742237    0.1248586   0.2235888
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1613255    0.1220903   0.2005607
18-21 months   PROBIT          BELARUS                        NA                   NA                0.1738052   -0.0004871   0.3480975
21-24 months   COHORTS         GUATEMALA                      NA                   NA                0.1854737    0.1754276   0.1955197
21-24 months   LCNI-5          MALAWI                         NA                   NA                0.1394686    0.0754909   0.2034463
21-24 months   MAL-ED          BANGLADESH                     NA                   NA                0.1527022    0.1351256   0.1702789
21-24 months   MAL-ED          BRAZIL                         NA                   NA                0.1475154    0.1093518   0.1856790
21-24 months   MAL-ED          INDIA                          NA                   NA                0.1658488    0.1501840   0.1815136
21-24 months   MAL-ED          NEPAL                          NA                   NA                0.1881769    0.1521138   0.2242400
21-24 months   MAL-ED          PERU                           NA                   NA                0.1871341    0.1519649   0.2223032
21-24 months   MAL-ED          SOUTH AFRICA                   NA                   NA                0.2009804    0.1655657   0.2363951
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1320769    0.0886257   0.1755282
21-24 months   PROBIT          BELARUS                        NA                   NA                0.1693213    0.0861477   0.2524949


### Parameter: ATE


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     COHORTS         GUATEMALA                      <32                  >=38               0.0877013    0.0486745    0.1267281
0-3 months     COHORTS         GUATEMALA                      [32-38)              >=38               0.0278509   -0.0193721    0.0750739
0-3 months     MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          BANGLADESH                     <32                  >=38               0.0734748    0.0042124    0.1427372
0-3 months     MAL-ED          BANGLADESH                     [32-38)              >=38               0.0185574   -0.0484605    0.0855754
0-3 months     MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          BRAZIL                         <32                  >=38               0.0200357   -0.1195940    0.1596653
0-3 months     MAL-ED          BRAZIL                         [32-38)              >=38               0.0532563   -0.0963437    0.2028563
0-3 months     MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          INDIA                          <32                  >=38               0.0138387   -0.0617155    0.0893928
0-3 months     MAL-ED          INDIA                          [32-38)              >=38               0.0289662   -0.0415597    0.0994921
0-3 months     MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          NEPAL                          <32                  >=38              -0.0764130   -0.2156164    0.0627904
0-3 months     MAL-ED          NEPAL                          [32-38)              >=38              -0.0183563   -0.1432554    0.1065427
0-3 months     MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          PERU                           <32                  >=38               0.0113642   -0.0838947    0.1066231
0-3 months     MAL-ED          PERU                           [32-38)              >=38               0.0634647   -0.0527768    0.1797062
0-3 months     MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0258083   -0.1722141    0.1205975
0-3 months     MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0411965   -0.1321487    0.0497556
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.1172435   -0.0307028    0.2651897
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0426235   -0.0603197    0.1455667
0-3 months     PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     PROBIT          BELARUS                        <32                  >=38               0.0130600   -0.0063356    0.0324556
0-3 months     PROBIT          BELARUS                        [32-38)              >=38               0.0019829   -0.0178209    0.0217867
0-3 months     SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed    INDIA                          <32                  >=38               0.1225889    0.0486516    0.1965261
0-3 months     SAS-CompFeed    INDIA                          [32-38)              >=38               0.0869540   -0.0075226    0.1814307
3-6 months     COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     COHORTS         GUATEMALA                      <32                  >=38               0.0041884   -0.0229744    0.0313513
3-6 months     COHORTS         GUATEMALA                      [32-38)              >=38              -0.0125105   -0.0424908    0.0174699
3-6 months     MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          BANGLADESH                     <32                  >=38               0.0357195   -0.0153182    0.0867572
3-6 months     MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0039914   -0.0513504    0.0433676
3-6 months     MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          BRAZIL                         <32                  >=38               0.0065974   -0.1199267    0.1331215
3-6 months     MAL-ED          BRAZIL                         [32-38)              >=38              -0.0517876   -0.1565297    0.0529545
3-6 months     MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          INDIA                          <32                  >=38              -0.0534715   -0.1065530   -0.0003899
3-6 months     MAL-ED          INDIA                          [32-38)              >=38              -0.0211892   -0.0672823    0.0249039
3-6 months     MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          NEPAL                          <32                  >=38              -0.0529418   -0.1550716    0.0491880
3-6 months     MAL-ED          NEPAL                          [32-38)              >=38              -0.0162461   -0.0894012    0.0569091
3-6 months     MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          PERU                           <32                  >=38              -0.0660370   -0.1551999    0.0231258
3-6 months     MAL-ED          PERU                           [32-38)              >=38              -0.0195170   -0.1172822    0.0782483
3-6 months     MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0272641   -0.2033670    0.1488388
3-6 months     MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0044995   -0.1079147    0.0989157
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0232367   -0.1135766    0.1600500
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0398374   -0.1307845    0.0511097
3-6 months     PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     PROBIT          BELARUS                        <32                  >=38               0.0070487   -0.0138084    0.0279059
3-6 months     PROBIT          BELARUS                        [32-38)              >=38               0.0027942   -0.0222690    0.0278573
3-6 months     SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed    INDIA                          <32                  >=38               0.0423399    0.0016332    0.0830466
3-6 months     SAS-CompFeed    INDIA                          [32-38)              >=38               0.0416064   -0.0165189    0.0997317
6-9 months     COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     COHORTS         GUATEMALA                      <32                  >=38              -0.0139569   -0.0375437    0.0096300
6-9 months     COHORTS         GUATEMALA                      [32-38)              >=38              -0.0059437   -0.0315235    0.0196361
6-9 months     LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5          MALAWI                         <32                  >=38               0.0294245   -0.0359710    0.0948200
6-9 months     LCNI-5          MALAWI                         [32-38)              >=38              -0.0610531   -0.1567814    0.0346752
6-9 months     MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          BANGLADESH                     <32                  >=38               0.0047070   -0.0408418    0.0502558
6-9 months     MAL-ED          BANGLADESH                     [32-38)              >=38               0.0155404   -0.0216308    0.0527116
6-9 months     MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          BRAZIL                         <32                  >=38              -0.0824435   -0.1975383    0.0326513
6-9 months     MAL-ED          BRAZIL                         [32-38)              >=38              -0.0344236   -0.1270197    0.0581724
6-9 months     MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          INDIA                          <32                  >=38              -0.0151074   -0.0683851    0.0381703
6-9 months     MAL-ED          INDIA                          [32-38)              >=38               0.0025563   -0.0408186    0.0459311
6-9 months     MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          NEPAL                          <32                  >=38               0.0351907   -0.0663267    0.1367082
6-9 months     MAL-ED          NEPAL                          [32-38)              >=38              -0.0067603   -0.0724118    0.0588913
6-9 months     MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          PERU                           <32                  >=38               0.0046364   -0.0691318    0.0784046
6-9 months     MAL-ED          PERU                           [32-38)              >=38               0.0176013   -0.0641070    0.0993095
6-9 months     MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0316988   -0.0846934    0.1480910
6-9 months     MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0158990   -0.0843900    0.1161881
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0877393   -0.2095256    0.0340470
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0193279   -0.0763260    0.1149818
6-9 months     PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     PROBIT          BELARUS                        <32                  >=38              -0.0027551   -0.0231238    0.0176136
6-9 months     PROBIT          BELARUS                        [32-38)              >=38              -0.0064742   -0.0296183    0.0166699
6-9 months     SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed    INDIA                          <32                  >=38               0.0232756   -0.0636258    0.1101770
6-9 months     SAS-CompFeed    INDIA                          [32-38)              >=38               0.0295628   -0.0635850    0.1227107
6-9 months     SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0475907   -0.1079598    0.0127783
6-9 months     SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0213574   -0.0906912    0.0479764
9-12 months    COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    COHORTS         GUATEMALA                      <32                  >=38              -0.0245030   -0.0446834   -0.0043227
9-12 months    COHORTS         GUATEMALA                      [32-38)              >=38              -0.0221456   -0.0464993    0.0022081
9-12 months    LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5          MALAWI                         <32                  >=38              -0.0921959   -0.1672711   -0.0171207
9-12 months    LCNI-5          MALAWI                         [32-38)              >=38               0.0148292   -0.0870727    0.1167310
9-12 months    MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          BANGLADESH                     <32                  >=38              -0.0044479   -0.0479875    0.0390917
9-12 months    MAL-ED          BANGLADESH                     [32-38)              >=38               0.0244393   -0.0100061    0.0588847
9-12 months    MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          BRAZIL                         <32                  >=38               0.0927715   -0.0579867    0.2435297
9-12 months    MAL-ED          BRAZIL                         [32-38)              >=38              -0.0881903   -0.2001217    0.0237412
9-12 months    MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          INDIA                          <32                  >=38              -0.0378560   -0.0833838    0.0076719
9-12 months    MAL-ED          INDIA                          [32-38)              >=38              -0.0552103   -0.0972086   -0.0132121
9-12 months    MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          NEPAL                          <32                  >=38              -0.0486260   -0.1607219    0.0634699
9-12 months    MAL-ED          NEPAL                          [32-38)              >=38               0.0319715   -0.0188977    0.0828407
9-12 months    MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          PERU                           <32                  >=38              -0.0322085   -0.1006960    0.0362790
9-12 months    MAL-ED          PERU                           [32-38)              >=38              -0.0269278   -0.0949025    0.0410470
9-12 months    MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0043843   -0.1660348    0.1748034
9-12 months    MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0068673   -0.1046483    0.1183829
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0420854   -0.1214004    0.0372297
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0230831   -0.0881823    0.0420161
9-12 months    PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    PROBIT          BELARUS                        <32                  >=38              -0.0092529   -0.0280751    0.0095693
9-12 months    PROBIT          BELARUS                        [32-38)              >=38              -0.0172520   -0.0374387    0.0029347
9-12 months    SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed    INDIA                          <32                  >=38               0.0366872   -0.0351385    0.1085129
9-12 months    SAS-CompFeed    INDIA                          [32-38)              >=38               0.0159143   -0.0756607    0.1074894
9-12 months    SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0729652   -0.1292996   -0.0166308
9-12 months    SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0303156   -0.0923386    0.0317073
12-15 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   COHORTS         GUATEMALA                      <32                  >=38              -0.0061686   -0.0283668    0.0160296
12-15 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0157294   -0.0406510    0.0091921
12-15 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.0148865   -0.0657463    0.0359733
12-15 months   MAL-ED          BANGLADESH                     [32-38)              >=38               0.0104965   -0.0301472    0.0511402
12-15 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          BRAZIL                         <32                  >=38               0.0093438   -0.0960527    0.1147402
12-15 months   MAL-ED          BRAZIL                         [32-38)              >=38               0.0450587   -0.0411287    0.1312461
12-15 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          INDIA                          <32                  >=38              -0.0441332   -0.0937325    0.0054660
12-15 months   MAL-ED          INDIA                          [32-38)              >=38              -0.0265237   -0.0764746    0.0234273
12-15 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          NEPAL                          <32                  >=38               0.0165480   -0.0890234    0.1221195
12-15 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.0531740   -0.1053686   -0.0009795
12-15 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          PERU                           <32                  >=38               0.0456504   -0.0198001    0.1111009
12-15 months   MAL-ED          PERU                           [32-38)              >=38              -0.0100417   -0.0827341    0.0626506
12-15 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1427046   -0.0205044    0.3059135
12-15 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0264879   -0.0873027    0.1402784
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0297362   -0.1389504    0.0794780
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0897525   -0.1723032   -0.0072018
12-15 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   PROBIT          BELARUS                        <32                  >=38              -0.0512620   -0.2025666    0.1000425
12-15 months   PROBIT          BELARUS                        [32-38)              >=38              -0.0553616   -0.2575898    0.1468665
12-15 months   SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed    INDIA                          <32                  >=38              -0.0563227   -0.1239245    0.0112792
12-15 months   SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0498683   -0.0985173   -0.0012193
12-15 months   SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA                          <32                  >=38               0.0081421   -0.0358927    0.0521769
12-15 months   SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0153508   -0.0678049    0.0371032
15-18 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   COHORTS         GUATEMALA                      <32                  >=38              -0.0363547   -0.0627022   -0.0100071
15-18 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0373935   -0.0666184   -0.0081686
15-18 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.0100070   -0.0603806    0.0403665
15-18 months   MAL-ED          BANGLADESH                     [32-38)              >=38               0.0218639   -0.0190912    0.0628191
15-18 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          BRAZIL                         <32                  >=38               0.0658740   -0.0515250    0.1832729
15-18 months   MAL-ED          BRAZIL                         [32-38)              >=38               0.0921603   -0.0093409    0.1936614
15-18 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          INDIA                          <32                  >=38               0.0330717   -0.0076937    0.0738371
15-18 months   MAL-ED          INDIA                          [32-38)              >=38               0.0351825   -0.0063227    0.0766878
15-18 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          NEPAL                          <32                  >=38               0.0389321   -0.0464650    0.1243291
15-18 months   MAL-ED          NEPAL                          [32-38)              >=38               0.0173579   -0.0484863    0.0832021
15-18 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          PERU                           <32                  >=38              -0.0056039   -0.0892660    0.0780582
15-18 months   MAL-ED          PERU                           [32-38)              >=38               0.0231508   -0.0443192    0.0906207
15-18 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1173971    0.0060020    0.2287922
15-18 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0399589   -0.0701308    0.1500485
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0373766   -0.0603402    0.1350934
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0229060   -0.0572542    0.1030662
15-18 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   PROBIT          BELARUS                        <32                  >=38               0.1215381   -0.0375981    0.2806743
15-18 months   PROBIT          BELARUS                        [32-38)              >=38               0.0668802   -0.0772501    0.2110105
15-18 months   SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed    INDIA                          <32                  >=38              -0.0397740   -0.0901975    0.0106494
15-18 months   SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0146520   -0.0784408    0.0491369
15-18 months   SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA                          <32                  >=38               0.0044873   -0.0377749    0.0467495
15-18 months   SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0081343   -0.0413353    0.0576040
18-21 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   COHORTS         GUATEMALA                      <32                  >=38              -0.0385748   -0.0632298   -0.0139197
18-21 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0359358   -0.0656746   -0.0061970
18-21 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5          MALAWI                         <32                  >=38              -0.0420662   -0.1629550    0.0788225
18-21 months   LCNI-5          MALAWI                         [32-38)              >=38              -0.0642282   -0.1777732    0.0493168
18-21 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.0382288   -0.0916197    0.0151621
18-21 months   MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0463689   -0.0901041   -0.0026338
18-21 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          BRAZIL                         <32                  >=38              -0.0417290   -0.1189990    0.0355410
18-21 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.0287715   -0.1266403    0.0690972
18-21 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          INDIA                          <32                  >=38              -0.0033653   -0.0470572    0.0403266
18-21 months   MAL-ED          INDIA                          [32-38)              >=38              -0.0078167   -0.0476595    0.0320261
18-21 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          NEPAL                          <32                  >=38               0.0285888   -0.0544817    0.1116593
18-21 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.0161915   -0.0725141    0.0401311
18-21 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          PERU                           <32                  >=38              -0.0260331   -0.1045530    0.0524869
18-21 months   MAL-ED          PERU                           [32-38)              >=38              -0.0530306   -0.1374228    0.0313615
18-21 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0817652   -0.0113540    0.1748844
18-21 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0330814   -0.1225293    0.1886920
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0706100   -0.1786435    0.0374236
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0854067   -0.1703142   -0.0004992
18-21 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   PROBIT          BELARUS                        <32                  >=38               0.0157360   -0.2301395    0.2616114
18-21 months   PROBIT          BELARUS                        [32-38)              >=38               0.0708729   -0.6548615    0.7966074
21-24 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   COHORTS         GUATEMALA                      <32                  >=38               0.0334621    0.0097510    0.0571732
21-24 months   COHORTS         GUATEMALA                      [32-38)              >=38               0.0166965   -0.0108827    0.0442756
21-24 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5          MALAWI                         <32                  >=38              -0.0784991   -0.2304075    0.0734093
21-24 months   LCNI-5          MALAWI                         [32-38)              >=38               0.0135321   -0.1635245    0.1905887
21-24 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.0179636   -0.0652263    0.0292990
21-24 months   MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0122948   -0.0510478    0.0264583
21-24 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          BRAZIL                         <32                  >=38              -0.0074599   -0.1039878    0.0890680
21-24 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.0463110   -0.1387069    0.0460849
21-24 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          INDIA                          <32                  >=38              -0.0197676   -0.0620642    0.0225291
21-24 months   MAL-ED          INDIA                          [32-38)              >=38              -0.0074311   -0.0459557    0.0310936
21-24 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          NEPAL                          <32                  >=38              -0.0087910   -0.1054952    0.0879132
21-24 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.0196878   -0.1012865    0.0619109
21-24 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          PERU                           <32                  >=38              -0.0498238   -0.1196601    0.0200125
21-24 months   MAL-ED          PERU                           [32-38)              >=38               0.0167832   -0.0744928    0.1080591
21-24 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0643104   -0.1241567   -0.0044640
21-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0698380   -0.1562936    0.0166177
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.1034919   -0.2365984    0.0296147
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0607799   -0.1522189    0.0306590
21-24 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   PROBIT          BELARUS                        <32                  >=38              -0.0320135   -1.0737486    1.0097216
21-24 months   PROBIT          BELARUS                        [32-38)              >=38              -0.0037174   -1.0523627    1.0449279


### Parameter: PAR


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA                      >=38                 NA                 0.0457298    0.0197899    0.0716696
0-3 months     MAL-ED          BANGLADESH                     >=38                 NA                 0.0209883   -0.0108408    0.0528174
0-3 months     MAL-ED          BRAZIL                         >=38                 NA                 0.0254631   -0.0577495    0.1086758
0-3 months     MAL-ED          INDIA                          >=38                 NA                 0.0173653   -0.0335972    0.0683278
0-3 months     MAL-ED          NEPAL                          >=38                 NA                -0.0247760   -0.1185333    0.0689813
0-3 months     MAL-ED          PERU                           >=38                 NA                 0.0250783   -0.0378574    0.0880139
0-3 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0100160   -0.0349074    0.0148755
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0345795   -0.0155688    0.0847278
0-3 months     PROBIT          BELARUS                        >=38                 NA                 0.0107656   -0.0075417    0.0290728
0-3 months     SAS-CompFeed    INDIA                          >=38                 NA                 0.1139720    0.0401625    0.1877814
3-6 months     COHORTS         GUATEMALA                      >=38                 NA                -0.0013446   -0.0191486    0.0164593
3-6 months     MAL-ED          BANGLADESH                     >=38                 NA                 0.0058920   -0.0159973    0.0277813
3-6 months     MAL-ED          BRAZIL                         >=38                 NA                -0.0188185   -0.0799769    0.0423399
3-6 months     MAL-ED          INDIA                          >=38                 NA                -0.0274983   -0.0612051    0.0062085
3-6 months     MAL-ED          NEPAL                          >=38                 NA                -0.0197176   -0.0767772    0.0373420
3-6 months     MAL-ED          PERU                           >=38                 NA                -0.0288616   -0.0869686    0.0292454
3-6 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0035962   -0.0305328    0.0233404
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0112543   -0.0569752    0.0344665
3-6 months     PROBIT          BELARUS                        >=38                 NA                 0.0060743   -0.0141453    0.0262939
3-6 months     SAS-CompFeed    INDIA                          >=38                 NA                 0.0408009    0.0001886    0.0814131
6-9 months     COHORTS         GUATEMALA                      >=38                 NA                -0.0079281   -0.0232764    0.0074203
6-9 months     LCNI-5          MALAWI                         >=38                 NA                 0.0030079   -0.0438751    0.0498910
6-9 months     MAL-ED          BANGLADESH                     >=38                 NA                 0.0062465   -0.0110839    0.0235768
6-9 months     MAL-ED          BRAZIL                         >=38                 NA                -0.0322926   -0.0866838    0.0220986
6-9 months     MAL-ED          INDIA                          >=38                 NA                -0.0038782   -0.0377414    0.0299850
6-9 months     MAL-ED          NEPAL                          >=38                 NA                 0.0026940   -0.0497876    0.0551755
6-9 months     MAL-ED          PERU                           >=38                 NA                 0.0075933   -0.0404761    0.0556628
6-9 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0056688   -0.0157768    0.0271144
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0065939   -0.0534484    0.0402605
6-9 months     PROBIT          BELARUS                        >=38                 NA                -0.0031892   -0.0223510    0.0159725
6-9 months     SAS-CompFeed    INDIA                          >=38                 NA                 0.0232846   -0.0608512    0.1074203
6-9 months     SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0367668   -0.0898976    0.0163641
9-12 months    COHORTS         GUATEMALA                      >=38                 NA                -0.0168527   -0.0303189   -0.0033865
9-12 months    LCNI-5          MALAWI                         >=38                 NA                -0.0462053   -0.0956205    0.0032098
9-12 months    MAL-ED          BANGLADESH                     >=38                 NA                 0.0072387   -0.0093388    0.0238161
9-12 months    MAL-ED          BRAZIL                         >=38                 NA                -0.0134685   -0.0806743    0.0537373
9-12 months    MAL-ED          INDIA                          >=38                 NA                -0.0370342   -0.0672695   -0.0067990
9-12 months    MAL-ED          NEPAL                          >=38                 NA                 0.0099137   -0.0337853    0.0536127
9-12 months    MAL-ED          PERU                           >=38                 NA                -0.0198925   -0.0612152    0.0214302
9-12 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0015917   -0.0237692    0.0269525
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0149064   -0.0445627    0.0147500
9-12 months    PROBIT          BELARUS                        >=38                 NA                -0.0100249   -0.0278433    0.0077936
9-12 months    SAS-CompFeed    INDIA                          >=38                 NA                 0.0326961   -0.0381726    0.1035647
9-12 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0553376   -0.1039264   -0.0067487
12-15 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0066969   -0.0211536    0.0077598
12-15 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0006724   -0.0186249    0.0199698
12-15 months   MAL-ED          BRAZIL                         >=38                 NA                 0.0198102   -0.0296857    0.0693062
12-15 months   MAL-ED          INDIA                          >=38                 NA                -0.0262774   -0.0609575    0.0084026
12-15 months   MAL-ED          NEPAL                          >=38                 NA                -0.0284932   -0.0706877    0.0137014
12-15 months   MAL-ED          PERU                           >=38                 NA                 0.0110144   -0.0288796    0.0509083
12-15 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0152385   -0.0120165    0.0424935
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0379086   -0.0777170    0.0018998
12-15 months   PROBIT          BELARUS                        >=38                 NA                -0.0495386   -0.1960821    0.0970049
12-15 months   SAS-CompFeed    INDIA                          >=38                 NA                -0.0535562   -0.1151883    0.0080759
12-15 months   SAS-FoodSuppl   INDIA                          >=38                 NA                 0.0021052   -0.0362099    0.0404202
15-18 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0259381   -0.0430099   -0.0088663
15-18 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0058680   -0.0139067    0.0256427
15-18 months   MAL-ED          BRAZIL                         >=38                 NA                 0.0513057   -0.0076839    0.1102953
15-18 months   MAL-ED          INDIA                          >=38                 NA                 0.0267872   -0.0010368    0.0546111
15-18 months   MAL-ED          NEPAL                          >=38                 NA                 0.0177236   -0.0333660    0.0688132
15-18 months   MAL-ED          PERU                           >=38                 NA                 0.0059221   -0.0391281    0.0509722
15-18 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0171897   -0.0087535    0.0431328
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0139877   -0.0234234    0.0513988
15-18 months   PROBIT          BELARUS                        >=38                 NA                 0.1106873   -0.0416252    0.2629998
15-18 months   SAS-CompFeed    INDIA                          >=38                 NA                -0.0353828   -0.0842678    0.0135023
15-18 months   SAS-FoodSuppl   INDIA                          >=38                 NA                 0.0047747   -0.0318237    0.0413731
18-21 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0265842   -0.0428979   -0.0102705
18-21 months   LCNI-5          MALAWI                         >=38                 NA                -0.0366302   -0.1124749    0.0392145
18-21 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0239443   -0.0458453   -0.0020434
18-21 months   MAL-ED          BRAZIL                         >=38                 NA                -0.0209645   -0.0710225    0.0290934
18-21 months   MAL-ED          INDIA                          >=38                 NA                -0.0046402   -0.0323614    0.0230809
18-21 months   MAL-ED          NEPAL                          >=38                 NA                -0.0040510   -0.0477367    0.0396347
18-21 months   MAL-ED          PERU                           >=38                 NA                -0.0263588   -0.0738731    0.0211556
18-21 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0136026   -0.0184425    0.0456476
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0432253   -0.0848823   -0.0015684
18-21 months   PROBIT          BELARUS                        >=38                 NA                 0.0216725   -0.2269804    0.2703255
21-24 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0196695    0.0039691    0.0353699
21-24 months   LCNI-5          MALAWI                         >=38                 NA                -0.0371816   -0.1405392    0.0661761
21-24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0078930   -0.0278346    0.0120486
21-24 months   MAL-ED          BRAZIL                         >=38                 NA                -0.0198724   -0.0735125    0.0337677
21-24 months   MAL-ED          INDIA                          >=38                 NA                -0.0097684   -0.0375122    0.0179753
21-24 months   MAL-ED          NEPAL                          >=38                 NA                -0.0133822   -0.0735084    0.0467440
21-24 months   MAL-ED          PERU                           >=38                 NA                -0.0108686   -0.0553310    0.0335938
21-24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0183358   -0.0376287    0.0009570
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0389631   -0.0851848    0.0072587
21-24 months   PROBIT          BELARUS                        >=38                 NA                -0.0264853   -1.0262571    0.9732866
