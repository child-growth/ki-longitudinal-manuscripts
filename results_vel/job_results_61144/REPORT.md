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
![](/tmp/13e39e3e-33b2-4f19-aaac-9d14b683b19e/5f549bf3-38ab-405b-8193-035f9080ab49/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/13e39e3e-33b2-4f19-aaac-9d14b683b19e/5f549bf3-38ab-405b-8193-035f9080ab49/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/13e39e3e-33b2-4f19-aaac-9d14b683b19e/5f549bf3-38ab-405b-8193-035f9080ab49/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     COHORTS         GUATEMALA                      >=38                 NA                0.7468597    0.7074896   0.7862299
0-3 months     COHORTS         GUATEMALA                      <32                  NA                0.8244692    0.7943920   0.8545464
0-3 months     COHORTS         GUATEMALA                      [32-38)              NA                0.7851001    0.7315759   0.8386242
0-3 months     MAL-ED          BANGLADESH                     >=38                 NA                0.8636250    0.8105216   0.9167283
0-3 months     MAL-ED          BANGLADESH                     <32                  NA                0.9331597    0.8782883   0.9880312
0-3 months     MAL-ED          BANGLADESH                     [32-38)              NA                0.8875668    0.8301956   0.9449379
0-3 months     MAL-ED          BRAZIL                         >=38                 NA                1.0109406    0.8919353   1.1299459
0-3 months     MAL-ED          BRAZIL                         <32                  NA                1.0244017    0.9415289   1.1072746
0-3 months     MAL-ED          BRAZIL                         [32-38)              NA                1.0755568    0.9789185   1.1721951
0-3 months     MAL-ED          INDIA                          >=38                 NA                0.7383452    0.6764997   0.8001906
0-3 months     MAL-ED          INDIA                          <32                  NA                0.7602146    0.7117796   0.8086496
0-3 months     MAL-ED          INDIA                          [32-38)              NA                0.7722045    0.7315645   0.8128445
0-3 months     MAL-ED          NEPAL                          >=38                 NA                0.9543946    0.8486413   1.0601479
0-3 months     MAL-ED          NEPAL                          <32                  NA                0.8563363    0.7603658   0.9523069
0-3 months     MAL-ED          NEPAL                          [32-38)              NA                0.9361603    0.8714359   1.0008846
0-3 months     MAL-ED          PERU                           >=38                 NA                0.9322065    0.8460745   1.0183385
0-3 months     MAL-ED          PERU                           <32                  NA                0.9465126    0.8804260   1.0125992
0-3 months     MAL-ED          PERU                           [32-38)              NA                0.9985007    0.8943983   1.1026032
0-3 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                0.9808637    0.9231370   1.0385903
0-3 months     MAL-ED          SOUTH AFRICA                   <32                  NA                0.9550553    0.8205106   1.0896001
0-3 months     MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.9396671    0.8693825   1.0099517
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.8351425    0.7733501   0.8969349
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.9705702    0.8329984   1.1081419
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.8836417    0.7965259   0.9707575
0-3 months     PROBIT          BELARUS                        >=38                 NA                0.8626263    0.8468845   0.8783681
0-3 months     PROBIT          BELARUS                        <32                  NA                0.8365238    0.8260181   0.8470295
0-3 months     PROBIT          BELARUS                        [32-38)              NA                0.8296378    0.8096885   0.8495870
0-3 months     SAS-CompFeed    INDIA                          >=38                 NA                0.6982465    0.6163199   0.7801731
0-3 months     SAS-CompFeed    INDIA                          <32                  NA                0.7986131    0.7800235   0.8172028
0-3 months     SAS-CompFeed    INDIA                          [32-38)              NA                0.7675496    0.7259496   0.8091496
3-6 months     COHORTS         GUATEMALA                      >=38                 NA                0.4405076    0.4096121   0.4714031
3-6 months     COHORTS         GUATEMALA                      <32                  NA                0.4516051    0.4334273   0.4697829
3-6 months     COHORTS         GUATEMALA                      [32-38)              NA                0.4480329    0.4162198   0.4798460
3-6 months     MAL-ED          BANGLADESH                     >=38                 NA                0.4624282    0.4350628   0.4897937
3-6 months     MAL-ED          BANGLADESH                     <32                  NA                0.5036393    0.4613611   0.5459176
3-6 months     MAL-ED          BANGLADESH                     [32-38)              NA                0.4517455    0.4079671   0.4955238
3-6 months     MAL-ED          BRAZIL                         >=38                 NA                0.5921444    0.5067404   0.6775483
3-6 months     MAL-ED          BRAZIL                         <32                  NA                0.6041938    0.5103767   0.6980109
3-6 months     MAL-ED          BRAZIL                         [32-38)              NA                0.5451049    0.4727353   0.6174745
3-6 months     MAL-ED          INDIA                          >=38                 NA                0.4535314    0.4158675   0.4911953
3-6 months     MAL-ED          INDIA                          <32                  NA                0.4167246    0.3794526   0.4539966
3-6 months     MAL-ED          INDIA                          [32-38)              NA                0.4386573    0.4083913   0.4689233
3-6 months     MAL-ED          NEPAL                          >=38                 NA                0.5254884    0.4579171   0.5930597
3-6 months     MAL-ED          NEPAL                          <32                  NA                0.4772814    0.3947097   0.5598530
3-6 months     MAL-ED          NEPAL                          [32-38)              NA                0.5056986    0.4728035   0.5385937
3-6 months     MAL-ED          PERU                           >=38                 NA                0.5395794    0.4727184   0.6064403
3-6 months     MAL-ED          PERU                           <32                  NA                0.4755256    0.4277644   0.5232868
3-6 months     MAL-ED          PERU                           [32-38)              NA                0.5069690    0.4356800   0.5782580
3-6 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                0.4469201    0.4017536   0.4920865
3-6 months     MAL-ED          SOUTH AFRICA                   <32                  NA                0.4196559    0.2494437   0.5898682
3-6 months     MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.4424206    0.3493899   0.5354512
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.4644632    0.3957041   0.5332223
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.5175479    0.3854554   0.6496405
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.4343142    0.3712150   0.4974134
3-6 months     PROBIT          BELARUS                        >=38                 NA                0.6490385    0.6342819   0.6637951
3-6 months     PROBIT          BELARUS                        <32                  NA                0.6651266    0.6566891   0.6735641
3-6 months     PROBIT          BELARUS                        [32-38)              NA                0.6665183    0.6503927   0.6826438
3-6 months     SAS-CompFeed    INDIA                          >=38                 NA                0.4090555    0.3637605   0.4543504
3-6 months     SAS-CompFeed    INDIA                          <32                  NA                0.4511824    0.4360713   0.4662936
3-6 months     SAS-CompFeed    INDIA                          [32-38)              NA                0.4567700    0.4312913   0.4822486
6-9 months     COHORTS         GUATEMALA                      >=38                 NA                0.2104267    0.1874543   0.2333991
6-9 months     COHORTS         GUATEMALA                      <32                  NA                0.1951767    0.1743680   0.2159855
6-9 months     COHORTS         GUATEMALA                      [32-38)              NA                0.2326374    0.2092863   0.2559885
6-9 months     LCNI-5          MALAWI                         >=38                 NA                0.2482066    0.1849197   0.3114935
6-9 months     LCNI-5          MALAWI                         <32                  NA                0.3052181    0.2596291   0.3508071
6-9 months     LCNI-5          MALAWI                         [32-38)              NA                0.2012767    0.1138273   0.2887262
6-9 months     MAL-ED          BANGLADESH                     >=38                 NA                0.2306791    0.2099209   0.2514374
6-9 months     MAL-ED          BANGLADESH                     <32                  NA                0.2419756    0.1972447   0.2867065
6-9 months     MAL-ED          BANGLADESH                     [32-38)              NA                0.2387474    0.2005886   0.2769063
6-9 months     MAL-ED          BRAZIL                         >=38                 NA                0.4431387    0.3638854   0.5223919
6-9 months     MAL-ED          BRAZIL                         <32                  NA                0.3609311    0.2376644   0.4841979
6-9 months     MAL-ED          BRAZIL                         [32-38)              NA                0.3901780    0.3345875   0.4457685
6-9 months     MAL-ED          INDIA                          >=38                 NA                0.2430753    0.1925430   0.2936077
6-9 months     MAL-ED          INDIA                          <32                  NA                0.2441190    0.1925738   0.2956642
6-9 months     MAL-ED          INDIA                          [32-38)              NA                0.2417644    0.2187062   0.2648225
6-9 months     MAL-ED          NEPAL                          >=38                 NA                0.2282350    0.1605832   0.2958869
6-9 months     MAL-ED          NEPAL                          <32                  NA                0.2877952    0.2007921   0.3747984
6-9 months     MAL-ED          NEPAL                          [32-38)              NA                0.2439471    0.2140040   0.2738902
6-9 months     MAL-ED          PERU                           >=38                 NA                0.2447509    0.1594128   0.3300889
6-9 months     MAL-ED          PERU                           <32                  NA                0.2668424    0.2318242   0.3018606
6-9 months     MAL-ED          PERU                           [32-38)              NA                0.2668889    0.2072633   0.3265144
6-9 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                0.2484049    0.2076383   0.2891715
6-9 months     MAL-ED          SOUTH AFRICA                   <32                  NA                0.2801037    0.1710843   0.3891231
6-9 months     MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.2643039    0.1726743   0.3559335
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.2475352    0.1666850   0.3283854
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1560287    0.0669649   0.2450925
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.2669346    0.1965278   0.3373414
6-9 months     PROBIT          BELARUS                        >=38                 NA                0.4917839    0.4820530   0.5015148
6-9 months     PROBIT          BELARUS                        <32                  NA                0.4727525    0.4626135   0.4828914
6-9 months     PROBIT          BELARUS                        [32-38)              NA                0.4728343    0.4538148   0.4918538
6-9 months     SAS-CompFeed    INDIA                          >=38                 NA                0.2071368    0.1234135   0.2908600
6-9 months     SAS-CompFeed    INDIA                          <32                  NA                0.2091995    0.1923812   0.2260179
6-9 months     SAS-CompFeed    INDIA                          [32-38)              NA                0.2194955    0.2031485   0.2358425
6-9 months     SAS-FoodSuppl   INDIA                          >=38                 NA                0.2346978    0.1781100   0.2912855
6-9 months     SAS-FoodSuppl   INDIA                          <32                  NA                0.1875843    0.1690230   0.2061456
6-9 months     SAS-FoodSuppl   INDIA                          [32-38)              NA                0.2122431    0.1734740   0.2510121
9-12 months    COHORTS         GUATEMALA                      >=38                 NA                0.1543993    0.1363067   0.1724919
9-12 months    COHORTS         GUATEMALA                      <32                  NA                0.1330527    0.1193591   0.1467463
9-12 months    COHORTS         GUATEMALA                      [32-38)              NA                0.1522800    0.1212587   0.1833013
9-12 months    LCNI-5          MALAWI                         >=38                 NA                0.2336709    0.2022926   0.2650493
9-12 months    LCNI-5          MALAWI                         <32                  NA                0.1414750    0.0732717   0.2096783
9-12 months    LCNI-5          MALAWI                         [32-38)              NA                0.2485001    0.1515497   0.3454505
9-12 months    MAL-ED          BANGLADESH                     >=38                 NA                0.1579071    0.1366687   0.1791455
9-12 months    MAL-ED          BANGLADESH                     <32                  NA                0.1581018    0.1141238   0.2020797
9-12 months    MAL-ED          BANGLADESH                     [32-38)              NA                0.1883100    0.1601136   0.2165064
9-12 months    MAL-ED          BRAZIL                         >=38                 NA                0.3556924    0.2699203   0.4414645
9-12 months    MAL-ED          BRAZIL                         <32                  NA                0.4135049    0.2726022   0.5544077
9-12 months    MAL-ED          BRAZIL                         [32-38)              NA                0.2416823    0.1650773   0.3182874
9-12 months    MAL-ED          INDIA                          >=38                 NA                0.2316197    0.1900409   0.2731984
9-12 months    MAL-ED          INDIA                          <32                  NA                0.1655146    0.1151792   0.2158500
9-12 months    MAL-ED          INDIA                          [32-38)              NA                0.1677018    0.1328437   0.2025598
9-12 months    MAL-ED          NEPAL                          >=38                 NA                0.2085379    0.1603292   0.2567467
9-12 months    MAL-ED          NEPAL                          <32                  NA                0.1389627    0.0329042   0.2450211
9-12 months    MAL-ED          NEPAL                          [32-38)              NA                0.2096585    0.1845870   0.2347300
9-12 months    MAL-ED          PERU                           >=38                 NA                0.2476686    0.1860749   0.3092622
9-12 months    MAL-ED          PERU                           <32                  NA                0.2034528    0.1523440   0.2545617
9-12 months    MAL-ED          PERU                           [32-38)              NA                0.2102990    0.1542807   0.2663173
9-12 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                0.1980120    0.1593030   0.2367210
9-12 months    MAL-ED          SOUTH AFRICA                   <32                  NA                0.2023962    0.0364316   0.3683609
9-12 months    MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.2048793    0.1002975   0.3094610
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.1523573    0.1130710   0.1916436
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1144843    0.0439010   0.1850676
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1259424    0.0710868   0.1807981
9-12 months    PROBIT          BELARUS                        >=38                 NA                0.3624749    0.3479386   0.3770112
9-12 months    PROBIT          BELARUS                        <32                  NA                0.3702182    0.3551845   0.3852519
9-12 months    PROBIT          BELARUS                        [32-38)              NA                0.3573046    0.3392206   0.3753886
9-12 months    SAS-CompFeed    INDIA                          >=38                 NA                0.1622672    0.0890183   0.2355160
9-12 months    SAS-CompFeed    INDIA                          <32                  NA                0.1983960    0.1905065   0.2062855
9-12 months    SAS-CompFeed    INDIA                          [32-38)              NA                0.1763446    0.1331866   0.2195026
9-12 months    SAS-FoodSuppl   INDIA                          >=38                 NA                0.2428325    0.1560126   0.3296524
9-12 months    SAS-FoodSuppl   INDIA                          <32                  NA                0.1301714    0.1077110   0.1526319
9-12 months    SAS-FoodSuppl   INDIA                          [32-38)              NA                0.1807722    0.1239754   0.2375689
12-15 months   COHORTS         GUATEMALA                      >=38                 NA                0.1664074    0.1390157   0.1937991
12-15 months   COHORTS         GUATEMALA                      <32                  NA                0.1731661    0.1584250   0.1879073
12-15 months   COHORTS         GUATEMALA                      [32-38)              NA                0.1527697    0.1206433   0.1848961
12-15 months   MAL-ED          BANGLADESH                     >=38                 NA                0.1407112    0.1149955   0.1664268
12-15 months   MAL-ED          BANGLADESH                     <32                  NA                0.1276772    0.0774926   0.1778618
12-15 months   MAL-ED          BANGLADESH                     [32-38)              NA                0.1489426    0.1148354   0.1830497
12-15 months   MAL-ED          BRAZIL                         >=38                 NA                0.1826271    0.1173770   0.2478773
12-15 months   MAL-ED          BRAZIL                         <32                  NA                0.1877681    0.0966651   0.2788711
12-15 months   MAL-ED          BRAZIL                         [32-38)              NA                0.2205041    0.1570911   0.2839171
12-15 months   MAL-ED          INDIA                          >=38                 NA                0.2123708    0.1732160   0.2515257
12-15 months   MAL-ED          INDIA                          <32                  NA                0.1575420    0.1259995   0.1890845
12-15 months   MAL-ED          INDIA                          [32-38)              NA                0.1842370    0.1519950   0.2164791
12-15 months   MAL-ED          NEPAL                          >=38                 NA                0.1198873    0.0695866   0.1701881
12-15 months   MAL-ED          NEPAL                          <32                  NA                0.2048077    0.0916765   0.3179389
12-15 months   MAL-ED          NEPAL                          [32-38)              NA                0.0987335    0.0637104   0.1337566
12-15 months   MAL-ED          PERU                           >=38                 NA                0.1301287    0.0803351   0.1799224
12-15 months   MAL-ED          PERU                           <32                  NA                0.1842677    0.1338923   0.2346431
12-15 months   MAL-ED          PERU                           [32-38)              NA                0.1052490    0.0549560   0.1555419
12-15 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                0.1996143    0.1473285   0.2519002
12-15 months   MAL-ED          SOUTH AFRICA                   <32                  NA                0.3423189    0.1877118   0.4969260
12-15 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.2261022    0.1250355   0.3271689
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.2082230    0.1538626   0.2625834
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1711561    0.0521988   0.2901135
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1204337    0.0520991   0.1887683
12-15 months   PROBIT          BELARUS                        >=38                 NA                0.2868244   -0.0205277   0.5941765
12-15 months   PROBIT          BELARUS                        <32                  NA                0.2205389    0.1574403   0.2836376
12-15 months   PROBIT          BELARUS                        [32-38)              NA                0.2018409    0.0242630   0.3794187
12-15 months   SAS-CompFeed    INDIA                          >=38                 NA                0.2203929    0.1635842   0.2772016
12-15 months   SAS-CompFeed    INDIA                          <32                  NA                0.1832848    0.1727892   0.1937805
12-15 months   SAS-CompFeed    INDIA                          [32-38)              NA                0.1904378    0.1617440   0.2191317
12-15 months   SAS-FoodSuppl   INDIA                          >=38                 NA                0.1833743    0.1431179   0.2236306
12-15 months   SAS-FoodSuppl   INDIA                          <32                  NA                0.1820571    0.1618694   0.2022448
12-15 months   SAS-FoodSuppl   INDIA                          [32-38)              NA                0.1616363    0.1268005   0.1964721
15-18 months   COHORTS         GUATEMALA                      >=38                 NA                0.1415289    0.1110742   0.1719837
15-18 months   COHORTS         GUATEMALA                      <32                  NA                0.1431333    0.1211940   0.1650725
15-18 months   COHORTS         GUATEMALA                      [32-38)              NA                0.1376417    0.1065581   0.1687254
15-18 months   MAL-ED          BANGLADESH                     >=38                 NA                0.1337708    0.1088404   0.1587012
15-18 months   MAL-ED          BANGLADESH                     <32                  NA                0.1250509    0.0796044   0.1704974
15-18 months   MAL-ED          BANGLADESH                     [32-38)              NA                0.1599602    0.1260344   0.1938860
15-18 months   MAL-ED          BRAZIL                         >=38                 NA                0.1220337    0.0186603   0.2254071
15-18 months   MAL-ED          BRAZIL                         <32                  NA                0.2594768    0.1005710   0.4183826
15-18 months   MAL-ED          BRAZIL                         [32-38)              NA                0.2339806    0.1773019   0.2906594
15-18 months   MAL-ED          INDIA                          >=38                 NA                0.1391987    0.1108852   0.1675123
15-18 months   MAL-ED          INDIA                          <32                  NA                0.1606472    0.1324633   0.1888312
15-18 months   MAL-ED          INDIA                          [32-38)              NA                0.1690361    0.1385074   0.1995649
15-18 months   MAL-ED          NEPAL                          >=38                 NA                0.1469302    0.0781448   0.2157157
15-18 months   MAL-ED          NEPAL                          <32                  NA                0.1879932    0.1249372   0.2510493
15-18 months   MAL-ED          NEPAL                          [32-38)              NA                0.1661095    0.1386008   0.1936181
15-18 months   MAL-ED          PERU                           >=38                 NA                0.1482389    0.0735660   0.2229117
15-18 months   MAL-ED          PERU                           <32                  NA                0.1264216    0.0536486   0.1991947
15-18 months   MAL-ED          PERU                           [32-38)              NA                0.1584148    0.1145631   0.2022664
15-18 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                0.2105611    0.1517265   0.2693957
15-18 months   MAL-ED          SOUTH AFRICA                   <32                  NA                0.3279582    0.2333677   0.4225486
15-18 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.2505200    0.1574704   0.3435695
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.1259539    0.0728979   0.1790100
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1671778    0.0830120   0.2513436
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1535894    0.0929436   0.2142352
15-18 months   PROBIT          BELARUS                        >=38                 NA                0.1155309   -0.0280589   0.2591206
15-18 months   PROBIT          BELARUS                        <32                  NA                0.2370689    0.1630291   0.3111088
15-18 months   PROBIT          BELARUS                        [32-38)              NA                0.1824111    0.1457463   0.2190759
15-18 months   SAS-CompFeed    INDIA                          >=38                 NA                0.2119655    0.1446938   0.2792373
15-18 months   SAS-CompFeed    INDIA                          <32                  NA                0.1744199    0.1591290   0.1897107
15-18 months   SAS-CompFeed    INDIA                          [32-38)              NA                0.1922127    0.1570239   0.2274014
15-18 months   SAS-FoodSuppl   INDIA                          >=38                 NA                0.1567581    0.1212091   0.1923072
15-18 months   SAS-FoodSuppl   INDIA                          <32                  NA                0.1638707    0.1441334   0.1836080
15-18 months   SAS-FoodSuppl   INDIA                          [32-38)              NA                0.1628543    0.1302089   0.1954997
18-21 months   COHORTS         GUATEMALA                      >=38                 NA                0.1840832    0.1544069   0.2137596
18-21 months   COHORTS         GUATEMALA                      <32                  NA                0.1376678    0.1196716   0.1556640
18-21 months   COHORTS         GUATEMALA                      [32-38)              NA                0.1632160    0.1307056   0.1957265
18-21 months   LCNI-5          MALAWI                         >=38                 NA                0.1647582    0.0823991   0.2471173
18-21 months   LCNI-5          MALAWI                         <32                  NA                0.1580392    0.0562883   0.2597900
18-21 months   LCNI-5          MALAWI                         [32-38)              NA                0.1061850    0.0116300   0.2007401
18-21 months   MAL-ED          BANGLADESH                     >=38                 NA                0.1422515    0.1064295   0.1780735
18-21 months   MAL-ED          BANGLADESH                     <32                  NA                0.0730683    0.0462084   0.0999282
18-21 months   MAL-ED          BANGLADESH                     [32-38)              NA                0.1213520    0.0540403   0.1886638
18-21 months   MAL-ED          BRAZIL                         >=38                 NA                0.1948406    0.1345640   0.2551171
18-21 months   MAL-ED          BRAZIL                         <32                  NA                0.1706622    0.1195997   0.2217247
18-21 months   MAL-ED          BRAZIL                         [32-38)              NA                0.1805352    0.1067033   0.2543671
18-21 months   MAL-ED          INDIA                          >=38                 NA                0.1825884    0.1542740   0.2109028
18-21 months   MAL-ED          INDIA                          <32                  NA                0.1808185    0.1476356   0.2140013
18-21 months   MAL-ED          INDIA                          [32-38)              NA                0.1774179    0.1491012   0.2057346
18-21 months   MAL-ED          NEPAL                          >=38                 NA                0.1854840    0.1339380   0.2370301
18-21 months   MAL-ED          NEPAL                          <32                  NA                0.2213844    0.1481870   0.2945818
18-21 months   MAL-ED          NEPAL                          [32-38)              NA                0.1647159    0.1363785   0.1930532
18-21 months   MAL-ED          PERU                           >=38                 NA                0.1719853    0.1218235   0.2221471
18-21 months   MAL-ED          PERU                           <32                  NA                0.1757302    0.1211790   0.2302814
18-21 months   MAL-ED          PERU                           [32-38)              NA                0.1054230    0.0194868   0.1913592
18-21 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                0.1606211    0.1045368   0.2167055
18-21 months   MAL-ED          SOUTH AFRICA                   <32                  NA                0.2423864    0.1680511   0.3167216
18-21 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.1937025    0.0485500   0.3388549
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.1988472    0.1409591   0.2567352
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1379729    0.0345460   0.2413998
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1259227    0.0604762   0.1913693
18-21 months   PROBIT          BELARUS                        >=38                 NA                0.1521327   -0.0337959   0.3380613
18-21 months   PROBIT          BELARUS                        <32                  NA                0.1678687    0.0073711   0.3283662
18-21 months   PROBIT          BELARUS                        [32-38)              NA                0.2230056   -0.4855090   0.9315203
21-24 months   COHORTS         GUATEMALA                      >=38                 NA                0.1702223    0.1374481   0.2029966
21-24 months   COHORTS         GUATEMALA                      <32                  NA                0.2030286    0.1871589   0.2188982
21-24 months   COHORTS         GUATEMALA                      [32-38)              NA                0.1682212    0.1377091   0.1987334
21-24 months   LCNI-5          MALAWI                         >=38                 NA                0.1857856    0.0618051   0.3097661
21-24 months   LCNI-5          MALAWI                         <32                  NA                0.0978119    0.0081514   0.1874724
21-24 months   LCNI-5          MALAWI                         [32-38)              NA                0.2218538    0.0821586   0.3615489
21-24 months   MAL-ED          BANGLADESH                     >=38                 NA                0.1611187    0.1313568   0.1908806
21-24 months   MAL-ED          BANGLADESH                     <32                  NA                0.1435097    0.1069194   0.1801000
21-24 months   MAL-ED          BANGLADESH                     [32-38)              NA                0.1461997    0.1205676   0.1718318
21-24 months   MAL-ED          BRAZIL                         >=38                 NA                0.1747312    0.0799403   0.2695220
21-24 months   MAL-ED          BRAZIL                         <32                  NA                0.1709662    0.0976817   0.2442508
21-24 months   MAL-ED          BRAZIL                         [32-38)              NA                0.1153262    0.0625194   0.1681330
21-24 months   MAL-ED          INDIA                          >=38                 NA                0.1706651    0.1386808   0.2026494
21-24 months   MAL-ED          INDIA                          <32                  NA                0.1615195    0.1326780   0.1903611
21-24 months   MAL-ED          INDIA                          [32-38)              NA                0.1679383    0.1442379   0.1916387
21-24 months   MAL-ED          NEPAL                          >=38                 NA                0.1879371    0.1191720   0.2567022
21-24 months   MAL-ED          NEPAL                          <32                  NA                0.1778631    0.0951778   0.2605483
21-24 months   MAL-ED          NEPAL                          [32-38)              NA                0.1832793    0.1313223   0.2352364
21-24 months   MAL-ED          PERU                           >=38                 NA                0.2165045    0.1542152   0.2787937
21-24 months   MAL-ED          PERU                           <32                  NA                0.1627541    0.0971211   0.2283871
21-24 months   MAL-ED          PERU                           [32-38)              NA                0.2653832    0.1467516   0.3840148
21-24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                0.2193163    0.1755606   0.2630719
21-24 months   MAL-ED          SOUTH AFRICA                   <32                  NA                0.1550059    0.1141767   0.1958351
21-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.1494783    0.0749127   0.2240438
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.1849339    0.1151434   0.2547244
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.0994555   -0.0559342   0.2548451
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1028465    0.0259178   0.1797752
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
0-3 months     COHORTS         GUATEMALA                      <32                  >=38               0.0776095    0.0280113    0.1272076
0-3 months     COHORTS         GUATEMALA                      [32-38)              >=38               0.0382403   -0.0282931    0.1047737
0-3 months     MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          BANGLADESH                     <32                  >=38               0.0695348   -0.0075338    0.1466034
0-3 months     MAL-ED          BANGLADESH                     [32-38)              >=38               0.0239418   -0.0543197    0.1022033
0-3 months     MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          BRAZIL                         <32                  >=38               0.0134611   -0.1314763    0.1583985
0-3 months     MAL-ED          BRAZIL                         [32-38)              >=38               0.0646162   -0.0901462    0.2193786
0-3 months     MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          INDIA                          <32                  >=38               0.0218694   -0.0568143    0.1005531
0-3 months     MAL-ED          INDIA                          [32-38)              >=38               0.0338593   -0.0401255    0.1078441
0-3 months     MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          NEPAL                          <32                  >=38              -0.0980583   -0.2402945    0.0441780
0-3 months     MAL-ED          NEPAL                          [32-38)              >=38              -0.0182343   -0.1427837    0.1063151
0-3 months     MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          PERU                           <32                  >=38               0.0143061   -0.0948260    0.1234382
0-3 months     MAL-ED          PERU                           [32-38)              >=38               0.0662942   -0.0696411    0.2022295
0-3 months     MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0258083   -0.1722141    0.1205975
0-3 months     MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0411965   -0.1321487    0.0497556
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.1354277   -0.0166378    0.2874932
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0484992   -0.0593178    0.1563161
0-3 months     PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     PROBIT          BELARUS                        <32                  >=38              -0.0261024   -0.0384004   -0.0138045
0-3 months     PROBIT          BELARUS                        [32-38)              >=38              -0.0329885   -0.0552342   -0.0107428
0-3 months     SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed    INDIA                          <32                  >=38               0.1003666    0.0140458    0.1866874
0-3 months     SAS-CompFeed    INDIA                          [32-38)              >=38               0.0693031   -0.0359977    0.1746038
3-6 months     COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     COHORTS         GUATEMALA                      <32                  >=38               0.0110975   -0.0247273    0.0469224
3-6 months     COHORTS         GUATEMALA                      [32-38)              >=38               0.0075253   -0.0367813    0.0518320
3-6 months     MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          BANGLADESH                     <32                  >=38               0.0412111   -0.0092828    0.0917050
3-6 months     MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0106828   -0.0624137    0.0410481
3-6 months     MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          BRAZIL                         <32                  >=38               0.0120495   -0.1140851    0.1381840
3-6 months     MAL-ED          BRAZIL                         [32-38)              >=38              -0.0470394   -0.1587479    0.0646690
3-6 months     MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          INDIA                          <32                  >=38              -0.0368068   -0.0900525    0.0164388
3-6 months     MAL-ED          INDIA                          [32-38)              >=38              -0.0148741   -0.0629027    0.0331545
3-6 months     MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          NEPAL                          <32                  >=38              -0.0482070   -0.1557634    0.0593494
3-6 months     MAL-ED          NEPAL                          [32-38)              >=38              -0.0197898   -0.0952278    0.0556482
3-6 months     MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          PERU                           <32                  >=38              -0.0640538   -0.1451289    0.0170214
3-6 months     MAL-ED          PERU                           [32-38)              >=38              -0.0326104   -0.1306697    0.0654489
3-6 months     MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0272641   -0.2033670    0.1488388
3-6 months     MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0044995   -0.1079147    0.0989157
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0530847   -0.0968215    0.2029910
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0301490   -0.1243284    0.0640304
3-6 months     PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     PROBIT          BELARUS                        <32                  >=38               0.0160881    0.0018654    0.0303108
3-6 months     PROBIT          BELARUS                        [32-38)              >=38               0.0174797   -0.0020922    0.0370517
3-6 months     SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed    INDIA                          <32                  >=38               0.0421270   -0.0012674    0.0855214
3-6 months     SAS-CompFeed    INDIA                          [32-38)              >=38               0.0477145   -0.0128586    0.1082877
6-9 months     COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     COHORTS         GUATEMALA                      <32                  >=38              -0.0152500   -0.0464181    0.0159182
6-9 months     COHORTS         GUATEMALA                      [32-38)              >=38               0.0222107   -0.0106012    0.0550225
6-9 months     LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5          MALAWI                         <32                  >=38               0.0570115   -0.0248905    0.1389135
6-9 months     LCNI-5          MALAWI                         [32-38)              >=38              -0.0469299   -0.1551158    0.0612560
6-9 months     MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          BANGLADESH                     <32                  >=38               0.0112965   -0.0380443    0.0606373
6-9 months     MAL-ED          BANGLADESH                     [32-38)              >=38               0.0080683   -0.0354917    0.0516283
6-9 months     MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          BRAZIL                         <32                  >=38              -0.0822075   -0.2295862    0.0651712
6-9 months     MAL-ED          BRAZIL                         [32-38)              >=38              -0.0529606   -0.1495806    0.0436593
6-9 months     MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          INDIA                          <32                  >=38               0.0010437   -0.0714692    0.0735566
6-9 months     MAL-ED          INDIA                          [32-38)              >=38              -0.0013110   -0.0568070    0.0541851
6-9 months     MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          NEPAL                          <32                  >=38               0.0595602   -0.0494697    0.1685901
6-9 months     MAL-ED          NEPAL                          [32-38)              >=38               0.0157121   -0.0590412    0.0904654
6-9 months     MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          PERU                           <32                  >=38               0.0220916   -0.0709218    0.1151049
6-9 months     MAL-ED          PERU                           [32-38)              >=38               0.0221380   -0.0834456    0.1277217
6-9 months     MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0316988   -0.0846934    0.1480910
6-9 months     MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0158990   -0.0843900    0.1161881
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0915065   -0.2114265    0.0284136
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0193994   -0.0879002    0.1266990
6-9 months     PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     PROBIT          BELARUS                        <32                  >=38              -0.0190315   -0.0306627   -0.0074002
6-9 months     PROBIT          BELARUS                        [32-38)              >=38              -0.0189497   -0.0368179   -0.0010814
6-9 months     SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed    INDIA                          <32                  >=38               0.0020628   -0.0764776    0.0806032
6-9 months     SAS-CompFeed    INDIA                          [32-38)              >=38               0.0123587   -0.0780093    0.1027268
6-9 months     SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0471135   -0.1066150    0.0123881
6-9 months     SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0224547   -0.0907956    0.0458862
9-12 months    COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    COHORTS         GUATEMALA                      <32                  >=38              -0.0213466   -0.0441400    0.0014469
9-12 months    COHORTS         GUATEMALA                      [32-38)              >=38              -0.0021193   -0.0380442    0.0338055
9-12 months    LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5          MALAWI                         <32                  >=38              -0.0921959   -0.1672711   -0.0171207
9-12 months    LCNI-5          MALAWI                         [32-38)              >=38               0.0148292   -0.0870727    0.1167310
9-12 months    MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          BANGLADESH                     <32                  >=38               0.0001946   -0.0487976    0.0491869
9-12 months    MAL-ED          BANGLADESH                     [32-38)              >=38               0.0304029   -0.0050690    0.0658747
9-12 months    MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          BRAZIL                         <32                  >=38               0.0578126   -0.1067690    0.2223941
9-12 months    MAL-ED          BRAZIL                         [32-38)              >=38              -0.1140101   -0.2287372    0.0007170
9-12 months    MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          INDIA                          <32                  >=38              -0.0661050   -0.1313434   -0.0008667
9-12 months    MAL-ED          INDIA                          [32-38)              >=38              -0.0639179   -0.1200192   -0.0078166
9-12 months    MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          NEPAL                          <32                  >=38              -0.0695752   -0.1864678    0.0473173
9-12 months    MAL-ED          NEPAL                          [32-38)              >=38               0.0011206   -0.0532525    0.0554936
9-12 months    MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          PERU                           <32                  >=38              -0.0442157   -0.1253769    0.0369455
9-12 months    MAL-ED          PERU                           [32-38)              >=38              -0.0373695   -0.1215841    0.0468450
9-12 months    MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0043843   -0.1660348    0.1748034
9-12 months    MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0068673   -0.1046483    0.1183829
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0378730   -0.1186742    0.0429282
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0264149   -0.0944314    0.0416017
9-12 months    PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    PROBIT          BELARUS                        <32                  >=38               0.0077433   -0.0075614    0.0230479
9-12 months    PROBIT          BELARUS                        [32-38)              >=38              -0.0051703   -0.0238282    0.0134876
9-12 months    SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed    INDIA                          <32                  >=38               0.0361289   -0.0387854    0.1110432
9-12 months    SAS-CompFeed    INDIA                          [32-38)              >=38               0.0140775   -0.0800725    0.1082274
9-12 months    SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA                          <32                  >=38              -0.1126611   -0.2024106   -0.0229115
9-12 months    SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0620603   -0.1657406    0.0416200
12-15 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   COHORTS         GUATEMALA                      <32                  >=38               0.0067588   -0.0244700    0.0379875
12-15 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0136377   -0.0559267    0.0286512
12-15 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.0130340   -0.0693083    0.0432403
12-15 months   MAL-ED          BANGLADESH                     [32-38)              >=38               0.0082314   -0.0342662    0.0507290
12-15 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          BRAZIL                         <32                  >=38               0.0051409   -0.1080089    0.1182908
12-15 months   MAL-ED          BRAZIL                         [32-38)              >=38               0.0378770   -0.0527288    0.1284828
12-15 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          INDIA                          <32                  >=38              -0.0548288   -0.1052672   -0.0043904
12-15 months   MAL-ED          INDIA                          [32-38)              >=38              -0.0281338   -0.0789783    0.0227107
12-15 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          NEPAL                          <32                  >=38               0.0849204   -0.0391604    0.2090011
12-15 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.0211538   -0.0832360    0.0409283
12-15 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          PERU                           <32                  >=38               0.0541389   -0.0167942    0.1250721
12-15 months   MAL-ED          PERU                           [32-38)              >=38              -0.0248798   -0.0952426    0.0454831
12-15 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1427046   -0.0205044    0.3059135
12-15 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0264879   -0.0873027    0.1402784
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0370669   -0.1683089    0.0941752
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0877893   -0.1756856    0.0001070
12-15 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   PROBIT          BELARUS                        <32                  >=38              -0.0662855   -0.3756281    0.2430572
12-15 months   PROBIT          BELARUS                        [32-38)              >=38              -0.0849835   -0.4287967    0.2588297
12-15 months   SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed    INDIA                          <32                  >=38              -0.0371081   -0.0985698    0.0243537
12-15 months   SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0299551   -0.0828441    0.0229340
12-15 months   SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0013172   -0.0463851    0.0437507
12-15 months   SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0217379   -0.0749016    0.0314257
15-18 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   COHORTS         GUATEMALA                      <32                  >=38               0.0016044   -0.0359390    0.0391477
15-18 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0038872   -0.0474020    0.0396277
15-18 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.0087198   -0.0605964    0.0431567
15-18 months   MAL-ED          BANGLADESH                     [32-38)              >=38               0.0261894   -0.0159742    0.0683530
15-18 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          BRAZIL                         <32                  >=38               0.1374431   -0.0595029    0.3343891
15-18 months   MAL-ED          BRAZIL                         [32-38)              >=38               0.1119469   -0.0105605    0.2344543
15-18 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          INDIA                          <32                  >=38               0.0214485   -0.0182733    0.0611702
15-18 months   MAL-ED          INDIA                          [32-38)              >=38               0.0298374   -0.0117819    0.0714567
15-18 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          NEPAL                          <32                  >=38               0.0410630   -0.0513961    0.1335221
15-18 months   MAL-ED          NEPAL                          [32-38)              >=38               0.0191792   -0.0555160    0.0938745
15-18 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          PERU                           <32                  >=38              -0.0218172   -0.1267829    0.0831484
15-18 months   MAL-ED          PERU                           [32-38)              >=38               0.0101759   -0.0764378    0.0967896
15-18 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1173971    0.0060020    0.2287922
15-18 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0399589   -0.0701308    0.1500485
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0412238   -0.0581949    0.1406426
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0276355   -0.0530359    0.1083068
15-18 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   PROBIT          BELARUS                        <32                  >=38               0.1215381   -0.0375981    0.2806743
15-18 months   PROBIT          BELARUS                        [32-38)              >=38               0.0668802   -0.0772501    0.2110105
15-18 months   SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed    INDIA                          <32                  >=38              -0.0375457   -0.1034285    0.0283372
15-18 months   SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0197529   -0.1059484    0.0664427
15-18 months   SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA                          <32                  >=38               0.0071126   -0.0331476    0.0473727
15-18 months   SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0060962   -0.0419323    0.0541246
18-21 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   COHORTS         GUATEMALA                      <32                  >=38              -0.0464155   -0.0811876   -0.0116434
18-21 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0208672   -0.0649430    0.0232086
18-21 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5          MALAWI                         <32                  >=38              -0.0067190   -0.1443672    0.1309292
18-21 months   LCNI-5          MALAWI                         [32-38)              >=38              -0.0585732   -0.1866784    0.0695321
18-21 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.0691832   -0.1146126   -0.0237538
18-21 months   MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0208994   -0.0973261    0.0555272
18-21 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          BRAZIL                         <32                  >=38              -0.0241784   -0.1038118    0.0554551
18-21 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.0143054   -0.1111648    0.0825540
18-21 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          INDIA                          <32                  >=38              -0.0017699   -0.0452918    0.0417520
18-21 months   MAL-ED          INDIA                          [32-38)              >=38              -0.0051705   -0.0452124    0.0348714
18-21 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          NEPAL                          <32                  >=38               0.0359004   -0.0532769    0.1250776
18-21 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.0207681   -0.0791471    0.0376108
18-21 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          PERU                           <32                  >=38               0.0037449   -0.0704777    0.0779675
18-21 months   MAL-ED          PERU                           [32-38)              >=38              -0.0665623   -0.1657234    0.0325987
18-21 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0817652   -0.0113540    0.1748844
18-21 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0330814   -0.1225293    0.1886920
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0608743   -0.1798846    0.0581360
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0729244   -0.1606426    0.0147937
18-21 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   PROBIT          BELARUS                        <32                  >=38               0.0157360   -0.2301395    0.2616114
18-21 months   PROBIT          BELARUS                        [32-38)              >=38               0.0708729   -0.6548615    0.7966074
21-24 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   COHORTS         GUATEMALA                      <32                  >=38               0.0328062   -0.0035562    0.0691687
21-24 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0020011   -0.0467771    0.0427748
21-24 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5          MALAWI                         <32                  >=38              -0.0879737   -0.2405912    0.0646438
21-24 months   LCNI-5          MALAWI                         [32-38)              >=38               0.0360682   -0.1525998    0.2247361
21-24 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.0176090   -0.0648039    0.0295859
21-24 months   MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0149190   -0.0542456    0.0244077
21-24 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          BRAZIL                         <32                  >=38              -0.0037649   -0.1242760    0.1167461
21-24 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.0594050   -0.1689002    0.0500902
21-24 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          INDIA                          <32                  >=38              -0.0091456   -0.0523130    0.0340218
21-24 months   MAL-ED          INDIA                          [32-38)              >=38              -0.0027268   -0.0429798    0.0375262
21-24 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          NEPAL                          <32                  >=38              -0.0100740   -0.1176579    0.0975100
21-24 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.0046577   -0.0911829    0.0818674
21-24 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          PERU                           <32                  >=38              -0.0537504   -0.1494243    0.0419235
21-24 months   MAL-ED          PERU                           [32-38)              >=38               0.0488787   -0.0808454    0.1786028
21-24 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0643104   -0.1241567   -0.0044640
21-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0698380   -0.1562936    0.0166177
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0854784   -0.2588813    0.0879244
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0820874   -0.1895856    0.0254108
21-24 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   PROBIT          BELARUS                        <32                  >=38              -0.0320135   -1.0737486    1.0097216
21-24 months   PROBIT          BELARUS                        [32-38)              >=38              -0.0037174   -1.0523627    1.0449279


### Parameter: PAR


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA                      >=38                 NA                 0.0513089    0.0147007    0.0879171
0-3 months     MAL-ED          BANGLADESH                     >=38                 NA                 0.0176931   -0.0222679    0.0576542
0-3 months     MAL-ED          BRAZIL                         >=38                 NA                 0.0409731   -0.0451286    0.1270749
0-3 months     MAL-ED          INDIA                          >=38                 NA                 0.0251320   -0.0291197    0.0793836
0-3 months     MAL-ED          NEPAL                          >=38                 NA                -0.0173723   -0.1099306    0.0751859
0-3 months     MAL-ED          PERU                           >=38                 NA                 0.0285543   -0.0446697    0.1017783
0-3 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0100160   -0.0349074    0.0148755
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0371682   -0.0161138    0.0904502
0-3 months     PROBIT          BELARUS                        >=38                 NA                -0.0270804   -0.0385854   -0.0155753
0-3 months     SAS-CompFeed    INDIA                          >=38                 NA                 0.0924602    0.0073460    0.1775745
3-6 months     COHORTS         GUATEMALA                      >=38                 NA                 0.0165140   -0.0114820    0.0445100
3-6 months     MAL-ED          BANGLADESH                     >=38                 NA                 0.0042710   -0.0174025    0.0259446
3-6 months     MAL-ED          BRAZIL                         >=38                 NA                -0.0154706   -0.0800684    0.0491271
3-6 months     MAL-ED          INDIA                          >=38                 NA                -0.0141638   -0.0497424    0.0214148
3-6 months     MAL-ED          NEPAL                          >=38                 NA                -0.0242370   -0.0834090    0.0349350
3-6 months     MAL-ED          PERU                           >=38                 NA                -0.0374243   -0.0903243    0.0154757
3-6 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0035962   -0.0305328    0.0233404
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0040370   -0.0510227    0.0429487
3-6 months     PROBIT          BELARUS                        >=38                 NA                 0.0167030    0.0025500    0.0308560
3-6 months     SAS-CompFeed    INDIA                          >=38                 NA                 0.0413819   -0.0018346    0.0845985
6-9 months     COHORTS         GUATEMALA                      >=38                 NA                 0.0041500   -0.0174582    0.0257583
6-9 months     LCNI-5          MALAWI                         >=38                 NA                 0.0253783   -0.0341991    0.0849556
6-9 months     MAL-ED          BANGLADESH                     >=38                 NA                 0.0050708   -0.0134511    0.0235928
6-9 months     MAL-ED          BRAZIL                         >=38                 NA                -0.0416518   -0.1044979    0.0211943
6-9 months     MAL-ED          INDIA                          >=38                 NA                -0.0099143   -0.0571995    0.0373708
6-9 months     MAL-ED          NEPAL                          >=38                 NA                 0.0304337   -0.0297599    0.0906273
6-9 months     MAL-ED          PERU                           >=38                 NA                 0.0171049   -0.0540005    0.0882103
6-9 months     MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0056688   -0.0157768    0.0271144
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0027431   -0.0563169    0.0508306
6-9 months     PROBIT          BELARUS                        >=38                 NA                -0.0178920   -0.0279180   -0.0078661
6-9 months     SAS-CompFeed    INDIA                          >=38                 NA                 0.0027463   -0.0743520    0.0798447
6-9 months     SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0364792   -0.0887666    0.0158083
9-12 months    COHORTS         GUATEMALA                      >=38                 NA                 0.0024798   -0.0146902    0.0196498
9-12 months    LCNI-5          MALAWI                         >=38                 NA                -0.0462053   -0.0956205    0.0032098
9-12 months    MAL-ED          BANGLADESH                     >=38                 NA                 0.0099778   -0.0072416    0.0271973
9-12 months    MAL-ED          BRAZIL                         >=38                 NA                -0.0299918   -0.1021300    0.0421464
9-12 months    MAL-ED          INDIA                          >=38                 NA                -0.0546899   -0.0943957   -0.0149841
9-12 months    MAL-ED          NEPAL                          >=38                 NA                -0.0239972   -0.0712445    0.0232502
9-12 months    MAL-ED          PERU                           >=38                 NA                -0.0301117   -0.0812558    0.0210325
9-12 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0015917   -0.0237692    0.0269525
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0161047   -0.0465518    0.0143425
9-12 months    PROBIT          BELARUS                        >=38                 NA                 0.0041502   -0.0106816    0.0189819
9-12 months    SAS-CompFeed    INDIA                          >=38                 NA                 0.0320029   -0.0415187    0.1055246
9-12 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -0.1017853   -0.1881325   -0.0154381
12-15 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0162619   -0.0424104    0.0098865
12-15 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0002642   -0.0191070    0.0196354
12-15 months   MAL-ED          BRAZIL                         >=38                 NA                 0.0166096   -0.0346775    0.0678967
12-15 months   MAL-ED          INDIA                          >=38                 NA                -0.0308384   -0.0664627    0.0047858
12-15 months   MAL-ED          NEPAL                          >=38                 NA                -0.0034392   -0.0531894    0.0463110
12-15 months   MAL-ED          PERU                           >=38                 NA                 0.0143938   -0.0280019    0.0567894
12-15 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0152385   -0.0120165    0.0424935
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0386456   -0.0818494    0.0045581
12-15 months   PROBIT          BELARUS                        >=38                 NA                -0.0655262   -0.3665149    0.2354626
12-15 months   SAS-CompFeed    INDIA                          >=38                 NA                -0.0353732   -0.0920837    0.0213373
12-15 months   SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0081653   -0.0475388    0.0312083
15-18 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0006660   -0.0293816    0.0280496
15-18 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0081771   -0.0120714    0.0284255
15-18 months   MAL-ED          BRAZIL                         >=38                 NA                 0.0929776    0.0043357    0.1816195
15-18 months   MAL-ED          INDIA                          >=38                 NA                 0.0173050   -0.0105923    0.0452024
15-18 months   MAL-ED          NEPAL                          >=38                 NA                 0.0172858   -0.0416470    0.0762186
15-18 months   MAL-ED          PERU                           >=38                 NA                 0.0028508   -0.0610134    0.0667151
15-18 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0171897   -0.0087535    0.0431328
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0166849   -0.0221248    0.0554946
15-18 months   PROBIT          BELARUS                        >=38                 NA                 0.1106873   -0.0416252    0.2629998
15-18 months   SAS-CompFeed    INDIA                          >=38                 NA                -0.0340448   -0.0991237    0.0310341
15-18 months   SAS-FoodSuppl   INDIA                          >=38                 NA                 0.0081264   -0.0267089    0.0429617
18-21 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0205618   -0.0483098    0.0071863
18-21 months   LCNI-5          MALAWI                         >=38                 NA                 0.0001180   -0.0901569    0.0903929
18-21 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0053664   -0.0353724    0.0246396
18-21 months   MAL-ED          BRAZIL                         >=38                 NA                -0.0117639   -0.0611318    0.0376039
18-21 months   MAL-ED          INDIA                          >=38                 NA                -0.0031635   -0.0308953    0.0245683
18-21 months   MAL-ED          NEPAL                          >=38                 NA                -0.0063225   -0.0526192    0.0399742
18-21 months   MAL-ED          PERU                           >=38                 NA                -0.0196377   -0.0632471    0.0239717
18-21 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0136026   -0.0184425    0.0456476
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0375217   -0.0812711    0.0062277
18-21 months   PROBIT          BELARUS                        >=38                 NA                 0.0216725   -0.2269804    0.2703255
21-24 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0152513   -0.0154912    0.0459938
21-24 months   LCNI-5          MALAWI                         >=38                 NA                -0.0463170   -0.1516013    0.0589673
21-24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0084164   -0.0286126    0.0117797
21-24 months   MAL-ED          BRAZIL                         >=38                 NA                -0.0272158   -0.0995213    0.0450898
21-24 months   MAL-ED          INDIA                          >=38                 NA                -0.0048163   -0.0337275    0.0240950
21-24 months   MAL-ED          NEPAL                          >=38                 NA                 0.0002398   -0.0646169    0.0650966
21-24 months   MAL-ED          PERU                           >=38                 NA                -0.0293704   -0.0901072    0.0313663
21-24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0183358   -0.0376287    0.0009570
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0528570   -0.1091807    0.0034668
21-24 months   PROBIT          BELARUS                        >=38                 NA                -0.0264853   -1.0262571    0.9732866
