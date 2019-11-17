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

agecat        studyid                    country                        fage       ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 0       46     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       23     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  0       15     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  1       15     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0       39     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1       13     151
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 0       30      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  0       15      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  1        3      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              0       28      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        3      79
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 0       25     161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 1       11     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  0       20     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  1       33     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              0       36     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              1       36     161
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 0       13      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 1        4      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  0        8      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  1        7      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              0       34      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              1       13      79
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 0       26      85
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 1        1      85
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  0       25      85
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  1        4      85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              0       26      85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              1        3      85
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0       53      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1       12      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        7      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        2      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0       11      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        5      90
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0       43     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        5     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       11     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        4     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       32     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        5     100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 0       21    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 1       28    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  0      750    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  1      514    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0      113    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       84    1510
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0       21     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1       23     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0      154     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1      135     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       46     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1       39     418
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 0      581   16278
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 1      163   16278
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  0     9681   16278
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  1     3378   16278
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              0     1858   16278
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              1      617   16278
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 0      285    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 1       97    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  0      453    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  1      148    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              0      218    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              1       84    1285
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 0      191    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 1      137    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  0     1235    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  1      839    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              0      332    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              1      205    2939
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 0       24     106
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 1        2     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  0       49     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  1        7     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              0       22     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              1        2     106
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 0       52     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       17     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  0       21     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  1        9     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0       43     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1        9     151
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 0       30      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  0       15      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  1        3      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              0       30      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        1      79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 0       29     161
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 1        7     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  0       35     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  1       18     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              0       44     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              1       28     161
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 0       17      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 1        0      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                  0       11      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                  1        4      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              0       39      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              1        8      79
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 0       27      85
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 1        0      85
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  0       27      85
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  1        2      85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              0       28      85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              1        1      85
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0       60      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1        5      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        7      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        2      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0       13      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        3      90
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0       46     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        2     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       15     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        0     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       35     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        2     100
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 0       33    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 1       15    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  0      992    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  1      266    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0      147    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       49    1502
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0       32     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1       12     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0      238     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1       51     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       70     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1       15     418
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 0      586   16275
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 1      157   16275
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  0     9768   16275
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  1     3289   16275
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              0     1876   16275
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              1      599   16275
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 0      241    1027
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 1       68    1027
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  0      380    1027
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  1       89    1027
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              0      200    1027
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              1       49    1027
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 0      254    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 1       74    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  0     1588    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  1      485    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              0      414    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              1      123    2938
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                 0        9      38
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                 1        0      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                  0       20      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                  1        1      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              0        8      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              1        0      38
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 0       56     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       13     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  0       21     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  1        9     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0       46     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1        6     151
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 0       30      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  0       18      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  1        0      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              0       29      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        2      79
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 0       30     161
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 1        6     161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  0       31     161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  1       22     161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              0       53     161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              1       19     161
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 0       13      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 1        4      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  0       10      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  1        5      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              0       40      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              1        7      79
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                 0       26      83
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                 1        1      83
6-24 months   ki0047075b-MAL-ED          PERU                           <32                  0       26      83
6-24 months   ki0047075b-MAL-ED          PERU                           <32                  1        2      83
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              0       26      83
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              1        2      83
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0       55      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1       10      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        9      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        0      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0       13      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        3      90
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0       44     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        4     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       11     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        4     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       34     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        3     100
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 0       24    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 1       20    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  0      818    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  1      351    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0      121    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       52    1386
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0       29     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1       14     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0      179     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1      100     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       51     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1       29     402
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 0      728   15992
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 1        7   15992
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  0    12676   15992
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  1      133   15992
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              0     2424   15992
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              1       24   15992
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 0      303    1165
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 1       37    1165
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  0      477    1165
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  1       69    1165
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              0      238    1165
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              1       41    1165
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 0      210    2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 1       95    2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  0     1408    2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  1      503    2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              0      378    2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              1      126    2720
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 0       24     106
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 1        2     106
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  0       50     106
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  1        6     106
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              0       22     106
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              1        2     106


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/af1fe239-5d83-4ae6-b69a-89756537690d/d6cbc112-d9c1-44da-a1cd-0ff7dcaf6908/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/af1fe239-5d83-4ae6-b69a-89756537690d/d6cbc112-d9c1-44da-a1cd-0ff7dcaf6908/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/af1fe239-5d83-4ae6-b69a-89756537690d/d6cbc112-d9c1-44da-a1cd-0ff7dcaf6908/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/af1fe239-5d83-4ae6-b69a-89756537690d/d6cbc112-d9c1-44da-a1cd-0ff7dcaf6908/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.3313116    0.2185193   0.4441040
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.4749810    0.2890966   0.6608654
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.2578569    0.1348322   0.3808816
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                0.2899371    0.1330310   0.4468433
0-24 months   ki0047075b-MAL-ED          INDIA         <32                  NA                0.6144886    0.4807817   0.7481956
0-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.4949111    0.3770710   0.6127512
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.5619996    0.3937456   0.7302536
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.4072548    0.3554343   0.4590754
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.4244577    0.2937446   0.5551709
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.5318277    0.3824232   0.6812321
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.4683129    0.4105520   0.5260739
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.4698478    0.3613417   0.5783538
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.1896448    0.1570928   0.2221968
0-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.2578347    0.1965675   0.3191019
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.2488437    0.1981194   0.2995679
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.2720519    0.2041048   0.3399989
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.2391529    0.2010692   0.2772366
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.2289067    0.1662341   0.2915793
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.4209373    0.3491525   0.4927222
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.4033345    0.3766760   0.4299929
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.3635042    0.2956096   0.4313989
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.2463768    0.1443667   0.3483870
0-6 months    ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.3000000    0.1354719   0.4645281
0-6 months    ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1730769    0.0699098   0.2762441
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 NA                0.1944444    0.0647578   0.3241311
0-6 months    ki0047075b-MAL-ED          INDIA         <32                  NA                0.3396226    0.2117265   0.4675188
0-6 months    ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.3888889    0.2759333   0.5018445
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.3203655    0.1419059   0.4988251
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.2115571    0.1714884   0.2516257
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.2558912    0.1689365   0.3428459
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.3776625    0.1872337   0.5680913
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.2605074    0.1688673   0.3521474
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.0748094    0.0237535   0.1258652
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                0.1752382    0.1403393   0.2101371
0-6 months    ki1119695-PROBIT           BELARUS       <32                  NA                0.2514961    0.1895803   0.3134120
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              NA                0.2375322    0.1878365   0.2872280
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.2511421    0.1849552   0.3173290
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  NA                0.1681902    0.1316968   0.2046836
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.1670223    0.1099871   0.2240575
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.2061864    0.1459340   0.2664389
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.2337861    0.2109235   0.2566486
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.2362369    0.1742315   0.2982422
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.1884058    0.0958331   0.2809785
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.3000000    0.1354719   0.4645281
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1153846    0.0282601   0.2025091
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                0.1666667    0.0445476   0.2887858
6-24 months   ki0047075b-MAL-ED          INDIA         <32                  NA                0.4150943    0.2820246   0.5481641
6-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.2638889    0.1617674   0.3660104
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.6106108    0.5309084   0.6903133
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.2996310    0.2567729   0.3424891
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.2170291    0.1357884   0.2982697
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.3236121    0.1810549   0.4661693
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.3578343    0.3014377   0.4142310
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.3591532    0.2528572   0.4654492
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.0095238   -0.0012136   0.0202612
6-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.0103833    0.0077464   0.0130202
6-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0098039    0.0053467   0.0142611
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0813682    0.0458373   0.1168991
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.1391834    0.1035548   0.1748119
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.1258879    0.0788798   0.1728961
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.3642343    0.2920272   0.4364415
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.2636097    0.2381367   0.2890827
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.2346432    0.1750570   0.2942293


### Parameter: E(Y)


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.3377483   0.2620632   0.4134335
0-24 months   ki0047075b-MAL-ED          INDIA         NA                   NA                0.4968944   0.4194215   0.5743673
0-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.4145695   0.3576236   0.4715155
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.2554368   0.1979772   0.3128964
0-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.2560311   0.2321591   0.2799032
0-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.4018374   0.3841095   0.4195652
0-6 months    ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.2317881   0.1642594   0.2993168
0-6 months    ki0047075b-MAL-ED          INDIA         NA                   NA                0.3291925   0.2563790   0.4020061
0-6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.2197071   0.1750081   0.2644060
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1866029   0.1492099   0.2239959
0-6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.2485407   0.1903207   0.3067607
0-6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.2005842   0.1760818   0.2250867
0-6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2321307   0.2168619   0.2473995
6-24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1854305   0.1232352   0.2476257
6-24 months   ki0047075b-MAL-ED          INDIA         NA                   NA                0.2919255   0.2214783   0.3623726
6-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.3051948   0.2633957   0.3469939
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0102551   0.0075905   0.0129198
6-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1261803   0.1071047   0.1452559
6-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2661765   0.2495644   0.2827886


### Parameter: RR


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.4336381   0.8537830   2.4073073
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.7782911   0.4337606   1.3964778
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA         <32                  >=38              2.1193857   1.1825041   3.7985456
0-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              >=38              1.7069600   0.9418189   3.0937079
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.7246533   0.5773474   0.9095430
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.7552635   0.5094567   1.1196691
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.8805728   0.6477713   1.1970403
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.8834587   0.6138295   1.2715248
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              1.3595661   1.1257909   1.6418857
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.3121565   1.0593859   1.6252383
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.8790708   0.6545645   1.1805796
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.8414083   0.5815167   1.2174507
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.9581817   0.7980318   1.1504707
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.8635590   0.6705527   1.1121185
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.2176471   0.6124737   2.4207805
0-6 months    ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.7024887   0.3399717   1.4515632
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA         <32                  >=38              1.7466307   0.8120101   3.7569961
0-6 months    ki0047075b-MAL-ED          INDIA         [32-38)              >=38              2.0000000   0.9662673   4.1396415
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.6603616   0.3987250   1.0936796
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.7987476   0.5424115   1.1762247
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.6897888   0.3724905   1.2773710
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.1980853   0.0845050   0.4643251
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS       <32                  >=38              1.4351671   1.1799708   1.7455555
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.3554818   1.0816171   1.6986887
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.6697014   0.4762907   0.9416517
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.6650509   0.4322465   1.0232418
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              1.1338577   0.8331637   1.5430740
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.1457440   0.7735660   1.6969843
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.5923077   0.7624990   3.3251767
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.6124260   0.2487773   1.5076363
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA         <32                  >=38              2.4905660   1.1193351   5.5416104
6-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              >=38              1.5833333   0.6913573   3.6261201
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.4907070   0.3994595   0.6027980
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.3554294   0.2586265   0.4884653
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              1.1057509   0.6925346   1.7655219
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              1.1098264   0.6531618   1.8857725
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              1.0902490   0.3822067   3.1099478
6-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.0294118   0.3913001   2.7081224
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.7105380   1.0319432   2.8353695
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.5471398   0.8717079   2.7459216
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.7237366   0.5804972   0.9023206
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.6442094   0.4667137   0.8892084


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0064367   -0.0766592    0.0895326
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.2069573    0.0643506    0.3495639
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1474300   -0.2826795   -0.0121805
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0605358   -0.2019150    0.0808434
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0657920    0.0211471    0.1104369
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0160208   -0.0794208    0.0473793
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0191000   -0.0894690    0.0512691
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0145887   -0.0884536    0.0592761
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.1347481    0.0139215    0.2555747
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1006585   -0.2549842    0.0536672
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.1910596   -0.3780942   -0.0040250
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0733025    0.0289740    0.1176309
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0505579   -0.1109741    0.0098583
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0259443   -0.0333063    0.0851948
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0029753   -0.0708431    0.0648925
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.1252588    0.0103385    0.2401791
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.3054160   -0.3935477   -0.2172843
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0321093   -0.1029369    0.1671555
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0007313   -0.0085038    0.0099664
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0448121    0.0113017    0.0783224
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0980579   -0.1686603   -0.0274554


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0190577   -0.2606606    0.2367114
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.4165015    0.0420343    0.6445901
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.3556220   -0.7012932   -0.0801847
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.1284465   -0.4724057    0.1351626
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.2575665    0.1141835    0.3777407
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0625735   -0.3414522    0.1583283
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0475316   -0.2382653    0.1138228
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0629400   -0.4342828    0.2122604
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.4093291   -0.0907885    0.6801469
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.4581485   -1.3037938    0.0770888
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -1.0238837   -2.3580520   -0.2197861
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                 0.2949315    0.1524846    0.4134365
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.2520532   -0.5928512    0.0158294
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.1117659   -0.1834622    0.3333460
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0160455   -0.4566198    0.2912711
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.4290780   -0.1233081    0.7098286
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -1.0007249   -1.4059186   -0.6637721
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0902654   -0.3809853    0.4007053
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0713124   -1.4722970    0.6511501
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.3551433    0.0325919    0.5701503
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.3683942   -0.6628557   -0.1260765
