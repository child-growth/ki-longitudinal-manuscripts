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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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




# Results Detail

## Results Plots
![](/tmp/baa98358-e678-4fd0-b7f5-7e9916600c18/e1ac6ca4-42a5-44ea-8738-f5b85caf9e74/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/baa98358-e678-4fd0-b7f5-7e9916600c18/e1ac6ca4-42a5-44ea-8738-f5b85caf9e74/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/baa98358-e678-4fd0-b7f5-7e9916600c18/e1ac6ca4-42a5-44ea-8738-f5b85caf9e74/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/baa98358-e678-4fd0-b7f5-7e9916600c18/e1ac6ca4-42a5-44ea-8738-f5b85caf9e74/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA     >=38                 NA                0.0691523   0.0426387   0.0956659
0-24 months   COHORTS         GUATEMALA     <32                  NA                0.0771312   0.0556844   0.0985779
0-24 months   COHORTS         GUATEMALA     [32-38)              NA                0.0714529   0.0415154   0.1013903
0-24 months   COHORTS         PHILIPPINES   >=38                 NA                0.1644495   0.1072979   0.2216010
0-24 months   COHORTS         PHILIPPINES   <32                  NA                0.1106615   0.0951993   0.1261236
0-24 months   COHORTS         PHILIPPINES   [32-38)              NA                0.1122671   0.0729228   0.1516113
0-24 months   PROBIT          BELARUS       >=38                 NA                0.0435673   0.0285940   0.0585407
0-24 months   PROBIT          BELARUS       <32                  NA                0.0813630   0.0477299   0.1149960
0-24 months   PROBIT          BELARUS       [32-38)              NA                0.0726989   0.0403628   0.1050349
0-24 months   SAS-CompFeed    INDIA         >=38                 NA                0.3200684   0.2333236   0.4068131
0-24 months   SAS-CompFeed    INDIA         <32                  NA                0.1453282   0.1158332   0.1748233
0-24 months   SAS-CompFeed    INDIA         [32-38)              NA                0.1297975   0.0734113   0.1861836
0-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                0.2857488   0.1517664   0.4197311
0-24 months   SAS-FoodSuppl   INDIA         <32                  NA                0.1460750   0.1051226   0.1870274
0-24 months   SAS-FoodSuppl   INDIA         [32-38)              NA                0.1909817   0.1047733   0.2771901
0-6 months    COHORTS         GUATEMALA     >=38                 NA                0.0550457   0.0279013   0.0821902
0-6 months    COHORTS         GUATEMALA     <32                  NA                0.0680668   0.0454614   0.0906721
0-6 months    COHORTS         GUATEMALA     [32-38)              NA                0.0645724   0.0345710   0.0945737
0-6 months    COHORTS         PHILIPPINES   >=38                 NA                0.0623231   0.0220992   0.1025470
0-6 months    COHORTS         PHILIPPINES   <32                  NA                0.0588419   0.0488924   0.0687914
0-6 months    COHORTS         PHILIPPINES   [32-38)              NA                0.0601760   0.0323244   0.0880276
0-6 months    PROBIT          BELARUS       >=38                 NA                0.0720208   0.0450089   0.0990327
0-6 months    PROBIT          BELARUS       <32                  NA                0.0795175   0.0458170   0.1132180
0-6 months    PROBIT          BELARUS       [32-38)              NA                0.0685134   0.0378606   0.0991663
0-6 months    SAS-CompFeed    INDIA         >=38                 NA                0.1875000   0.0647763   0.3102237
0-6 months    SAS-CompFeed    INDIA         <32                  NA                0.0627981   0.0374492   0.0881470
0-6 months    SAS-CompFeed    INDIA         [32-38)              NA                0.0612245   0.0329168   0.0895321
0-6 months    SAS-FoodSuppl   INDIA         >=38                 NA                0.1363636   0.0348425   0.2378848
0-6 months    SAS-FoodSuppl   INDIA         <32                  NA                0.0276817   0.0087443   0.0466190
0-6 months    SAS-FoodSuppl   INDIA         [32-38)              NA                0.0705882   0.0160716   0.1251049
6-24 months   COHORTS         GUATEMALA     >=38                 NA                0.0264706   0.0093999   0.0435413
6-24 months   COHORTS         GUATEMALA     <32                  NA                0.0256410   0.0123773   0.0389047
6-24 months   COHORTS         GUATEMALA     [32-38)              NA                0.0179211   0.0023476   0.0334947
6-24 months   COHORTS         PHILIPPINES   >=38                 NA                0.1524548   0.0948073   0.2101023
6-24 months   COHORTS         PHILIPPINES   <32                  NA                0.0621865   0.0466958   0.0776772
6-24 months   COHORTS         PHILIPPINES   [32-38)              NA                0.0700250   0.0371004   0.1029497
6-24 months   SAS-CompFeed    INDIA         >=38                 NA                0.2372385   0.1432261   0.3312508
6-24 months   SAS-CompFeed    INDIA         <32                  NA                0.0937255   0.0709249   0.1165260
6-24 months   SAS-CompFeed    INDIA         [32-38)              NA                0.0801254   0.0156168   0.1446340
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
0-24 months   COHORTS         GUATEMALA     <32                  >=38              1.1153806   0.6944781   1.7913796
0-24 months   COHORTS         GUATEMALA     [32-38)              >=38              1.0332675   0.5854897   1.8235023
0-24 months   COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS         PHILIPPINES   <32                  >=38              0.6729208   0.4627263   0.9785966
0-24 months   COHORTS         PHILIPPINES   [32-38)              >=38              0.6826843   0.4167101   1.1184223
0-24 months   PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   PROBIT          BELARUS       <32                  >=38              1.8675235   1.3211954   2.6397640
0-24 months   PROBIT          BELARUS       [32-38)              >=38              1.6686562   1.0920910   2.5496168
0-24 months   SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed    INDIA         <32                  >=38              0.4540537   0.3373090   0.6112044
0-24 months   SAS-CompFeed    INDIA         [32-38)              >=38              0.4055304   0.2515152   0.6538567
0-24 months   SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl   INDIA         <32                  >=38              0.5112007   0.2959066   0.8831373
0-24 months   SAS-FoodSuppl   INDIA         [32-38)              >=38              0.6683553   0.3480024   1.2836087
0-6 months    COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS         GUATEMALA     <32                  >=38              1.2365494   0.6823740   2.2407863
0-6 months    COHORTS         GUATEMALA     [32-38)              >=38              1.1730678   0.5960533   2.3086661
0-6 months    COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS         PHILIPPINES   <32                  >=38              0.9441431   0.4844672   1.8399721
0-6 months    COHORTS         PHILIPPINES   [32-38)              >=38              0.9655481   0.4364742   2.1359409
0-6 months    PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    PROBIT          BELARUS       <32                  >=38              1.1040900   0.8405753   1.4502147
0-6 months    PROBIT          BELARUS       [32-38)              >=38              0.9513003   0.6570560   1.3773138
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
6-24 months   COHORTS         PHILIPPINES   <32                  >=38              0.4079014   0.2593452   0.6415526
6-24 months   COHORTS         PHILIPPINES   [32-38)              >=38              0.4593166   0.2511607   0.8399871
6-24 months   SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed    INDIA         <32                  >=38              0.3950685   0.2435751   0.6407845
6-24 months   SAS-CompFeed    INDIA         [32-38)              >=38              0.3377419   0.1263507   0.9028016
6-24 months   SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl   INDIA         <32                  >=38              0.7485919   0.3541879   1.5821822
6-24 months   SAS-FoodSuppl   INDIA         [32-38)              >=38              0.7678571   0.3143617   1.8755611


### Parameter: PAR


agecat        studyid         country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS         GUATEMALA     >=38                 NA                 0.0039994   -0.0188864    0.0268852
0-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.0402576   -0.0960615    0.0155464
0-24 months   PROBIT          BELARUS       >=38                 NA                 0.0344521    0.0084756    0.0604285
0-24 months   SAS-CompFeed    INDIA         >=38                 NA                -0.1723863   -0.2539270   -0.0908455
0-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                -0.1158923   -0.2404366    0.0086519
0-6 months    COHORTS         GUATEMALA     >=38                 NA                 0.0092191   -0.0147394    0.0331776
0-6 months    COHORTS         PHILIPPINES   >=38                 NA                 0.0054100   -0.0342206    0.0450407
0-6 months    PROBIT          BELARUS       >=38                 NA                 0.0052756   -0.0154487    0.0260000
0-6 months    SAS-CompFeed    INDIA         >=38                 NA                -0.1209221   -0.2371560   -0.0046882
0-6 months    SAS-FoodSuppl   INDIA         >=38                 NA                -0.0885167   -0.1810177    0.0039842
6-24 months   COHORTS         GUATEMALA     >=38                 NA                -0.0024363   -0.0165334    0.0116609
6-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.0851754   -0.1412941   -0.0290566
6-24 months   SAS-CompFeed    INDIA         >=38                 NA                -0.1405574   -0.2373246   -0.0437901
6-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                -0.0359250   -0.1391525    0.0673024


### Parameter: PAF


agecat        studyid         country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS         GUATEMALA     >=38                 NA                 0.0546727   -0.3158819    0.3208785
0-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.3241560   -0.8603236    0.0574816
0-24 months   PROBIT          BELARUS       >=38                 NA                 0.4415837    0.2172669    0.6016154
0-24 months   SAS-CompFeed    INDIA         >=38                 NA                -1.1672792   -1.8527583   -0.6465114
0-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                -0.6822957   -1.5949373   -0.0906309
0-6 months    COHORTS         GUATEMALA     >=38                 NA                 0.1434550   -0.3214926    0.4448177
0-6 months    COHORTS         PHILIPPINES   >=38                 NA                 0.0798727   -0.7370425    0.5126001
0-6 months    PROBIT          BELARUS       >=38                 NA                 0.0682521   -0.2226347    0.2899317
0-6 months    SAS-CompFeed    INDIA         >=38                 NA                -1.8162500   -4.2450610   -0.5121395
0-6 months    SAS-FoodSuppl   INDIA         >=38                 NA                -1.8500000   -4.3856396   -0.5081774
6-24 months   COHORTS         GUATEMALA     >=38                 NA                -0.1013655   -0.8740452    0.3527338
6-24 months   COHORTS         PHILIPPINES   >=38                 NA                -1.2659944   -2.2808598   -0.5650564
6-24 months   SAS-CompFeed    INDIA         >=38                 NA                -1.4538246   -2.9015677   -0.5432912
6-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                -0.2831737   -1.4153842    0.3183135
