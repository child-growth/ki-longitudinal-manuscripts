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

**Outcome Variable:** ever_stunted

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

agecat        studyid         country                        fage       ever_stunted   n_cell       n
------------  --------------  -----------------------------  --------  -------------  -------  ------
0-24 months   COHORTS         GUATEMALA                      >=38                  0       96    1301
0-24 months   COHORTS         GUATEMALA                      >=38                  1      290    1301
0-24 months   COHORTS         GUATEMALA                      <32                   0      147    1301
0-24 months   COHORTS         GUATEMALA                      <32                   1      462    1301
0-24 months   COHORTS         GUATEMALA                      [32-38)               0       64    1301
0-24 months   COHORTS         GUATEMALA                      [32-38)               1      242    1301
0-24 months   COHORTS         PHILIPPINES                    >=38                  0       90    2951
0-24 months   COHORTS         PHILIPPINES                    >=38                  1      240    2951
0-24 months   COHORTS         PHILIPPINES                    <32                   0      669    2951
0-24 months   COHORTS         PHILIPPINES                    <32                   1     1414    2951
0-24 months   COHORTS         PHILIPPINES                    [32-38)               0      157    2951
0-24 months   COHORTS         PHILIPPINES                    [32-38)               1      381    2951
0-24 months   LCNI-5          MALAWI                         >=38                  0       10     106
0-24 months   LCNI-5          MALAWI                         >=38                  1       16     106
0-24 months   LCNI-5          MALAWI                         <32                   0       22     106
0-24 months   LCNI-5          MALAWI                         <32                   1       34     106
0-24 months   LCNI-5          MALAWI                         [32-38)               0        8     106
0-24 months   LCNI-5          MALAWI                         [32-38)               1       16     106
0-24 months   MAL-ED          BANGLADESH                     >=38                  0       27     151
0-24 months   MAL-ED          BANGLADESH                     >=38                  1       42     151
0-24 months   MAL-ED          BANGLADESH                     <32                   0        7     151
0-24 months   MAL-ED          BANGLADESH                     <32                   1       23     151
0-24 months   MAL-ED          BANGLADESH                     [32-38)               0       23     151
0-24 months   MAL-ED          BANGLADESH                     [32-38)               1       29     151
0-24 months   MAL-ED          BRAZIL                         >=38                  0       21      79
0-24 months   MAL-ED          BRAZIL                         >=38                  1        9      79
0-24 months   MAL-ED          BRAZIL                         <32                   0        8      79
0-24 months   MAL-ED          BRAZIL                         <32                   1       10      79
0-24 months   MAL-ED          BRAZIL                         [32-38)               0       25      79
0-24 months   MAL-ED          BRAZIL                         [32-38)               1        6      79
0-24 months   MAL-ED          INDIA                          >=38                  0       16     161
0-24 months   MAL-ED          INDIA                          >=38                  1       20     161
0-24 months   MAL-ED          INDIA                          <32                   0       18     161
0-24 months   MAL-ED          INDIA                          <32                   1       35     161
0-24 months   MAL-ED          INDIA                          [32-38)               0       24     161
0-24 months   MAL-ED          INDIA                          [32-38)               1       48     161
0-24 months   MAL-ED          NEPAL                          >=38                  0       12      79
0-24 months   MAL-ED          NEPAL                          >=38                  1        5      79
0-24 months   MAL-ED          NEPAL                          <32                   0        9      79
0-24 months   MAL-ED          NEPAL                          <32                   1        6      79
0-24 months   MAL-ED          NEPAL                          [32-38)               0       28      79
0-24 months   MAL-ED          NEPAL                          [32-38)               1       19      79
0-24 months   MAL-ED          PERU                           >=38                  0       10      85
0-24 months   MAL-ED          PERU                           >=38                  1       17      85
0-24 months   MAL-ED          PERU                           <32                   0        8      85
0-24 months   MAL-ED          PERU                           <32                   1       21      85
0-24 months   MAL-ED          PERU                           [32-38)               0        7      85
0-24 months   MAL-ED          PERU                           [32-38)               1       22      85
0-24 months   MAL-ED          SOUTH AFRICA                   >=38                  0       28      90
0-24 months   MAL-ED          SOUTH AFRICA                   >=38                  1       37      90
0-24 months   MAL-ED          SOUTH AFRICA                   <32                   0        6      90
0-24 months   MAL-ED          SOUTH AFRICA                   <32                   1        3      90
0-24 months   MAL-ED          SOUTH AFRICA                   [32-38)               0        5      90
0-24 months   MAL-ED          SOUTH AFRICA                   [32-38)               1       11      90
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0        4     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1       44     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0        1     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1       14     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0        3     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1       34     100
0-24 months   PROBIT          BELARUS                        >=38                  0      652   16277
0-24 months   PROBIT          BELARUS                        >=38                  1       92   16277
0-24 months   PROBIT          BELARUS                        <32                   0    11380   16277
0-24 months   PROBIT          BELARUS                        <32                   1     1678   16277
0-24 months   PROBIT          BELARUS                        [32-38)               0     2215   16277
0-24 months   PROBIT          BELARUS                        [32-38)               1      260   16277
0-24 months   SAS-CompFeed    INDIA                          >=38                  0       11    1530
0-24 months   SAS-CompFeed    INDIA                          >=38                  1       40    1530
0-24 months   SAS-CompFeed    INDIA                          <32                   0      406    1530
0-24 months   SAS-CompFeed    INDIA                          <32                   1      873    1530
0-24 months   SAS-CompFeed    INDIA                          [32-38)               0       56    1530
0-24 months   SAS-CompFeed    INDIA                          [32-38)               1      144    1530
0-24 months   SAS-FoodSuppl   INDIA                          >=38                  0        7     418
0-24 months   SAS-FoodSuppl   INDIA                          >=38                  1       37     418
0-24 months   SAS-FoodSuppl   INDIA                          <32                   0       51     418
0-24 months   SAS-FoodSuppl   INDIA                          <32                   1      238     418
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)               0       14     418
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)               1       71     418
0-6 months    COHORTS         GUATEMALA                      >=38                  0      205    1052
0-6 months    COHORTS         GUATEMALA                      >=38                  1      108    1052
0-6 months    COHORTS         GUATEMALA                      <32                   0      340    1052
0-6 months    COHORTS         GUATEMALA                      <32                   1      144    1052
0-6 months    COHORTS         GUATEMALA                      [32-38)               0      169    1052
0-6 months    COHORTS         GUATEMALA                      [32-38)               1       86    1052
0-6 months    COHORTS         PHILIPPINES                    >=38                  0      231    2951
0-6 months    COHORTS         PHILIPPINES                    >=38                  1       99    2951
0-6 months    COHORTS         PHILIPPINES                    <32                   0     1595    2951
0-6 months    COHORTS         PHILIPPINES                    <32                   1      488    2951
0-6 months    COHORTS         PHILIPPINES                    [32-38)               0      419    2951
0-6 months    COHORTS         PHILIPPINES                    [32-38)               1      119    2951
0-6 months    LCNI-5          MALAWI                         >=38                  0        7      38
0-6 months    LCNI-5          MALAWI                         >=38                  1        2      38
0-6 months    LCNI-5          MALAWI                         <32                   0       12      38
0-6 months    LCNI-5          MALAWI                         <32                   1        9      38
0-6 months    LCNI-5          MALAWI                         [32-38)               0        3      38
0-6 months    LCNI-5          MALAWI                         [32-38)               1        5      38
0-6 months    MAL-ED          BANGLADESH                     >=38                  0       49     151
0-6 months    MAL-ED          BANGLADESH                     >=38                  1       20     151
0-6 months    MAL-ED          BANGLADESH                     <32                   0       16     151
0-6 months    MAL-ED          BANGLADESH                     <32                   1       14     151
0-6 months    MAL-ED          BANGLADESH                     [32-38)               0       37     151
0-6 months    MAL-ED          BANGLADESH                     [32-38)               1       15     151
0-6 months    MAL-ED          BRAZIL                         >=38                  0       24      79
0-6 months    MAL-ED          BRAZIL                         >=38                  1        6      79
0-6 months    MAL-ED          BRAZIL                         <32                   0       10      79
0-6 months    MAL-ED          BRAZIL                         <32                   1        8      79
0-6 months    MAL-ED          BRAZIL                         [32-38)               0       26      79
0-6 months    MAL-ED          BRAZIL                         [32-38)               1        5      79
0-6 months    MAL-ED          INDIA                          >=38                  0       25     161
0-6 months    MAL-ED          INDIA                          >=38                  1       11     161
0-6 months    MAL-ED          INDIA                          <32                   0       35     161
0-6 months    MAL-ED          INDIA                          <32                   1       18     161
0-6 months    MAL-ED          INDIA                          [32-38)               0       47     161
0-6 months    MAL-ED          INDIA                          [32-38)               1       25     161
0-6 months    MAL-ED          NEPAL                          >=38                  0       14      79
0-6 months    MAL-ED          NEPAL                          >=38                  1        3      79
0-6 months    MAL-ED          NEPAL                          <32                   0       13      79
0-6 months    MAL-ED          NEPAL                          <32                   1        2      79
0-6 months    MAL-ED          NEPAL                          [32-38)               0       38      79
0-6 months    MAL-ED          NEPAL                          [32-38)               1        9      79
0-6 months    MAL-ED          PERU                           >=38                  0       21      85
0-6 months    MAL-ED          PERU                           >=38                  1        6      85
0-6 months    MAL-ED          PERU                           <32                   0       15      85
0-6 months    MAL-ED          PERU                           <32                   1       14      85
0-6 months    MAL-ED          PERU                           [32-38)               0       11      85
0-6 months    MAL-ED          PERU                           [32-38)               1       18      85
0-6 months    MAL-ED          SOUTH AFRICA                   >=38                  0       44      90
0-6 months    MAL-ED          SOUTH AFRICA                   >=38                  1       21      90
0-6 months    MAL-ED          SOUTH AFRICA                   <32                   0        7      90
0-6 months    MAL-ED          SOUTH AFRICA                   <32                   1        2      90
0-6 months    MAL-ED          SOUTH AFRICA                   [32-38)               0        9      90
0-6 months    MAL-ED          SOUTH AFRICA                   [32-38)               1        7      90
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0       31     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1       17     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0        5     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1       10     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0       21     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1       16     100
0-6 months    PROBIT          BELARUS                        >=38                  0      696   16272
0-6 months    PROBIT          BELARUS                        >=38                  1       47   16272
0-6 months    PROBIT          BELARUS                        <32                   0    12152   16272
0-6 months    PROBIT          BELARUS                        <32                   1      903   16272
0-6 months    PROBIT          BELARUS                        [32-38)               0     2348   16272
0-6 months    PROBIT          BELARUS                        [32-38)               1      126   16272
0-6 months    SAS-CompFeed    INDIA                          >=38                  0       23    1527
0-6 months    SAS-CompFeed    INDIA                          >=38                  1       27    1527
0-6 months    SAS-CompFeed    INDIA                          <32                   0      742    1527
0-6 months    SAS-CompFeed    INDIA                          <32                   1      535    1527
0-6 months    SAS-CompFeed    INDIA                          [32-38)               0      113    1527
0-6 months    SAS-CompFeed    INDIA                          [32-38)               1       87    1527
0-6 months    SAS-FoodSuppl   INDIA                          >=38                  0       25     416
0-6 months    SAS-FoodSuppl   INDIA                          >=38                  1       18     416
0-6 months    SAS-FoodSuppl   INDIA                          <32                   0      171     416
0-6 months    SAS-FoodSuppl   INDIA                          <32                   1      117     416
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)               0       58     416
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)               1       27     416
6-24 months   COHORTS         GUATEMALA                      >=38                  0       65     861
6-24 months   COHORTS         GUATEMALA                      >=38                  1      182     861
6-24 months   COHORTS         GUATEMALA                      <32                   0       95     861
6-24 months   COHORTS         GUATEMALA                      <32                   1      318     861
6-24 months   COHORTS         GUATEMALA                      [32-38)               0       45     861
6-24 months   COHORTS         GUATEMALA                      [32-38)               1      156     861
6-24 months   COHORTS         PHILIPPINES                    >=38                  0       70    2054
6-24 months   COHORTS         PHILIPPINES                    >=38                  1      141    2054
6-24 months   COHORTS         PHILIPPINES                    <32                   0      527    2054
6-24 months   COHORTS         PHILIPPINES                    <32                   1      926    2054
6-24 months   COHORTS         PHILIPPINES                    [32-38)               0      128    2054
6-24 months   COHORTS         PHILIPPINES                    [32-38)               1      262    2054
6-24 months   LCNI-5          MALAWI                         >=38                  0       10      90
6-24 months   LCNI-5          MALAWI                         >=38                  1       14      90
6-24 months   LCNI-5          MALAWI                         <32                   0       22      90
6-24 months   LCNI-5          MALAWI                         <32                   1       25      90
6-24 months   LCNI-5          MALAWI                         [32-38)               0        8      90
6-24 months   LCNI-5          MALAWI                         [32-38)               1       11      90
6-24 months   MAL-ED          BANGLADESH                     >=38                  0       27     102
6-24 months   MAL-ED          BANGLADESH                     >=38                  1       22     102
6-24 months   MAL-ED          BANGLADESH                     <32                   0        7     102
6-24 months   MAL-ED          BANGLADESH                     <32                   1        9     102
6-24 months   MAL-ED          BANGLADESH                     [32-38)               0       23     102
6-24 months   MAL-ED          BANGLADESH                     [32-38)               1       14     102
6-24 months   MAL-ED          BRAZIL                         >=38                  0       21      60
6-24 months   MAL-ED          BRAZIL                         >=38                  1        3      60
6-24 months   MAL-ED          BRAZIL                         <32                   0        8      60
6-24 months   MAL-ED          BRAZIL                         <32                   1        2      60
6-24 months   MAL-ED          BRAZIL                         [32-38)               0       25      60
6-24 months   MAL-ED          BRAZIL                         [32-38)               1        1      60
6-24 months   MAL-ED          INDIA                          >=38                  0       16     107
6-24 months   MAL-ED          INDIA                          >=38                  1        9     107
6-24 months   MAL-ED          INDIA                          <32                   0       18     107
6-24 months   MAL-ED          INDIA                          <32                   1       17     107
6-24 months   MAL-ED          INDIA                          [32-38)               0       24     107
6-24 months   MAL-ED          INDIA                          [32-38)               1       23     107
6-24 months   MAL-ED          NEPAL                          >=38                  0       12      65
6-24 months   MAL-ED          NEPAL                          >=38                  1        2      65
6-24 months   MAL-ED          NEPAL                          <32                   0        9      65
6-24 months   MAL-ED          NEPAL                          <32                   1        4      65
6-24 months   MAL-ED          NEPAL                          [32-38)               0       28      65
6-24 months   MAL-ED          NEPAL                          [32-38)               1       10      65
6-24 months   MAL-ED          PERU                           >=38                  0       10      46
6-24 months   MAL-ED          PERU                           >=38                  1       11      46
6-24 months   MAL-ED          PERU                           <32                   0        7      46
6-24 months   MAL-ED          PERU                           <32                   1        7      46
6-24 months   MAL-ED          PERU                           [32-38)               0        7      46
6-24 months   MAL-ED          PERU                           [32-38)               1        4      46
6-24 months   MAL-ED          SOUTH AFRICA                   >=38                  0       28      60
6-24 months   MAL-ED          SOUTH AFRICA                   >=38                  1       16      60
6-24 months   MAL-ED          SOUTH AFRICA                   <32                   0        6      60
6-24 months   MAL-ED          SOUTH AFRICA                   <32                   1        1      60
6-24 months   MAL-ED          SOUTH AFRICA                   [32-38)               0        5      60
6-24 months   MAL-ED          SOUTH AFRICA                   [32-38)               1        4      60
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0        4      57
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1       27      57
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0        1      57
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1        4      57
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0        3      57
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1       18      57
6-24 months   PROBIT          BELARUS                        >=38                  0      645   14940
6-24 months   PROBIT          BELARUS                        >=38                  1       45   14940
6-24 months   PROBIT          BELARUS                        <32                   0    11151   14940
6-24 months   PROBIT          BELARUS                        <32                   1      775   14940
6-24 months   PROBIT          BELARUS                        [32-38)               0     2190   14940
6-24 months   PROBIT          BELARUS                        [32-38)               1      134   14940
6-24 months   SAS-CompFeed    INDIA                          >=38                  0        9     812
6-24 months   SAS-CompFeed    INDIA                          >=38                  1       13     812
6-24 months   SAS-CompFeed    INDIA                          <32                   0      351     812
6-24 months   SAS-CompFeed    INDIA                          <32                   1      338     812
6-24 months   SAS-CompFeed    INDIA                          [32-38)               0       44     812
6-24 months   SAS-CompFeed    INDIA                          [32-38)               1       57     812
6-24 months   SAS-FoodSuppl   INDIA                          >=38                  0        6     243
6-24 months   SAS-FoodSuppl   INDIA                          >=38                  1       19     243
6-24 months   SAS-FoodSuppl   INDIA                          <32                   0       44     243
6-24 months   SAS-FoodSuppl   INDIA                          <32                   1      121     243
6-24 months   SAS-FoodSuppl   INDIA                          [32-38)               0        9     243
6-24 months   SAS-FoodSuppl   INDIA                          [32-38)               1       44     243


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

* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/38719916-4ea7-4f4e-98fc-d7364369521c/2449e1f0-7b34-48a2-9e34-d4c81bf0cdd5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/38719916-4ea7-4f4e-98fc-d7364369521c/2449e1f0-7b34-48a2-9e34-d4c81bf0cdd5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/38719916-4ea7-4f4e-98fc-d7364369521c/2449e1f0-7b34-48a2-9e34-d4c81bf0cdd5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/38719916-4ea7-4f4e-98fc-d7364369521c/2449e1f0-7b34-48a2-9e34-d4c81bf0cdd5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA                      >=38                 NA                0.7662867   0.6917460   0.8408273
0-24 months   COHORTS         GUATEMALA                      <32                  NA                0.7905895   0.7487025   0.8324765
0-24 months   COHORTS         GUATEMALA                      [32-38)              NA                0.8146002   0.7526047   0.8765957
0-24 months   COHORTS         PHILIPPINES                    >=38                 NA                0.6502114   0.5815106   0.7189122
0-24 months   COHORTS         PHILIPPINES                    <32                  NA                0.6826766   0.6597977   0.7055555
0-24 months   COHORTS         PHILIPPINES                    [32-38)              NA                0.7020540   0.6378705   0.7662376
0-24 months   LCNI-5          MALAWI                         >=38                 NA                0.6153846   0.4274935   0.8032758
0-24 months   LCNI-5          MALAWI                         <32                  NA                0.6071429   0.4786216   0.7356642
0-24 months   LCNI-5          MALAWI                         [32-38)              NA                0.6666667   0.4771731   0.8561602
0-24 months   MAL-ED          BANGLADESH                     >=38                 NA                0.6086957   0.4931579   0.7242334
0-24 months   MAL-ED          BANGLADESH                     <32                  NA                0.7666667   0.6148142   0.9185192
0-24 months   MAL-ED          BANGLADESH                     [32-38)              NA                0.5576923   0.4222517   0.6931329
0-24 months   MAL-ED          BRAZIL                         >=38                 NA                0.3000000   0.1349698   0.4650302
0-24 months   MAL-ED          BRAZIL                         <32                  NA                0.5555556   0.3245350   0.7865761
0-24 months   MAL-ED          BRAZIL                         [32-38)              NA                0.1935484   0.0535840   0.3335127
0-24 months   MAL-ED          INDIA                          >=38                 NA                0.5033127   0.3292729   0.6773525
0-24 months   MAL-ED          INDIA                          <32                  NA                0.6469352   0.5193753   0.7744951
0-24 months   MAL-ED          INDIA                          [32-38)              NA                0.6587018   0.5503160   0.7670877
0-24 months   MAL-ED          NEPAL                          >=38                 NA                0.2941176   0.0761377   0.5120976
0-24 months   MAL-ED          NEPAL                          <32                  NA                0.4000000   0.1504978   0.6495022
0-24 months   MAL-ED          NEPAL                          [32-38)              NA                0.4042553   0.2630590   0.5454516
0-24 months   MAL-ED          PERU                           >=38                 NA                0.6296296   0.4463996   0.8128597
0-24 months   MAL-ED          PERU                           <32                  NA                0.7241379   0.5605032   0.8877727
0-24 months   MAL-ED          PERU                           [32-38)              NA                0.7586207   0.6019523   0.9152890
0-24 months   PROBIT          BELARUS                        >=38                 NA                0.0909984   0.0697530   0.1122438
0-24 months   PROBIT          BELARUS                        <32                  NA                0.1270894   0.1116477   0.1425312
0-24 months   PROBIT          BELARUS                        [32-38)              NA                0.1144294   0.0870801   0.1417787
0-24 months   SAS-CompFeed    INDIA                          >=38                 NA                0.7914317   0.6823930   0.9004703
0-24 months   SAS-CompFeed    INDIA                          <32                  NA                0.6855379   0.6454157   0.7256602
0-24 months   SAS-CompFeed    INDIA                          [32-38)              NA                0.7241549   0.6389630   0.8093468
0-24 months   SAS-FoodSuppl   INDIA                          >=38                 NA                0.8409091   0.7327061   0.9491120
0-24 months   SAS-FoodSuppl   INDIA                          <32                  NA                0.8235294   0.7795251   0.8675337
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)              NA                0.8352941   0.7563476   0.9142406
0-6 months    COHORTS         GUATEMALA                      >=38                 NA                0.3040158   0.2368087   0.3712229
0-6 months    COHORTS         GUATEMALA                      <32                  NA                0.3371317   0.2863601   0.3879033
0-6 months    COHORTS         GUATEMALA                      [32-38)              NA                0.3989937   0.2929068   0.5050805
0-6 months    COHORTS         PHILIPPINES                    >=38                 NA                0.2046985   0.1479919   0.2614051
0-6 months    COHORTS         PHILIPPINES                    <32                  NA                0.2381726   0.2165281   0.2598171
0-6 months    COHORTS         PHILIPPINES                    [32-38)              NA                0.2382004   0.1796328   0.2967681
0-6 months    MAL-ED          BANGLADESH                     >=38                 NA                0.3046144   0.1907955   0.4184333
0-6 months    MAL-ED          BANGLADESH                     <32                  NA                0.4110904   0.2291270   0.5930538
0-6 months    MAL-ED          BANGLADESH                     [32-38)              NA                0.2854902   0.1567706   0.4142097
0-6 months    MAL-ED          BRAZIL                         >=38                 NA                0.2000000   0.0559499   0.3440501
0-6 months    MAL-ED          BRAZIL                         <32                  NA                0.4444444   0.2134239   0.6754650
0-6 months    MAL-ED          BRAZIL                         [32-38)              NA                0.1612903   0.0309906   0.2915900
0-6 months    MAL-ED          INDIA                          >=38                 NA                0.2570259   0.0999975   0.4140544
0-6 months    MAL-ED          INDIA                          <32                  NA                0.3224855   0.1944845   0.4504865
0-6 months    MAL-ED          INDIA                          [32-38)              NA                0.3401551   0.2290689   0.4512413
0-6 months    MAL-ED          PERU                           >=38                 NA                0.2222222   0.0644765   0.3799679
0-6 months    MAL-ED          PERU                           <32                  NA                0.4827586   0.2998094   0.6657078
0-6 months    MAL-ED          PERU                           [32-38)              NA                0.6206897   0.4430444   0.7983349
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.3541667   0.2181870   0.4901463
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.6666667   0.4269056   0.9064277
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.4324324   0.2719980   0.5928669
0-6 months    PROBIT          BELARUS                        >=38                 NA                0.0594015   0.0406229   0.0781801
0-6 months    PROBIT          BELARUS                        <32                  NA                0.0693332   0.0578507   0.0808157
0-6 months    PROBIT          BELARUS                        [32-38)              NA                0.0502513   0.0367543   0.0637484
0-6 months    SAS-CompFeed    INDIA                          >=38                 NA                0.5110010   0.3792875   0.6427146
0-6 months    SAS-CompFeed    INDIA                          <32                  NA                0.4207505   0.3856690   0.4558320
0-6 months    SAS-CompFeed    INDIA                          [32-38)              NA                0.4270933   0.3761533   0.4780334
0-6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                0.4189612   0.2704028   0.5675196
0-6 months    SAS-FoodSuppl   INDIA                          <32                  NA                0.4072910   0.3503094   0.4642726
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)              NA                0.3198146   0.2192249   0.4204042
6-24 months   COHORTS         GUATEMALA                      >=38                 NA                0.7573597   0.6669080   0.8478113
6-24 months   COHORTS         GUATEMALA                      <32                  NA                0.7703404   0.7184264   0.8222543
6-24 months   COHORTS         GUATEMALA                      [32-38)              NA                0.8071003   0.7253184   0.8888821
6-24 months   COHORTS         PHILIPPINES                    >=38                 NA                0.6536661   0.5607023   0.7466298
6-24 months   COHORTS         PHILIPPINES                    <32                  NA                0.6371699   0.6092546   0.6650852
6-24 months   COHORTS         PHILIPPINES                    [32-38)              NA                0.6615494   0.5857736   0.7373252
6-24 months   LCNI-5          MALAWI                         >=38                 NA                0.5833333   0.3849882   0.7816784
6-24 months   LCNI-5          MALAWI                         <32                  NA                0.5319149   0.3884621   0.6753677
6-24 months   LCNI-5          MALAWI                         [32-38)              NA                0.5789474   0.3557006   0.8021942
6-24 months   MAL-ED          BANGLADESH                     >=38                 NA                0.4489796   0.3090252   0.5889340
6-24 months   MAL-ED          BANGLADESH                     <32                  NA                0.5625000   0.3182257   0.8067743
6-24 months   MAL-ED          BANGLADESH                     [32-38)              NA                0.3783784   0.2213375   0.5354193
6-24 months   MAL-ED          INDIA                          >=38                 NA                0.3600000   0.1709580   0.5490420
6-24 months   MAL-ED          INDIA                          <32                  NA                0.4857143   0.3193555   0.6520731
6-24 months   MAL-ED          INDIA                          [32-38)              NA                0.4893617   0.3457765   0.6329469
6-24 months   PROBIT          BELARUS                        >=38                 NA                0.0607605   0.0409223   0.0805988
6-24 months   PROBIT          BELARUS                        <32                  NA                0.0658583   0.0537609   0.0779557
6-24 months   PROBIT          BELARUS                        [32-38)              NA                0.0568124   0.0414599   0.0721649
6-24 months   SAS-CompFeed    INDIA                          >=38                 NA                0.5909091   0.4412762   0.7405420
6-24 months   SAS-CompFeed    INDIA                          <32                  NA                0.4905660   0.4470375   0.5340946
6-24 months   SAS-CompFeed    INDIA                          [32-38)              NA                0.5643564   0.4139588   0.7147541
6-24 months   SAS-FoodSuppl   INDIA                          >=38                 NA                0.7600000   0.5922410   0.9277590
6-24 months   SAS-FoodSuppl   INDIA                          <32                  NA                0.7333333   0.6657193   0.8009473
6-24 months   SAS-FoodSuppl   INDIA                          [32-38)              NA                0.8301887   0.7288962   0.9314812


### Parameter: E(Y)


agecat        studyid         country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA                      NA                   NA                0.7640277   0.7409463   0.7871090
0-24 months   COHORTS         PHILIPPINES                    NA                   NA                0.6895967   0.6729013   0.7062922
0-24 months   LCNI-5          MALAWI                         NA                   NA                0.6226415   0.5299266   0.7153564
0-24 months   MAL-ED          BANGLADESH                     NA                   NA                0.6225166   0.5449406   0.7000925
0-24 months   MAL-ED          BRAZIL                         NA                   NA                0.3164557   0.2132412   0.4196702
0-24 months   MAL-ED          INDIA                          NA                   NA                0.6397516   0.5653649   0.7141382
0-24 months   MAL-ED          NEPAL                          NA                   NA                0.3797468   0.2720427   0.4874510
0-24 months   MAL-ED          PERU                           NA                   NA                0.7058824   0.6084428   0.8033219
0-24 months   PROBIT          BELARUS                        NA                   NA                0.1247159   0.1092273   0.1402044
0-24 months   SAS-CompFeed    INDIA                          NA                   NA                0.6908497   0.6505448   0.7311545
0-24 months   SAS-FoodSuppl   INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-6 months    COHORTS         GUATEMALA                      NA                   NA                0.3212928   0.2930610   0.3495246
0-6 months    COHORTS         PHILIPPINES                    NA                   NA                0.2392409   0.2238460   0.2546359
0-6 months    MAL-ED          BANGLADESH                     NA                   NA                0.3245033   0.2495788   0.3994278
0-6 months    MAL-ED          BRAZIL                         NA                   NA                0.2405063   0.1456588   0.3353539
0-6 months    MAL-ED          INDIA                          NA                   NA                0.3354037   0.2622476   0.4085599
0-6 months    MAL-ED          PERU                           NA                   NA                0.4470588   0.3407351   0.5533826
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4300000   0.3324781   0.5275219
0-6 months    PROBIT          BELARUS                        NA                   NA                0.0661259   0.0556767   0.0765750
0-6 months    SAS-CompFeed    INDIA                          NA                   NA                0.4250164   0.3969651   0.4530677
0-6 months    SAS-FoodSuppl   INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
6-24 months   COHORTS         GUATEMALA                      NA                   NA                0.7619048   0.7334389   0.7903706
6-24 months   COHORTS         PHILIPPINES                    NA                   NA                0.6470302   0.6263581   0.6677023
6-24 months   LCNI-5          MALAWI                         NA                   NA                0.5555556   0.4523209   0.6587902
6-24 months   MAL-ED          BANGLADESH                     NA                   NA                0.4411765   0.3443418   0.5380111
6-24 months   MAL-ED          INDIA                          NA                   NA                0.4579439   0.3630970   0.5527909
6-24 months   PROBIT          BELARUS                        NA                   NA                0.0638554   0.0521938   0.0755170
6-24 months   SAS-CompFeed    INDIA                          NA                   NA                0.5024631   0.4586872   0.5462389
6-24 months   SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234


### Parameter: RR


agecat        studyid         country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS         GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   COHORTS         GUATEMALA                      <32                  >=38              1.0317150   0.9239579   1.152039
0-24 months   COHORTS         GUATEMALA                      [32-38)              >=38              1.0630488   0.9397825   1.202483
0-24 months   COHORTS         PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   COHORTS         PHILIPPINES                    <32                  >=38              1.0499301   0.9402854   1.172360
0-24 months   COHORTS         PHILIPPINES                    [32-38)              >=38              1.0797319   0.9394358   1.240980
0-24 months   LCNI-5          MALAWI                         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   LCNI-5          MALAWI                         <32                  >=38              0.9866071   0.6804443   1.430527
0-24 months   LCNI-5          MALAWI                         [32-38)              >=38              1.0833333   0.7138317   1.644101
0-24 months   MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED          BANGLADESH                     <32                  >=38              1.2595238   0.9573355   1.657099
0-24 months   MAL-ED          BANGLADESH                     [32-38)              >=38              0.9162088   0.6731774   1.246980
0-24 months   MAL-ED          BRAZIL                         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED          BRAZIL                         <32                  >=38              1.8518519   0.9292277   3.690543
0-24 months   MAL-ED          BRAZIL                         [32-38)              >=38              0.6451613   0.2600567   1.600548
0-24 months   MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED          INDIA                          <32                  >=38              1.2853544   0.8635272   1.913242
0-24 months   MAL-ED          INDIA                          [32-38)              >=38              1.3087328   0.8920358   1.920082
0-24 months   MAL-ED          NEPAL                          >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED          NEPAL                          <32                  >=38              1.3600000   0.5162322   3.582884
0-24 months   MAL-ED          NEPAL                          [32-38)              >=38              1.3744681   0.6057768   3.118578
0-24 months   MAL-ED          PERU                           >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED          PERU                           <32                  >=38              1.1501014   0.7956510   1.662454
0-24 months   MAL-ED          PERU                           [32-38)              >=38              1.2048682   0.8432651   1.721531
0-24 months   PROBIT          BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   PROBIT          BELARUS                        <32                  >=38              1.3966118   1.1035404   1.767515
0-24 months   PROBIT          BELARUS                        [32-38)              >=38              1.2574886   0.8880103   1.780698
0-24 months   SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed    INDIA                          <32                  >=38              0.8661998   0.7411588   1.012336
0-24 months   SAS-CompFeed    INDIA                          [32-38)              >=38              0.9149936   0.7413302   1.129339
0-24 months   SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA                          <32                  >=38              0.9793323   0.8519635   1.125743
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.9933227   0.8467458   1.165273
0-6 months    COHORTS         GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    COHORTS         GUATEMALA                      <32                  >=38              1.1089283   0.8508843   1.445228
0-6 months    COHORTS         GUATEMALA                      [32-38)              >=38              1.3124110   0.9298196   1.852427
0-6 months    COHORTS         PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    COHORTS         PHILIPPINES                    <32                  >=38              1.1635291   0.8702369   1.555668
0-6 months    COHORTS         PHILIPPINES                    [32-38)              >=38              1.1636650   0.8040234   1.684175
0-6 months    MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED          BANGLADESH                     <32                  >=38              1.3495436   0.7546725   2.413323
0-6 months    MAL-ED          BANGLADESH                     [32-38)              >=38              0.9372182   0.5225593   1.680915
0-6 months    MAL-ED          BRAZIL                         >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED          BRAZIL                         <32                  >=38              2.2222222   0.9141867   5.401819
0-6 months    MAL-ED          BRAZIL                         [32-38)              >=38              0.8064516   0.2732353   2.380235
0-6 months    MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED          INDIA                          <32                  >=38              1.2546808   0.6058272   2.598470
0-6 months    MAL-ED          INDIA                          [32-38)              >=38              1.3234271   0.6583854   2.660234
0-6 months    MAL-ED          PERU                           >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED          PERU                           <32                  >=38              2.1724138   0.9715705   4.857477
0-6 months    MAL-ED          PERU                           [32-38)              >=38              2.7931034   1.2992299   6.004655
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              1.8823529   1.1123206   3.185460
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              1.2209857   0.7158761   2.082492
0-6 months    PROBIT          BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    PROBIT          BELARUS                        <32                  >=38              1.1671966   0.8532144   1.596724
0-6 months    PROBIT          BELARUS                        [32-38)              >=38              0.8459610   0.6111570   1.170976
0-6 months    SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed    INDIA                          <32                  >=38              0.8233848   0.6090755   1.113101
0-6 months    SAS-CompFeed    INDIA                          [32-38)              >=38              0.8357973   0.6327545   1.103994
0-6 months    SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl   INDIA                          <32                  >=38              0.9721448   0.6640542   1.423175
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.7633512   0.4750773   1.226548
6-24 months   COHORTS         GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   COHORTS         GUATEMALA                      <32                  >=38              1.0171394   0.8870027   1.166369
6-24 months   COHORTS         GUATEMALA                      [32-38)              >=38              1.0656763   0.9113475   1.246139
6-24 months   COHORTS         PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   COHORTS         PHILIPPINES                    <32                  >=38              0.9747636   0.8402653   1.130791
6-24 months   COHORTS         PHILIPPINES                    [32-38)              >=38              1.0120601   0.8434903   1.214318
6-24 months   LCNI-5          MALAWI                         >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   LCNI-5          MALAWI                         <32                  >=38              0.9118541   0.5908075   1.407358
6-24 months   LCNI-5          MALAWI                         [32-38)              >=38              0.9924812   0.5935371   1.659574
6-24 months   MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   MAL-ED          BANGLADESH                     <32                  >=38              1.2528409   0.7340738   2.138219
6-24 months   MAL-ED          BANGLADESH                     [32-38)              >=38              0.8427518   0.5015047   1.416199
6-24 months   MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   MAL-ED          INDIA                          <32                  >=38              1.3492063   0.7207772   2.525549
6-24 months   MAL-ED          INDIA                          [32-38)              >=38              1.3593381   0.7448797   2.480669
6-24 months   PROBIT          BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   PROBIT          BELARUS                        <32                  >=38              1.0838990   0.7904176   1.486350
6-24 months   PROBIT          BELARUS                        [32-38)              >=38              0.9350212   0.6421622   1.361439
6-24 months   SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed    INDIA                          <32                  >=38              0.8301887   0.6406520   1.075800
6-24 months   SAS-CompFeed    INDIA                          [32-38)              >=38              0.9550647   0.6057164   1.505901
6-24 months   SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA                          <32                  >=38              0.9649123   0.7596207   1.225685
6-24 months   SAS-FoodSuppl   INDIA                          [32-38)              >=38              1.0923535   0.8488459   1.405716


### Parameter: PAR


agecat        studyid         country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0022590   -0.0730172   0.0684991
0-24 months   COHORTS         PHILIPPINES                    >=38                 NA                 0.0393853   -0.0278226   0.1065932
0-24 months   LCNI-5          MALAWI                         >=38                 NA                 0.0072569   -0.1557788   0.1702926
0-24 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0138209   -0.0708388   0.0984806
0-24 months   MAL-ED          BRAZIL                         >=38                 NA                 0.0164557   -0.1147061   0.1476175
0-24 months   MAL-ED          INDIA                          >=38                 NA                 0.1364388   -0.0165461   0.2894238
0-24 months   MAL-ED          NEPAL                          >=38                 NA                 0.0856292   -0.1110071   0.2822655
0-24 months   MAL-ED          PERU                           >=38                 NA                 0.0762527   -0.0711882   0.2236936
0-24 months   PROBIT          BELARUS                        >=38                 NA                 0.0337175    0.0108382   0.0565968
0-24 months   SAS-CompFeed    INDIA                          >=38                 NA                -0.1005820   -0.2221415   0.0209775
0-24 months   SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0131579   -0.1159028   0.0895870
0-6 months    COHORTS         GUATEMALA                      >=38                 NA                 0.0172770   -0.0447043   0.0792582
0-6 months    COHORTS         PHILIPPINES                    >=38                 NA                 0.0345425   -0.0207895   0.0898744
0-6 months    MAL-ED          BANGLADESH                     >=38                 NA                 0.0198889   -0.0671405   0.1069184
0-6 months    MAL-ED          BRAZIL                         >=38                 NA                 0.0405063   -0.0777589   0.1587716
0-6 months    MAL-ED          INDIA                          >=38                 NA                 0.0783778   -0.0626568   0.2194124
0-6 months    MAL-ED          PERU                           >=38                 NA                 0.2248366    0.0820782   0.3675950
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0758333   -0.0254096   0.1770763
0-6 months    PROBIT          BELARUS                        >=38                 NA                 0.0067244   -0.0109385   0.0243872
0-6 months    SAS-CompFeed    INDIA                          >=38                 NA                -0.0859847   -0.2272332   0.0552639
0-6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0295381   -0.1701380   0.1110617
6-24 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0045451   -0.0809383   0.0900285
6-24 months   COHORTS         PHILIPPINES                    >=38                 NA                -0.0066359   -0.0976981   0.0844264
6-24 months   LCNI-5          MALAWI                         >=38                 NA                -0.0277778   -0.1981199   0.1425643
6-24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0078031   -0.1085259   0.0929197
6-24 months   MAL-ED          INDIA                          >=38                 NA                 0.0979439   -0.0694877   0.2653755
6-24 months   PROBIT          BELARUS                        >=38                 NA                 0.0030949   -0.0154200   0.0216097
6-24 months   SAS-CompFeed    INDIA                          >=38                 NA                -0.0884460   -0.2452587   0.0683667
6-24 months   SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0027984   -0.1617659   0.1561692


### Parameter: PAF


agecat        studyid         country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0029567   -0.0999789   0.0855077
0-24 months   COHORTS         PHILIPPINES                    >=38                 NA                 0.0571135   -0.0455202   0.1496722
0-24 months   LCNI-5          MALAWI                         >=38                 NA                 0.0116550   -0.2881702   0.2416950
0-24 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0222017   -0.1237778   0.1492183
0-24 months   MAL-ED          BRAZIL                         >=38                 NA                 0.0520000   -0.4677936   0.3877177
0-24 months   MAL-ED          INDIA                          >=38                 NA                 0.2132685   -0.0699100   0.4214967
0-24 months   MAL-ED          NEPAL                          >=38                 NA                 0.2254902   -0.5110053   0.6030024
0-24 months   MAL-ED          PERU                           >=38                 NA                 0.1080247   -0.1295328   0.2956203
0-24 months   PROBIT          BELARUS                        >=38                 NA                 0.2703544    0.0772197   0.4230667
0-24 months   SAS-CompFeed    INDIA                          >=38                 NA                -0.1455917   -0.3405333   0.0210013
0-24 months   SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0158960   -0.1479422   0.1009612
0-6 months    COHORTS         GUATEMALA                      >=38                 NA                 0.0537734   -0.1600802   0.2282043
0-6 months    COHORTS         PHILIPPINES                    >=38                 NA                 0.1443836   -0.1208255   0.3468390
0-6 months    MAL-ED          BANGLADESH                     >=38                 NA                 0.0612904   -0.2492994   0.2946640
0-6 months    MAL-ED          BRAZIL                         >=38                 NA                 0.1684211   -0.4983110   0.5384646
0-6 months    MAL-ED          INDIA                          >=38                 NA                 0.2336819   -0.3293657   0.5582529
0-6 months    MAL-ED          PERU                           >=38                 NA                 0.5029240    0.0634044   0.7361886
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.1763566   -0.0972907   0.3817605
0-6 months    PROBIT          BELARUS                        >=38                 NA                 0.1016905   -0.2060014   0.3308797
0-6 months    SAS-CompFeed    INDIA                          >=38                 NA                -0.2023091   -0.5929519   0.0925356
0-6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0758510   -0.5049302   0.2308910
6-24 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0059655   -0.1128120   0.1120651
6-24 months   COHORTS         PHILIPPINES                    >=38                 NA                -0.0102559   -0.1612776   0.1211257
6-24 months   LCNI-5          MALAWI                         >=38                 NA                -0.0500000   -0.4063855   0.2160756
6-24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0176871   -0.2736532   0.1868375
6-24 months   MAL-ED          INDIA                          >=38                 NA                 0.2138776   -0.2530297   0.5068046
6-24 months   PROBIT          BELARUS                        >=38                 NA                 0.0484669   -0.2883199   0.2972124
6-24 months   SAS-CompFeed    INDIA                          >=38                 NA                -0.1760250   -0.5398925   0.1018628
6-24 months   SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0036957   -0.2372084   0.1857435
