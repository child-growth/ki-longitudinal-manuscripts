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

**Outcome Variable:** sstunted

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

agecat      studyid         country                        fage       sstunted   n_cell       n  outcome_variable 
----------  --------------  -----------------------------  --------  ---------  -------  ------  -----------------
Birth       COHORTS         GUATEMALA                      >=38              0      243     823  sstunted         
Birth       COHORTS         GUATEMALA                      >=38              1        2     823  sstunted         
Birth       COHORTS         GUATEMALA                      <32               0      373     823  sstunted         
Birth       COHORTS         GUATEMALA                      <32               1        7     823  sstunted         
Birth       COHORTS         GUATEMALA                      [32-38)           0      196     823  sstunted         
Birth       COHORTS         GUATEMALA                      [32-38)           1        2     823  sstunted         
Birth       COHORTS         PHILIPPINES                    >=38              0      321    2944  sstunted         
Birth       COHORTS         PHILIPPINES                    >=38              1        7    2944  sstunted         
Birth       COHORTS         PHILIPPINES                    <32               0     2048    2944  sstunted         
Birth       COHORTS         PHILIPPINES                    <32               1       31    2944  sstunted         
Birth       COHORTS         PHILIPPINES                    [32-38)           0      531    2944  sstunted         
Birth       COHORTS         PHILIPPINES                    [32-38)           1        6    2944  sstunted         
Birth       MAL-ED          BANGLADESH                     >=38              0       62     133  sstunted         
Birth       MAL-ED          BANGLADESH                     >=38              1        1     133  sstunted         
Birth       MAL-ED          BANGLADESH                     <32               0       24     133  sstunted         
Birth       MAL-ED          BANGLADESH                     <32               1        1     133  sstunted         
Birth       MAL-ED          BANGLADESH                     [32-38)           0       44     133  sstunted         
Birth       MAL-ED          BANGLADESH                     [32-38)           1        1     133  sstunted         
Birth       MAL-ED          BRAZIL                         >=38              0        5      18  sstunted         
Birth       MAL-ED          BRAZIL                         >=38              1        1      18  sstunted         
Birth       MAL-ED          BRAZIL                         <32               0        1      18  sstunted         
Birth       MAL-ED          BRAZIL                         <32               1        0      18  sstunted         
Birth       MAL-ED          BRAZIL                         [32-38)           0       10      18  sstunted         
Birth       MAL-ED          BRAZIL                         [32-38)           1        1      18  sstunted         
Birth       MAL-ED          INDIA                          >=38              0        7      27  sstunted         
Birth       MAL-ED          INDIA                          >=38              1        0      27  sstunted         
Birth       MAL-ED          INDIA                          <32               0        8      27  sstunted         
Birth       MAL-ED          INDIA                          <32               1        1      27  sstunted         
Birth       MAL-ED          INDIA                          [32-38)           0       10      27  sstunted         
Birth       MAL-ED          INDIA                          [32-38)           1        1      27  sstunted         
Birth       MAL-ED          NEPAL                          >=38              0        2       9  sstunted         
Birth       MAL-ED          NEPAL                          >=38              1        0       9  sstunted         
Birth       MAL-ED          NEPAL                          <32               0        2       9  sstunted         
Birth       MAL-ED          NEPAL                          <32               1        0       9  sstunted         
Birth       MAL-ED          NEPAL                          [32-38)           0        5       9  sstunted         
Birth       MAL-ED          NEPAL                          [32-38)           1        0       9  sstunted         
Birth       MAL-ED          PERU                           >=38              0       23      69  sstunted         
Birth       MAL-ED          PERU                           >=38              1        0      69  sstunted         
Birth       MAL-ED          PERU                           <32               0       22      69  sstunted         
Birth       MAL-ED          PERU                           <32               1        0      69  sstunted         
Birth       MAL-ED          PERU                           [32-38)           0       24      69  sstunted         
Birth       MAL-ED          PERU                           [32-38)           1        0      69  sstunted         
Birth       MAL-ED          SOUTH AFRICA                   >=38              0       16      31  sstunted         
Birth       MAL-ED          SOUTH AFRICA                   >=38              1        1      31  sstunted         
Birth       MAL-ED          SOUTH AFRICA                   <32               0        5      31  sstunted         
Birth       MAL-ED          SOUTH AFRICA                   <32               1        0      31  sstunted         
Birth       MAL-ED          SOUTH AFRICA                   [32-38)           0        9      31  sstunted         
Birth       MAL-ED          SOUTH AFRICA                   [32-38)           1        0      31  sstunted         
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              0       17      46  sstunted         
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              1        2      46  sstunted         
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               0        9      46  sstunted         
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               1        0      46  sstunted         
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           0       18      46  sstunted         
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           1        0      46  sstunted         
Birth       PROBIT          BELARUS                        >=38              0      606   13399  sstunted         
Birth       PROBIT          BELARUS                        >=38              1        0   13399  sstunted         
Birth       PROBIT          BELARUS                        <32               0    10727   13399  sstunted         
Birth       PROBIT          BELARUS                        <32               1        5   13399  sstunted         
Birth       PROBIT          BELARUS                        [32-38)           0     2061   13399  sstunted         
Birth       PROBIT          BELARUS                        [32-38)           1        0   13399  sstunted         
Birth       SAS-CompFeed    INDIA                          >=38              0       36    1249  sstunted         
Birth       SAS-CompFeed    INDIA                          >=38              1        4    1249  sstunted         
Birth       SAS-CompFeed    INDIA                          <32               0      973    1249  sstunted         
Birth       SAS-CompFeed    INDIA                          <32               1       72    1249  sstunted         
Birth       SAS-CompFeed    INDIA                          [32-38)           0      150    1249  sstunted         
Birth       SAS-CompFeed    INDIA                          [32-38)           1       14    1249  sstunted         
6 months    COHORTS         GUATEMALA                      >=38              0      234     929  sstunted         
6 months    COHORTS         GUATEMALA                      >=38              1       41     929  sstunted         
6 months    COHORTS         GUATEMALA                      <32               0      376     929  sstunted         
6 months    COHORTS         GUATEMALA                      <32               1       45     929  sstunted         
6 months    COHORTS         GUATEMALA                      [32-38)           0      200     929  sstunted         
6 months    COHORTS         GUATEMALA                      [32-38)           1       33     929  sstunted         
6 months    COHORTS         PHILIPPINES                    >=38              0      276    2624  sstunted         
6 months    COHORTS         PHILIPPINES                    >=38              1       24    2624  sstunted         
6 months    COHORTS         PHILIPPINES                    <32               0     1753    2624  sstunted         
6 months    COHORTS         PHILIPPINES                    <32               1       76    2624  sstunted         
6 months    COHORTS         PHILIPPINES                    [32-38)           0      468    2624  sstunted         
6 months    COHORTS         PHILIPPINES                    [32-38)           1       27    2624  sstunted         
6 months    LCNI-5          MALAWI                         >=38              0       25     106  sstunted         
6 months    LCNI-5          MALAWI                         >=38              1        1     106  sstunted         
6 months    LCNI-5          MALAWI                         <32               0       50     106  sstunted         
6 months    LCNI-5          MALAWI                         <32               1        6     106  sstunted         
6 months    LCNI-5          MALAWI                         [32-38)           0       22     106  sstunted         
6 months    LCNI-5          MALAWI                         [32-38)           1        2     106  sstunted         
6 months    MAL-ED          BANGLADESH                     >=38              0       69     150  sstunted         
6 months    MAL-ED          BANGLADESH                     >=38              1        0     150  sstunted         
6 months    MAL-ED          BANGLADESH                     <32               0       29     150  sstunted         
6 months    MAL-ED          BANGLADESH                     <32               1        1     150  sstunted         
6 months    MAL-ED          BANGLADESH                     [32-38)           0       49     150  sstunted         
6 months    MAL-ED          BANGLADESH                     [32-38)           1        2     150  sstunted         
6 months    MAL-ED          BRAZIL                         >=38              0       30      79  sstunted         
6 months    MAL-ED          BRAZIL                         >=38              1        0      79  sstunted         
6 months    MAL-ED          BRAZIL                         <32               0       18      79  sstunted         
6 months    MAL-ED          BRAZIL                         <32               1        0      79  sstunted         
6 months    MAL-ED          BRAZIL                         [32-38)           0       31      79  sstunted         
6 months    MAL-ED          BRAZIL                         [32-38)           1        0      79  sstunted         
6 months    MAL-ED          INDIA                          >=38              0       34     161  sstunted         
6 months    MAL-ED          INDIA                          >=38              1        2     161  sstunted         
6 months    MAL-ED          INDIA                          <32               0       50     161  sstunted         
6 months    MAL-ED          INDIA                          <32               1        3     161  sstunted         
6 months    MAL-ED          INDIA                          [32-38)           0       71     161  sstunted         
6 months    MAL-ED          INDIA                          [32-38)           1        1     161  sstunted         
6 months    MAL-ED          NEPAL                          >=38              0       17      79  sstunted         
6 months    MAL-ED          NEPAL                          >=38              1        0      79  sstunted         
6 months    MAL-ED          NEPAL                          <32               0       15      79  sstunted         
6 months    MAL-ED          NEPAL                          <32               1        0      79  sstunted         
6 months    MAL-ED          NEPAL                          [32-38)           0       47      79  sstunted         
6 months    MAL-ED          NEPAL                          [32-38)           1        0      79  sstunted         
6 months    MAL-ED          PERU                           >=38              0       27      83  sstunted         
6 months    MAL-ED          PERU                           >=38              1        0      83  sstunted         
6 months    MAL-ED          PERU                           <32               0       26      83  sstunted         
6 months    MAL-ED          PERU                           <32               1        2      83  sstunted         
6 months    MAL-ED          PERU                           [32-38)           0       25      83  sstunted         
6 months    MAL-ED          PERU                           [32-38)           1        3      83  sstunted         
6 months    MAL-ED          SOUTH AFRICA                   >=38              0       63      89  sstunted         
6 months    MAL-ED          SOUTH AFRICA                   >=38              1        1      89  sstunted         
6 months    MAL-ED          SOUTH AFRICA                   <32               0        9      89  sstunted         
6 months    MAL-ED          SOUTH AFRICA                   <32               1        0      89  sstunted         
6 months    MAL-ED          SOUTH AFRICA                   [32-38)           0       16      89  sstunted         
6 months    MAL-ED          SOUTH AFRICA                   [32-38)           1        0      89  sstunted         
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              0       45     100  sstunted         
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              1        3     100  sstunted         
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               0       13     100  sstunted         
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               1        2     100  sstunted         
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           0       36     100  sstunted         
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           1        1     100  sstunted         
6 months    PROBIT          BELARUS                        >=38              0      694   15182  sstunted         
6 months    PROBIT          BELARUS                        >=38              1        7   15182  sstunted         
6 months    PROBIT          BELARUS                        <32               0    12040   15182  sstunted         
6 months    PROBIT          BELARUS                        <32               1      135   15182  sstunted         
6 months    PROBIT          BELARUS                        [32-38)           0     2280   15182  sstunted         
6 months    PROBIT          BELARUS                        [32-38)           1       26   15182  sstunted         
6 months    SAS-CompFeed    INDIA                          >=38              0       33    1333  sstunted         
6 months    SAS-CompFeed    INDIA                          >=38              1       11    1333  sstunted         
6 months    SAS-CompFeed    INDIA                          <32               0     1030    1333  sstunted         
6 months    SAS-CompFeed    INDIA                          <32               1       95    1333  sstunted         
6 months    SAS-CompFeed    INDIA                          [32-38)           0      142    1333  sstunted         
6 months    SAS-CompFeed    INDIA                          [32-38)           1       22    1333  sstunted         
6 months    SAS-FoodSuppl   INDIA                          >=38              0       32     380  sstunted         
6 months    SAS-FoodSuppl   INDIA                          >=38              1        7     380  sstunted         
6 months    SAS-FoodSuppl   INDIA                          <32               0      228     380  sstunted         
6 months    SAS-FoodSuppl   INDIA                          <32               1       36     380  sstunted         
6 months    SAS-FoodSuppl   INDIA                          [32-38)           0       66     380  sstunted         
6 months    SAS-FoodSuppl   INDIA                          [32-38)           1       11     380  sstunted         
24 months   COHORTS         GUATEMALA                      >=38              0      158    1021  sstunted         
24 months   COHORTS         GUATEMALA                      >=38              1      127    1021  sstunted         
24 months   COHORTS         GUATEMALA                      <32               0      251    1021  sstunted         
24 months   COHORTS         GUATEMALA                      <32               1      240    1021  sstunted         
24 months   COHORTS         GUATEMALA                      [32-38)           0      115    1021  sstunted         
24 months   COHORTS         GUATEMALA                      [32-38)           1      130    1021  sstunted         
24 months   COHORTS         PHILIPPINES                    >=38              0      169    2371  sstunted         
24 months   COHORTS         PHILIPPINES                    >=38              1      101    2371  sstunted         
24 months   COHORTS         PHILIPPINES                    <32               0     1200    2371  sstunted         
24 months   COHORTS         PHILIPPINES                    <32               1      466    2371  sstunted         
24 months   COHORTS         PHILIPPINES                    [32-38)           0      313    2371  sstunted         
24 months   COHORTS         PHILIPPINES                    [32-38)           1      122    2371  sstunted         
24 months   LCNI-5          MALAWI                         >=38              0       21      74  sstunted         
24 months   LCNI-5          MALAWI                         >=38              1        0      74  sstunted         
24 months   LCNI-5          MALAWI                         <32               0       33      74  sstunted         
24 months   LCNI-5          MALAWI                         <32               1        4      74  sstunted         
24 months   LCNI-5          MALAWI                         [32-38)           0       14      74  sstunted         
24 months   LCNI-5          MALAWI                         [32-38)           1        2      74  sstunted         
24 months   MAL-ED          BANGLADESH                     >=38              0       59     151  sstunted         
24 months   MAL-ED          BANGLADESH                     >=38              1       10     151  sstunted         
24 months   MAL-ED          BANGLADESH                     <32               0       24     151  sstunted         
24 months   MAL-ED          BANGLADESH                     <32               1        6     151  sstunted         
24 months   MAL-ED          BANGLADESH                     [32-38)           0       46     151  sstunted         
24 months   MAL-ED          BANGLADESH                     [32-38)           1        6     151  sstunted         
24 months   MAL-ED          BRAZIL                         >=38              0       30      79  sstunted         
24 months   MAL-ED          BRAZIL                         >=38              1        0      79  sstunted         
24 months   MAL-ED          BRAZIL                         <32               0       18      79  sstunted         
24 months   MAL-ED          BRAZIL                         <32               1        0      79  sstunted         
24 months   MAL-ED          BRAZIL                         [32-38)           0       31      79  sstunted         
24 months   MAL-ED          BRAZIL                         [32-38)           1        0      79  sstunted         
24 months   MAL-ED          INDIA                          >=38              0       31     161  sstunted         
24 months   MAL-ED          INDIA                          >=38              1        5     161  sstunted         
24 months   MAL-ED          INDIA                          <32               0       45     161  sstunted         
24 months   MAL-ED          INDIA                          <32               1        8     161  sstunted         
24 months   MAL-ED          INDIA                          [32-38)           0       64     161  sstunted         
24 months   MAL-ED          INDIA                          [32-38)           1        8     161  sstunted         
24 months   MAL-ED          NEPAL                          >=38              0       17      79  sstunted         
24 months   MAL-ED          NEPAL                          >=38              1        0      79  sstunted         
24 months   MAL-ED          NEPAL                          <32               0       14      79  sstunted         
24 months   MAL-ED          NEPAL                          <32               1        1      79  sstunted         
24 months   MAL-ED          NEPAL                          [32-38)           0       45      79  sstunted         
24 months   MAL-ED          NEPAL                          [32-38)           1        2      79  sstunted         
24 months   MAL-ED          PERU                           >=38              0       26      79  sstunted         
24 months   MAL-ED          PERU                           >=38              1        0      79  sstunted         
24 months   MAL-ED          PERU                           <32               0       25      79  sstunted         
24 months   MAL-ED          PERU                           <32               1        2      79  sstunted         
24 months   MAL-ED          PERU                           [32-38)           0       23      79  sstunted         
24 months   MAL-ED          PERU                           [32-38)           1        3      79  sstunted         
24 months   MAL-ED          SOUTH AFRICA                   >=38              0       58      89  sstunted         
24 months   MAL-ED          SOUTH AFRICA                   >=38              1        7      89  sstunted         
24 months   MAL-ED          SOUTH AFRICA                   <32               0        8      89  sstunted         
24 months   MAL-ED          SOUTH AFRICA                   <32               1        0      89  sstunted         
24 months   MAL-ED          SOUTH AFRICA                   [32-38)           0       16      89  sstunted         
24 months   MAL-ED          SOUTH AFRICA                   [32-38)           1        0      89  sstunted         
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              0       32     100  sstunted         
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              1       16     100  sstunted         
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               0        8     100  sstunted         
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               1        7     100  sstunted         
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           0       21     100  sstunted         
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           1       16     100  sstunted         
24 months   PROBIT          BELARUS                        >=38              0      176    3909  sstunted         
24 months   PROBIT          BELARUS                        >=38              1        2    3909  sstunted         
24 months   PROBIT          BELARUS                        <32               0     3095    3909  sstunted         
24 months   PROBIT          BELARUS                        <32               1       48    3909  sstunted         
24 months   PROBIT          BELARUS                        [32-38)           0      576    3909  sstunted         
24 months   PROBIT          BELARUS                        [32-38)           1       12    3909  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: PROBIT, country: BELARUS

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
