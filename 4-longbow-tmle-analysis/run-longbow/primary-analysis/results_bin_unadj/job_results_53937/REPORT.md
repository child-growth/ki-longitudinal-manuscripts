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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        fage       ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  0       27     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  1       42     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   0        7     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   1       23     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               0       23     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               1       29     151
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  0       21      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  1        9      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   0        8      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   1       10      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               0       25      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               1        6      79
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  0       16     161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  1       20     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                   0       18     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                   1       35     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               0       24     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               1       48     161
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                  0       12      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                  1        5      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                   0        9      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                   1        6      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)               0       28      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)               1       19      79
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                  0       10      85
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                  1       17      85
0-24 months   ki0047075b-MAL-ED          PERU                           <32                   0        8      85
0-24 months   ki0047075b-MAL-ED          PERU                           <32                   1       21      85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)               0        7      85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)               1       22      85
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       28      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1       37      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   0        6      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   1        3      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               0        5      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               1       11      90
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0        4     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1       44     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0        1     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1       14     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0        3     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1       34     100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                  0       11    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                  1       40    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                   0      406    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                   1      873    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)               0       56    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)               1      144    1530
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  0        7     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  1       37     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                   0       51     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                   1      238     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               0       14     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               1       71     418
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                  0      612   16277
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                  1      132   16277
0-24 months   ki1119695-PROBIT           BELARUS                        <32                   0    10867   16277
0-24 months   ki1119695-PROBIT           BELARUS                        <32                   1     2191   16277
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)               0     2108   16277
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)               1      367   16277
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                  0       96    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                  1      290    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                   0      147    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                   1      462    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)               0       64    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)               1      242    1301
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                  0       90    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                  1      240    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                   0      669    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                   1     1414    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)               0      157    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)               1      381    2951
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                  0       10     106
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                  1       16     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                   0       22     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                   1       34     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)               0        8     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)               1       16     106
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                  0       49     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                  1       20     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                   0       16     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                   1       14     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)               0       37     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)               1       15     151
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                  0       24      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                  1        6      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                   0       10      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                   1        8      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)               0       26      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)               1        5      79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                  0       25     161
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                  1       11     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                   0       35     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                   1       18     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)               0       47     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)               1       25     161
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                  0       14      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                  1        3      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                   0       13      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                   1        2      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)               0       38      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)               1        9      79
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                  0       21      85
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                  1        6      85
0-6 months    ki0047075b-MAL-ED          PERU                           <32                   0       15      85
0-6 months    ki0047075b-MAL-ED          PERU                           <32                   1       14      85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)               0       11      85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)               1       18      85
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       44      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1       21      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   0        7      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   1        2      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               0        9      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               1        7      90
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0       31     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1       17     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0        5     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1       10     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0       21     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1       16     100
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                  0       23    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                  1       27    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                   0      742    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                   1      535    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)               0      113    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)               1       87    1527
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  0       25     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  1       18     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                   0      171     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                   1      117     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               0       58     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               1       27     416
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                  0      660   16273
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                  1       83   16273
0-6 months    ki1119695-PROBIT           BELARUS                        <32                   0    11743   16273
0-6 months    ki1119695-PROBIT           BELARUS                        <32                   1     1313   16273
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)               0     2279   16273
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)               1      195   16273
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                  0      205    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                  1      108    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                   0      340    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                   1      144    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)               0      169    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)               1       86    1052
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                  0      231    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                  1       99    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                   0     1595    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                   1      488    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)               0      419    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)               1      119    2951
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                  0        7      38
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                  1        2      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                   0       12      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                   1        9      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)               0        3      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)               1        5      38
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  0       27     102
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  1       22     102
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   0        7     102
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   1        9     102
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               0       23     102
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               1       14     102
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  0       21      60
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  1        3      60
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   0        8      60
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   1        2      60
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               0       25      60
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               1        1      60
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  0       16     107
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  1        9     107
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                   0       18     107
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                   1       17     107
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               0       24     107
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               1       23     107
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                  0       12      65
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                  1        2      65
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                   0        9      65
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                   1        4      65
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)               0       28      65
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)               1       10      65
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                  0       10      46
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                  1       11      46
6-24 months   ki0047075b-MAL-ED          PERU                           <32                   0        7      46
6-24 months   ki0047075b-MAL-ED          PERU                           <32                   1        7      46
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)               0        7      46
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)               1        4      46
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       28      60
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1       16      60
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   0        6      60
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   1        1      60
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               0        5      60
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               1        4      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0        4      57
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1       27      57
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0        1      57
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1        4      57
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0        3      57
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1       18      57
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                  0        9     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                  1       13     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                   0      351     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                   1      338     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)               0       44     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)               1       57     812
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  0        6     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  1       19     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                   0       44     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                   1      121     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               0        9     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               1       44     243
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                  0      605   14433
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                  1       49   14433
6-24 months   ki1119695-PROBIT           BELARUS                        <32                   0    10645   14433
6-24 months   ki1119695-PROBIT           BELARUS                        <32                   1      878   14433
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)               0     2084   14433
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)               1      172   14433
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                  0       65     861
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                  1      182     861
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                   0       95     861
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                   1      318     861
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)               0       45     861
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)               1      156     861
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                  0       70    2054
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                  1      141    2054
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                   0      527    2054
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                   1      926    2054
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)               0      128    2054
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)               1      262    2054
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                  0       10      90
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                  1       14      90
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                   0       22      90
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                   1       25      90
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)               0        8      90
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)               1       11      90


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/183a6457-640e-4d31-9dcb-b47cd391f76b/035b27ce-c0cc-4f32-802e-9278c28276fa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/183a6457-640e-4d31-9dcb-b47cd391f76b/035b27ce-c0cc-4f32-802e-9278c28276fa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/183a6457-640e-4d31-9dcb-b47cd391f76b/035b27ce-c0cc-4f32-802e-9278c28276fa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/183a6457-640e-4d31-9dcb-b47cd391f76b/035b27ce-c0cc-4f32-802e-9278c28276fa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.6086957   0.4931579   0.7242334
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.7666667   0.6148142   0.9185192
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.5576923   0.4222517   0.6931329
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.3000000   0.1349698   0.4650302
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.5555556   0.3245350   0.7865761
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.1935484   0.0535840   0.3335127
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.5555556   0.3927301   0.7183810
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.6603774   0.5324812   0.7882735
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.6666667   0.5574400   0.7758933
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.2941176   0.0761377   0.5120976
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.4000000   0.1504978   0.6495022
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.4042553   0.2630590   0.5454516
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.6296296   0.4463996   0.8128597
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.7241379   0.5605032   0.8877727
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.7586207   0.6019523   0.9152890
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.7843137   0.6799350   0.8886924
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.6825645   0.6414862   0.7236428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.7200000   0.6255715   0.8144285
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.8409091   0.7327061   0.9491120
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.8235294   0.7795251   0.8675337
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.8352941   0.7563476   0.9142406
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.1774194   0.1435573   0.2112814
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.1677899   0.1484119   0.1871678
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.1482828   0.1264115   0.1701542
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.7512953   0.7081565   0.7944342
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.7586207   0.7246215   0.7926199
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.7908497   0.7452638   0.8364356
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.7272727   0.6792134   0.7753321
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.6788286   0.6587735   0.6988837
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.7081784   0.6697582   0.7465987
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.6153846   0.4274935   0.8032758
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                0.6071429   0.4786216   0.7356642
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.6666667   0.4771731   0.8561602
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.2898551   0.1824486   0.3972615
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.4666667   0.2875512   0.6457821
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.2884615   0.1649145   0.4120086
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.2000000   0.0559499   0.3440501
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.4444444   0.2134239   0.6754650
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.1612903   0.0309906   0.2915900
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.3055556   0.1546123   0.4564988
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                0.3396226   0.2117265   0.4675188
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.3472222   0.2369106   0.4575338
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                0.2222222   0.0644765   0.3799679
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  NA                0.4827586   0.2998094   0.6657078
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.6206897   0.4430444   0.7983349
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.3541667   0.2181870   0.4901463
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.6666667   0.4269056   0.9064277
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.4324324   0.2719980   0.5928669
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.5400000   0.3910096   0.6889904
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.4189507   0.3844196   0.4534817
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.4350000   0.3914905   0.4785095
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.4186047   0.2709748   0.5662345
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.4062500   0.3494599   0.4630401
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.3176471   0.2185551   0.4167390
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                0.1117093   0.0805298   0.1428887
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                0.1005668   0.0873773   0.1137563
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0788197   0.0649683   0.0926711
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.3450479   0.2923581   0.3977378
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.2975207   0.2567726   0.3382688
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.3372549   0.2792003   0.3953095
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.3000000   0.2505491   0.3494509
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.2342775   0.2160856   0.2524694
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.2211896   0.1861121   0.2562671
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.4489796   0.3090252   0.5889340
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.5625000   0.3182257   0.8067743
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.3783784   0.2213375   0.5354193
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.3600000   0.1709580   0.5490420
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.4857143   0.3193555   0.6520731
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.4893617   0.3457765   0.6329469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.5909091   0.4412762   0.7405420
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.4905660   0.4470375   0.5340946
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.5643564   0.4139588   0.7147541
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.7600000   0.5922410   0.9277590
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.7333333   0.6657193   0.8009473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.8301887   0.7288962   0.9314812
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.0749235   0.0519111   0.0979360
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.0761954   0.0612166   0.0911743
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0762411   0.0607848   0.0916974
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.7368421   0.6818947   0.7917895
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.7699758   0.7293641   0.8105874
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.7761194   0.7184594   0.8337794
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.6682464   0.6047004   0.7317925
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.6373021   0.6125754   0.6620288
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.6717949   0.6251813   0.7184085
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.5833333   0.3849882   0.7816784
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                0.5319149   0.3884621   0.6753677
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.5789474   0.3557006   0.8021942


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6225166   0.5449406   0.7000925
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.3164557   0.2132412   0.4196702
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6397516   0.5653649   0.7141382
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3797468   0.2720427   0.4874510
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7058824   0.6084428   0.8033219
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6908497   0.6505448   0.7311545
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1652639   0.1464443   0.1840835
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7640277   0.7409463   0.7871090
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6895967   0.6729013   0.7062922
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6226415   0.5299266   0.7153564
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3245033   0.2495788   0.3994278
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2405063   0.1456588   0.3353539
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3354037   0.2622476   0.4085599
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4470588   0.3407351   0.5533826
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4300000   0.3324781   0.5275219
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4250164   0.3969651   0.4530677
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0977693   0.0847778   0.1107608
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3212928   0.2930610   0.3495246
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2392409   0.2238460   0.2546359
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4411765   0.3443418   0.5380111
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4579439   0.3630970   0.5527909
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5024631   0.4586872   0.5462389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0761449   0.0622450   0.0900449
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7619048   0.7334389   0.7903706
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6470302   0.6263581   0.6677023
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5555556   0.4523209   0.6587902


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.2595238   0.9573355   1.6570995
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              0.9162088   0.6731774   1.2469797
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              1.8518519   0.9292277   3.6905434
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              0.6451613   0.2600567   1.6005476
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              1.1886792   0.8365644   1.6890012
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              1.2000000   0.8577433   1.6788240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              1.3600000   0.5162322   3.5828837
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              1.3744681   0.6057768   3.1185783
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              1.1501014   0.7956510   1.6624540
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              1.2048682   0.8432651   1.7215313
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.8702697   0.7453639   1.0161069
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.9180000   0.7414593   1.1365749
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              0.9793323   0.8519635   1.1257428
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.9933227   0.8467458   1.1652730
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              0.9457246   0.8038970   1.1125742
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              0.8357760   0.7086579   0.9856962
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              1.0097503   0.9388156   1.0860446
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.0526482   0.9703956   1.1418727
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.9333893   0.8682132   1.0034582
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.9737454   0.8939509   1.0606623
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              0.9866071   0.6804443   1.4305266
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              1.0833333   0.7138317   1.6441007
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.6100000   0.9443398   2.7448805
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              0.9951923   0.5648673   1.7533458
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              2.2222222   0.9141867   5.4018193
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              0.8064516   0.2732353   2.3802348
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              1.1114923   0.5972245   2.0685943
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              1.1363636   0.6315976   2.0445332
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  >=38              2.1724138   0.9715705   4.8574774
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38              2.7931034   1.2992299   6.0046547
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              1.8823529   1.1123206   3.1854598
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              1.2209857   0.7158761   2.0824917
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.7758346   0.5619598   1.0711073
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.8055556   0.6185649   1.0490731
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              0.9704861   0.6640988   1.4182276
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.7588235   0.4738665   1.2151379
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              0.9002545   0.7071773   1.1460467
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              0.7055790   0.5565858   0.8944563
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              0.8622590   0.7023497   1.0585759
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              0.9774147   0.7765045   1.2303077
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.7809249   0.6508430   0.9370060
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.7372986   0.5865491   0.9267925
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.2528409   0.7340738   2.1382187
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              0.8427518   0.5015047   1.4161993
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              1.3492063   0.7207772   2.5255487
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              1.3593381   0.7448797   2.4806690
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.8301887   0.6406520   1.0757998
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.9550647   0.6057164   1.5059006
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              0.9649123   0.7596207   1.2256850
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              1.0923535   0.8488459   1.4057160
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              1.0169758   0.7418784   1.3940826
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              1.0175858   0.7404100   1.3985235
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              1.0449671   0.9537499   1.1449084
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.0533049   0.9480668   1.1702248
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.9536933   0.8606068   1.0568483
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              1.0053101   0.8936678   1.1308993
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              0.9118541   0.5908075   1.4073583
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              0.9924812   0.5935371   1.6595743


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0138209   -0.0708388    0.0984806
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0164557   -0.1147061    0.1476175
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0841960   -0.0578925    0.2262845
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0856292   -0.1110071    0.2822655
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0762527   -0.0711882    0.2236936
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0934641   -0.2107629    0.0238348
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0131579   -0.1159028    0.0895870
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0121555   -0.0388349    0.0145239
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0127323   -0.0231764    0.0486410
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0376760   -0.0831937    0.0078418
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0072569   -0.1557788    0.1702926
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0346482   -0.0466343    0.1159308
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0405063   -0.0777589    0.1587716
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0298482   -0.1041169    0.1638132
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.2248366    0.0820782    0.3675950
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0758333   -0.0254096    0.1770763
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1149836   -0.2734020    0.0434348
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0291816   -0.1687879    0.1104247
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0139400   -0.0393820    0.0115021
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0237551   -0.0675872    0.0200769
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0607591   -0.1069703   -0.0145478
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0078031   -0.1085259    0.0929197
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0979439   -0.0694877    0.2653755
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0884460   -0.2452587    0.0683667
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0027984   -0.1617659    0.1561692
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0012214   -0.0209463    0.0233891
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0250627   -0.0207330    0.0708583
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0212163   -0.0815139    0.0390813
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0277778   -0.1981199    0.1425643


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0222017   -0.1237778    0.1492183
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0520000   -0.4677936    0.3877177
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.1316073   -0.1228950    0.3284271
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.2254902   -0.5110053    0.6030024
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1080247   -0.1295328    0.2956203
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1352886   -0.3229520    0.0257544
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0158960   -0.1479422    0.1009612
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0735520   -0.2472270    0.0759389
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0166648   -0.0314909    0.0625723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0546348   -0.1228025    0.0093943
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0116550   -0.2881702    0.2416950
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.1067731   -0.1821295    0.3250704
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.1684211   -0.4983110    0.5384646
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0889918   -0.4122526    0.4123318
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.5029240    0.0634044    0.7361886
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.1763566   -0.0972907    0.3817605
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.2705393   -0.7141359    0.0582602
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0749354   -0.5005081    0.2299368
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1425803   -0.4300444    0.0870985
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0739361   -0.2194069    0.0541805
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.2539660   -0.4626242   -0.0750750
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0176871   -0.2736532    0.1868375
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.2138776   -0.2530297    0.5068046
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1760249   -0.5398925    0.1018629
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0036957   -0.2372084    0.1857435
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0160404   -0.3217623    0.2675110
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0328947   -0.0291886    0.0912331
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0327902   -0.1303333    0.0563353
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0500000   -0.4063855    0.2160756
