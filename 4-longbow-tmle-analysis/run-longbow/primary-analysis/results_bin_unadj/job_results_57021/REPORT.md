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

**Outcome Variable:** ever_swasted

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

agecat        studyid         country                        fage       ever_swasted   n_cell       n
------------  --------------  -----------------------------  --------  -------------  -------  ------
0-24 months   COHORTS         GUATEMALA                      >=38                  0      357    1285
0-24 months   COHORTS         GUATEMALA                      >=38                  1       25    1285
0-24 months   COHORTS         GUATEMALA                      <32                   0      554    1285
0-24 months   COHORTS         GUATEMALA                      <32                   1       47    1285
0-24 months   COHORTS         GUATEMALA                      [32-38)               0      280    1285
0-24 months   COHORTS         GUATEMALA                      [32-38)               1       22    1285
0-24 months   COHORTS         PHILIPPINES                    >=38                  0      285    2939
0-24 months   COHORTS         PHILIPPINES                    >=38                  1       43    2939
0-24 months   COHORTS         PHILIPPINES                    <32                   0     1823    2939
0-24 months   COHORTS         PHILIPPINES                    <32                   1      251    2939
0-24 months   COHORTS         PHILIPPINES                    [32-38)               0      466    2939
0-24 months   COHORTS         PHILIPPINES                    [32-38)               1       71    2939
0-24 months   LCNI-5          MALAWI                         >=38                  0       26     106
0-24 months   LCNI-5          MALAWI                         >=38                  1        0     106
0-24 months   LCNI-5          MALAWI                         <32                   0       56     106
0-24 months   LCNI-5          MALAWI                         <32                   1        0     106
0-24 months   LCNI-5          MALAWI                         [32-38)               0       24     106
0-24 months   LCNI-5          MALAWI                         [32-38)               1        0     106
0-24 months   MAL-ED          BANGLADESH                     >=38                  0       63     151
0-24 months   MAL-ED          BANGLADESH                     >=38                  1        6     151
0-24 months   MAL-ED          BANGLADESH                     <32                   0       28     151
0-24 months   MAL-ED          BANGLADESH                     <32                   1        2     151
0-24 months   MAL-ED          BANGLADESH                     [32-38)               0       46     151
0-24 months   MAL-ED          BANGLADESH                     [32-38)               1        6     151
0-24 months   MAL-ED          BRAZIL                         >=38                  0       30      79
0-24 months   MAL-ED          BRAZIL                         >=38                  1        0      79
0-24 months   MAL-ED          BRAZIL                         <32                   0       18      79
0-24 months   MAL-ED          BRAZIL                         <32                   1        0      79
0-24 months   MAL-ED          BRAZIL                         [32-38)               0       31      79
0-24 months   MAL-ED          BRAZIL                         [32-38)               1        0      79
0-24 months   MAL-ED          INDIA                          >=38                  0       34     161
0-24 months   MAL-ED          INDIA                          >=38                  1        2     161
0-24 months   MAL-ED          INDIA                          <32                   0       45     161
0-24 months   MAL-ED          INDIA                          <32                   1        8     161
0-24 months   MAL-ED          INDIA                          [32-38)               0       63     161
0-24 months   MAL-ED          INDIA                          [32-38)               1        9     161
0-24 months   MAL-ED          NEPAL                          >=38                  0       17      79
0-24 months   MAL-ED          NEPAL                          >=38                  1        0      79
0-24 months   MAL-ED          NEPAL                          <32                   0       13      79
0-24 months   MAL-ED          NEPAL                          <32                   1        2      79
0-24 months   MAL-ED          NEPAL                          [32-38)               0       46      79
0-24 months   MAL-ED          NEPAL                          [32-38)               1        1      79
0-24 months   MAL-ED          PERU                           >=38                  0       26      85
0-24 months   MAL-ED          PERU                           >=38                  1        1      85
0-24 months   MAL-ED          PERU                           <32                   0       28      85
0-24 months   MAL-ED          PERU                           <32                   1        1      85
0-24 months   MAL-ED          PERU                           [32-38)               0       29      85
0-24 months   MAL-ED          PERU                           [32-38)               1        0      85
0-24 months   MAL-ED          SOUTH AFRICA                   >=38                  0       62      90
0-24 months   MAL-ED          SOUTH AFRICA                   >=38                  1        3      90
0-24 months   MAL-ED          SOUTH AFRICA                   <32                   0        8      90
0-24 months   MAL-ED          SOUTH AFRICA                   <32                   1        1      90
0-24 months   MAL-ED          SOUTH AFRICA                   [32-38)               0       14      90
0-24 months   MAL-ED          SOUTH AFRICA                   [32-38)               1        2      90
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0       48     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1        0     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0       14     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1        1     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0       34     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1        3     100
0-24 months   PROBIT          BELARUS                        >=38                  0      692   16278
0-24 months   PROBIT          BELARUS                        >=38                  1       52   16278
0-24 months   PROBIT          BELARUS                        <32                   0    12012   16278
0-24 months   PROBIT          BELARUS                        <32                   1     1047   16278
0-24 months   PROBIT          BELARUS                        [32-38)               0     2304   16278
0-24 months   PROBIT          BELARUS                        [32-38)               1      171   16278
0-24 months   SAS-CompFeed    INDIA                          >=38                  0       32    1510
0-24 months   SAS-CompFeed    INDIA                          >=38                  1       17    1510
0-24 months   SAS-CompFeed    INDIA                          <32                   0     1086    1510
0-24 months   SAS-CompFeed    INDIA                          <32                   1      178    1510
0-24 months   SAS-CompFeed    INDIA                          [32-38)               0      169    1510
0-24 months   SAS-CompFeed    INDIA                          [32-38)               1       28    1510
0-24 months   SAS-FoodSuppl   INDIA                          >=38                  0       31     418
0-24 months   SAS-FoodSuppl   INDIA                          >=38                  1       13     418
0-24 months   SAS-FoodSuppl   INDIA                          <32                   0      247     418
0-24 months   SAS-FoodSuppl   INDIA                          <32                   1       42     418
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)               0       69     418
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)               1       16     418
0-6 months    COHORTS         GUATEMALA                      >=38                  0      293    1027
0-6 months    COHORTS         GUATEMALA                      >=38                  1       16    1027
0-6 months    COHORTS         GUATEMALA                      <32                   0      436    1027
0-6 months    COHORTS         GUATEMALA                      <32                   1       33    1027
0-6 months    COHORTS         GUATEMALA                      [32-38)               0      232    1027
0-6 months    COHORTS         GUATEMALA                      [32-38)               1       17    1027
0-6 months    COHORTS         PHILIPPINES                    >=38                  0      308    2938
0-6 months    COHORTS         PHILIPPINES                    >=38                  1       20    2938
0-6 months    COHORTS         PHILIPPINES                    <32                   0     1933    2938
0-6 months    COHORTS         PHILIPPINES                    <32                   1      140    2938
0-6 months    COHORTS         PHILIPPINES                    [32-38)               0      498    2938
0-6 months    COHORTS         PHILIPPINES                    [32-38)               1       39    2938
0-6 months    LCNI-5          MALAWI                         >=38                  0        9      38
0-6 months    LCNI-5          MALAWI                         >=38                  1        0      38
0-6 months    LCNI-5          MALAWI                         <32                   0       21      38
0-6 months    LCNI-5          MALAWI                         <32                   1        0      38
0-6 months    LCNI-5          MALAWI                         [32-38)               0        8      38
0-6 months    LCNI-5          MALAWI                         [32-38)               1        0      38
0-6 months    MAL-ED          BANGLADESH                     >=38                  0       63     151
0-6 months    MAL-ED          BANGLADESH                     >=38                  1        6     151
0-6 months    MAL-ED          BANGLADESH                     <32                   0       29     151
0-6 months    MAL-ED          BANGLADESH                     <32                   1        1     151
0-6 months    MAL-ED          BANGLADESH                     [32-38)               0       48     151
0-6 months    MAL-ED          BANGLADESH                     [32-38)               1        4     151
0-6 months    MAL-ED          BRAZIL                         >=38                  0       30      79
0-6 months    MAL-ED          BRAZIL                         >=38                  1        0      79
0-6 months    MAL-ED          BRAZIL                         <32                   0       18      79
0-6 months    MAL-ED          BRAZIL                         <32                   1        0      79
0-6 months    MAL-ED          BRAZIL                         [32-38)               0       31      79
0-6 months    MAL-ED          BRAZIL                         [32-38)               1        0      79
0-6 months    MAL-ED          INDIA                          >=38                  0       34     161
0-6 months    MAL-ED          INDIA                          >=38                  1        2     161
0-6 months    MAL-ED          INDIA                          <32                   0       46     161
0-6 months    MAL-ED          INDIA                          <32                   1        7     161
0-6 months    MAL-ED          INDIA                          [32-38)               0       66     161
0-6 months    MAL-ED          INDIA                          [32-38)               1        6     161
0-6 months    MAL-ED          NEPAL                          >=38                  0       17      79
0-6 months    MAL-ED          NEPAL                          >=38                  1        0      79
0-6 months    MAL-ED          NEPAL                          <32                   0       14      79
0-6 months    MAL-ED          NEPAL                          <32                   1        1      79
0-6 months    MAL-ED          NEPAL                          [32-38)               0       46      79
0-6 months    MAL-ED          NEPAL                          [32-38)               1        1      79
0-6 months    MAL-ED          PERU                           >=38                  0       27      85
0-6 months    MAL-ED          PERU                           >=38                  1        0      85
0-6 months    MAL-ED          PERU                           <32                   0       29      85
0-6 months    MAL-ED          PERU                           <32                   1        0      85
0-6 months    MAL-ED          PERU                           [32-38)               0       29      85
0-6 months    MAL-ED          PERU                           [32-38)               1        0      85
0-6 months    MAL-ED          SOUTH AFRICA                   >=38                  0       64      90
0-6 months    MAL-ED          SOUTH AFRICA                   >=38                  1        1      90
0-6 months    MAL-ED          SOUTH AFRICA                   <32                   0        8      90
0-6 months    MAL-ED          SOUTH AFRICA                   <32                   1        1      90
0-6 months    MAL-ED          SOUTH AFRICA                   [32-38)               0       15      90
0-6 months    MAL-ED          SOUTH AFRICA                   [32-38)               1        1      90
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0       48     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1        0     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0       15     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1        0     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0       36     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1        1     100
0-6 months    PROBIT          BELARUS                        >=38                  0      694   16275
0-6 months    PROBIT          BELARUS                        >=38                  1       49   16275
0-6 months    PROBIT          BELARUS                        <32                   0    12017   16275
0-6 months    PROBIT          BELARUS                        <32                   1     1040   16275
0-6 months    PROBIT          BELARUS                        [32-38)               0     2306   16275
0-6 months    PROBIT          BELARUS                        [32-38)               1      169   16275
0-6 months    SAS-CompFeed    INDIA                          >=38                  0       39    1502
0-6 months    SAS-CompFeed    INDIA                          >=38                  1        9    1502
0-6 months    SAS-CompFeed    INDIA                          <32                   0     1179    1502
0-6 months    SAS-CompFeed    INDIA                          <32                   1       79    1502
0-6 months    SAS-CompFeed    INDIA                          [32-38)               0      184    1502
0-6 months    SAS-CompFeed    INDIA                          [32-38)               1       12    1502
0-6 months    SAS-FoodSuppl   INDIA                          >=38                  0       38     418
0-6 months    SAS-FoodSuppl   INDIA                          >=38                  1        6     418
0-6 months    SAS-FoodSuppl   INDIA                          <32                   0      281     418
0-6 months    SAS-FoodSuppl   INDIA                          <32                   1        8     418
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)               0       79     418
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)               1        6     418
6-24 months   COHORTS         GUATEMALA                      >=38                  0      331    1165
6-24 months   COHORTS         GUATEMALA                      >=38                  1        9    1165
6-24 months   COHORTS         GUATEMALA                      <32                   0      532    1165
6-24 months   COHORTS         GUATEMALA                      <32                   1       14    1165
6-24 months   COHORTS         GUATEMALA                      [32-38)               0      274    1165
6-24 months   COHORTS         GUATEMALA                      [32-38)               1        5    1165
6-24 months   COHORTS         PHILIPPINES                    >=38                  0      280    2720
6-24 months   COHORTS         PHILIPPINES                    >=38                  1       25    2720
6-24 months   COHORTS         PHILIPPINES                    <32                   0     1792    2720
6-24 months   COHORTS         PHILIPPINES                    <32                   1      119    2720
6-24 months   COHORTS         PHILIPPINES                    [32-38)               0      465    2720
6-24 months   COHORTS         PHILIPPINES                    [32-38)               1       39    2720
6-24 months   LCNI-5          MALAWI                         >=38                  0       26     106
6-24 months   LCNI-5          MALAWI                         >=38                  1        0     106
6-24 months   LCNI-5          MALAWI                         <32                   0       56     106
6-24 months   LCNI-5          MALAWI                         <32                   1        0     106
6-24 months   LCNI-5          MALAWI                         [32-38)               0       24     106
6-24 months   LCNI-5          MALAWI                         [32-38)               1        0     106
6-24 months   MAL-ED          BANGLADESH                     >=38                  0       69     151
6-24 months   MAL-ED          BANGLADESH                     >=38                  1        0     151
6-24 months   MAL-ED          BANGLADESH                     <32                   0       29     151
6-24 months   MAL-ED          BANGLADESH                     <32                   1        1     151
6-24 months   MAL-ED          BANGLADESH                     [32-38)               0       50     151
6-24 months   MAL-ED          BANGLADESH                     [32-38)               1        2     151
6-24 months   MAL-ED          BRAZIL                         >=38                  0       30      79
6-24 months   MAL-ED          BRAZIL                         >=38                  1        0      79
6-24 months   MAL-ED          BRAZIL                         <32                   0       18      79
6-24 months   MAL-ED          BRAZIL                         <32                   1        0      79
6-24 months   MAL-ED          BRAZIL                         [32-38)               0       31      79
6-24 months   MAL-ED          BRAZIL                         [32-38)               1        0      79
6-24 months   MAL-ED          INDIA                          >=38                  0       36     161
6-24 months   MAL-ED          INDIA                          >=38                  1        0     161
6-24 months   MAL-ED          INDIA                          <32                   0       51     161
6-24 months   MAL-ED          INDIA                          <32                   1        2     161
6-24 months   MAL-ED          INDIA                          [32-38)               0       69     161
6-24 months   MAL-ED          INDIA                          [32-38)               1        3     161
6-24 months   MAL-ED          NEPAL                          >=38                  0       17      79
6-24 months   MAL-ED          NEPAL                          >=38                  1        0      79
6-24 months   MAL-ED          NEPAL                          <32                   0       14      79
6-24 months   MAL-ED          NEPAL                          <32                   1        1      79
6-24 months   MAL-ED          NEPAL                          [32-38)               0       47      79
6-24 months   MAL-ED          NEPAL                          [32-38)               1        0      79
6-24 months   MAL-ED          PERU                           >=38                  0       26      83
6-24 months   MAL-ED          PERU                           >=38                  1        1      83
6-24 months   MAL-ED          PERU                           <32                   0       27      83
6-24 months   MAL-ED          PERU                           <32                   1        1      83
6-24 months   MAL-ED          PERU                           [32-38)               0       28      83
6-24 months   MAL-ED          PERU                           [32-38)               1        0      83
6-24 months   MAL-ED          SOUTH AFRICA                   >=38                  0       63      90
6-24 months   MAL-ED          SOUTH AFRICA                   >=38                  1        2      90
6-24 months   MAL-ED          SOUTH AFRICA                   <32                   0        9      90
6-24 months   MAL-ED          SOUTH AFRICA                   <32                   1        0      90
6-24 months   MAL-ED          SOUTH AFRICA                   [32-38)               0       15      90
6-24 months   MAL-ED          SOUTH AFRICA                   [32-38)               1        1      90
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0       48     100
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1        0     100
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0       14     100
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1        1     100
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0       35     100
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1        2     100
6-24 months   PROBIT          BELARUS                        >=38                  0      732   15992
6-24 months   PROBIT          BELARUS                        >=38                  1        3   15992
6-24 months   PROBIT          BELARUS                        <32                   0    12802   15992
6-24 months   PROBIT          BELARUS                        <32                   1        7   15992
6-24 months   PROBIT          BELARUS                        [32-38)               0     2446   15992
6-24 months   PROBIT          BELARUS                        [32-38)               1        2   15992
6-24 months   SAS-CompFeed    INDIA                          >=38                  0       33    1386
6-24 months   SAS-CompFeed    INDIA                          >=38                  1       11    1386
6-24 months   SAS-CompFeed    INDIA                          <32                   0     1063    1386
6-24 months   SAS-CompFeed    INDIA                          <32                   1      106    1386
6-24 months   SAS-CompFeed    INDIA                          [32-38)               0      156    1386
6-24 months   SAS-CompFeed    INDIA                          [32-38)               1       17    1386
6-24 months   SAS-FoodSuppl   INDIA                          >=38                  0       36     402
6-24 months   SAS-FoodSuppl   INDIA                          >=38                  1        7     402
6-24 months   SAS-FoodSuppl   INDIA                          <32                   0      245     402
6-24 months   SAS-FoodSuppl   INDIA                          <32                   1       34     402
6-24 months   SAS-FoodSuppl   INDIA                          [32-38)               0       70     402
6-24 months   SAS-FoodSuppl   INDIA                          [32-38)               1       10     402


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

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
![](/tmp/96d755bc-2f45-4455-b807-e184e00e2237/5dbf68a4-8355-4901-b2a1-1879c35d0cbc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/96d755bc-2f45-4455-b807-e184e00e2237/5dbf68a4-8355-4901-b2a1-1879c35d0cbc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/96d755bc-2f45-4455-b807-e184e00e2237/5dbf68a4-8355-4901-b2a1-1879c35d0cbc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/96d755bc-2f45-4455-b807-e184e00e2237/5dbf68a4-8355-4901-b2a1-1879c35d0cbc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA     >=38                 NA                0.0654450   0.0406351   0.0902550
0-24 months   COHORTS         GUATEMALA     <32                  NA                0.0782030   0.0567292   0.0996768
0-24 months   COHORTS         GUATEMALA     [32-38)              NA                0.0728477   0.0435254   0.1021699
0-24 months   COHORTS         PHILIPPINES   >=38                 NA                0.1310976   0.0945660   0.1676291
0-24 months   COHORTS         PHILIPPINES   <32                  NA                0.1210222   0.1069831   0.1350613
0-24 months   COHORTS         PHILIPPINES   [32-38)              NA                0.1322160   0.1035622   0.1608698
0-24 months   PROBIT          BELARUS       >=38                 NA                0.0698925   0.0395679   0.1002171
0-24 months   PROBIT          BELARUS       <32                  NA                0.0801746   0.0465423   0.1138069
0-24 months   PROBIT          BELARUS       [32-38)              NA                0.0690909   0.0385422   0.0996396
0-24 months   SAS-CompFeed    INDIA         >=38                 NA                0.3469388   0.2419587   0.4519189
0-24 months   SAS-CompFeed    INDIA         <32                  NA                0.1408228   0.1113519   0.1702937
0-24 months   SAS-CompFeed    INDIA         [32-38)              NA                0.1421320   0.0944028   0.1898612
0-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                0.2954545   0.1604832   0.4304259
0-24 months   SAS-FoodSuppl   INDIA         <32                  NA                0.1453287   0.1046474   0.1860100
0-24 months   SAS-FoodSuppl   INDIA         [32-38)              NA                0.1882353   0.1050351   0.2714355
0-6 months    COHORTS         GUATEMALA     >=38                 NA                0.0517799   0.0270618   0.0764981
0-6 months    COHORTS         GUATEMALA     <32                  NA                0.0703625   0.0472045   0.0935204
0-6 months    COHORTS         GUATEMALA     [32-38)              NA                0.0682731   0.0369309   0.0996153
0-6 months    COHORTS         PHILIPPINES   >=38                 NA                0.0609756   0.0350755   0.0868757
0-6 months    COHORTS         PHILIPPINES   <32                  NA                0.0675350   0.0567305   0.0783394
0-6 months    COHORTS         PHILIPPINES   [32-38)              NA                0.0726257   0.0506720   0.0945794
0-6 months    PROBIT          BELARUS       >=38                 NA                0.0659489   0.0359348   0.0959629
0-6 months    PROBIT          BELARUS       <32                  NA                0.0796508   0.0459641   0.1133375
0-6 months    PROBIT          BELARUS       [32-38)              NA                0.0682828   0.0379291   0.0986365
0-6 months    SAS-CompFeed    INDIA         >=38                 NA                0.1875000   0.0647763   0.3102237
0-6 months    SAS-CompFeed    INDIA         <32                  NA                0.0627981   0.0374492   0.0881470
0-6 months    SAS-CompFeed    INDIA         [32-38)              NA                0.0612245   0.0329168   0.0895321
0-6 months    SAS-FoodSuppl   INDIA         >=38                 NA                0.1363636   0.0348425   0.2378848
0-6 months    SAS-FoodSuppl   INDIA         <32                  NA                0.0276817   0.0087443   0.0466190
0-6 months    SAS-FoodSuppl   INDIA         [32-38)              NA                0.0705882   0.0160716   0.1251049
6-24 months   COHORTS         GUATEMALA     >=38                 NA                0.0264706   0.0093999   0.0435413
6-24 months   COHORTS         GUATEMALA     <32                  NA                0.0256410   0.0123773   0.0389047
6-24 months   COHORTS         GUATEMALA     [32-38)              NA                0.0179211   0.0023476   0.0334947
6-24 months   COHORTS         PHILIPPINES   >=38                 NA                0.0819672   0.0511760   0.1127585
6-24 months   COHORTS         PHILIPPINES   <32                  NA                0.0622711   0.0514348   0.0731073
6-24 months   COHORTS         PHILIPPINES   [32-38)              NA                0.0773810   0.0540495   0.1007124
6-24 months   SAS-CompFeed    INDIA         >=38                 NA                0.2500000   0.1262891   0.3737109
6-24 months   SAS-CompFeed    INDIA         <32                  NA                0.0906758   0.0681797   0.1131719
6-24 months   SAS-CompFeed    INDIA         [32-38)              NA                0.0982659   0.0410380   0.1554938
6-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                0.1627907   0.0523100   0.2732714
6-24 months   SAS-FoodSuppl   INDIA         <32                  NA                0.1218638   0.0834307   0.1602969
6-24 months   SAS-FoodSuppl   INDIA         [32-38)              NA                0.1250000   0.0524390   0.1975610


### Parameter: E(Y)


agecat        studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA     NA                   NA                0.0731518   0.0589094   0.0873941
0-24 months   COHORTS         PHILIPPINES   NA                   NA                0.1241919   0.1122665   0.1361173
0-24 months   PROBIT          BELARUS       NA                   NA                0.0780194   0.0455878   0.1104510
0-24 months   SAS-CompFeed    INDIA         NA                   NA                0.1476821   0.1188009   0.1765633
0-24 months   SAS-FoodSuppl   INDIA         NA                   NA                0.1698565   0.1338154   0.2058975
0-6 months    COHORTS         GUATEMALA     NA                   NA                0.0642648   0.0492598   0.0792699
0-6 months    COHORTS         PHILIPPINES   NA                   NA                0.0677332   0.0586452   0.0768211
0-6 months    PROBIT          BELARUS       NA                   NA                0.0772965   0.0448202   0.1097727
0-6 months    SAS-CompFeed    INDIA         NA                   NA                0.0665779   0.0427569   0.0903989
0-6 months    SAS-FoodSuppl   INDIA         NA                   NA                0.0478469   0.0273607   0.0683330
6-24 months   COHORTS         GUATEMALA     NA                   NA                0.0240343   0.0152359   0.0328328
6-24 months   COHORTS         PHILIPPINES   NA                   NA                0.0672794   0.0578635   0.0766953
6-24 months   SAS-CompFeed    INDIA         NA                   NA                0.0966811   0.0731505   0.1202117
6-24 months   SAS-FoodSuppl   INDIA         NA                   NA                0.1268657   0.0942904   0.1594410


### Parameter: RR


agecat        studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS         GUATEMALA     <32                  >=38              1.1949418   0.7482645   1.9082635
0-24 months   COHORTS         GUATEMALA     [32-38)              >=38              1.1131126   0.6403310   1.9349673
0-24 months   COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS         PHILIPPINES   <32                  >=38              0.9231459   0.6826255   1.2484127
0-24 months   COHORTS         PHILIPPINES   [32-38)              >=38              1.0085315   0.7085618   1.4354933
0-24 months   PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   PROBIT          BELARUS       <32                  >=38              1.1471134   0.8645771   1.5219800
0-24 months   PROBIT          BELARUS       [32-38)              >=38              0.9885315   0.6980627   1.3998663
0-24 months   SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed    INDIA         <32                  >=38              0.4059010   0.2828679   0.5824472
0-24 months   SAS-CompFeed    INDIA         [32-38)              >=38              0.4096745   0.2802226   0.5989282
0-24 months   SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl   INDIA         <32                  >=38              0.4918818   0.2878585   0.8405091
0-24 months   SAS-FoodSuppl   INDIA         [32-38)              >=38              0.6371041   0.3374036   1.2030152
0-6 months    COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS         GUATEMALA     <32                  >=38              1.3588753   0.7609608   2.4265928
0-6 months    COHORTS         GUATEMALA     [32-38)              >=38              1.3185241   0.6799227   2.5569169
0-6 months    COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS         PHILIPPINES   <32                  >=38              1.1075736   0.7034774   1.7437933
0-6 months    COHORTS         PHILIPPINES   [32-38)              >=38              1.1910615   0.7071598   2.0060917
0-6 months    PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    PROBIT          BELARUS       <32                  >=38              1.2077656   0.9258969   1.5754431
0-6 months    PROBIT          BELARUS       [32-38)              >=38              1.0353906   0.7437524   1.4413853
0-6 months    SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed    INDIA         <32                  >=38              0.3349232   0.1704948   0.6579294
0-6 months    SAS-CompFeed    INDIA         [32-38)              >=38              0.3265306   0.1350830   0.7893089
0-6 months    SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    SAS-FoodSuppl   INDIA         <32                  >=38              0.2029988   0.0738566   0.5579534
0-6 months    SAS-FoodSuppl   INDIA         [32-38)              >=38              0.5176471   0.1770741   1.5132562
6-24 months   COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS         GUATEMALA     <32                  >=38              0.9686610   0.4237702   2.2141811
6-24 months   COHORTS         GUATEMALA     [32-38)              >=38              0.6770211   0.2294185   1.9979103
6-24 months   COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS         PHILIPPINES   <32                  >=38              0.7597070   0.5021662   1.1493300
6-24 months   COHORTS         PHILIPPINES   [32-38)              >=38              0.9440476   0.5831743   1.5282324
6-24 months   SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed    INDIA         <32                  >=38              0.3627032   0.1960684   0.6709576
6-24 months   SAS-CompFeed    INDIA         [32-38)              >=38              0.3930636   0.1835928   0.8415306
6-24 months   SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl   INDIA         <32                  >=38              0.7485919   0.3541879   1.5821822
6-24 months   SAS-FoodSuppl   INDIA         [32-38)              >=38              0.7678571   0.3143617   1.8755611


### Parameter: PAR


agecat        studyid         country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS         GUATEMALA     >=38                 NA                 0.0077067   -0.0135633    0.0289767
0-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.0069057   -0.0412406    0.0274293
0-24 months   PROBIT          BELARUS       >=38                 NA                 0.0081269   -0.0122799    0.0285338
0-24 months   SAS-CompFeed    INDIA         >=38                 NA                -0.1992567   -0.3022883   -0.0962251
0-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                -0.1255981   -0.2508220   -0.0003742
0-6 months    COHORTS         GUATEMALA     >=38                 NA                 0.0124849   -0.0091594    0.0341292
0-6 months    COHORTS         PHILIPPINES   >=38                 NA                 0.0067575   -0.0178113    0.0313264
0-6 months    PROBIT          BELARUS       >=38                 NA                 0.0113476   -0.0071376    0.0298328
0-6 months    SAS-CompFeed    INDIA         >=38                 NA                -0.1209221   -0.2371560   -0.0046882
0-6 months    SAS-FoodSuppl   INDIA         >=38                 NA                -0.0885167   -0.1810177    0.0039842
6-24 months   COHORTS         GUATEMALA     >=38                 NA                -0.0024363   -0.0165334    0.0116609
6-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.0146878   -0.0433955    0.0140199
6-24 months   SAS-CompFeed    INDIA         >=38                 NA                -0.1533189   -0.2811576   -0.0254802
6-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                -0.0359250   -0.1391525    0.0673024


### Parameter: PAF


agecat        studyid         country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS         GUATEMALA     >=38                 NA                 0.1053526   -0.2373655    0.3531466
0-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.0556047   -0.3716075    0.1875946
0-24 months   PROBIT          BELARUS       >=38                 NA                 0.1041656   -0.1799522    0.3198714
0-24 months   SAS-CompFeed    INDIA         >=38                 NA                -1.3492267   -2.2513526   -0.6974062
0-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                -0.7394366   -1.6501621   -0.1416810
0-6 months    COHORTS         GUATEMALA     >=38                 NA                 0.1942728   -0.2197063    0.4677437
0-6 months    COHORTS         PHILIPPINES   >=38                 NA                 0.0997671   -0.3466070    0.3981769
0-6 months    PROBIT          BELARUS       >=38                 NA                 0.1468063   -0.1053918    0.3414648
0-6 months    SAS-CompFeed    INDIA         >=38                 NA                -1.8162500   -4.2450610   -0.5121395
0-6 months    SAS-FoodSuppl   INDIA         >=38                 NA                -1.8500000   -4.3856396   -0.5081774
6-24 months   COHORTS         GUATEMALA     >=38                 NA                -0.1013655   -0.8740452    0.3527338
6-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.2183105   -0.7279894    0.1410361
6-24 months   SAS-CompFeed    INDIA         >=38                 NA                -1.5858209   -3.5694431   -0.4633008
6-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                -0.2831737   -1.4153842    0.3183135
