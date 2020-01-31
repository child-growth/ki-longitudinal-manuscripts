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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        fage       ever_wasted   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  --------  ------------  -------  ------  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 0       46     151  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       23     151  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  0       15     151  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  1       15     151  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0       39     151  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1       13     151  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 0       30      79  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      79  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  0       15      79  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  1        3      79  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              0       28      79  ever_wasted      
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        3      79  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 0       25     161  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 1       11     161  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  0       20     161  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  1       33     161  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              0       36     161  ever_wasted      
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              1       36     161  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 0       13      79  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 1        4      79  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  0        8      79  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  1        7      79  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              0       34      79  ever_wasted      
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              1       13      79  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 0       26      85  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 1        1      85  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  0       25      85  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  1        4      85  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              0       26      85  ever_wasted      
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              1        3      85  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0       53      90  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1       12      90  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        7      90  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        2      90  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0       11      90  ever_wasted      
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        5      90  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0       43     100  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        5     100  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       11     100  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        4     100  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       32     100  ever_wasted      
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        5     100  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 0       21    1510  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 1       28    1510  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  0      750    1510  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  1      514    1510  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0      113    1510  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       84    1510  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0       21     418  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1       23     418  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0      154     418  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1      135     418  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       46     418  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1       39     418  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 0      581   16278  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 1      163   16278  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  0     9681   16278  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  1     3378   16278  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              0     1858   16278  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              1      617   16278  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 0      285    1285  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 1       97    1285  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  0      453    1285  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  1      148    1285  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              0      218    1285  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              1       84    1285  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 0      191    2939  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 1      137    2939  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  0     1235    2939  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  1      839    2939  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              0      332    2939  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              1      205    2939  ever_wasted      
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 0       24     106  ever_wasted      
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 1        2     106  ever_wasted      
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  0       49     106  ever_wasted      
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  1        7     106  ever_wasted      
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              0       22     106  ever_wasted      
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              1        2     106  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 0       52     151  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       17     151  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  0       21     151  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  1        9     151  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0       43     151  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1        9     151  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 0       30      79  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      79  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  0       15      79  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  1        3      79  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              0       30      79  ever_wasted      
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        1      79  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 0       29     161  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 1        7     161  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  0       35     161  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  1       18     161  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              0       44     161  ever_wasted      
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              1       28     161  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 0       17      79  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 1        0      79  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                  0       11      79  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                  1        4      79  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              0       39      79  ever_wasted      
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              1        8      79  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 0       27      85  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 1        0      85  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  0       27      85  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  1        2      85  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              0       28      85  ever_wasted      
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              1        1      85  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0       60      90  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1        5      90  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        7      90  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        2      90  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0       13      90  ever_wasted      
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        3      90  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0       46     100  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        2     100  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       15     100  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        0     100  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       35     100  ever_wasted      
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        2     100  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 0       33    1502  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 1       15    1502  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  0      992    1502  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  1      266    1502  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0      147    1502  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       49    1502  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0       32     418  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1       12     418  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0      238     418  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1       51     418  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       70     418  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1       15     418  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 0      586   16275  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 1      157   16275  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  0     9768   16275  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  1     3289   16275  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              0     1876   16275  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              1      599   16275  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 0      241    1027  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 1       68    1027  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  0      380    1027  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  1       89    1027  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              0      200    1027  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              1       49    1027  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 0      254    2938  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 1       74    2938  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  0     1588    2938  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  1      485    2938  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              0      414    2938  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              1      123    2938  ever_wasted      
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                 0        9      38  ever_wasted      
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                 1        0      38  ever_wasted      
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                  0       20      38  ever_wasted      
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                  1        1      38  ever_wasted      
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              0        8      38  ever_wasted      
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              1        0      38  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 0       56     151  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       13     151  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  0       21     151  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  1        9     151  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0       46     151  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1        6     151  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 0       30      79  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      79  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  0       18      79  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  1        0      79  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              0       29      79  ever_wasted      
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        2      79  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 0       30     161  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 1        6     161  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  0       31     161  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  1       22     161  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              0       53     161  ever_wasted      
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              1       19     161  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 0       13      79  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 1        4      79  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  0       10      79  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  1        5      79  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              0       40      79  ever_wasted      
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              1        7      79  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                 0       26      83  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                 1        1      83  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           <32                  0       26      83  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           <32                  1        2      83  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              0       26      83  ever_wasted      
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              1        2      83  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0       55      90  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1       10      90  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        9      90  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        0      90  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0       13      90  ever_wasted      
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        3      90  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0       44     100  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        4     100  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       11     100  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        4     100  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       34     100  ever_wasted      
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        3     100  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 0       24    1386  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 1       20    1386  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  0      818    1386  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  1      351    1386  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0      121    1386  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       52    1386  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0       29     402  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1       14     402  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0      179     402  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1      100     402  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       51     402  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1       29     402  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 0      728   15992  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 1        7   15992  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  0    12676   15992  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  1      133   15992  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              0     2424   15992  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              1       24   15992  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 0      303    1165  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 1       37    1165  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  0      477    1165  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  1       69    1165  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              0      238    1165  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              1       41    1165  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 0      210    2720  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 1       95    2720  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  0     1408    2720  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  1      503    2720  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              0      378    2720  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              1      126    2720  ever_wasted      
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 0       24     106  ever_wasted      
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 1        2     106  ever_wasted      
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  0       50     106  ever_wasted      
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  1        6     106  ever_wasted      
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              0       22     106  ever_wasted      
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              1        2     106  ever_wasted      


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




# Results Detail

## Results Plots
![](/tmp/b3583dcc-81d5-409b-b7a9-2426483929ab/077b692e-93c0-4273-8705-24af4a935d15/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b3583dcc-81d5-409b-b7a9-2426483929ab/077b692e-93c0-4273-8705-24af4a935d15/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b3583dcc-81d5-409b-b7a9-2426483929ab/077b692e-93c0-4273-8705-24af4a935d15/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b3583dcc-81d5-409b-b7a9-2426483929ab/077b692e-93c0-4273-8705-24af4a935d15/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.3333333    0.2217344   0.4449323
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.5000000    0.3204852   0.6795148
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.2500000    0.1319163   0.3680837
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                0.3055556    0.1546123   0.4564988
0-24 months   ki0047075b-MAL-ED          INDIA         <32                  NA                0.6226415    0.4917356   0.7535474
0-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.5000000    0.3841477   0.6158523
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.5714286    0.3964771   0.7463800
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.4066456    0.3554052   0.4578860
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.4263959    0.2997449   0.5530470
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.5227273    0.3749653   0.6704893
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.4671280    0.4095378   0.5247182
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.4588235    0.3527637   0.5648834
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.2190860    0.1605027   0.2776694
0-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.2586722    0.1993980   0.3179463
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.2492929    0.1953041   0.3032818
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.2539267    0.2102620   0.2975914
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.2462562    0.2117986   0.2807139
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.2781457    0.2275895   0.3287019
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.4176829    0.3643017   0.4710641
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.4045323    0.3834060   0.4256586
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.3817505    0.3406538   0.4228471
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.2463768    0.1443667   0.3483870
0-6 months    ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.3000000    0.1354719   0.4645281
0-6 months    ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1730769    0.0699098   0.2762441
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 NA                0.1944444    0.0647578   0.3241311
0-6 months    ki0047075b-MAL-ED          INDIA         <32                  NA                0.3396226    0.2117265   0.4675188
0-6 months    ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.3888889    0.2759333   0.5018445
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.3125000    0.1439976   0.4810024
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.2114467    0.1717146   0.2511788
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.2500000    0.1585512   0.3414488
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.2727273    0.1409760   0.4044785
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.1764706    0.1324663   0.2204749
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.1764706    0.0953307   0.2576105
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                0.2113055    0.1521053   0.2705058
0-6 months    ki1119695-PROBIT           BELARUS       <32                  NA                0.2518955    0.1918724   0.3119187
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              NA                0.2420202    0.1872853   0.2967551
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.2200647    0.1738495   0.2662799
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  NA                0.1897655    0.1542607   0.2252703
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.1967871    0.1473818   0.2461925
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.2256098    0.1803675   0.2708520
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.2339604    0.2157333   0.2521876
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.2290503    0.1935024   0.2645981
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.1884058    0.0958331   0.2809785
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.3000000    0.1354719   0.4645281
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1153846    0.0282601   0.2025091
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                0.1666667    0.0445476   0.2887858
6-24 months   ki0047075b-MAL-ED          INDIA         <32                  NA                0.4150943    0.2820246   0.5481641
6-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.2638889    0.1617674   0.3660104
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.4545455    0.3001629   0.6089281
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.3002566    0.2601339   0.3403793
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.3005780    0.2093171   0.3918390
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.3255814    0.1853487   0.4658141
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.3584229    0.3020839   0.4147619
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.3625000    0.2570278   0.4679722
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.0095238   -0.0012136   0.0202612
6-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.0103833    0.0077464   0.0130202
6-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0098039    0.0053467   0.0142611
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.1088235    0.0757075   0.1419396
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.1263736    0.0984913   0.1542560
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.1469534    0.1053902   0.1885166
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.3114754    0.2594938   0.3634570
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.2632130    0.2434650   0.2829609
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.2500000    0.2121894   0.2878106


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.5000000   0.9181050   2.4507000
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.7500000   0.4203628   1.3381299
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA         <32                  >=38              2.0377358   1.1912044   3.4858562
0-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              >=38              1.6363636   0.9482283   2.8238831
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.7116297   0.5533881   0.9151206
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.7461929   0.5014103   1.1104755
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.8936362   0.6564907   1.2164464
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.8777494   0.6092361   1.2646066
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              1.1806877   1.0131435   1.3759390
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.1378769   0.9638161   1.3433724
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.9697926   0.7769586   1.2104863
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.0953779   0.8528990   1.4067934
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.9685153   0.8436205   1.1119003
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.9139719   0.7733243   1.0801996
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.2176471   0.6124737   2.4207805
0-6 months    ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.7024887   0.3399717   1.4515632
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA         <32                  >=38              1.7466307   0.8120101   3.7569961
0-6 months    ki0047075b-MAL-ED          INDIA         [32-38)              >=38              2.0000000   0.9662673   4.1396415
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.6766296   0.4192782   1.0919423
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.8000000   0.5563974   1.1502571
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.6470588   0.3756993   1.1144154
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.6470588   0.3321267   1.2606188
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS       <32                  >=38              1.1920916   1.0161324   1.3985209
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.1453568   0.9635900   1.3614110
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.8623166   0.6509022   1.1423987
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.8942240   0.6446083   1.2404997
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              1.0370139   0.8362818   1.2859275
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.0152499   0.7878569   1.3082735
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.5923077   0.7624990   3.3251767
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.6124260   0.2487773   1.5076363
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA         <32                  >=38              2.4905660   1.1193351   5.5416104
6-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              >=38              1.5833333   0.6913573   3.6261201
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.6605646   0.4845854   0.9004514
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.6612717   0.4228096   1.0342249
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              1.1008705   0.6960045   1.7412469
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              1.1133929   0.6620804   1.8723462
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              1.0902490   0.3822067   3.1099478
6-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.0294118   0.3913001   2.7081224
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.1612712   0.7974293   1.6911226
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.3503826   0.8913112   2.0458997
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.8450522   0.7037485   1.0147278
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.8026316   0.6407707   1.0053791


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0044150   -0.0780499    0.0868800
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.1913389    0.0549686    0.3277091
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1568590   -0.3052638   -0.0084543
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0514354   -0.1911941    0.0883233
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0363508    0.0034201    0.0692814
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0021044   -0.0345412    0.0387501
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0158456   -0.0661227    0.0344316
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0145887   -0.0884536    0.0592761
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.1347481    0.0139215    0.2555747
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.0927929   -0.2353716    0.0497857
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0861244   -0.2090156    0.0367667
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0372352    0.0040299    0.0704404
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0194805   -0.0575720    0.0186110
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0065209   -0.0361753    0.0492172
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0029753   -0.0708431    0.0648925
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.1252588    0.0103385    0.2401791
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1493506   -0.2894278   -0.0092735
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0301400   -0.1027274    0.1630073
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0007313   -0.0085038    0.0099664
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0173567   -0.0112865    0.0459999
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0452989   -0.0940028    0.0034049


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0130719   -0.2639438    0.2293747
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.3850694    0.0369563    0.6073495
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.3783660   -0.7704978   -0.0730841
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.1091371   -0.4493709    0.1512283
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.1423083    0.0080226    0.2584155
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0082194   -0.1457526    0.1414999
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0394328   -0.1723982    0.0784526
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0629400   -0.4342828    0.2122604
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.4093291   -0.0907885    0.6801469
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.4223485   -1.1882409    0.0754787
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.4615385   -1.2901662    0.0672753
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                 0.1498153    0.0103120    0.2696546
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0971188   -0.3042497    0.0771172
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0280917   -0.1743920    0.1956640
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0160455   -0.4566198    0.2912711
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.4290780   -0.1233081    0.7098286
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.4893617   -1.0142886   -0.1012316
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0847292   -0.3765209    0.3914218
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0713124   -1.4722970    0.6511501
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1375550   -0.1211929    0.3365893
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.1701839   -0.3681864   -0.0008360
