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
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  0       34     161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  1        2     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                   0       45     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                   1        8     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               0       63     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               1        9     161
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       62      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1        3      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   0        8      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   1        1      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               0       14      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               1        2      90
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0       48     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1        0     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0       14     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1        1     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0       34     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1        3     100
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
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                  0       34     161
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                  1        2     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                   0       46     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                   1        7     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)               0       66     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)               1        6     161
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       64      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1        1      90
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
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               0       69     161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               1        3     161
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
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0       35     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1        2     100
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
![](/tmp/2d140386-94df-414a-9ee4-ba56ba189b64/1dc3067a-ea36-46d1-948c-2dfaad4c8edb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2d140386-94df-414a-9ee4-ba56ba189b64/1dc3067a-ea36-46d1-948c-2dfaad4c8edb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2d140386-94df-414a-9ee4-ba56ba189b64/1dc3067a-ea36-46d1-948c-2dfaad4c8edb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2d140386-94df-414a-9ee4-ba56ba189b64/1dc3067a-ea36-46d1-948c-2dfaad4c8edb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.4418587   0.3782229   0.5054946
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.1369603   0.1030612   0.1708594
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1566745   0.0745043   0.2388447
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.4187541   0.2040817   0.6334264
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.2161055   0.1329679   0.2992432
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.0683538   0.0259557   0.1107520
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.0485552   0.0293615   0.0677489
0-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.0789407   0.0463186   0.1115628
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0731676   0.0427728   0.1035624
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0708829   0.0437948   0.0979710
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0740957   0.0534996   0.0946918
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0688079   0.0404465   0.0971692
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.1738562   0.1161605   0.2315519
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.1118912   0.0955906   0.1281918
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.1042258   0.0698850   0.1385666
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.1875000   0.0647763   0.3102237
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.0627981   0.0374492   0.0881470
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.0612245   0.0329168   0.0895321
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.1363636   0.0348425   0.2378848
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.0276817   0.0087443   0.0466190
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.0705882   0.0160716   0.1251049
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                0.0539505   0.0358951   0.0720058
0-6 months    ki1119695-PROBIT           BELARUS       <32                  NA                0.0778985   0.0445979   0.1111990
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0742294   0.0438752   0.1045837
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0548649   0.0278845   0.0818453
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0675506   0.0451046   0.0899965
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0641159   0.0344228   0.0938090
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0590378   0.0195045   0.0985712
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0588908   0.0490327   0.0687489
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0653243   0.0297994   0.1008491
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.3856676   0.3128741   0.4584610
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.0841037   0.0621896   0.1060177
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.0988587   0.0146081   0.1831093
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.1627907   0.0523100   0.2732714
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.1218638   0.0834307   0.1602969
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.1250000   0.0524390   0.1975610
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0264706   0.0093999   0.0435413
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0256410   0.0123773   0.0389047
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0179211   0.0023476   0.0334947
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.1444875   0.0885371   0.2004379
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0620282   0.0470699   0.0769866
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0724359   0.0343366   0.1105352


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
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.5160679   0.2720875   0.9788252
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.1632315   0.0728344   0.3658235
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              1.6257938   1.1295654   2.3400200
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.5068963   1.0056390   2.2580035
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.0453249   0.6514521   1.6773361
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.9707254   0.5533554   1.7028980
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.6435849   0.4479877   0.9245824
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.5994945   0.3755183   0.9570603
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.3349232   0.1704948   0.6579294
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.3265306   0.1350830   0.7893089
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.2029988   0.0738566   0.5579534
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.5176471   0.1770741   1.5132562
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS       <32                  >=38              1.4438884   0.9947869   2.0957389
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.3758811   0.9266275   2.0429446
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.2312173   0.6800633   2.2290516
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.1686146   0.5948195   2.2959234
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.9975094   0.5001615   1.9894072
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.1064813   0.4670126   2.6215589
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
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.4292984   0.2720326   0.6774816
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.5013301   0.2608286   0.9635902


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.2941766   -0.3498808   -0.2384724
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.2488976   -0.4593783   -0.0384169
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0287885    0.0032115    0.0543655
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0022688   -0.0211096    0.0256473
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0496643   -0.1060093    0.0066807
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1209221   -0.2371560   -0.0046882
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0885167   -0.1810177    0.0039842
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0219328   -0.0049659    0.0488315
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0094000   -0.0143991    0.0331991
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0086953   -0.0302902    0.0476809
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.2889865   -0.3600491   -0.2179238
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0359250   -0.1391525    0.0673024
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0024363   -0.0165334    0.0116609
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0772081   -0.1316849   -0.0227312


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -1.9919581   -2.5750080   -1.5039981
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -1.4653409   -3.1232278   -0.4740649
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.3722152    0.1007681    0.5617217
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0310154   -0.3474632    0.3031860
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.3998994   -0.9375193   -0.0114574
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -1.8162500   -4.2450610   -0.5121395
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -1.8500000   -4.3856396   -0.5081774
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                 0.2890332   -0.0265379    0.5075936
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1462692   -0.3151039    0.4457804
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.1283761   -0.6856360    0.5492929
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -2.9890690   -4.2297318   -2.0427319
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.2831737   -1.4153842    0.3183135
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.1013655   -0.8740452    0.3527338
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -1.1475736   -2.1373741   -0.4700422
