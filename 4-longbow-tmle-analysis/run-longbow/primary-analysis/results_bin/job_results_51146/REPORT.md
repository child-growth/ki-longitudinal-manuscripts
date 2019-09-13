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

agecat        studyid                    country                        fage       ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  0       28     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  1       41     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   0        7     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   1       23     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               0       23     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               1       29     151
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  0       22      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  1        8      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   0       10      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   1        8      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               0       26      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               1        5      79
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  0       16     161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  1       20     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                   0       19     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                   1       34     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               0       25     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               1       47     161
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       29      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1       36      90
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
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                  0       25      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                  1        5      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                   0       11      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                   1        7      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)               0       27      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)               1        4      79
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       45      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1       20      90
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
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  0       28     102
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  1       21     102
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   0        7     102
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   1        9     102
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               0       23     102
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               1       14     102
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  0       22      63
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  1        3      63
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   0       10      63
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   1        1      63
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               0       26      63
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               1        1      63
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  0       16     107
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  1        9     107
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                   0       19     107
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                   1       16     107
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               0       25     107
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               1       22     107
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
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       29      61
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1       16      61
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   0        6      61
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   1        1      61
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               0        5      61
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               1        4      61
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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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
![](/tmp/92501ef6-5f65-4f58-9d9a-fab2ab39a99b/49502dec-b559-440b-9400-587cdbc34cf0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/92501ef6-5f65-4f58-9d9a-fab2ab39a99b/49502dec-b559-440b-9400-587cdbc34cf0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/92501ef6-5f65-4f58-9d9a-fab2ab39a99b/49502dec-b559-440b-9400-587cdbc34cf0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/92501ef6-5f65-4f58-9d9a-fab2ab39a99b/49502dec-b559-440b-9400-587cdbc34cf0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.5942029   0.4779542   0.7104516
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.7666667   0.6148142   0.9185192
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.5576923   0.4222517   0.6931329
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.2666667   0.1074132   0.4259201
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.4444444   0.2134239   0.6754650
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.1612903   0.0309906   0.2915900
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.5735810   0.4040238   0.7431383
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.6528071   0.5244921   0.7811221
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.6531668   0.5421115   0.7642221
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.2941176   0.0761377   0.5120976
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.4000000   0.1504978   0.6495022
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.4042553   0.2630590   0.5454516
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.6296296   0.4463996   0.8128597
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.7241379   0.5605032   0.8877727
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.7586207   0.6019523   0.9152890
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.7914317   0.6823930   0.9004703
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.6855379   0.6454157   0.7256602
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.7241549   0.6389630   0.8093468
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.8409091   0.7327061   0.9491120
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.8235294   0.7795251   0.8675337
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.8352941   0.7563476   0.9142406
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.1534065   0.1311080   0.1757051
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.1675084   0.1479017   0.1871150
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.1629085   0.1319443   0.1938728
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.7563649   0.6864395   0.8262903
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.7874142   0.7514182   0.8234101
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.7979084   0.7324375   0.8633794
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.6437367   0.5696132   0.7178602
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.6781831   0.6543990   0.7019672
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.7012239   0.6335737   0.7688740
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.6153846   0.4274935   0.8032758
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                0.6071429   0.4786216   0.7356642
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.6666667   0.4771731   0.8561602
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.2874002   0.1800397   0.3947607
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.3942422   0.2036986   0.5847858
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.2947603   0.1709958   0.4185247
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.3116636   0.1552892   0.4680380
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                0.3394674   0.2096322   0.4693025
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.3440890   0.2327721   0.4554059
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                0.2222222   0.0644765   0.3799679
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  NA                0.4827586   0.2998094   0.6657078
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.6206897   0.4430444   0.7983349
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.3541667   0.2181870   0.4901463
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.6666667   0.4269056   0.9064277
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.4324324   0.2719980   0.5928669
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.5110010   0.3792875   0.6427146
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.4207505   0.3856690   0.4558320
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.4270933   0.3761533   0.4780334
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.4073709   0.2555887   0.5591530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.4058880   0.3492586   0.4625174
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.3100748   0.2104959   0.4096537
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                0.1010219   0.0793155   0.1227283
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                0.1002462   0.0859513   0.1145412
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0921066   0.0654279   0.1187853
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.3108113   0.2390068   0.3826158
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.3419161   0.2903811   0.3934511
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.4098266   0.3069082   0.5127451
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.2069642   0.1506665   0.2632620
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.2415637   0.2205629   0.2625645
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.2370591   0.1738195   0.3002987
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.4285714   0.2893257   0.5678172
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.5625000   0.3182257   0.8067743
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.3783784   0.2213375   0.5354193
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.3600000   0.1709580   0.5490420
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.4571429   0.2913286   0.6229571
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.4680851   0.3247602   0.6114100
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.5909091   0.4412762   0.7405420
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.4905660   0.4470375   0.5340946
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.5643564   0.4139588   0.7147541
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.7600000   0.5922410   0.9277590
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.7333333   0.6657193   0.8009473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.8301887   0.7288962   0.9314812
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.0570955   0.0449487   0.0692423
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.0756311   0.0614014   0.0898608
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0864790   0.0654391   0.1075188
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.7800437   0.7009651   0.8591224
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.7751175   0.7255657   0.8246693
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.7954270   0.7156769   0.8751771
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.6722466   0.5819621   0.7625312
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.6316389   0.6027326   0.6605451
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.6612314   0.5753094   0.7471535
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.5833333   0.3849882   0.7816784
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                0.5319149   0.3884621   0.6753677
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.5789474   0.3557006   0.8021942


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6158940   0.5380580   0.6937301
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2658228   0.1677841   0.3638614
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6273292   0.5524091   0.7022493
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3797468   0.2720427   0.4874510
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7058824   0.6084428   0.8033219
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6908497   0.6505448   0.7311545
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1652639   0.1464443   0.1840835
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7640277   0.7409463   0.7871090
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6895967   0.6729013   0.7062922
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6226415   0.5299266   0.7153564
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3245033   0.2495788   0.3994278
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3354037   0.2622476   0.4085599
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4470588   0.3407351   0.5533826
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4300000   0.3324781   0.5275219
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4250164   0.3969651   0.4530677
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0977693   0.0847778   0.1107608
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3212928   0.2930610   0.3495246
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2392409   0.2238460   0.2546359
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4313725   0.3347836   0.5279615
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4392523   0.3447732   0.5337315
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5024631   0.4586872   0.5462389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0761449   0.0622450   0.0900449
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7619048   0.7334389   0.7903706
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6470302   0.6263581   0.6677023
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5555556   0.4523209   0.6587902


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.2902439   0.9767089   1.704427
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              0.9385553   0.6871035   1.282028
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              1.6666667   0.7551006   3.678686
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              0.6048387   0.2214797   1.651754
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              1.1381254   0.7990328   1.621122
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              1.1387525   0.8097551   1.601419
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              1.3600000   0.5162322   3.582884
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              1.3744681   0.6057768   3.118578
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              1.1501014   0.7956510   1.662454
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              1.2048682   0.8432651   1.721531
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.8661998   0.7411588   1.012336
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.9149936   0.7413302   1.129339
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              0.9793323   0.8519635   1.125743
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.9933227   0.8467458   1.165273
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              1.0919247   0.9265394   1.286831
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              1.0619400   0.8667825   1.301038
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              1.0410506   0.9394726   1.153612
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.0549253   0.9325291   1.193386
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              1.0535100   0.9341916   1.188068
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              1.0893023   0.9375168   1.265662
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              0.9866071   0.6804443   1.430527
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              1.0833333   0.7138317   1.644101
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.3717533   0.7404380   2.541343
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              1.0256090   0.5871110   1.791610
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              1.0892109   0.5791991   2.048312
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              1.1040398   0.6070157   2.008027
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  >=38              2.1724138   0.9715705   4.857477
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38              2.7931034   1.2992299   6.004655
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              1.8823529   1.1123206   3.185460
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              1.2209857   0.7158761   2.082492
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.8233848   0.6090755   1.113101
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.8357973   0.6327545   1.103994
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              0.9963599   0.6695740   1.482634
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.7611610   0.4657271   1.244003
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              0.9923219   0.8071476   1.219979
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              0.9117492   0.6948263   1.196395
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              1.1000762   0.8365835   1.446559
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.3185706   0.9382049   1.853144
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              1.1671764   0.8782838   1.551094
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              1.1454111   0.7830081   1.675547
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.3125000   0.7630566   2.257573
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              0.8828829   0.5211856   1.495594
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              1.2698413   0.6707772   2.403923
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              1.3002364   0.7079931   2.387897
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.8301887   0.6406520   1.075800
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.9550647   0.6057164   1.505901
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              0.9649123   0.7596207   1.225685
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              1.0923535   0.8488459   1.405716
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              1.3246426   1.0000075   1.754665
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              1.5146377   1.0833030   2.117715
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              0.9936847   0.8817787   1.119792
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.0197211   0.8843379   1.175830
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.9395939   0.8153771   1.082734
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.9836144   0.8159971   1.185663
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              0.9118541   0.5908075   1.407358
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              0.9924812   0.5935371   1.659574


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0216911   -0.0632906   0.1066729
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0008439   -0.1261883   0.1245005
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0537482   -0.0937115   0.2012079
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0856292   -0.1110071   0.2822655
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0762527   -0.0711882   0.2236936
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1005820   -0.2221415   0.0209775
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0131579   -0.1159028   0.0895870
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0118574   -0.0132859   0.0370007
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0076628   -0.0579224   0.0732479
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0458601   -0.0268422   0.1185624
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0072569   -0.1557788   0.1702926
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0371031   -0.0448804   0.1190866
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0237401   -0.1152205   0.1627008
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.2248366    0.0820782   0.3675950
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0758333   -0.0254096   0.1770763
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0859847   -0.2272332   0.0552639
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0179478   -0.1613496   0.1254540
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0032526   -0.0223421   0.0158370
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0104815   -0.0558186   0.0767816
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0322767   -0.0227895   0.0873430
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0028011   -0.0976469   0.1032491
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0792523   -0.0879712   0.2464759
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0884460   -0.2452587   0.0683667
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0027984   -0.1617659   0.1561692
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0190495    0.0017300   0.0363690
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0181389   -0.0920903   0.0558124
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0252165   -0.1137924   0.0633595
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0277778   -0.1981199   0.1425643


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0352189   -0.1132901   0.1639174
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0031746   -0.6051395   0.3730393
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0856778   -0.1834818   0.2936224
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.2254902   -0.5110053   0.6030024
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1080247   -0.1295328   0.2956203
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1455917   -0.3405333   0.0210013
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0158960   -0.1479422   0.1009612
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0717480   -0.0888003   0.2086228
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0100294   -0.0796501   0.0922599
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0665027   -0.0450702   0.1661640
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0116550   -0.2881702   0.2416950
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.1143381   -0.1775474   0.3338722
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0707808   -0.4514972   0.4051326
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.5029240    0.0634044   0.7361886
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.1763566   -0.0972907   0.3817605
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.2023091   -0.5929519   0.0925356
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0460881   -0.4873675   0.2642703
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0332678   -0.2489124   0.1451424
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0326228   -0.1973821   0.2184461
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.1349131   -0.1283305   0.3367410
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0064935   -0.2559174   0.2140764
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.1804255   -0.3050283   0.4852967
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1760249   -0.5398925   0.1018629
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0036957   -0.2372084   0.1857435
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.2501738    0.0245452   0.4236131
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0238074   -0.1256287   0.0688035
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0389726   -0.1853508   0.0893294
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0500000   -0.4063855   0.2160756
