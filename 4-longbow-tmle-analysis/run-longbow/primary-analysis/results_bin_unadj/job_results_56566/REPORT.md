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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        fage       ever_co   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  --------  --------  -------  ------  -----------------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             0       61     151  ever_co          
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             1        8     151  ever_co          
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              0       22     151  ever_co          
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              1        8     151  ever_co          
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       45     151  ever_co          
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        7     151  ever_co          
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79  ever_co          
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79  ever_co          
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32              0       17      79  ever_co          
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32              1        1      79  ever_co          
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       31      79  ever_co          
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        0      79  ever_co          
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38             0       33     161  ever_co          
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38             1        3     161  ever_co          
0-24 months   ki0047075b-MAL-ED          INDIA                          <32              0       36     161  ever_co          
0-24 months   ki0047075b-MAL-ED          INDIA                          <32              1       17     161  ever_co          
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          0       56     161  ever_co          
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          1       16     161  ever_co          
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38             0       14      79  ever_co          
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38             1        3      79  ever_co          
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32              0       13      79  ever_co          
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32              1        2      79  ever_co          
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          0       43      79  ever_co          
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          1        4      79  ever_co          
0-24 months   ki0047075b-MAL-ED          PERU                           >=38             0       27      85  ever_co          
0-24 months   ki0047075b-MAL-ED          PERU                           >=38             1        0      85  ever_co          
0-24 months   ki0047075b-MAL-ED          PERU                           <32              0       27      85  ever_co          
0-24 months   ki0047075b-MAL-ED          PERU                           <32              1        2      85  ever_co          
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)          0       27      85  ever_co          
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)          1        2      85  ever_co          
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       62      90  ever_co          
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        3      90  ever_co          
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        9      90  ever_co          
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        0      90  ever_co          
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0       13      90  ever_co          
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        3      90  ever_co          
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       43     100  ever_co          
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        5     100  ever_co          
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       12     100  ever_co          
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        3     100  ever_co          
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       34     100  ever_co          
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        3     100  ever_co          
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38             0       29    1510  ever_co          
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38             1       20    1510  ever_co          
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32              0      987    1510  ever_co          
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32              1      277    1510  ever_co          
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0      145    1510  ever_co          
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1       52    1510  ever_co          
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38             0       26     418  ever_co          
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38             1       18     418  ever_co          
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32              0      180     418  ever_co          
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32              1      109     418  ever_co          
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          0       57     418  ever_co          
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          1       28     418  ever_co          
0-24 months   ki1119695-PROBIT           BELARUS                        >=38             0      743   16277  ever_co          
0-24 months   ki1119695-PROBIT           BELARUS                        >=38             1        1   16277  ever_co          
0-24 months   ki1119695-PROBIT           BELARUS                        <32              0    13035   16277  ever_co          
0-24 months   ki1119695-PROBIT           BELARUS                        <32              1       23   16277  ever_co          
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)          0     2473   16277  ever_co          
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)          1        2   16277  ever_co          
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38             0      344    1285  ever_co          
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38             1       38    1285  ever_co          
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32              0      541    1285  ever_co          
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32              1       60    1285  ever_co          
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          0      259    1285  ever_co          
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          1       43    1285  ever_co          
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             0      254    2939  ever_co          
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             1       74    2939  ever_co          
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32              0     1703    2939  ever_co          
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32              1      371    2939  ever_co          
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      441    2939  ever_co          
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          1       96    2939  ever_co          
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38             0       26     106  ever_co          
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38             1        0     106  ever_co          
0-24 months   ki1148112-LCNI-5           MALAWI                         <32              0       53     106  ever_co          
0-24 months   ki1148112-LCNI-5           MALAWI                         <32              1        3     106  ever_co          
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          0       22     106  ever_co          
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          1        2     106  ever_co          
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38             0       67     151  ever_co          
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38             1        2     151  ever_co          
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32              0       29     151  ever_co          
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32              1        1     151  ever_co          
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       50     151  ever_co          
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        2     151  ever_co          
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79  ever_co          
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79  ever_co          
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32              0       17      79  ever_co          
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32              1        1      79  ever_co          
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       31      79  ever_co          
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        0      79  ever_co          
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38             0       34     161  ever_co          
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38             1        2     161  ever_co          
0-6 months    ki0047075b-MAL-ED          INDIA                          <32              0       47     161  ever_co          
0-6 months    ki0047075b-MAL-ED          INDIA                          <32              1        6     161  ever_co          
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          0       67     161  ever_co          
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          1        5     161  ever_co          
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38             0       17      79  ever_co          
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38             1        0      79  ever_co          
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32              0       15      79  ever_co          
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32              1        0      79  ever_co          
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)          0       46      79  ever_co          
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)          1        1      79  ever_co          
0-6 months    ki0047075b-MAL-ED          PERU                           >=38             0       27      85  ever_co          
0-6 months    ki0047075b-MAL-ED          PERU                           >=38             1        0      85  ever_co          
0-6 months    ki0047075b-MAL-ED          PERU                           <32              0       29      85  ever_co          
0-6 months    ki0047075b-MAL-ED          PERU                           <32              1        0      85  ever_co          
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)          0       29      85  ever_co          
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)          1        0      85  ever_co          
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       65      90  ever_co          
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        0      90  ever_co          
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        9      90  ever_co          
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        0      90  ever_co          
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0       14      90  ever_co          
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        2      90  ever_co          
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       47     100  ever_co          
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        1     100  ever_co          
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       15     100  ever_co          
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        0     100  ever_co          
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       36     100  ever_co          
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        1     100  ever_co          
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38             0       42    1501  ever_co          
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38             1        6    1501  ever_co          
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32              0     1178    1501  ever_co          
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32              1       80    1501  ever_co          
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0      175    1501  ever_co          
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1       20    1501  ever_co          
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38             0       37     416  ever_co          
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38             1        6     416  ever_co          
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32              0      266     416  ever_co          
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32              1       22     416  ever_co          
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          0       81     416  ever_co          
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          1        4     416  ever_co          
0-6 months    ki1119695-PROBIT           BELARUS                        >=38             0      742   16273  ever_co          
0-6 months    ki1119695-PROBIT           BELARUS                        >=38             1        1   16273  ever_co          
0-6 months    ki1119695-PROBIT           BELARUS                        <32              0    13041   16273  ever_co          
0-6 months    ki1119695-PROBIT           BELARUS                        <32              1       15   16273  ever_co          
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)          0     2472   16273  ever_co          
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)          1        2   16273  ever_co          
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38             0      299    1026  ever_co          
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38             1        9    1026  ever_co          
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32              0      468    1026  ever_co          
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32              1        1    1026  ever_co          
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)          0      241    1026  ever_co          
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)          1        8    1026  ever_co          
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38             0      315    2938  ever_co          
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38             1       13    2938  ever_co          
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32              0     2033    2938  ever_co          
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32              1       40    2938  ever_co          
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      522    2938  ever_co          
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)          1       15    2938  ever_co          
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38             0        9      38  ever_co          
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38             1        0      38  ever_co          
0-6 months    ki1148112-LCNI-5           MALAWI                         <32              0       21      38  ever_co          
0-6 months    ki1148112-LCNI-5           MALAWI                         <32              1        0      38  ever_co          
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)          0        8      38  ever_co          
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)          1        0      38  ever_co          
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             0       61     151  ever_co          
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             1        8     151  ever_co          
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              0       23     151  ever_co          
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              1        7     151  ever_co          
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       45     151  ever_co          
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        7     151  ever_co          
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79  ever_co          
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79  ever_co          
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32              0       18      79  ever_co          
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32              1        0      79  ever_co          
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       31      79  ever_co          
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        0      79  ever_co          
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38             0       33     161  ever_co          
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38             1        3     161  ever_co          
6-24 months   ki0047075b-MAL-ED          INDIA                          <32              0       38     161  ever_co          
6-24 months   ki0047075b-MAL-ED          INDIA                          <32              1       15     161  ever_co          
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          0       57     161  ever_co          
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          1       15     161  ever_co          
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38             0       14      79  ever_co          
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38             1        3      79  ever_co          
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32              0       13      79  ever_co          
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32              1        2      79  ever_co          
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          0       43      79  ever_co          
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          1        4      79  ever_co          
6-24 months   ki0047075b-MAL-ED          PERU                           >=38             0       27      83  ever_co          
6-24 months   ki0047075b-MAL-ED          PERU                           >=38             1        0      83  ever_co          
6-24 months   ki0047075b-MAL-ED          PERU                           <32              0       26      83  ever_co          
6-24 months   ki0047075b-MAL-ED          PERU                           <32              1        2      83  ever_co          
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)          0       26      83  ever_co          
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)          1        2      83  ever_co          
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       62      90  ever_co          
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        3      90  ever_co          
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        9      90  ever_co          
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        0      90  ever_co          
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0       14      90  ever_co          
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        2      90  ever_co          
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       44     100  ever_co          
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        4     100  ever_co          
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       12     100  ever_co          
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        3     100  ever_co          
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       34     100  ever_co          
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        3     100  ever_co          
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38             0       25    1386  ever_co          
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38             1       19    1386  ever_co          
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32              0      921    1386  ever_co          
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32              1      248    1386  ever_co          
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0      128    1386  ever_co          
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1       45    1386  ever_co          
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38             0       26     401  ever_co          
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38             1       16     401  ever_co          
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32              0      177     401  ever_co          
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32              1      102     401  ever_co          
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          0       53     401  ever_co          
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          1       27     401  ever_co          
6-24 months   ki1119695-PROBIT           BELARUS                        >=38             0      734   15992  ever_co          
6-24 months   ki1119695-PROBIT           BELARUS                        >=38             1        1   15992  ever_co          
6-24 months   ki1119695-PROBIT           BELARUS                        <32              0    12801   15992  ever_co          
6-24 months   ki1119695-PROBIT           BELARUS                        <32              1        8   15992  ever_co          
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)          0     2448   15992  ever_co          
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)          1        0   15992  ever_co          
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38             0      306    1164  ever_co          
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38             1       33    1164  ever_co          
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32              0      486    1164  ever_co          
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32              1       60    1164  ever_co          
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          0      242    1164  ever_co          
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          1       37    1164  ever_co          
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             0      234    2719  ever_co          
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             1       70    2719  ever_co          
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32              0     1556    2719  ever_co          
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32              1      355    2719  ever_co          
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      411    2719  ever_co          
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          1       93    2719  ever_co          
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38             0       26     106  ever_co          
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38             1        0     106  ever_co          
6-24 months   ki1148112-LCNI-5           MALAWI                         <32              0       53     106  ever_co          
6-24 months   ki1148112-LCNI-5           MALAWI                         <32              1        3     106  ever_co          
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          0       22     106  ever_co          
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          1        2     106  ever_co          


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/11cd3afe-4297-4af9-8d19-1f912cc3c440/48ebe546-243e-4200-af80-9a46d36d0362/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/11cd3afe-4297-4af9-8d19-1f912cc3c440/48ebe546-243e-4200-af80-9a46d36d0362/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/11cd3afe-4297-4af9-8d19-1f912cc3c440/48ebe546-243e-4200-af80-9a46d36d0362/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/11cd3afe-4297-4af9-8d19-1f912cc3c440/48ebe546-243e-4200-af80-9a46d36d0362/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.1159420   0.0401494   0.1917347
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.2666667   0.1078978   0.4254355
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1346154   0.0415386   0.2276921
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.4081633   0.3007438   0.5155827
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.2191456   0.1806468   0.2576444
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.2639594   0.1913937   0.3365250
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.4090909   0.2636414   0.5545404
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.3771626   0.3212164   0.4331089
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.3294118   0.2293758   0.4294478
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0994764   0.0694507   0.1295021
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0998336   0.0758574   0.1238098
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.1423841   0.1029574   0.1818108
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.2256098   0.1803675   0.2708520
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.1788814   0.1623845   0.1953783
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.1787709   0.1463582   0.2111837
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.1250000   0.0265956   0.2234044
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.0635930   0.0431567   0.0840293
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1025641   0.0610899   0.1440383
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0396341   0.0185169   0.0607514
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0192957   0.0133730   0.0252184
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0279330   0.0139936   0.0418723
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.1159420   0.0401494   0.1917347
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.2333333   0.0814808   0.3851858
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1346154   0.0415386   0.2276921
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.4318182   0.3044703   0.5591660
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.2121471   0.1803638   0.2439305
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.2601156   0.1922645   0.3279668
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.3809524   0.2339031   0.5280017
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.3655914   0.3090104   0.4221724
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.3375000   0.2337531   0.4412469
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0973451   0.0657767   0.1289136
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.1098901   0.0836455   0.1361347
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.1326165   0.0928024   0.1724306
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.2302632   0.1829290   0.2775973
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.1857666   0.1683262   0.2032070
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.1845238   0.1506515   0.2183961


### Parameter: E(Y)


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1523179   0.0948144   0.2098214
0-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.2311258   0.1911027   0.2711489
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1097276   0.0926320   0.1268233
0-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1840762   0.1700627   0.1980897
0-6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0706196   0.0480792   0.0931600
0-6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0231450   0.0177070   0.0285830
6-24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1456954   0.0892366   0.2021542
6-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.2251082   0.1905625   0.2596539
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1116838   0.0935814   0.1297863
6-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1905112   0.1757477   0.2052747


### Parameter: RR


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              2.3000000   0.9499965   5.5684414
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              1.1610577   0.4483418   3.0067571
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.5369066   0.3989653   0.7225409
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.6467005   0.4406031   0.9492025
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.9219531   0.6271896   1.3552481
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.8052288   0.5044882   1.2852498
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.0035905   0.6823994   1.4759595
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.4313349   0.9502749   2.1559233
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.7928797   0.6358411   0.9887033
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.7923902   0.6046858   1.0383610
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.5087440   0.2651710   0.9760514
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.8205128   0.4199560   1.6031234
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.4868455   0.2632360   0.9004034
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.7047701   0.3396327   1.4624649
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              2.0125000   0.8000739   5.0622279
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              1.1610577   0.4483418   3.0067571
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.4912881   0.3641271   0.6628564
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.6023730   0.4240155   0.8557547
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.9596774   0.6331595   1.4545793
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.8859375   0.5408793   1.4511282
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.1288711   0.7546301   1.6887082
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.3623330   0.8757040   2.1193818
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.8067579   0.6435722   1.0113213
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.8013605   0.6083280   1.0556456


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0363759   -0.0252782    0.0980299
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1770374   -0.2839012   -0.0701737
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0382775   -0.1755766    0.0990216
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0102512   -0.0153962    0.0358986
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0415335   -0.0837990    0.0007319
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.0543804   -0.1381804    0.0294196
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0164891   -0.0358784    0.0029001
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0297533   -0.0309275    0.0904341
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.2067100   -0.3267393   -0.0866806
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0193564   -0.1583198    0.1196071
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0143387   -0.0129338    0.0416112
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0397519   -0.0839953    0.0044914


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.2388154   -0.2830190    0.5484073
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.7659786   -1.3474312   -0.3285503
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.1032258   -0.5432948    0.2113580
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0934239   -0.1727541    0.2991880
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.2256323   -0.4778097   -0.0164871
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.7700472   -2.2322597    0.0306883
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.7124283   -1.7678208   -0.0594654
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.2042161   -0.3337776    0.5252042
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.9182692   -1.5436390   -0.4466506
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0535304   -0.5173076    0.2684896
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1283866   -0.1525286    0.3408321
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.2086593   -0.4644115    0.0024270
