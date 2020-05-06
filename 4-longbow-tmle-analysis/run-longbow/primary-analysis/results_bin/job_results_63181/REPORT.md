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

agecat        studyid         country                        fage       ever_stunted   n_cell       n  outcome_variable 
------------  --------------  -----------------------------  --------  -------------  -------  ------  -----------------
0-24 months   COHORTS         GUATEMALA                      >=38                  0       96    1301  ever_stunted     
0-24 months   COHORTS         GUATEMALA                      >=38                  1      290    1301  ever_stunted     
0-24 months   COHORTS         GUATEMALA                      <32                   0      147    1301  ever_stunted     
0-24 months   COHORTS         GUATEMALA                      <32                   1      462    1301  ever_stunted     
0-24 months   COHORTS         GUATEMALA                      [32-38)               0       64    1301  ever_stunted     
0-24 months   COHORTS         GUATEMALA                      [32-38)               1      242    1301  ever_stunted     
0-24 months   COHORTS         PHILIPPINES                    >=38                  0       90    2951  ever_stunted     
0-24 months   COHORTS         PHILIPPINES                    >=38                  1      240    2951  ever_stunted     
0-24 months   COHORTS         PHILIPPINES                    <32                   0      669    2951  ever_stunted     
0-24 months   COHORTS         PHILIPPINES                    <32                   1     1414    2951  ever_stunted     
0-24 months   COHORTS         PHILIPPINES                    [32-38)               0      157    2951  ever_stunted     
0-24 months   COHORTS         PHILIPPINES                    [32-38)               1      381    2951  ever_stunted     
0-24 months   LCNI-5          MALAWI                         >=38                  0       10     106  ever_stunted     
0-24 months   LCNI-5          MALAWI                         >=38                  1       16     106  ever_stunted     
0-24 months   LCNI-5          MALAWI                         <32                   0       22     106  ever_stunted     
0-24 months   LCNI-5          MALAWI                         <32                   1       34     106  ever_stunted     
0-24 months   LCNI-5          MALAWI                         [32-38)               0        8     106  ever_stunted     
0-24 months   LCNI-5          MALAWI                         [32-38)               1       16     106  ever_stunted     
0-24 months   MAL-ED          BANGLADESH                     >=38                  0       27     151  ever_stunted     
0-24 months   MAL-ED          BANGLADESH                     >=38                  1       42     151  ever_stunted     
0-24 months   MAL-ED          BANGLADESH                     <32                   0        7     151  ever_stunted     
0-24 months   MAL-ED          BANGLADESH                     <32                   1       23     151  ever_stunted     
0-24 months   MAL-ED          BANGLADESH                     [32-38)               0       23     151  ever_stunted     
0-24 months   MAL-ED          BANGLADESH                     [32-38)               1       29     151  ever_stunted     
0-24 months   MAL-ED          BRAZIL                         >=38                  0       21      79  ever_stunted     
0-24 months   MAL-ED          BRAZIL                         >=38                  1        9      79  ever_stunted     
0-24 months   MAL-ED          BRAZIL                         <32                   0        8      79  ever_stunted     
0-24 months   MAL-ED          BRAZIL                         <32                   1       10      79  ever_stunted     
0-24 months   MAL-ED          BRAZIL                         [32-38)               0       25      79  ever_stunted     
0-24 months   MAL-ED          BRAZIL                         [32-38)               1        6      79  ever_stunted     
0-24 months   MAL-ED          INDIA                          >=38                  0       16     161  ever_stunted     
0-24 months   MAL-ED          INDIA                          >=38                  1       20     161  ever_stunted     
0-24 months   MAL-ED          INDIA                          <32                   0       18     161  ever_stunted     
0-24 months   MAL-ED          INDIA                          <32                   1       35     161  ever_stunted     
0-24 months   MAL-ED          INDIA                          [32-38)               0       24     161  ever_stunted     
0-24 months   MAL-ED          INDIA                          [32-38)               1       48     161  ever_stunted     
0-24 months   MAL-ED          NEPAL                          >=38                  0       12      79  ever_stunted     
0-24 months   MAL-ED          NEPAL                          >=38                  1        5      79  ever_stunted     
0-24 months   MAL-ED          NEPAL                          <32                   0        9      79  ever_stunted     
0-24 months   MAL-ED          NEPAL                          <32                   1        6      79  ever_stunted     
0-24 months   MAL-ED          NEPAL                          [32-38)               0       28      79  ever_stunted     
0-24 months   MAL-ED          NEPAL                          [32-38)               1       19      79  ever_stunted     
0-24 months   MAL-ED          PERU                           >=38                  0       10      85  ever_stunted     
0-24 months   MAL-ED          PERU                           >=38                  1       17      85  ever_stunted     
0-24 months   MAL-ED          PERU                           <32                   0        8      85  ever_stunted     
0-24 months   MAL-ED          PERU                           <32                   1       21      85  ever_stunted     
0-24 months   MAL-ED          PERU                           [32-38)               0        7      85  ever_stunted     
0-24 months   MAL-ED          PERU                           [32-38)               1       22      85  ever_stunted     
0-24 months   MAL-ED          SOUTH AFRICA                   >=38                  0       28      90  ever_stunted     
0-24 months   MAL-ED          SOUTH AFRICA                   >=38                  1       37      90  ever_stunted     
0-24 months   MAL-ED          SOUTH AFRICA                   <32                   0        6      90  ever_stunted     
0-24 months   MAL-ED          SOUTH AFRICA                   <32                   1        3      90  ever_stunted     
0-24 months   MAL-ED          SOUTH AFRICA                   [32-38)               0        5      90  ever_stunted     
0-24 months   MAL-ED          SOUTH AFRICA                   [32-38)               1       11      90  ever_stunted     
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0        4     100  ever_stunted     
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1       44     100  ever_stunted     
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0        1     100  ever_stunted     
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1       14     100  ever_stunted     
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0        3     100  ever_stunted     
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1       34     100  ever_stunted     
0-24 months   PROBIT          BELARUS                        >=38                  0      652   16277  ever_stunted     
0-24 months   PROBIT          BELARUS                        >=38                  1       92   16277  ever_stunted     
0-24 months   PROBIT          BELARUS                        <32                   0    11380   16277  ever_stunted     
0-24 months   PROBIT          BELARUS                        <32                   1     1678   16277  ever_stunted     
0-24 months   PROBIT          BELARUS                        [32-38)               0     2215   16277  ever_stunted     
0-24 months   PROBIT          BELARUS                        [32-38)               1      260   16277  ever_stunted     
0-24 months   SAS-CompFeed    INDIA                          >=38                  0       11    1530  ever_stunted     
0-24 months   SAS-CompFeed    INDIA                          >=38                  1       40    1530  ever_stunted     
0-24 months   SAS-CompFeed    INDIA                          <32                   0      406    1530  ever_stunted     
0-24 months   SAS-CompFeed    INDIA                          <32                   1      873    1530  ever_stunted     
0-24 months   SAS-CompFeed    INDIA                          [32-38)               0       56    1530  ever_stunted     
0-24 months   SAS-CompFeed    INDIA                          [32-38)               1      144    1530  ever_stunted     
0-24 months   SAS-FoodSuppl   INDIA                          >=38                  0        7     418  ever_stunted     
0-24 months   SAS-FoodSuppl   INDIA                          >=38                  1       37     418  ever_stunted     
0-24 months   SAS-FoodSuppl   INDIA                          <32                   0       51     418  ever_stunted     
0-24 months   SAS-FoodSuppl   INDIA                          <32                   1      238     418  ever_stunted     
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)               0       14     418  ever_stunted     
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)               1       71     418  ever_stunted     
0-6 months    COHORTS         GUATEMALA                      >=38                  0      205    1052  ever_stunted     
0-6 months    COHORTS         GUATEMALA                      >=38                  1      108    1052  ever_stunted     
0-6 months    COHORTS         GUATEMALA                      <32                   0      340    1052  ever_stunted     
0-6 months    COHORTS         GUATEMALA                      <32                   1      144    1052  ever_stunted     
0-6 months    COHORTS         GUATEMALA                      [32-38)               0      169    1052  ever_stunted     
0-6 months    COHORTS         GUATEMALA                      [32-38)               1       86    1052  ever_stunted     
0-6 months    COHORTS         PHILIPPINES                    >=38                  0      231    2951  ever_stunted     
0-6 months    COHORTS         PHILIPPINES                    >=38                  1       99    2951  ever_stunted     
0-6 months    COHORTS         PHILIPPINES                    <32                   0     1595    2951  ever_stunted     
0-6 months    COHORTS         PHILIPPINES                    <32                   1      488    2951  ever_stunted     
0-6 months    COHORTS         PHILIPPINES                    [32-38)               0      419    2951  ever_stunted     
0-6 months    COHORTS         PHILIPPINES                    [32-38)               1      119    2951  ever_stunted     
0-6 months    LCNI-5          MALAWI                         >=38                  0        7      38  ever_stunted     
0-6 months    LCNI-5          MALAWI                         >=38                  1        2      38  ever_stunted     
0-6 months    LCNI-5          MALAWI                         <32                   0       12      38  ever_stunted     
0-6 months    LCNI-5          MALAWI                         <32                   1        9      38  ever_stunted     
0-6 months    LCNI-5          MALAWI                         [32-38)               0        3      38  ever_stunted     
0-6 months    LCNI-5          MALAWI                         [32-38)               1        5      38  ever_stunted     
0-6 months    MAL-ED          BANGLADESH                     >=38                  0       49     151  ever_stunted     
0-6 months    MAL-ED          BANGLADESH                     >=38                  1       20     151  ever_stunted     
0-6 months    MAL-ED          BANGLADESH                     <32                   0       16     151  ever_stunted     
0-6 months    MAL-ED          BANGLADESH                     <32                   1       14     151  ever_stunted     
0-6 months    MAL-ED          BANGLADESH                     [32-38)               0       37     151  ever_stunted     
0-6 months    MAL-ED          BANGLADESH                     [32-38)               1       15     151  ever_stunted     
0-6 months    MAL-ED          BRAZIL                         >=38                  0       24      79  ever_stunted     
0-6 months    MAL-ED          BRAZIL                         >=38                  1        6      79  ever_stunted     
0-6 months    MAL-ED          BRAZIL                         <32                   0       10      79  ever_stunted     
0-6 months    MAL-ED          BRAZIL                         <32                   1        8      79  ever_stunted     
0-6 months    MAL-ED          BRAZIL                         [32-38)               0       26      79  ever_stunted     
0-6 months    MAL-ED          BRAZIL                         [32-38)               1        5      79  ever_stunted     
0-6 months    MAL-ED          INDIA                          >=38                  0       25     161  ever_stunted     
0-6 months    MAL-ED          INDIA                          >=38                  1       11     161  ever_stunted     
0-6 months    MAL-ED          INDIA                          <32                   0       35     161  ever_stunted     
0-6 months    MAL-ED          INDIA                          <32                   1       18     161  ever_stunted     
0-6 months    MAL-ED          INDIA                          [32-38)               0       47     161  ever_stunted     
0-6 months    MAL-ED          INDIA                          [32-38)               1       25     161  ever_stunted     
0-6 months    MAL-ED          NEPAL                          >=38                  0       14      79  ever_stunted     
0-6 months    MAL-ED          NEPAL                          >=38                  1        3      79  ever_stunted     
0-6 months    MAL-ED          NEPAL                          <32                   0       13      79  ever_stunted     
0-6 months    MAL-ED          NEPAL                          <32                   1        2      79  ever_stunted     
0-6 months    MAL-ED          NEPAL                          [32-38)               0       38      79  ever_stunted     
0-6 months    MAL-ED          NEPAL                          [32-38)               1        9      79  ever_stunted     
0-6 months    MAL-ED          PERU                           >=38                  0       21      85  ever_stunted     
0-6 months    MAL-ED          PERU                           >=38                  1        6      85  ever_stunted     
0-6 months    MAL-ED          PERU                           <32                   0       15      85  ever_stunted     
0-6 months    MAL-ED          PERU                           <32                   1       14      85  ever_stunted     
0-6 months    MAL-ED          PERU                           [32-38)               0       11      85  ever_stunted     
0-6 months    MAL-ED          PERU                           [32-38)               1       18      85  ever_stunted     
0-6 months    MAL-ED          SOUTH AFRICA                   >=38                  0       44      90  ever_stunted     
0-6 months    MAL-ED          SOUTH AFRICA                   >=38                  1       21      90  ever_stunted     
0-6 months    MAL-ED          SOUTH AFRICA                   <32                   0        7      90  ever_stunted     
0-6 months    MAL-ED          SOUTH AFRICA                   <32                   1        2      90  ever_stunted     
0-6 months    MAL-ED          SOUTH AFRICA                   [32-38)               0        9      90  ever_stunted     
0-6 months    MAL-ED          SOUTH AFRICA                   [32-38)               1        7      90  ever_stunted     
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0       31     100  ever_stunted     
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1       17     100  ever_stunted     
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0        5     100  ever_stunted     
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1       10     100  ever_stunted     
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0       21     100  ever_stunted     
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1       16     100  ever_stunted     
0-6 months    PROBIT          BELARUS                        >=38                  0      696   16272  ever_stunted     
0-6 months    PROBIT          BELARUS                        >=38                  1       47   16272  ever_stunted     
0-6 months    PROBIT          BELARUS                        <32                   0    12152   16272  ever_stunted     
0-6 months    PROBIT          BELARUS                        <32                   1      903   16272  ever_stunted     
0-6 months    PROBIT          BELARUS                        [32-38)               0     2348   16272  ever_stunted     
0-6 months    PROBIT          BELARUS                        [32-38)               1      126   16272  ever_stunted     
0-6 months    SAS-CompFeed    INDIA                          >=38                  0       23    1527  ever_stunted     
0-6 months    SAS-CompFeed    INDIA                          >=38                  1       27    1527  ever_stunted     
0-6 months    SAS-CompFeed    INDIA                          <32                   0      742    1527  ever_stunted     
0-6 months    SAS-CompFeed    INDIA                          <32                   1      535    1527  ever_stunted     
0-6 months    SAS-CompFeed    INDIA                          [32-38)               0      113    1527  ever_stunted     
0-6 months    SAS-CompFeed    INDIA                          [32-38)               1       87    1527  ever_stunted     
0-6 months    SAS-FoodSuppl   INDIA                          >=38                  0       25     416  ever_stunted     
0-6 months    SAS-FoodSuppl   INDIA                          >=38                  1       18     416  ever_stunted     
0-6 months    SAS-FoodSuppl   INDIA                          <32                   0      171     416  ever_stunted     
0-6 months    SAS-FoodSuppl   INDIA                          <32                   1      117     416  ever_stunted     
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)               0       58     416  ever_stunted     
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)               1       27     416  ever_stunted     
6-24 months   COHORTS         GUATEMALA                      >=38                  0       65     861  ever_stunted     
6-24 months   COHORTS         GUATEMALA                      >=38                  1      182     861  ever_stunted     
6-24 months   COHORTS         GUATEMALA                      <32                   0       95     861  ever_stunted     
6-24 months   COHORTS         GUATEMALA                      <32                   1      318     861  ever_stunted     
6-24 months   COHORTS         GUATEMALA                      [32-38)               0       45     861  ever_stunted     
6-24 months   COHORTS         GUATEMALA                      [32-38)               1      156     861  ever_stunted     
6-24 months   COHORTS         PHILIPPINES                    >=38                  0       70    2054  ever_stunted     
6-24 months   COHORTS         PHILIPPINES                    >=38                  1      141    2054  ever_stunted     
6-24 months   COHORTS         PHILIPPINES                    <32                   0      527    2054  ever_stunted     
6-24 months   COHORTS         PHILIPPINES                    <32                   1      926    2054  ever_stunted     
6-24 months   COHORTS         PHILIPPINES                    [32-38)               0      128    2054  ever_stunted     
6-24 months   COHORTS         PHILIPPINES                    [32-38)               1      262    2054  ever_stunted     
6-24 months   LCNI-5          MALAWI                         >=38                  0       10      90  ever_stunted     
6-24 months   LCNI-5          MALAWI                         >=38                  1       14      90  ever_stunted     
6-24 months   LCNI-5          MALAWI                         <32                   0       22      90  ever_stunted     
6-24 months   LCNI-5          MALAWI                         <32                   1       25      90  ever_stunted     
6-24 months   LCNI-5          MALAWI                         [32-38)               0        8      90  ever_stunted     
6-24 months   LCNI-5          MALAWI                         [32-38)               1       11      90  ever_stunted     
6-24 months   MAL-ED          BANGLADESH                     >=38                  0       27     102  ever_stunted     
6-24 months   MAL-ED          BANGLADESH                     >=38                  1       22     102  ever_stunted     
6-24 months   MAL-ED          BANGLADESH                     <32                   0        7     102  ever_stunted     
6-24 months   MAL-ED          BANGLADESH                     <32                   1        9     102  ever_stunted     
6-24 months   MAL-ED          BANGLADESH                     [32-38)               0       23     102  ever_stunted     
6-24 months   MAL-ED          BANGLADESH                     [32-38)               1       14     102  ever_stunted     
6-24 months   MAL-ED          BRAZIL                         >=38                  0       21      60  ever_stunted     
6-24 months   MAL-ED          BRAZIL                         >=38                  1        3      60  ever_stunted     
6-24 months   MAL-ED          BRAZIL                         <32                   0        8      60  ever_stunted     
6-24 months   MAL-ED          BRAZIL                         <32                   1        2      60  ever_stunted     
6-24 months   MAL-ED          BRAZIL                         [32-38)               0       25      60  ever_stunted     
6-24 months   MAL-ED          BRAZIL                         [32-38)               1        1      60  ever_stunted     
6-24 months   MAL-ED          INDIA                          >=38                  0       16     107  ever_stunted     
6-24 months   MAL-ED          INDIA                          >=38                  1        9     107  ever_stunted     
6-24 months   MAL-ED          INDIA                          <32                   0       18     107  ever_stunted     
6-24 months   MAL-ED          INDIA                          <32                   1       17     107  ever_stunted     
6-24 months   MAL-ED          INDIA                          [32-38)               0       24     107  ever_stunted     
6-24 months   MAL-ED          INDIA                          [32-38)               1       23     107  ever_stunted     
6-24 months   MAL-ED          NEPAL                          >=38                  0       12      65  ever_stunted     
6-24 months   MAL-ED          NEPAL                          >=38                  1        2      65  ever_stunted     
6-24 months   MAL-ED          NEPAL                          <32                   0        9      65  ever_stunted     
6-24 months   MAL-ED          NEPAL                          <32                   1        4      65  ever_stunted     
6-24 months   MAL-ED          NEPAL                          [32-38)               0       28      65  ever_stunted     
6-24 months   MAL-ED          NEPAL                          [32-38)               1       10      65  ever_stunted     
6-24 months   MAL-ED          PERU                           >=38                  0       10      46  ever_stunted     
6-24 months   MAL-ED          PERU                           >=38                  1       11      46  ever_stunted     
6-24 months   MAL-ED          PERU                           <32                   0        7      46  ever_stunted     
6-24 months   MAL-ED          PERU                           <32                   1        7      46  ever_stunted     
6-24 months   MAL-ED          PERU                           [32-38)               0        7      46  ever_stunted     
6-24 months   MAL-ED          PERU                           [32-38)               1        4      46  ever_stunted     
6-24 months   MAL-ED          SOUTH AFRICA                   >=38                  0       28      60  ever_stunted     
6-24 months   MAL-ED          SOUTH AFRICA                   >=38                  1       16      60  ever_stunted     
6-24 months   MAL-ED          SOUTH AFRICA                   <32                   0        6      60  ever_stunted     
6-24 months   MAL-ED          SOUTH AFRICA                   <32                   1        1      60  ever_stunted     
6-24 months   MAL-ED          SOUTH AFRICA                   [32-38)               0        5      60  ever_stunted     
6-24 months   MAL-ED          SOUTH AFRICA                   [32-38)               1        4      60  ever_stunted     
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0        4      57  ever_stunted     
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1       27      57  ever_stunted     
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0        1      57  ever_stunted     
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1        4      57  ever_stunted     
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0        3      57  ever_stunted     
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1       18      57  ever_stunted     
6-24 months   PROBIT          BELARUS                        >=38                  0      645   14940  ever_stunted     
6-24 months   PROBIT          BELARUS                        >=38                  1       45   14940  ever_stunted     
6-24 months   PROBIT          BELARUS                        <32                   0    11151   14940  ever_stunted     
6-24 months   PROBIT          BELARUS                        <32                   1      775   14940  ever_stunted     
6-24 months   PROBIT          BELARUS                        [32-38)               0     2190   14940  ever_stunted     
6-24 months   PROBIT          BELARUS                        [32-38)               1      134   14940  ever_stunted     
6-24 months   SAS-CompFeed    INDIA                          >=38                  0        9     812  ever_stunted     
6-24 months   SAS-CompFeed    INDIA                          >=38                  1       13     812  ever_stunted     
6-24 months   SAS-CompFeed    INDIA                          <32                   0      351     812  ever_stunted     
6-24 months   SAS-CompFeed    INDIA                          <32                   1      338     812  ever_stunted     
6-24 months   SAS-CompFeed    INDIA                          [32-38)               0       44     812  ever_stunted     
6-24 months   SAS-CompFeed    INDIA                          [32-38)               1       57     812  ever_stunted     
6-24 months   SAS-FoodSuppl   INDIA                          >=38                  0        6     243  ever_stunted     
6-24 months   SAS-FoodSuppl   INDIA                          >=38                  1       19     243  ever_stunted     
6-24 months   SAS-FoodSuppl   INDIA                          <32                   0       44     243  ever_stunted     
6-24 months   SAS-FoodSuppl   INDIA                          <32                   1      121     243  ever_stunted     
6-24 months   SAS-FoodSuppl   INDIA                          [32-38)               0        9     243  ever_stunted     
6-24 months   SAS-FoodSuppl   INDIA                          [32-38)               1       44     243  ever_stunted     


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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
