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

**Outcome Variable:** ever_co

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

agecat        studyid         country                        fage       ever_co   n_cell       n
------------  --------------  -----------------------------  --------  --------  -------  ------
0-24 months   COHORTS         GUATEMALA                      >=38             0      344    1285
0-24 months   COHORTS         GUATEMALA                      >=38             1       38    1285
0-24 months   COHORTS         GUATEMALA                      <32              0      541    1285
0-24 months   COHORTS         GUATEMALA                      <32              1       60    1285
0-24 months   COHORTS         GUATEMALA                      [32-38)          0      259    1285
0-24 months   COHORTS         GUATEMALA                      [32-38)          1       43    1285
0-24 months   COHORTS         PHILIPPINES                    >=38             0      254    2939
0-24 months   COHORTS         PHILIPPINES                    >=38             1       74    2939
0-24 months   COHORTS         PHILIPPINES                    <32              0     1703    2939
0-24 months   COHORTS         PHILIPPINES                    <32              1      371    2939
0-24 months   COHORTS         PHILIPPINES                    [32-38)          0      441    2939
0-24 months   COHORTS         PHILIPPINES                    [32-38)          1       96    2939
0-24 months   LCNI-5          MALAWI                         >=38             0       26     106
0-24 months   LCNI-5          MALAWI                         >=38             1        0     106
0-24 months   LCNI-5          MALAWI                         <32              0       53     106
0-24 months   LCNI-5          MALAWI                         <32              1        3     106
0-24 months   LCNI-5          MALAWI                         [32-38)          0       22     106
0-24 months   LCNI-5          MALAWI                         [32-38)          1        2     106
0-24 months   MAL-ED          BANGLADESH                     >=38             0       61     151
0-24 months   MAL-ED          BANGLADESH                     >=38             1        8     151
0-24 months   MAL-ED          BANGLADESH                     <32              0       22     151
0-24 months   MAL-ED          BANGLADESH                     <32              1        8     151
0-24 months   MAL-ED          BANGLADESH                     [32-38)          0       45     151
0-24 months   MAL-ED          BANGLADESH                     [32-38)          1        7     151
0-24 months   MAL-ED          BRAZIL                         >=38             0       30      79
0-24 months   MAL-ED          BRAZIL                         >=38             1        0      79
0-24 months   MAL-ED          BRAZIL                         <32              0       17      79
0-24 months   MAL-ED          BRAZIL                         <32              1        1      79
0-24 months   MAL-ED          BRAZIL                         [32-38)          0       31      79
0-24 months   MAL-ED          BRAZIL                         [32-38)          1        0      79
0-24 months   MAL-ED          INDIA                          >=38             0       33     161
0-24 months   MAL-ED          INDIA                          >=38             1        3     161
0-24 months   MAL-ED          INDIA                          <32              0       36     161
0-24 months   MAL-ED          INDIA                          <32              1       17     161
0-24 months   MAL-ED          INDIA                          [32-38)          0       56     161
0-24 months   MAL-ED          INDIA                          [32-38)          1       16     161
0-24 months   MAL-ED          NEPAL                          >=38             0       14      79
0-24 months   MAL-ED          NEPAL                          >=38             1        3      79
0-24 months   MAL-ED          NEPAL                          <32              0       13      79
0-24 months   MAL-ED          NEPAL                          <32              1        2      79
0-24 months   MAL-ED          NEPAL                          [32-38)          0       43      79
0-24 months   MAL-ED          NEPAL                          [32-38)          1        4      79
0-24 months   MAL-ED          PERU                           >=38             0       27      85
0-24 months   MAL-ED          PERU                           >=38             1        0      85
0-24 months   MAL-ED          PERU                           <32              0       27      85
0-24 months   MAL-ED          PERU                           <32              1        2      85
0-24 months   MAL-ED          PERU                           [32-38)          0       27      85
0-24 months   MAL-ED          PERU                           [32-38)          1        2      85
0-24 months   MAL-ED          SOUTH AFRICA                   >=38             0       62      90
0-24 months   MAL-ED          SOUTH AFRICA                   >=38             1        3      90
0-24 months   MAL-ED          SOUTH AFRICA                   <32              0        9      90
0-24 months   MAL-ED          SOUTH AFRICA                   <32              1        0      90
0-24 months   MAL-ED          SOUTH AFRICA                   [32-38)          0       13      90
0-24 months   MAL-ED          SOUTH AFRICA                   [32-38)          1        3      90
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       43     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        5     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       12     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        3     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       34     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        3     100
0-24 months   PROBIT          BELARUS                        >=38             0      742   16277
0-24 months   PROBIT          BELARUS                        >=38             1        2   16277
0-24 months   PROBIT          BELARUS                        <32              0    13047   16277
0-24 months   PROBIT          BELARUS                        <32              1       11   16277
0-24 months   PROBIT          BELARUS                        [32-38)          0     2471   16277
0-24 months   PROBIT          BELARUS                        [32-38)          1        4   16277
0-24 months   SAS-CompFeed    INDIA                          >=38             0       29    1510
0-24 months   SAS-CompFeed    INDIA                          >=38             1       20    1510
0-24 months   SAS-CompFeed    INDIA                          <32              0      987    1510
0-24 months   SAS-CompFeed    INDIA                          <32              1      277    1510
0-24 months   SAS-CompFeed    INDIA                          [32-38)          0      145    1510
0-24 months   SAS-CompFeed    INDIA                          [32-38)          1       52    1510
0-24 months   SAS-FoodSuppl   INDIA                          >=38             0       26     418
0-24 months   SAS-FoodSuppl   INDIA                          >=38             1       18     418
0-24 months   SAS-FoodSuppl   INDIA                          <32              0      180     418
0-24 months   SAS-FoodSuppl   INDIA                          <32              1      109     418
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)          0       57     418
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)          1       28     418
0-6 months    COHORTS         GUATEMALA                      >=38             0      299    1026
0-6 months    COHORTS         GUATEMALA                      >=38             1        9    1026
0-6 months    COHORTS         GUATEMALA                      <32              0      468    1026
0-6 months    COHORTS         GUATEMALA                      <32              1        1    1026
0-6 months    COHORTS         GUATEMALA                      [32-38)          0      241    1026
0-6 months    COHORTS         GUATEMALA                      [32-38)          1        8    1026
0-6 months    COHORTS         PHILIPPINES                    >=38             0      315    2938
0-6 months    COHORTS         PHILIPPINES                    >=38             1       13    2938
0-6 months    COHORTS         PHILIPPINES                    <32              0     2033    2938
0-6 months    COHORTS         PHILIPPINES                    <32              1       40    2938
0-6 months    COHORTS         PHILIPPINES                    [32-38)          0      522    2938
0-6 months    COHORTS         PHILIPPINES                    [32-38)          1       15    2938
0-6 months    LCNI-5          MALAWI                         >=38             0        9      38
0-6 months    LCNI-5          MALAWI                         >=38             1        0      38
0-6 months    LCNI-5          MALAWI                         <32              0       21      38
0-6 months    LCNI-5          MALAWI                         <32              1        0      38
0-6 months    LCNI-5          MALAWI                         [32-38)          0        8      38
0-6 months    LCNI-5          MALAWI                         [32-38)          1        0      38
0-6 months    MAL-ED          BANGLADESH                     >=38             0       67     151
0-6 months    MAL-ED          BANGLADESH                     >=38             1        2     151
0-6 months    MAL-ED          BANGLADESH                     <32              0       29     151
0-6 months    MAL-ED          BANGLADESH                     <32              1        1     151
0-6 months    MAL-ED          BANGLADESH                     [32-38)          0       50     151
0-6 months    MAL-ED          BANGLADESH                     [32-38)          1        2     151
0-6 months    MAL-ED          BRAZIL                         >=38             0       30      79
0-6 months    MAL-ED          BRAZIL                         >=38             1        0      79
0-6 months    MAL-ED          BRAZIL                         <32              0       17      79
0-6 months    MAL-ED          BRAZIL                         <32              1        1      79
0-6 months    MAL-ED          BRAZIL                         [32-38)          0       31      79
0-6 months    MAL-ED          BRAZIL                         [32-38)          1        0      79
0-6 months    MAL-ED          INDIA                          >=38             0       34     161
0-6 months    MAL-ED          INDIA                          >=38             1        2     161
0-6 months    MAL-ED          INDIA                          <32              0       47     161
0-6 months    MAL-ED          INDIA                          <32              1        6     161
0-6 months    MAL-ED          INDIA                          [32-38)          0       67     161
0-6 months    MAL-ED          INDIA                          [32-38)          1        5     161
0-6 months    MAL-ED          NEPAL                          >=38             0       17      79
0-6 months    MAL-ED          NEPAL                          >=38             1        0      79
0-6 months    MAL-ED          NEPAL                          <32              0       15      79
0-6 months    MAL-ED          NEPAL                          <32              1        0      79
0-6 months    MAL-ED          NEPAL                          [32-38)          0       46      79
0-6 months    MAL-ED          NEPAL                          [32-38)          1        1      79
0-6 months    MAL-ED          PERU                           >=38             0       27      85
0-6 months    MAL-ED          PERU                           >=38             1        0      85
0-6 months    MAL-ED          PERU                           <32              0       29      85
0-6 months    MAL-ED          PERU                           <32              1        0      85
0-6 months    MAL-ED          PERU                           [32-38)          0       29      85
0-6 months    MAL-ED          PERU                           [32-38)          1        0      85
0-6 months    MAL-ED          SOUTH AFRICA                   >=38             0       65      90
0-6 months    MAL-ED          SOUTH AFRICA                   >=38             1        0      90
0-6 months    MAL-ED          SOUTH AFRICA                   <32              0        9      90
0-6 months    MAL-ED          SOUTH AFRICA                   <32              1        0      90
0-6 months    MAL-ED          SOUTH AFRICA                   [32-38)          0       14      90
0-6 months    MAL-ED          SOUTH AFRICA                   [32-38)          1        2      90
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       47     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        1     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       15     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        0     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       36     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        1     100
0-6 months    PROBIT          BELARUS                        >=38             0      742   16272
0-6 months    PROBIT          BELARUS                        >=38             1        1   16272
0-6 months    PROBIT          BELARUS                        <32              0    13046   16272
0-6 months    PROBIT          BELARUS                        <32              1        9   16272
0-6 months    PROBIT          BELARUS                        [32-38)          0     2472   16272
0-6 months    PROBIT          BELARUS                        [32-38)          1        2   16272
0-6 months    SAS-CompFeed    INDIA                          >=38             0       42    1501
0-6 months    SAS-CompFeed    INDIA                          >=38             1        6    1501
0-6 months    SAS-CompFeed    INDIA                          <32              0     1178    1501
0-6 months    SAS-CompFeed    INDIA                          <32              1       80    1501
0-6 months    SAS-CompFeed    INDIA                          [32-38)          0      175    1501
0-6 months    SAS-CompFeed    INDIA                          [32-38)          1       20    1501
0-6 months    SAS-FoodSuppl   INDIA                          >=38             0       37     416
0-6 months    SAS-FoodSuppl   INDIA                          >=38             1        6     416
0-6 months    SAS-FoodSuppl   INDIA                          <32              0      266     416
0-6 months    SAS-FoodSuppl   INDIA                          <32              1       22     416
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)          0       81     416
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)          1        4     416
6-24 months   COHORTS         GUATEMALA                      >=38             0      306    1164
6-24 months   COHORTS         GUATEMALA                      >=38             1       33    1164
6-24 months   COHORTS         GUATEMALA                      <32              0      486    1164
6-24 months   COHORTS         GUATEMALA                      <32              1       60    1164
6-24 months   COHORTS         GUATEMALA                      [32-38)          0      242    1164
6-24 months   COHORTS         GUATEMALA                      [32-38)          1       37    1164
6-24 months   COHORTS         PHILIPPINES                    >=38             0      234    2719
6-24 months   COHORTS         PHILIPPINES                    >=38             1       70    2719
6-24 months   COHORTS         PHILIPPINES                    <32              0     1556    2719
6-24 months   COHORTS         PHILIPPINES                    <32              1      355    2719
6-24 months   COHORTS         PHILIPPINES                    [32-38)          0      411    2719
6-24 months   COHORTS         PHILIPPINES                    [32-38)          1       93    2719
6-24 months   LCNI-5          MALAWI                         >=38             0       26     106
6-24 months   LCNI-5          MALAWI                         >=38             1        0     106
6-24 months   LCNI-5          MALAWI                         <32              0       53     106
6-24 months   LCNI-5          MALAWI                         <32              1        3     106
6-24 months   LCNI-5          MALAWI                         [32-38)          0       22     106
6-24 months   LCNI-5          MALAWI                         [32-38)          1        2     106
6-24 months   MAL-ED          BANGLADESH                     >=38             0       61     151
6-24 months   MAL-ED          BANGLADESH                     >=38             1        8     151
6-24 months   MAL-ED          BANGLADESH                     <32              0       23     151
6-24 months   MAL-ED          BANGLADESH                     <32              1        7     151
6-24 months   MAL-ED          BANGLADESH                     [32-38)          0       45     151
6-24 months   MAL-ED          BANGLADESH                     [32-38)          1        7     151
6-24 months   MAL-ED          BRAZIL                         >=38             0       30      79
6-24 months   MAL-ED          BRAZIL                         >=38             1        0      79
6-24 months   MAL-ED          BRAZIL                         <32              0       18      79
6-24 months   MAL-ED          BRAZIL                         <32              1        0      79
6-24 months   MAL-ED          BRAZIL                         [32-38)          0       31      79
6-24 months   MAL-ED          BRAZIL                         [32-38)          1        0      79
6-24 months   MAL-ED          INDIA                          >=38             0       33     161
6-24 months   MAL-ED          INDIA                          >=38             1        3     161
6-24 months   MAL-ED          INDIA                          <32              0       38     161
6-24 months   MAL-ED          INDIA                          <32              1       15     161
6-24 months   MAL-ED          INDIA                          [32-38)          0       57     161
6-24 months   MAL-ED          INDIA                          [32-38)          1       15     161
6-24 months   MAL-ED          NEPAL                          >=38             0       14      79
6-24 months   MAL-ED          NEPAL                          >=38             1        3      79
6-24 months   MAL-ED          NEPAL                          <32              0       13      79
6-24 months   MAL-ED          NEPAL                          <32              1        2      79
6-24 months   MAL-ED          NEPAL                          [32-38)          0       43      79
6-24 months   MAL-ED          NEPAL                          [32-38)          1        4      79
6-24 months   MAL-ED          PERU                           >=38             0       27      83
6-24 months   MAL-ED          PERU                           >=38             1        0      83
6-24 months   MAL-ED          PERU                           <32              0       26      83
6-24 months   MAL-ED          PERU                           <32              1        2      83
6-24 months   MAL-ED          PERU                           [32-38)          0       26      83
6-24 months   MAL-ED          PERU                           [32-38)          1        2      83
6-24 months   MAL-ED          SOUTH AFRICA                   >=38             0       62      90
6-24 months   MAL-ED          SOUTH AFRICA                   >=38             1        3      90
6-24 months   MAL-ED          SOUTH AFRICA                   <32              0        9      90
6-24 months   MAL-ED          SOUTH AFRICA                   <32              1        0      90
6-24 months   MAL-ED          SOUTH AFRICA                   [32-38)          0       14      90
6-24 months   MAL-ED          SOUTH AFRICA                   [32-38)          1        2      90
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       44     100
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        4     100
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       12     100
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        3     100
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       34     100
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        3     100
6-24 months   PROBIT          BELARUS                        >=38             0      734   15992
6-24 months   PROBIT          BELARUS                        >=38             1        1   15992
6-24 months   PROBIT          BELARUS                        <32              0    12806   15992
6-24 months   PROBIT          BELARUS                        <32              1        3   15992
6-24 months   PROBIT          BELARUS                        [32-38)          0     2446   15992
6-24 months   PROBIT          BELARUS                        [32-38)          1        2   15992
6-24 months   SAS-CompFeed    INDIA                          >=38             0       25    1386
6-24 months   SAS-CompFeed    INDIA                          >=38             1       19    1386
6-24 months   SAS-CompFeed    INDIA                          <32              0      921    1386
6-24 months   SAS-CompFeed    INDIA                          <32              1      248    1386
6-24 months   SAS-CompFeed    INDIA                          [32-38)          0      128    1386
6-24 months   SAS-CompFeed    INDIA                          [32-38)          1       45    1386
6-24 months   SAS-FoodSuppl   INDIA                          >=38             0       26     401
6-24 months   SAS-FoodSuppl   INDIA                          >=38             1       16     401
6-24 months   SAS-FoodSuppl   INDIA                          <32              0      177     401
6-24 months   SAS-FoodSuppl   INDIA                          <32              1      102     401
6-24 months   SAS-FoodSuppl   INDIA                          [32-38)          0       53     401
6-24 months   SAS-FoodSuppl   INDIA                          [32-38)          1       27     401


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
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/eba1adc9-41f8-4637-aced-36d5a2e7cc50/f1d7105b-e780-4965-8fc7-6ab4a016872b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eba1adc9-41f8-4637-aced-36d5a2e7cc50/f1d7105b-e780-4965-8fc7-6ab4a016872b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eba1adc9-41f8-4637-aced-36d5a2e7cc50/f1d7105b-e780-4965-8fc7-6ab4a016872b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eba1adc9-41f8-4637-aced-36d5a2e7cc50/f1d7105b-e780-4965-8fc7-6ab4a016872b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA     >=38                 NA                0.1004976   0.0564029   0.1445922
0-24 months   COHORTS         GUATEMALA     <32                  NA                0.1107817   0.0802490   0.1413143
0-24 months   COHORTS         GUATEMALA     [32-38)              NA                0.1271190   0.0752514   0.1789866
0-24 months   COHORTS         PHILIPPINES   >=38                 NA                0.2432222   0.1792884   0.3071560
0-24 months   COHORTS         PHILIPPINES   <32                  NA                0.1788103   0.1578522   0.1997684
0-24 months   COHORTS         PHILIPPINES   [32-38)              NA                0.1720981   0.1247267   0.2194695
0-24 months   MAL-ED          BANGLADESH    >=38                 NA                0.1159420   0.0401494   0.1917347
0-24 months   MAL-ED          BANGLADESH    <32                  NA                0.2666667   0.1078978   0.4254355
0-24 months   MAL-ED          BANGLADESH    [32-38)              NA                0.1346154   0.0415386   0.2276921
0-24 months   SAS-CompFeed    INDIA         >=38                 NA                0.4287924   0.3661200   0.4914648
0-24 months   SAS-CompFeed    INDIA         <32                  NA                0.2089946   0.1755031   0.2424861
0-24 months   SAS-CompFeed    INDIA         [32-38)              NA                0.2596405   0.1594565   0.3598245
0-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                0.3693987   0.2366050   0.5021923
0-24 months   SAS-FoodSuppl   INDIA         <32                  NA                0.3814441   0.3248460   0.4380422
0-24 months   SAS-FoodSuppl   INDIA         [32-38)              NA                0.3152980   0.2150362   0.4155599
0-6 months    COHORTS         PHILIPPINES   >=38                 NA                0.0347927   0.0066753   0.0629101
0-6 months    COHORTS         PHILIPPINES   <32                  NA                0.0181660   0.0120852   0.0242468
0-6 months    COHORTS         PHILIPPINES   [32-38)              NA                0.0411980   0.0062872   0.0761087
0-6 months    SAS-CompFeed    INDIA         >=38                 NA                0.1250000   0.0265956   0.2234044
0-6 months    SAS-CompFeed    INDIA         <32                  NA                0.0635930   0.0431567   0.0840293
0-6 months    SAS-CompFeed    INDIA         [32-38)              NA                0.1025641   0.0610899   0.1440383
6-24 months   COHORTS         GUATEMALA     >=38                 NA                0.0972279   0.0566725   0.1377834
6-24 months   COHORTS         GUATEMALA     <32                  NA                0.1115529   0.0809036   0.1422022
6-24 months   COHORTS         GUATEMALA     [32-38)              NA                0.1235090   0.0739488   0.1730692
6-24 months   COHORTS         PHILIPPINES   >=38                 NA                0.2482015   0.1799959   0.3164072
6-24 months   COHORTS         PHILIPPINES   <32                  NA                0.1855023   0.1629548   0.2080498
6-24 months   COHORTS         PHILIPPINES   [32-38)              NA                0.1516038   0.1105334   0.1926742
6-24 months   MAL-ED          BANGLADESH    >=38                 NA                0.1159420   0.0401494   0.1917347
6-24 months   MAL-ED          BANGLADESH    <32                  NA                0.2333333   0.0814808   0.3851858
6-24 months   MAL-ED          BANGLADESH    [32-38)              NA                0.1346154   0.0415386   0.2276921
6-24 months   SAS-CompFeed    INDIA         >=38                 NA                0.4262980   0.3137746   0.5388213
6-24 months   SAS-CompFeed    INDIA         <32                  NA                0.2186359   0.1862255   0.2510463
6-24 months   SAS-CompFeed    INDIA         [32-38)              NA                0.2321435   0.1582081   0.3060788
6-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                0.3380285   0.2057133   0.4703436
6-24 months   SAS-FoodSuppl   INDIA         <32                  NA                0.3705953   0.3134010   0.4277895
6-24 months   SAS-FoodSuppl   INDIA         [32-38)              NA                0.3234372   0.2166895   0.4301849


### Parameter: E(Y)


agecat        studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA     NA                   NA                0.1097276   0.0926320   0.1268233
0-24 months   COHORTS         PHILIPPINES   NA                   NA                0.1840762   0.1700627   0.1980897
0-24 months   MAL-ED          BANGLADESH    NA                   NA                0.1523179   0.0948144   0.2098214
0-24 months   SAS-CompFeed    INDIA         NA                   NA                0.2311258   0.1911027   0.2711489
0-24 months   SAS-FoodSuppl   INDIA         NA                   NA                0.3708134   0.3244530   0.4171738
0-6 months    COHORTS         PHILIPPINES   NA                   NA                0.0231450   0.0177070   0.0285830
0-6 months    SAS-CompFeed    INDIA         NA                   NA                0.0706196   0.0480792   0.0931600
6-24 months   COHORTS         GUATEMALA     NA                   NA                0.1116838   0.0935814   0.1297863
6-24 months   COHORTS         PHILIPPINES   NA                   NA                0.1905112   0.1757477   0.2052747
6-24 months   MAL-ED          BANGLADESH    NA                   NA                0.1456954   0.0892366   0.2021542
6-24 months   SAS-CompFeed    INDIA         NA                   NA                0.2251082   0.1905625   0.2596539
6-24 months   SAS-FoodSuppl   INDIA         NA                   NA                0.3615960   0.3145115   0.4086805


### Parameter: RR


agecat        studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS         GUATEMALA     <32                  >=38              1.1023319   0.6580896   1.8464592
0-24 months   COHORTS         GUATEMALA     [32-38)              >=38              1.2648960   0.6949836   2.3021575
0-24 months   COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS         PHILIPPINES   <32                  >=38              0.7351725   0.5515954   0.9798462
0-24 months   COHORTS         PHILIPPINES   [32-38)              >=38              0.7075757   0.4838178   1.0348179
0-24 months   MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED          BANGLADESH    <32                  >=38              2.3000000   0.9499965   5.5684414
0-24 months   MAL-ED          BANGLADESH    [32-38)              >=38              1.1610577   0.4483418   3.0067571
0-24 months   SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed    INDIA         <32                  >=38              0.4874028   0.3906131   0.6081761
0-24 months   SAS-CompFeed    INDIA         [32-38)              >=38              0.6055156   0.3926349   0.9338168
0-24 months   SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl   INDIA         <32                  >=38              1.0326081   0.7002093   1.5228013
0-24 months   SAS-FoodSuppl   INDIA         [32-38)              >=38              0.8535440   0.5290941   1.3769522
0-6 months    COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS         PHILIPPINES   <32                  >=38              0.5221210   0.2176966   1.2522487
0-6 months    COHORTS         PHILIPPINES   [32-38)              >=38              1.1840980   0.3671347   3.8190012
0-6 months    SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed    INDIA         <32                  >=38              0.5087440   0.2651710   0.9760514
0-6 months    SAS-CompFeed    INDIA         [32-38)              >=38              0.8205128   0.4199560   1.6031234
6-24 months   COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS         GUATEMALA     <32                  >=38              1.1473334   0.6970388   1.8885230
6-24 months   COHORTS         GUATEMALA     [32-38)              >=38              1.2703032   0.7121022   2.2660657
6-24 months   COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS         PHILIPPINES   <32                  >=38              0.7473858   0.5536439   1.0089258
6-24 months   COHORTS         PHILIPPINES   [32-38)              >=38              0.6108093   0.4153811   0.8981825
6-24 months   MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED          BANGLADESH    <32                  >=38              2.0125000   0.8000739   5.0622279
6-24 months   MAL-ED          BANGLADESH    [32-38)              >=38              1.1610577   0.4483418   3.0067571
6-24 months   SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed    INDIA         <32                  >=38              0.5128712   0.4016402   0.6549067
6-24 months   SAS-CompFeed    INDIA         [32-38)              >=38              0.5445568   0.3658048   0.8106569
6-24 months   SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl   INDIA         <32                  >=38              1.0963434   0.7202540   1.6688125
6-24 months   SAS-FoodSuppl   INDIA         [32-38)              >=38              0.9568342   0.5741205   1.5946684


### Parameter: PAR


agecat        studyid         country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS         GUATEMALA     >=38                 NA                 0.0092301   -0.0317123    0.0501724
0-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.0591460   -0.1213827    0.0030907
0-24 months   MAL-ED          BANGLADESH    >=38                 NA                 0.0363759   -0.0252782    0.0980299
0-24 months   SAS-CompFeed    INDIA         >=38                 NA                -0.1976666   -0.2743119   -0.1210212
0-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                 0.0014147   -0.1238337    0.1266631
0-6 months    COHORTS         PHILIPPINES   >=38                 NA                -0.0116477   -0.0390646    0.0157692
0-6 months    SAS-CompFeed    INDIA         >=38                 NA                -0.0543804   -0.1381804    0.0294196
6-24 months   COHORTS         GUATEMALA     >=38                 NA                 0.0144559   -0.0229058    0.0518176
6-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.0576903   -0.1241504    0.0087697
6-24 months   MAL-ED          BANGLADESH    >=38                 NA                 0.0297533   -0.0309275    0.0904341
6-24 months   SAS-CompFeed    INDIA         >=38                 NA                -0.2011897   -0.3035764   -0.0988030
6-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                 0.0235676   -0.1013758    0.1485109


### Parameter: PAF


agecat        studyid         country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS         GUATEMALA     >=38                 NA                 0.0841179   -0.3764841    0.3905922
0-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.3213126   -0.7074325   -0.0225101
0-24 months   MAL-ED          BANGLADESH    >=38                 NA                 0.2388154   -0.2830190    0.5484073
0-24 months   SAS-CompFeed    INDIA         >=38                 NA                -0.8552335   -1.3447199   -0.4679329
0-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                 0.0038152   -0.3982616    0.2902728
0-6 months    COHORTS         PHILIPPINES   >=38                 NA                -0.5032492   -2.3104956    0.3173958
0-6 months    SAS-CompFeed    INDIA         >=38                 NA                -0.7700472   -2.2322597    0.0306883
6-24 months   COHORTS         GUATEMALA     >=38                 NA                 0.1294360   -0.2776281    0.4068057
6-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.3028185   -0.7036022    0.0036781
6-24 months   MAL-ED          BANGLADESH    >=38                 NA                 0.2042161   -0.3337776    0.5252042
6-24 months   SAS-CompFeed    INDIA         >=38                 NA                -0.8937467   -1.4098562   -0.4881703
6-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                 0.0651765   -0.3526834    0.3539545
