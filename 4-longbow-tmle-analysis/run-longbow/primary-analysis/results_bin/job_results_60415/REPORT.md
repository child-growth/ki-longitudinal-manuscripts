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

**Outcome Variable:** ever_wasted

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

agecat        studyid         country                        fage       ever_wasted   n_cell       n
------------  --------------  -----------------------------  --------  ------------  -------  ------
0-24 months   COHORTS         GUATEMALA                      >=38                 0      285    1285
0-24 months   COHORTS         GUATEMALA                      >=38                 1       97    1285
0-24 months   COHORTS         GUATEMALA                      <32                  0      453    1285
0-24 months   COHORTS         GUATEMALA                      <32                  1      148    1285
0-24 months   COHORTS         GUATEMALA                      [32-38)              0      218    1285
0-24 months   COHORTS         GUATEMALA                      [32-38)              1       84    1285
0-24 months   COHORTS         PHILIPPINES                    >=38                 0      191    2939
0-24 months   COHORTS         PHILIPPINES                    >=38                 1      137    2939
0-24 months   COHORTS         PHILIPPINES                    <32                  0     1235    2939
0-24 months   COHORTS         PHILIPPINES                    <32                  1      839    2939
0-24 months   COHORTS         PHILIPPINES                    [32-38)              0      332    2939
0-24 months   COHORTS         PHILIPPINES                    [32-38)              1      205    2939
0-24 months   LCNI-5          MALAWI                         >=38                 0       24     106
0-24 months   LCNI-5          MALAWI                         >=38                 1        2     106
0-24 months   LCNI-5          MALAWI                         <32                  0       49     106
0-24 months   LCNI-5          MALAWI                         <32                  1        7     106
0-24 months   LCNI-5          MALAWI                         [32-38)              0       22     106
0-24 months   LCNI-5          MALAWI                         [32-38)              1        2     106
0-24 months   MAL-ED          BANGLADESH                     >=38                 0       46     151
0-24 months   MAL-ED          BANGLADESH                     >=38                 1       23     151
0-24 months   MAL-ED          BANGLADESH                     <32                  0       15     151
0-24 months   MAL-ED          BANGLADESH                     <32                  1       15     151
0-24 months   MAL-ED          BANGLADESH                     [32-38)              0       39     151
0-24 months   MAL-ED          BANGLADESH                     [32-38)              1       13     151
0-24 months   MAL-ED          BRAZIL                         >=38                 0       30      79
0-24 months   MAL-ED          BRAZIL                         >=38                 1        0      79
0-24 months   MAL-ED          BRAZIL                         <32                  0       15      79
0-24 months   MAL-ED          BRAZIL                         <32                  1        3      79
0-24 months   MAL-ED          BRAZIL                         [32-38)              0       28      79
0-24 months   MAL-ED          BRAZIL                         [32-38)              1        3      79
0-24 months   MAL-ED          INDIA                          >=38                 0       25     161
0-24 months   MAL-ED          INDIA                          >=38                 1       11     161
0-24 months   MAL-ED          INDIA                          <32                  0       20     161
0-24 months   MAL-ED          INDIA                          <32                  1       33     161
0-24 months   MAL-ED          INDIA                          [32-38)              0       36     161
0-24 months   MAL-ED          INDIA                          [32-38)              1       36     161
0-24 months   MAL-ED          NEPAL                          >=38                 0       13      79
0-24 months   MAL-ED          NEPAL                          >=38                 1        4      79
0-24 months   MAL-ED          NEPAL                          <32                  0        8      79
0-24 months   MAL-ED          NEPAL                          <32                  1        7      79
0-24 months   MAL-ED          NEPAL                          [32-38)              0       34      79
0-24 months   MAL-ED          NEPAL                          [32-38)              1       13      79
0-24 months   MAL-ED          PERU                           >=38                 0       26      85
0-24 months   MAL-ED          PERU                           >=38                 1        1      85
0-24 months   MAL-ED          PERU                           <32                  0       25      85
0-24 months   MAL-ED          PERU                           <32                  1        4      85
0-24 months   MAL-ED          PERU                           [32-38)              0       26      85
0-24 months   MAL-ED          PERU                           [32-38)              1        3      85
0-24 months   MAL-ED          SOUTH AFRICA                   >=38                 0       53      90
0-24 months   MAL-ED          SOUTH AFRICA                   >=38                 1       12      90
0-24 months   MAL-ED          SOUTH AFRICA                   <32                  0        7      90
0-24 months   MAL-ED          SOUTH AFRICA                   <32                  1        2      90
0-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              0       11      90
0-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              1        5      90
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0       43     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        5     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       11     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        4     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       32     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        5     100
0-24 months   PROBIT          BELARUS                        >=38                 0      577   16278
0-24 months   PROBIT          BELARUS                        >=38                 1      167   16278
0-24 months   PROBIT          BELARUS                        <32                  0     9699   16278
0-24 months   PROBIT          BELARUS                        <32                  1     3360   16278
0-24 months   PROBIT          BELARUS                        [32-38)              0     1870   16278
0-24 months   PROBIT          BELARUS                        [32-38)              1      605   16278
0-24 months   SAS-CompFeed    INDIA                          >=38                 0       21    1510
0-24 months   SAS-CompFeed    INDIA                          >=38                 1       28    1510
0-24 months   SAS-CompFeed    INDIA                          <32                  0      750    1510
0-24 months   SAS-CompFeed    INDIA                          <32                  1      514    1510
0-24 months   SAS-CompFeed    INDIA                          [32-38)              0      113    1510
0-24 months   SAS-CompFeed    INDIA                          [32-38)              1       84    1510
0-24 months   SAS-FoodSuppl   INDIA                          >=38                 0       21     418
0-24 months   SAS-FoodSuppl   INDIA                          >=38                 1       23     418
0-24 months   SAS-FoodSuppl   INDIA                          <32                  0      154     418
0-24 months   SAS-FoodSuppl   INDIA                          <32                  1      135     418
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)              0       46     418
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)              1       39     418
0-6 months    COHORTS         GUATEMALA                      >=38                 0      241    1027
0-6 months    COHORTS         GUATEMALA                      >=38                 1       68    1027
0-6 months    COHORTS         GUATEMALA                      <32                  0      380    1027
0-6 months    COHORTS         GUATEMALA                      <32                  1       89    1027
0-6 months    COHORTS         GUATEMALA                      [32-38)              0      200    1027
0-6 months    COHORTS         GUATEMALA                      [32-38)              1       49    1027
0-6 months    COHORTS         PHILIPPINES                    >=38                 0      254    2938
0-6 months    COHORTS         PHILIPPINES                    >=38                 1       74    2938
0-6 months    COHORTS         PHILIPPINES                    <32                  0     1588    2938
0-6 months    COHORTS         PHILIPPINES                    <32                  1      485    2938
0-6 months    COHORTS         PHILIPPINES                    [32-38)              0      414    2938
0-6 months    COHORTS         PHILIPPINES                    [32-38)              1      123    2938
0-6 months    LCNI-5          MALAWI                         >=38                 0        9      38
0-6 months    LCNI-5          MALAWI                         >=38                 1        0      38
0-6 months    LCNI-5          MALAWI                         <32                  0       20      38
0-6 months    LCNI-5          MALAWI                         <32                  1        1      38
0-6 months    LCNI-5          MALAWI                         [32-38)              0        8      38
0-6 months    LCNI-5          MALAWI                         [32-38)              1        0      38
0-6 months    MAL-ED          BANGLADESH                     >=38                 0       52     151
0-6 months    MAL-ED          BANGLADESH                     >=38                 1       17     151
0-6 months    MAL-ED          BANGLADESH                     <32                  0       21     151
0-6 months    MAL-ED          BANGLADESH                     <32                  1        9     151
0-6 months    MAL-ED          BANGLADESH                     [32-38)              0       43     151
0-6 months    MAL-ED          BANGLADESH                     [32-38)              1        9     151
0-6 months    MAL-ED          BRAZIL                         >=38                 0       30      79
0-6 months    MAL-ED          BRAZIL                         >=38                 1        0      79
0-6 months    MAL-ED          BRAZIL                         <32                  0       15      79
0-6 months    MAL-ED          BRAZIL                         <32                  1        3      79
0-6 months    MAL-ED          BRAZIL                         [32-38)              0       30      79
0-6 months    MAL-ED          BRAZIL                         [32-38)              1        1      79
0-6 months    MAL-ED          INDIA                          >=38                 0       29     161
0-6 months    MAL-ED          INDIA                          >=38                 1        7     161
0-6 months    MAL-ED          INDIA                          <32                  0       35     161
0-6 months    MAL-ED          INDIA                          <32                  1       18     161
0-6 months    MAL-ED          INDIA                          [32-38)              0       44     161
0-6 months    MAL-ED          INDIA                          [32-38)              1       28     161
0-6 months    MAL-ED          NEPAL                          >=38                 0       17      79
0-6 months    MAL-ED          NEPAL                          >=38                 1        0      79
0-6 months    MAL-ED          NEPAL                          <32                  0       11      79
0-6 months    MAL-ED          NEPAL                          <32                  1        4      79
0-6 months    MAL-ED          NEPAL                          [32-38)              0       39      79
0-6 months    MAL-ED          NEPAL                          [32-38)              1        8      79
0-6 months    MAL-ED          PERU                           >=38                 0       27      85
0-6 months    MAL-ED          PERU                           >=38                 1        0      85
0-6 months    MAL-ED          PERU                           <32                  0       27      85
0-6 months    MAL-ED          PERU                           <32                  1        2      85
0-6 months    MAL-ED          PERU                           [32-38)              0       28      85
0-6 months    MAL-ED          PERU                           [32-38)              1        1      85
0-6 months    MAL-ED          SOUTH AFRICA                   >=38                 0       60      90
0-6 months    MAL-ED          SOUTH AFRICA                   >=38                 1        5      90
0-6 months    MAL-ED          SOUTH AFRICA                   <32                  0        7      90
0-6 months    MAL-ED          SOUTH AFRICA                   <32                  1        2      90
0-6 months    MAL-ED          SOUTH AFRICA                   [32-38)              0       13      90
0-6 months    MAL-ED          SOUTH AFRICA                   [32-38)              1        3      90
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0       46     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        2     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       15     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        0     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       35     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        2     100
0-6 months    PROBIT          BELARUS                        >=38                 0      582   16275
0-6 months    PROBIT          BELARUS                        >=38                 1      161   16275
0-6 months    PROBIT          BELARUS                        <32                  0     9765   16275
0-6 months    PROBIT          BELARUS                        <32                  1     3292   16275
0-6 months    PROBIT          BELARUS                        [32-38)              0     1884   16275
0-6 months    PROBIT          BELARUS                        [32-38)              1      591   16275
0-6 months    SAS-CompFeed    INDIA                          >=38                 0       33    1502
0-6 months    SAS-CompFeed    INDIA                          >=38                 1       15    1502
0-6 months    SAS-CompFeed    INDIA                          <32                  0      992    1502
0-6 months    SAS-CompFeed    INDIA                          <32                  1      266    1502
0-6 months    SAS-CompFeed    INDIA                          [32-38)              0      147    1502
0-6 months    SAS-CompFeed    INDIA                          [32-38)              1       49    1502
0-6 months    SAS-FoodSuppl   INDIA                          >=38                 0       32     418
0-6 months    SAS-FoodSuppl   INDIA                          >=38                 1       12     418
0-6 months    SAS-FoodSuppl   INDIA                          <32                  0      238     418
0-6 months    SAS-FoodSuppl   INDIA                          <32                  1       51     418
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)              0       70     418
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)              1       15     418
6-24 months   COHORTS         GUATEMALA                      >=38                 0      303    1165
6-24 months   COHORTS         GUATEMALA                      >=38                 1       37    1165
6-24 months   COHORTS         GUATEMALA                      <32                  0      477    1165
6-24 months   COHORTS         GUATEMALA                      <32                  1       69    1165
6-24 months   COHORTS         GUATEMALA                      [32-38)              0      238    1165
6-24 months   COHORTS         GUATEMALA                      [32-38)              1       41    1165
6-24 months   COHORTS         PHILIPPINES                    >=38                 0      210    2720
6-24 months   COHORTS         PHILIPPINES                    >=38                 1       95    2720
6-24 months   COHORTS         PHILIPPINES                    <32                  0     1408    2720
6-24 months   COHORTS         PHILIPPINES                    <32                  1      503    2720
6-24 months   COHORTS         PHILIPPINES                    [32-38)              0      378    2720
6-24 months   COHORTS         PHILIPPINES                    [32-38)              1      126    2720
6-24 months   LCNI-5          MALAWI                         >=38                 0       24     106
6-24 months   LCNI-5          MALAWI                         >=38                 1        2     106
6-24 months   LCNI-5          MALAWI                         <32                  0       50     106
6-24 months   LCNI-5          MALAWI                         <32                  1        6     106
6-24 months   LCNI-5          MALAWI                         [32-38)              0       22     106
6-24 months   LCNI-5          MALAWI                         [32-38)              1        2     106
6-24 months   MAL-ED          BANGLADESH                     >=38                 0       56     151
6-24 months   MAL-ED          BANGLADESH                     >=38                 1       13     151
6-24 months   MAL-ED          BANGLADESH                     <32                  0       21     151
6-24 months   MAL-ED          BANGLADESH                     <32                  1        9     151
6-24 months   MAL-ED          BANGLADESH                     [32-38)              0       46     151
6-24 months   MAL-ED          BANGLADESH                     [32-38)              1        6     151
6-24 months   MAL-ED          BRAZIL                         >=38                 0       30      79
6-24 months   MAL-ED          BRAZIL                         >=38                 1        0      79
6-24 months   MAL-ED          BRAZIL                         <32                  0       18      79
6-24 months   MAL-ED          BRAZIL                         <32                  1        0      79
6-24 months   MAL-ED          BRAZIL                         [32-38)              0       29      79
6-24 months   MAL-ED          BRAZIL                         [32-38)              1        2      79
6-24 months   MAL-ED          INDIA                          >=38                 0       30     161
6-24 months   MAL-ED          INDIA                          >=38                 1        6     161
6-24 months   MAL-ED          INDIA                          <32                  0       31     161
6-24 months   MAL-ED          INDIA                          <32                  1       22     161
6-24 months   MAL-ED          INDIA                          [32-38)              0       53     161
6-24 months   MAL-ED          INDIA                          [32-38)              1       19     161
6-24 months   MAL-ED          NEPAL                          >=38                 0       13      79
6-24 months   MAL-ED          NEPAL                          >=38                 1        4      79
6-24 months   MAL-ED          NEPAL                          <32                  0       10      79
6-24 months   MAL-ED          NEPAL                          <32                  1        5      79
6-24 months   MAL-ED          NEPAL                          [32-38)              0       40      79
6-24 months   MAL-ED          NEPAL                          [32-38)              1        7      79
6-24 months   MAL-ED          PERU                           >=38                 0       26      83
6-24 months   MAL-ED          PERU                           >=38                 1        1      83
6-24 months   MAL-ED          PERU                           <32                  0       26      83
6-24 months   MAL-ED          PERU                           <32                  1        2      83
6-24 months   MAL-ED          PERU                           [32-38)              0       26      83
6-24 months   MAL-ED          PERU                           [32-38)              1        2      83
6-24 months   MAL-ED          SOUTH AFRICA                   >=38                 0       55      90
6-24 months   MAL-ED          SOUTH AFRICA                   >=38                 1       10      90
6-24 months   MAL-ED          SOUTH AFRICA                   <32                  0        9      90
6-24 months   MAL-ED          SOUTH AFRICA                   <32                  1        0      90
6-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              0       13      90
6-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              1        3      90
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0       44     100
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        4     100
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       11     100
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        4     100
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       34     100
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        3     100
6-24 months   PROBIT          BELARUS                        >=38                 0      729   15992
6-24 months   PROBIT          BELARUS                        >=38                 1        6   15992
6-24 months   PROBIT          BELARUS                        <32                  0    12697   15992
6-24 months   PROBIT          BELARUS                        <32                  1      112   15992
6-24 months   PROBIT          BELARUS                        [32-38)              0     2432   15992
6-24 months   PROBIT          BELARUS                        [32-38)              1       16   15992
6-24 months   SAS-CompFeed    INDIA                          >=38                 0       24    1386
6-24 months   SAS-CompFeed    INDIA                          >=38                 1       20    1386
6-24 months   SAS-CompFeed    INDIA                          <32                  0      818    1386
6-24 months   SAS-CompFeed    INDIA                          <32                  1      351    1386
6-24 months   SAS-CompFeed    INDIA                          [32-38)              0      121    1386
6-24 months   SAS-CompFeed    INDIA                          [32-38)              1       52    1386
6-24 months   SAS-FoodSuppl   INDIA                          >=38                 0       29     402
6-24 months   SAS-FoodSuppl   INDIA                          >=38                 1       14     402
6-24 months   SAS-FoodSuppl   INDIA                          <32                  0      179     402
6-24 months   SAS-FoodSuppl   INDIA                          <32                  1      100     402
6-24 months   SAS-FoodSuppl   INDIA                          [32-38)              0       51     402
6-24 months   SAS-FoodSuppl   INDIA                          [32-38)              1       29     402


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
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/1f8a614e-d56c-45e5-9643-1bd0e5388f19/d7564ca2-4631-468a-8f77-6e69392e95a4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1f8a614e-d56c-45e5-9643-1bd0e5388f19/d7564ca2-4631-468a-8f77-6e69392e95a4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1f8a614e-d56c-45e5-9643-1bd0e5388f19/d7564ca2-4631-468a-8f77-6e69392e95a4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1f8a614e-d56c-45e5-9643-1bd0e5388f19/d7564ca2-4631-468a-8f77-6e69392e95a4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA     >=38                 NA                0.2420942   0.1799521   0.3042363
0-24 months   COHORTS         GUATEMALA     <32                  NA                0.2331633   0.1918973   0.2744293
0-24 months   COHORTS         GUATEMALA     [32-38)              NA                0.2477554   0.1771549   0.3183559
0-24 months   COHORTS         PHILIPPINES   >=38                 NA                0.4169066   0.3441871   0.4896261
0-24 months   COHORTS         PHILIPPINES   <32                  NA                0.4010445   0.3742490   0.4278400
0-24 months   COHORTS         PHILIPPINES   [32-38)              NA                0.3538514   0.2889972   0.4187057
0-24 months   MAL-ED          BANGLADESH    >=38                 NA                0.3391652   0.2192519   0.4590785
0-24 months   MAL-ED          BANGLADESH    <32                  NA                0.4832699   0.2901475   0.6763922
0-24 months   MAL-ED          BANGLADESH    [32-38)              NA                0.2631701   0.1371186   0.3892216
0-24 months   MAL-ED          INDIA         >=38                 NA                0.3111671   0.1543371   0.4679972
0-24 months   MAL-ED          INDIA         <32                  NA                0.6236448   0.4881299   0.7591597
0-24 months   MAL-ED          INDIA         [32-38)              NA                0.5054198   0.3862748   0.6245649
0-24 months   PROBIT          BELARUS       >=38                 NA                0.1790858   0.1425675   0.2156041
0-24 months   PROBIT          BELARUS       <32                  NA                0.2550435   0.1933004   0.3167866
0-24 months   PROBIT          BELARUS       [32-38)              NA                0.2412632   0.1876909   0.2948354
0-24 months   SAS-CompFeed    INDIA         >=38                 NA                0.5619996   0.3937456   0.7302536
0-24 months   SAS-CompFeed    INDIA         <32                  NA                0.4072548   0.3554343   0.4590754
0-24 months   SAS-CompFeed    INDIA         [32-38)              NA                0.4244577   0.2937446   0.5551709
0-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                0.5126595   0.3625043   0.6628148
0-24 months   SAS-FoodSuppl   INDIA         <32                  NA                0.4658614   0.4081692   0.5235536
0-24 months   SAS-FoodSuppl   INDIA         [32-38)              NA                0.4532715   0.3458831   0.5606599
0-6 months    COHORTS         GUATEMALA     >=38                 NA                0.2685209   0.1991963   0.3378455
0-6 months    COHORTS         GUATEMALA     <32                  NA                0.1810336   0.1417173   0.2203498
0-6 months    COHORTS         GUATEMALA     [32-38)              NA                0.1710117   0.1090015   0.2330218
0-6 months    COHORTS         PHILIPPINES   >=38                 NA                0.2281770   0.1624383   0.2939157
0-6 months    COHORTS         PHILIPPINES   <32                  NA                0.2303479   0.2081880   0.2525078
0-6 months    COHORTS         PHILIPPINES   [32-38)              NA                0.2463362   0.1849944   0.3076781
0-6 months    MAL-ED          BANGLADESH    >=38                 NA                0.2463768   0.1443667   0.3483870
0-6 months    MAL-ED          BANGLADESH    <32                  NA                0.3000000   0.1354719   0.4645281
0-6 months    MAL-ED          BANGLADESH    [32-38)              NA                0.1730769   0.0699098   0.2762441
0-6 months    MAL-ED          INDIA         >=38                 NA                0.1944444   0.0647578   0.3241311
0-6 months    MAL-ED          INDIA         <32                  NA                0.3396226   0.2117265   0.4675188
0-6 months    MAL-ED          INDIA         [32-38)              NA                0.3888889   0.2759333   0.5018445
0-6 months    PROBIT          BELARUS       >=38                 NA                0.1740777   0.1396628   0.2084926
0-6 months    PROBIT          BELARUS       <32                  NA                0.2498778   0.1878488   0.3119068
0-6 months    PROBIT          BELARUS       [32-38)              NA                0.2402731   0.1895475   0.2909986
0-6 months    SAS-CompFeed    INDIA         >=38                 NA                0.3203655   0.1419059   0.4988251
0-6 months    SAS-CompFeed    INDIA         <32                  NA                0.2115571   0.1714884   0.2516257
0-6 months    SAS-CompFeed    INDIA         [32-38)              NA                0.2558912   0.1689365   0.3428459
0-6 months    SAS-FoodSuppl   INDIA         >=38                 NA                0.2681973   0.1338389   0.4025557
0-6 months    SAS-FoodSuppl   INDIA         <32                  NA                0.1763936   0.1323464   0.2204409
0-6 months    SAS-FoodSuppl   INDIA         [32-38)              NA                0.1767518   0.0926209   0.2608828
6-24 months   COHORTS         GUATEMALA     >=38                 NA                0.0851230   0.0495106   0.1207354
6-24 months   COHORTS         GUATEMALA     <32                  NA                0.1368022   0.1028741   0.1707304
6-24 months   COHORTS         GUATEMALA     [32-38)              NA                0.1436823   0.0835594   0.2038051
6-24 months   COHORTS         PHILIPPINES   >=38                 NA                0.3676861   0.2894652   0.4459070
6-24 months   COHORTS         PHILIPPINES   <32                  NA                0.2651949   0.2397040   0.2906857
6-24 months   COHORTS         PHILIPPINES   [32-38)              NA                0.2323400   0.1721543   0.2925257
6-24 months   MAL-ED          BANGLADESH    >=38                 NA                0.1884058   0.0958331   0.2809785
6-24 months   MAL-ED          BANGLADESH    <32                  NA                0.3000000   0.1354719   0.4645281
6-24 months   MAL-ED          BANGLADESH    [32-38)              NA                0.1153846   0.0282601   0.2025091
6-24 months   MAL-ED          INDIA         >=38                 NA                0.1666667   0.0445476   0.2887858
6-24 months   MAL-ED          INDIA         <32                  NA                0.4150943   0.2820246   0.5481641
6-24 months   MAL-ED          INDIA         [32-38)              NA                0.2638889   0.1617674   0.3660104
6-24 months   PROBIT          BELARUS       >=38                 NA                0.0081633   0.0010716   0.0152549
6-24 months   PROBIT          BELARUS       <32                  NA                0.0087439   0.0047147   0.0127730
6-24 months   PROBIT          BELARUS       [32-38)              NA                0.0065359   0.0019147   0.0111572
6-24 months   SAS-CompFeed    INDIA         >=38                 NA                0.6106108   0.5309083   0.6903133
6-24 months   SAS-CompFeed    INDIA         <32                  NA                0.2996310   0.2567729   0.3424891
6-24 months   SAS-CompFeed    INDIA         [32-38)              NA                0.2170291   0.1357884   0.2982697
6-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                0.3388172   0.1957899   0.4818445
6-24 months   SAS-FoodSuppl   INDIA         <32                  NA                0.3584107   0.3020422   0.4147791
6-24 months   SAS-FoodSuppl   INDIA         [32-38)              NA                0.3701311   0.2633940   0.4768681


### Parameter: E(Y)


agecat        studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA     NA                   NA                0.2560311   0.2321591   0.2799032
0-24 months   COHORTS         PHILIPPINES   NA                   NA                0.4018374   0.3841095   0.4195652
0-24 months   MAL-ED          BANGLADESH    NA                   NA                0.3377483   0.2620632   0.4134335
0-24 months   MAL-ED          INDIA         NA                   NA                0.4968944   0.4194215   0.5743673
0-24 months   PROBIT          BELARUS       NA                   NA                0.2538395   0.1952096   0.3124695
0-24 months   SAS-CompFeed    INDIA         NA                   NA                0.4145695   0.3576236   0.4715155
0-24 months   SAS-FoodSuppl   INDIA         NA                   NA                0.4712919   0.4233811   0.5192026
0-6 months    COHORTS         GUATEMALA     NA                   NA                0.2005842   0.1760818   0.2250867
0-6 months    COHORTS         PHILIPPINES   NA                   NA                0.2321307   0.2168619   0.2473995
0-6 months    MAL-ED          BANGLADESH    NA                   NA                0.2317881   0.1642594   0.2993168
0-6 months    MAL-ED          INDIA         NA                   NA                0.3291925   0.2563790   0.4020061
0-6 months    PROBIT          BELARUS       NA                   NA                0.2484793   0.1896843   0.3072742
0-6 months    SAS-CompFeed    INDIA         NA                   NA                0.2197071   0.1750081   0.2644060
0-6 months    SAS-FoodSuppl   INDIA         NA                   NA                0.1866029   0.1492099   0.2239959
6-24 months   COHORTS         GUATEMALA     NA                   NA                0.1261803   0.1071047   0.1452559
6-24 months   COHORTS         PHILIPPINES   NA                   NA                0.2661765   0.2495644   0.2827886
6-24 months   MAL-ED          BANGLADESH    NA                   NA                0.1854305   0.1232352   0.2476257
6-24 months   MAL-ED          INDIA         NA                   NA                0.2919255   0.2214783   0.3623726
6-24 months   PROBIT          BELARUS       NA                   NA                0.0083792   0.0045582   0.0122002
6-24 months   SAS-CompFeed    INDIA         NA                   NA                0.3051948   0.2633957   0.3469939
6-24 months   SAS-FoodSuppl   INDIA         NA                   NA                0.3557214   0.3088651   0.4025777


### Parameter: RR


agecat        studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS         GUATEMALA     <32                  >=38              0.9631099   0.7060000   1.3138535
0-24 months   COHORTS         GUATEMALA     [32-38)              >=38              1.0233842   0.6983922   1.4996092
0-24 months   COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS         PHILIPPINES   <32                  >=38              0.9619529   0.7980783   1.1594770
0-24 months   COHORTS         PHILIPPINES   [32-38)              >=38              0.8487548   0.6590351   1.0930900
0-24 months   MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED          BANGLADESH    <32                  >=38              1.4248804   0.8345789   2.4327051
0-24 months   MAL-ED          BANGLADESH    [32-38)              >=38              0.7759349   0.4277431   1.4075620
0-24 months   MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED          INDIA         <32                  >=38              2.0042118   1.1566011   3.4729908
0-24 months   MAL-ED          INDIA         [32-38)              >=38              1.6242713   0.9301056   2.8365139
0-24 months   PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   PROBIT          BELARUS       <32                  >=38              1.4241413   1.1766363   1.7237090
0-24 months   PROBIT          BELARUS       [32-38)              >=38              1.3471931   1.0675358   1.7001108
0-24 months   SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed    INDIA         <32                  >=38              0.7246533   0.5773474   0.9095430
0-24 months   SAS-CompFeed    INDIA         [32-38)              >=38              0.7552635   0.5094567   1.1196691
0-24 months   SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl   INDIA         <32                  >=38              0.9087150   0.6611013   1.2490716
0-24 months   SAS-FoodSuppl   INDIA         [32-38)              >=38              0.8841570   0.6066123   1.2886875
0-6 months    COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS         GUATEMALA     <32                  >=38              0.6741880   0.4813517   0.9442772
0-6 months    COHORTS         GUATEMALA     [32-38)              >=38              0.6368653   0.4081776   0.9936787
0-6 months    COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS         PHILIPPINES   <32                  >=38              1.0095142   0.7450455   1.3678614
0-6 months    COHORTS         PHILIPPINES   [32-38)              >=38              1.0795840   0.7376679   1.5799815
0-6 months    MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED          BANGLADESH    <32                  >=38              1.2176471   0.6124737   2.4207805
0-6 months    MAL-ED          BANGLADESH    [32-38)              >=38              0.7024887   0.3399717   1.4515632
0-6 months    MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED          INDIA         <32                  >=38              1.7466307   0.8120101   3.7569961
0-6 months    MAL-ED          INDIA         [32-38)              >=38              2.0000000   0.9662673   4.1396415
0-6 months    PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    PROBIT          BELARUS       <32                  >=38              1.4354383   1.1843643   1.7397377
0-6 months    PROBIT          BELARUS       [32-38)              >=38              1.3802630   1.1034618   1.7264994
0-6 months    SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed    INDIA         <32                  >=38              0.6603616   0.3987250   1.0936796
0-6 months    SAS-CompFeed    INDIA         [32-38)              >=38              0.7987476   0.5424115   1.1762247
0-6 months    SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    SAS-FoodSuppl   INDIA         <32                  >=38              0.6577010   0.3759522   1.1505999
0-6 months    SAS-FoodSuppl   INDIA         [32-38)              >=38              0.6590366   0.3295658   1.3178834
6-24 months   COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS         GUATEMALA     <32                  >=38              1.6071130   0.9888553   2.6119210
6-24 months   COHORTS         GUATEMALA     [32-38)              >=38              1.6879381   0.9350117   3.0471649
6-24 months   COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS         PHILIPPINES   <32                  >=38              0.7212535   0.5711256   0.9108446
6-24 months   COHORTS         PHILIPPINES   [32-38)              >=38              0.6318978   0.4519704   0.8834534
6-24 months   MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED          BANGLADESH    <32                  >=38              1.5923077   0.7624990   3.3251767
6-24 months   MAL-ED          BANGLADESH    [32-38)              >=38              0.6124260   0.2487773   1.5076363
6-24 months   MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED          INDIA         <32                  >=38              2.4905660   1.1193351   5.5416104
6-24 months   MAL-ED          INDIA         [32-38)              >=38              1.5833333   0.6913573   3.6261201
6-24 months   PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   PROBIT          BELARUS       <32                  >=38              1.0711219   0.4964948   2.3108038
6-24 months   PROBIT          BELARUS       [32-38)              >=38              0.8006536   0.3030215   2.1155137
6-24 months   SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed    INDIA         <32                  >=38              0.4907070   0.3994595   0.6027981
6-24 months   SAS-CompFeed    INDIA         [32-38)              >=38              0.3554295   0.2586265   0.4884654
6-24 months   SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl   INDIA         <32                  >=38              1.0578290   0.6739712   1.6603116
6-24 months   SAS-FoodSuppl   INDIA         [32-38)              >=38              1.0924211   0.6547888   1.8225479


### Parameter: PAR


agecat        studyid         country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS         GUATEMALA     >=38                 NA                 0.0139369   -0.0437969    0.0716707
0-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.0150692   -0.0862969    0.0561584
0-24 months   MAL-ED          BANGLADESH    >=38                 NA                -0.0014169   -0.0914564    0.0886227
0-24 months   MAL-ED          INDIA         >=38                 NA                 0.1857273    0.0440297    0.3274249
0-24 months   PROBIT          BELARUS       >=38                 NA                 0.0747537    0.0305874    0.1189200
0-24 months   SAS-CompFeed    INDIA         >=38                 NA                -0.1474300   -0.2826795   -0.0121805
0-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                -0.0413677   -0.1834583    0.1007230
0-6 months    COHORTS         GUATEMALA     >=38                 NA                -0.0679367   -0.1312737   -0.0045997
0-6 months    COHORTS         PHILIPPINES   >=38                 NA                 0.0039537   -0.0605361    0.0684435
0-6 months    MAL-ED          BANGLADESH    >=38                 NA                -0.0145887   -0.0884536    0.0592761
0-6 months    MAL-ED          INDIA         >=38                 NA                 0.1347481    0.0139215    0.2555747
0-6 months    PROBIT          BELARUS       >=38                 NA                 0.0744015    0.0299494    0.1188536
0-6 months    SAS-CompFeed    INDIA         >=38                 NA                -0.1006585   -0.2549842    0.0536672
0-6 months    SAS-FoodSuppl   INDIA         >=38                 NA                -0.0815944   -0.2070321    0.0438433
6-24 months   COHORTS         GUATEMALA     >=38                 NA                 0.0410573    0.0076688    0.0744458
6-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.1015096   -0.1779273   -0.0250920
6-24 months   MAL-ED          BANGLADESH    >=38                 NA                -0.0029753   -0.0708431    0.0648925
6-24 months   MAL-ED          INDIA         >=38                 NA                 0.1252588    0.0103385    0.2401791
6-24 months   PROBIT          BELARUS       >=38                 NA                 0.0002159   -0.0058072    0.0062391
6-24 months   SAS-CompFeed    INDIA         >=38                 NA                -0.3054160   -0.3935477   -0.2172843
6-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                 0.0169042   -0.1187579    0.1525663


### Parameter: PAF


agecat        studyid         country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS         GUATEMALA     >=38                 NA                 0.0544345   -0.2001951    0.2550427
0-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.0375008   -0.2308845    0.1255005
0-24 months   MAL-ED          BANGLADESH    >=38                 NA                -0.0041950   -0.3094728    0.2299133
0-24 months   MAL-ED          INDIA         >=38                 NA                 0.3737762    0.0094231    0.6041132
0-24 months   PROBIT          BELARUS       >=38                 NA                 0.2944920    0.1542143    0.4115039
0-24 months   SAS-CompFeed    INDIA         >=38                 NA                -0.3556220   -0.7012932   -0.0801847
0-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                -0.0877751   -0.4353124    0.1756118
0-6 months    COHORTS         GUATEMALA     >=38                 NA                -0.3386940   -0.6949642   -0.0573095
0-6 months    COHORTS         PHILIPPINES   >=38                 NA                 0.0170323   -0.3039696    0.2590122
0-6 months    MAL-ED          BANGLADESH    >=38                 NA                -0.0629400   -0.4342828    0.2122604
0-6 months    MAL-ED          INDIA         >=38                 NA                 0.4093291   -0.0907885    0.6801469
0-6 months    PROBIT          BELARUS       >=38                 NA                 0.2994275    0.1588186    0.4165328
0-6 months    SAS-CompFeed    INDIA         >=38                 NA                -0.4581485   -1.3037938    0.0770888
0-6 months    SAS-FoodSuppl   INDIA         >=38                 NA                -0.4372624   -1.2897477    0.0978381
6-24 months   COHORTS         GUATEMALA     >=38                 NA                 0.3253861    0.0066577    0.5418458
6-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.3813621   -0.7016483   -0.1213606
6-24 months   MAL-ED          BANGLADESH    >=38                 NA                -0.0160455   -0.4566198    0.2912711
6-24 months   MAL-ED          INDIA         >=38                 NA                 0.4290780   -0.1233081    0.7098286
6-24 months   PROBIT          BELARUS       >=38                 NA                 0.0257691   -1.0373951    0.5341474
6-24 months   SAS-CompFeed    INDIA         >=38                 NA                -1.0007249   -1.4059186   -0.6637720
6-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                 0.0475209   -0.4214706    0.3617761
