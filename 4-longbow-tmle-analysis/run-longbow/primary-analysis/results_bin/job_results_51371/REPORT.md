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

agecat        studyid                    country                        fage       ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  0       63     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  1        6     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   0       28     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   1        2     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               0       46     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               1        6     151
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  0       30      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  1        0      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   0       18      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   1        0      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               0       31      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               1        0      79
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  0       33     161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  1        3     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                   0       45     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                   1        8     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               0       65     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               1        7     161
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                  0       17      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                  1        0      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                   0       13      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                   1        2      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)               0       46      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)               1        1      79
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                  0       26      85
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                  1        1      85
0-24 months   ki0047075b-MAL-ED          PERU                           <32                   0       28      85
0-24 months   ki0047075b-MAL-ED          PERU                           <32                   1        1      85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)               0       29      85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)               1        0      85
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       63      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1        2      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   0        8      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   1        1      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               0       14      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               1        2      90
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0       48     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1        0     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0       14     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1        1     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0       35     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1        2     100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                  0       32    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                  1       17    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                   0     1086    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                   1      178    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)               0      169    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)               1       28    1510
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  0       31     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  1       13     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                   0      247     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                   1       42     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               0       69     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               1       16     418
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                  0      690   16278
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                  1       54   16278
0-24 months   ki1119695-PROBIT           BELARUS                        <32                   0    12021   16278
0-24 months   ki1119695-PROBIT           BELARUS                        <32                   1     1038   16278
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)               0     2308   16278
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)               1      167   16278
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                  0      357    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                  1       25    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                   0      554    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                   1       47    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)               0      280    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)               1       22    1285
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                  0      285    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                  1       43    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                   0     1823    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                   1      251    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)               0      466    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)               1       71    2939
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                  0       26     106
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                  1        0     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                   0       56     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                   1        0     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)               0       24     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)               1        0     106
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                  0       63     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                  1        6     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                   0       29     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                   1        1     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)               0       48     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)               1        4     151
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                  0       30      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                  1        0      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                   0       18      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                   1        0      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)               0       31      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)               1        0      79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                  0       33     161
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                  1        3     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                   0       46     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                   1        7     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)               0       67     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)               1        5     161
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                  0       17      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                  1        0      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                   0       14      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                   1        1      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)               0       46      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)               1        1      79
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                  0       27      85
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                  1        0      85
0-6 months    ki0047075b-MAL-ED          PERU                           <32                   0       29      85
0-6 months    ki0047075b-MAL-ED          PERU                           <32                   1        0      85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)               0       29      85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)               1        0      85
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       65      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1        0      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   0        8      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   1        1      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               0       15      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               1        1      90
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0       48     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1        0     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0       15     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1        0     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0       36     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1        1     100
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                  0       39    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                  1        9    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                   0     1179    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                   1       79    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)               0      184    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)               1       12    1502
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  0       38     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  1        6     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                   0      281     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                   1        8     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               0       79     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               1        6     418
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                  0      689   16275
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                  1       54   16275
0-6 months    ki1119695-PROBIT           BELARUS                        <32                   0    12042   16275
0-6 months    ki1119695-PROBIT           BELARUS                        <32                   1     1015   16275
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)               0     2309   16275
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)               1      166   16275
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                  0      293    1027
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                  1       16    1027
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                   0      436    1027
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                   1       33    1027
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)               0      232    1027
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)               1       17    1027
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                  0      308    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                  1       20    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                   0     1933    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                   1      140    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)               0      498    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)               1       39    2938
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                  0        9      38
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                  1        0      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                   0       21      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                   1        0      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)               0        8      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)               1        0      38
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  0       69     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  1        0     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   0       29     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   1        1     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               0       50     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               1        2     151
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  0       30      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  1        0      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   0       18      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   1        0      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               0       31      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               1        0      79
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  0       36     161
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  1        0     161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                   0       51     161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                   1        2     161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               0       70     161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               1        2     161
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                  0       17      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                  1        0      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                   0       14      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                   1        1      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)               0       47      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)               1        0      79
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                  0       26      83
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                  1        1      83
6-24 months   ki0047075b-MAL-ED          PERU                           <32                   0       27      83
6-24 months   ki0047075b-MAL-ED          PERU                           <32                   1        1      83
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)               0       28      83
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)               1        0      83
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       63      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1        2      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   0        9      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   1        0      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               0       15      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               1        1      90
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0       48     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1        0     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0       14     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1        1     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0       36     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1        1     100
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                  0       33    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                  1       11    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                   0     1063    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                   1      106    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)               0      156    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)               1       17    1386
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  0       36     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  1        7     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                   0      245     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                   1       34     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               0       70     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               1       10     402
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                  0      735   15992
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                  1        0   15992
6-24 months   ki1119695-PROBIT           BELARUS                        <32                   0    12784   15992
6-24 months   ki1119695-PROBIT           BELARUS                        <32                   1       25   15992
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)               0     2447   15992
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)               1        1   15992
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                  0      331    1165
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                  1        9    1165
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                   0      532    1165
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                   1       14    1165
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)               0      274    1165
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)               1        5    1165
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                  0      280    2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                  1       25    2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                   0     1792    2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                   1      119    2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)               0      465    2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)               1       39    2720
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                  0       26     106
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                  1        0     106
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                   0       56     106
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                   1        0     106
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)               0       24     106
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)               1        0     106


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/65fa9013-46b5-426b-9846-e719e238c7e4/3eff5cf5-5aa4-4725-8012-52121f13f12a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/65fa9013-46b5-426b-9846-e719e238c7e4/3eff5cf5-5aa4-4725-8012-52121f13f12a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/65fa9013-46b5-426b-9846-e719e238c7e4/3eff5cf5-5aa4-4725-8012-52121f13f12a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/65fa9013-46b5-426b-9846-e719e238c7e4/3eff5cf5-5aa4-4725-8012-52121f13f12a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.4418587   0.3782229   0.5054946
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.1369603   0.1030612   0.1708594
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1566745   0.0745043   0.2388447
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.4060535   0.1992058   0.6129012
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.1677309   0.1002031   0.2352586
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.0657141   0.0274244   0.1040039
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.0481849   0.0317641   0.0646056
0-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.0793200   0.0458685   0.1127715
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0757231   0.0459126   0.1055336
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0714747   0.0444132   0.0985361
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0757474   0.0547970   0.0966978
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0730337   0.0420262   0.1040413
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.1755514   0.1156356   0.2354671
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.1109298   0.0952416   0.1266180
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.1088116   0.0685464   0.1490768
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.1875000   0.0647763   0.3102237
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.0627981   0.0374492   0.0881470
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.0612245   0.0329168   0.0895321
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.1363636   0.0348425   0.2378848
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.0276817   0.0087443   0.0466190
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.0705882   0.0160716   0.1251049
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                0.0532191   0.0351311   0.0713070
0-6 months    ki1119695-PROBIT           BELARUS       <32                  NA                0.0778847   0.0447730   0.1109963
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0744305   0.0430821   0.1057788
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0553243   0.0286586   0.0819899
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0678344   0.0452628   0.0904060
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0651661   0.0350819   0.0952503
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0658383   0.0251904   0.1064863
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0588882   0.0487726   0.0690037
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0584232   0.0325157   0.0843308
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.3856676   0.3128741   0.4584610
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.0841037   0.0621896   0.1060177
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.0988587   0.0146081   0.1831093
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.1627907   0.0523100   0.2732714
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.1218638   0.0834307   0.1602969
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.1250000   0.0524390   0.1975610
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0264706   0.0093999   0.0435413
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0256410   0.0123773   0.0389047
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0179211   0.0023476   0.0334947
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.1534136   0.0942385   0.2125888
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0616234   0.0469604   0.0762864
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0652744   0.0351917   0.0953571


### Parameter: E(Y)


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1476821   0.1188009   0.1765633
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1698565   0.1338154   0.2058975
0-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0773437   0.0450708   0.1096165
0-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0731518   0.0589094   0.0873941
0-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1241919   0.1122665   0.1361173
0-6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0665779   0.0427569   0.0903989
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.0478469   0.0273607   0.0683330
0-6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0758833   0.0434683   0.1082982
0-6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0642648   0.0492598   0.0792699
0-6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0677332   0.0586452   0.0768211
6-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0966811   0.0731505   0.1202117
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1268657   0.0942904   0.1594410
6-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0240343   0.0152359   0.0328328
6-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0672794   0.0578635   0.0766953


### Parameter: RR


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.3099639   0.2460236   0.3905221
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.3545805   0.2019109   0.6226869
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.4130758   0.2157305   0.7909480
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.1618362   0.0744689   0.3517033
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              1.6461599   1.1593766   2.3373272
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.5715125   1.0726087   2.3024721
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.0597798   0.6628464   1.6944094
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.0218131   0.5785428   1.8047101
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.6318939   0.4367646   0.9141995
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.6198279   0.3746110   1.0255614
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.3349232   0.1704948   0.6579294
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.3265306   0.1350830   0.7893089
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.2029988   0.0738566   0.5579534
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.5176471   0.1770741   1.5132562
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS       <32                  >=38              1.4634727   1.0239583   2.0916403
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.3985672   0.9488737   2.0613810
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.2261238   0.6828055   2.2017684
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.1778935   0.6046769   2.2945034
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.8944360   0.4712200   1.6977543
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.8873742   0.4150213   1.8973314
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.2180729   0.1620779   0.2934132
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.2563315   0.1145974   0.5733621
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.7485919   0.3541879   1.5821822
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.7678571   0.3143617   1.8755611
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.9686610   0.4237702   2.2141811
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.6770211   0.2294185   1.9979104
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.4016815   0.2553060   0.6319791
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.4254797   0.2332216   0.7762275


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.2941766   -0.3498808   -0.2384724
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.2361970   -0.4388550   -0.0335390
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0291588    0.0032000    0.0551176
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0016771   -0.0216702    0.0250244
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0513595   -0.1099174    0.0071984
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1209221   -0.2371560   -0.0046882
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0885167   -0.1810177    0.0039842
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0226642   -0.0032449    0.0485733
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0089406   -0.0144867    0.0323678
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0018948   -0.0381286    0.0419182
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.2889865   -0.3600491   -0.2179238
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0359250   -0.1391525    0.0673024
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0024363   -0.0165334    0.0116609
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0861342   -0.1437723   -0.0284961


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -1.9919581   -2.5750080   -1.5039981
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -1.3905682   -2.9837705   -0.4345245
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.3770032    0.1200662    0.5589156
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0229263   -0.3544326    0.2951491
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.4135492   -0.9748178   -0.0118003
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -1.8162500   -4.2450610   -0.5121395
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -1.8500000   -4.3856396   -0.5081774
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                 0.2986717    0.0040351    0.5061458
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1391209   -0.3125246    0.4353531
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0279748   -0.7849164    0.4706569
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -2.9890690   -4.2297318   -2.0427319
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.2831737   -1.4153842    0.3183135
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.1013655   -0.8740452    0.3527338
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -1.2802466   -2.3255031   -0.5635301
