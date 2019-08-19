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
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  0       16      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  1        2      79
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0       54      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1       11      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        7      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        2      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0       11      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        5      90
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0       43     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        5     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       12     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        3     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       33     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        4     100
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
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  0       22     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  1        8     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0       43     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1        9     151
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 0       30      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  0       16      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  1        2      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              0       30      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        1      79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 0       29     161
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 1        7     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  0       35     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  1       18     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              0       45     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              1       27     161
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0       61      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1        4      90
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
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       12     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        3     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       35     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        2     100
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
![](/tmp/e47ae08b-3cb3-4c23-9519-904dd63921fa/0bf8617a-845d-4f93-919a-52fcd3dedb2b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e47ae08b-3cb3-4c23-9519-904dd63921fa/0bf8617a-845d-4f93-919a-52fcd3dedb2b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e47ae08b-3cb3-4c23-9519-904dd63921fa/0bf8617a-845d-4f93-919a-52fcd3dedb2b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e47ae08b-3cb3-4c23-9519-904dd63921fa/0bf8617a-845d-4f93-919a-52fcd3dedb2b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.3252639    0.2090292   0.4414986
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.4885569    0.3020423   0.6750714
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.2398166    0.1143378   0.3652953
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                0.3143961    0.1576872   0.4711050
0-24 months   ki0047075b-MAL-ED          INDIA         <32                  NA                0.6269691    0.4929125   0.7610256
0-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.4948108    0.3774029   0.6122187
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.5619996    0.3937456   0.7302536
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.4072548    0.3554343   0.4590754
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.4244577    0.2937446   0.5551709
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.5174492    0.3660445   0.6688539
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.4667708    0.4091498   0.5243918
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.4654400    0.3576457   0.5732342
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.1841028    0.1488608   0.2193447
0-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.2581170    0.1965691   0.3196649
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.2412994    0.1901538   0.2924451
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.2672304    0.2006327   0.3338281
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.2450225    0.2077161   0.2823289
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.2465675    0.1746555   0.3184794
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.4129830    0.3401800   0.4857859
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.4033231    0.3772285   0.4294177
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.3605047    0.2942238   0.4267856
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.2463768    0.1443667   0.3483870
0-6 months    ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.2666667    0.1078978   0.4254355
0-6 months    ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1730769    0.0699098   0.2762441
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 NA                0.1944444    0.0647578   0.3241311
0-6 months    ki0047075b-MAL-ED          INDIA         <32                  NA                0.3396226    0.2117265   0.4675188
0-6 months    ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.3750000    0.2628265   0.4871735
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.3203655    0.1419059   0.4988251
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.2115571    0.1714884   0.2516257
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.2558912    0.1689365   0.3428459
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.3723599    0.1839792   0.5607407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.2789751    0.1964392   0.3615109
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.0747449    0.0248520   0.1246377
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                0.1832749    0.1479861   0.2185638
0-6 months    ki1119695-PROBIT           BELARUS       <32                  NA                0.2519810    0.1900871   0.3138750
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              NA                0.2328545    0.1822772   0.2834318
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.2564028    0.1866168   0.3261888
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  NA                0.1665954    0.1304240   0.2027669
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.1723882    0.1104384   0.2343380
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.2154345    0.1542073   0.2766618
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.2347090    0.2116330   0.2577850
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.2341137    0.1722257   0.2960016
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.1884058    0.0958331   0.2809785
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.3000000    0.1354719   0.4645281
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1153846    0.0282601   0.2025091
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                0.1666667    0.0445476   0.2887858
6-24 months   ki0047075b-MAL-ED          INDIA         <32                  NA                0.4150943    0.2820246   0.5481641
6-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.2638889    0.1617674   0.3660104
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.6106108    0.5309084   0.6903133
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.2996310    0.2567729   0.3424891
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.2170291    0.1357884   0.2982697
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.3629155    0.2208898   0.5049411
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.3592451    0.3028610   0.4156292
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.3776052    0.2721260   0.4830845
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.0095238   -0.0012136   0.0202612
6-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.0103833    0.0077464   0.0130202
6-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0098039    0.0053467   0.0142611
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0835563    0.0484395   0.1186730
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.1273615    0.0958598   0.1588632
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.1453227    0.0857624   0.2048831
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.3510831    0.2769620   0.4252043
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.2606930    0.2351030   0.2862831
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.2424198    0.1820003   0.3028392


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
0-6 months    ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.2251656   0.1583223   0.2920089
0-6 months    ki0047075b-MAL-ED          INDIA         NA                   NA                0.3229814   0.2505249   0.3954378
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
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.5020322   0.8890489   2.5376567
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.7372984   0.3914134   1.3888360
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA         <32                  >=38              1.9942013   1.1596553   3.4293283
0-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              >=38              1.5738452   0.9055365   2.7353826
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.7246533   0.5773474   0.9095430
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.7552635   0.5094567   1.1196691
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.9020611   0.6565246   1.2394269
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.8994893   0.6192201   1.3066128
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              1.4020266   1.1619817   1.6916604
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.3106779   1.0541923   1.6295666
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.9168961   0.6855361   1.2263373
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.9226776   0.6291574   1.3531335
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.9766096   0.8094167   1.1783378
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.8729288   0.6766283   1.1261793
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.0823529   0.5241066   2.2352092
0-6 months    ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.7024887   0.3399717   1.4515632
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA         <32                  >=38              1.7466307   0.8120101   3.7569961
0-6 months    ki0047075b-MAL-ED          INDIA         [32-38)              >=38              1.9285714   0.9284968   4.0058164
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.6603616   0.3987250   1.0936796
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.7987476   0.5424115   1.1762247
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.7492080   0.4159084   1.3496067
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.2007329   0.0866362   0.4650909
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS       <32                  >=38              1.3748801   1.1345670   1.6660941
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.2705203   1.0152461   1.5899808
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.6497411   0.4590161   0.9197140
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.6723335   0.4284985   1.0549214
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              1.0894677   0.8065353   1.4716527
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.0867044   0.7371291   1.6020620
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
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.9898865   0.6486936   1.5105366
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              1.0404771   0.6433876   1.6826447
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              1.0902490   0.3822067   3.1099478
6-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.0294118   0.3913001   2.7081224
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.5242604   0.9366935   2.4803949
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.7392203   0.9679223   3.1251341
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.7425392   0.5883095   0.9372014
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.6904911   0.4980274   0.9573329


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0124844   -0.0735086    0.0984775
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.1824983    0.0410425    0.3239541
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1474300   -0.2826795   -0.0121805
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0461573   -0.1894027    0.0970880
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0713340    0.0281283    0.1145397
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0111993   -0.0729780    0.0505794
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0111456   -0.0824717    0.0601806
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0212112   -0.0944500    0.0520275
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.1285369    0.0079252    0.2491487
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1006585   -0.2549842    0.0536672
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.1857571   -0.3707085   -0.0008056
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0652658    0.0211005    0.1094311
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0558186   -0.1196325    0.0079954
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0166962   -0.0434636    0.0768560
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0029753   -0.0708431    0.0648925
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.1252588    0.0103385    0.2401791
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.3054160   -0.3935477   -0.2172843
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0071941   -0.1422542    0.1278661
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0007313   -0.0085038    0.0099664
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0426240    0.0096085    0.0756395
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0849067   -0.1573233   -0.0124900


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0369637   -0.2549688    0.2609865
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.3672779    0.0046967    0.5977736
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.3556220   -0.7012932   -0.0801847
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0979379   -0.4482272    0.1676254
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.2792628    0.1421691    0.3944470
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0437418   -0.3151648    0.1716650
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0277366   -0.2215498    0.1353259
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0942029   -0.4723931    0.1868476
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.3979701   -0.1109883    0.6737679
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.4581485   -1.3037938    0.0770888
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.9954674   -2.3147229   -0.2012739
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                 0.2625960    0.1156606    0.3851176
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.2782800   -0.6390849    0.0031024
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0719257   -0.2267448    0.2978801
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0160455   -0.4566198    0.2912711
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.4290780   -0.1233081    0.7098286
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -1.0007249   -1.4059186   -0.6637721
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0202239   -0.4802919    0.2968571
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0713124   -1.4722970    0.6511501
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.3378024    0.0228313    0.5512488
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.3189864   -0.6223006   -0.0723814
