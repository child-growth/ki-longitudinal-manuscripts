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

agecat        studyid                    country                        fage       ever_co   n_cell       n
------------  -------------------------  -----------------------------  --------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             0       61     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             1        8     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              0       22     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              1        8     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       45     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        7     151
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32              0       17      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32              1        1      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       31      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        0      79
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38             0       33     161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38             1        3     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32              0       36     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32              1       17     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          0       56     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          1       16     161
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38             0       14      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38             1        3      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32              0       13      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32              1        2      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          0       43      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          1        4      79
0-24 months   ki0047075b-MAL-ED          PERU                           >=38             0       27      85
0-24 months   ki0047075b-MAL-ED          PERU                           >=38             1        0      85
0-24 months   ki0047075b-MAL-ED          PERU                           <32              0       27      85
0-24 months   ki0047075b-MAL-ED          PERU                           <32              1        2      85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)          0       27      85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)          1        2      85
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       62      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        3      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        9      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        0      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0       13      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        3      90
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       43     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        5     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       12     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        3     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       34     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        3     100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38             0       29    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38             1       20    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32              0      987    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32              1      277    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0      145    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1       52    1510
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38             0       26     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38             1       18     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32              0      180     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32              1      109     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          0       57     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          1       28     418
0-24 months   ki1119695-PROBIT           BELARUS                        >=38             0      743   16277
0-24 months   ki1119695-PROBIT           BELARUS                        >=38             1        1   16277
0-24 months   ki1119695-PROBIT           BELARUS                        <32              0    13035   16277
0-24 months   ki1119695-PROBIT           BELARUS                        <32              1       23   16277
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)          0     2473   16277
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)          1        2   16277
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38             0      344    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38             1       38    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32              0      541    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32              1       60    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          0      259    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          1       43    1285
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             0      254    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             1       74    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32              0     1703    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32              1      371    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      441    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          1       96    2939
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38             0       26     106
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38             1        0     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32              0       53     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32              1        3     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          0       22     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          1        2     106
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38             0       67     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38             1        2     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32              0       29     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32              1        1     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       50     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        2     151
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32              0       17      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32              1        1      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       31      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        0      79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38             0       34     161
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38             1        2     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32              0       47     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32              1        6     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          0       67     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          1        5     161
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38             0       17      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38             1        0      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32              0       15      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32              1        0      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)          0       46      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)          1        1      79
0-6 months    ki0047075b-MAL-ED          PERU                           >=38             0       27      85
0-6 months    ki0047075b-MAL-ED          PERU                           >=38             1        0      85
0-6 months    ki0047075b-MAL-ED          PERU                           <32              0       29      85
0-6 months    ki0047075b-MAL-ED          PERU                           <32              1        0      85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)          0       29      85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)          1        0      85
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       65      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        0      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        9      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        0      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0       14      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        2      90
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       47     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        1     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       15     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        0     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       36     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        1     100
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38             0       42    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38             1        6    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32              0     1178    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32              1       80    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0      175    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1       20    1501
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38             0       37     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38             1        6     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32              0      266     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32              1       22     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          0       81     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          1        4     416
0-6 months    ki1119695-PROBIT           BELARUS                        >=38             0      742   16273
0-6 months    ki1119695-PROBIT           BELARUS                        >=38             1        1   16273
0-6 months    ki1119695-PROBIT           BELARUS                        <32              0    13041   16273
0-6 months    ki1119695-PROBIT           BELARUS                        <32              1       15   16273
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)          0     2472   16273
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)          1        2   16273
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38             0      299    1026
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38             1        9    1026
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32              0      468    1026
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32              1        1    1026
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)          0      241    1026
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)          1        8    1026
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38             0      315    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38             1       13    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32              0     2033    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32              1       40    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      522    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)          1       15    2938
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38             0        9      38
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38             1        0      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32              0       21      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32              1        0      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)          0        8      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)          1        0      38
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             0       61     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             1        8     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              0       23     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              1        7     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       45     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        7     151
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32              0       18      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32              1        0      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       31      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        0      79
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38             0       33     161
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38             1        3     161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32              0       38     161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32              1       15     161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          0       57     161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          1       15     161
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38             0       14      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38             1        3      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32              0       13      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32              1        2      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          0       43      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          1        4      79
6-24 months   ki0047075b-MAL-ED          PERU                           >=38             0       27      83
6-24 months   ki0047075b-MAL-ED          PERU                           >=38             1        0      83
6-24 months   ki0047075b-MAL-ED          PERU                           <32              0       26      83
6-24 months   ki0047075b-MAL-ED          PERU                           <32              1        2      83
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)          0       26      83
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)          1        2      83
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       62      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        3      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        9      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        0      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0       14      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        2      90
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       44     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        4     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       12     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        3     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       34     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        3     100
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38             0       25    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38             1       19    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32              0      921    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32              1      248    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0      128    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1       45    1386
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38             0       26     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38             1       16     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32              0      177     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32              1      102     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          0       53     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          1       27     401
6-24 months   ki1119695-PROBIT           BELARUS                        >=38             0      734   15992
6-24 months   ki1119695-PROBIT           BELARUS                        >=38             1        1   15992
6-24 months   ki1119695-PROBIT           BELARUS                        <32              0    12801   15992
6-24 months   ki1119695-PROBIT           BELARUS                        <32              1        8   15992
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)          0     2448   15992
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)          1        0   15992
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38             0      306    1164
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38             1       33    1164
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32              0      486    1164
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32              1       60    1164
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          0      242    1164
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          1       37    1164
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             0      234    2719
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             1       70    2719
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32              0     1556    2719
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32              1      355    2719
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      411    2719
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          1       93    2719
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38             0       26     106
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38             1        0     106
6-24 months   ki1148112-LCNI-5           MALAWI                         <32              0       53     106
6-24 months   ki1148112-LCNI-5           MALAWI                         <32              1        3     106
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          0       22     106
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          1        2     106


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




# Results Detail

## Results Plots
![](/tmp/2d87639c-bb0f-449f-953c-29dd013cfb63/86efc5d1-e157-4e7b-aea0-ad3d0b32300a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2d87639c-bb0f-449f-953c-29dd013cfb63/86efc5d1-e157-4e7b-aea0-ad3d0b32300a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2d87639c-bb0f-449f-953c-29dd013cfb63/86efc5d1-e157-4e7b-aea0-ad3d0b32300a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2d87639c-bb0f-449f-953c-29dd013cfb63/86efc5d1-e157-4e7b-aea0-ad3d0b32300a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.1159420   0.0401494   0.1917347
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.2666667   0.1078978   0.4254355
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1346154   0.0415386   0.2276921
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.4457778   0.3707148   0.5208408
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.2020978   0.1669711   0.2372246
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.2179046   0.1125994   0.3232099
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.3632116   0.1696374   0.5567859
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.5080597   0.4549272   0.5611923
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.1953762   0.1090876   0.2816648
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0953750   0.0511267   0.1396233
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.1146083   0.0836412   0.1455754
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.1231758   0.0707022   0.1756494
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.2319751   0.1654098   0.2985404
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.1762858   0.1553512   0.1972205
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.1652842   0.1161220   0.2144464
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.1250000   0.0265956   0.2234044
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.0635930   0.0431567   0.0840293
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1025641   0.0610899   0.1440383
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0341098   0.0060284   0.0621912
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0181650   0.0120075   0.0243224
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0409333   0.0092339   0.0726326
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.1159420   0.0401494   0.1917347
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.2333333   0.0814808   0.3851858
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1346154   0.0415386   0.2276921
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.5232982   0.4538303   0.5927660
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.2017380   0.1750242   0.2284517
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.2366521   0.1233335   0.3499708
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.3414990   0.1363165   0.5466814
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.4934029   0.4386563   0.5481494
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.1925838   0.1026629   0.2825048
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0898210   0.0491876   0.1304544
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.1210990   0.0880620   0.1541361
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.1253154   0.0724038   0.1782270
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.2578278   0.1875021   0.3281535
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.1830593   0.1599277   0.2061909
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.1529143   0.1097176   0.1961110


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.4533600   0.3572698   0.5752943
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.4888189   0.3072718   0.7776303
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              1.3987982   0.8123696   2.4085543
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.5379128   0.2691888   1.0748966
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.2016595   0.7031804   2.0535066
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.2914891   0.6876068   2.4257236
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.7599343   0.5570838   1.0366488
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.7125083   0.4712938   1.0771796
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.5087440   0.2651710   0.9760514
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.8205128   0.4199560   1.6031234
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.5325450   0.2186353   1.2971563
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.2000454   0.3875137   3.7162787
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              2.0125000   0.8000739   5.0622279
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              1.1610577   0.4483418   3.0067571
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.3855125   0.3173584   0.4683029
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.4522319   0.2782614   0.7349699
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              1.4448151   0.7833374   2.6648680
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.5639368   0.2633822   1.2074647
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.3482267   0.7956621   2.2845318
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.3951692   0.7517600   2.5892536
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.7100059   0.5257543   0.9588288
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.5930869   0.4004763   0.8783342


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0363759   -0.0252782    0.0980299
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.2146520   -0.3012396   -0.1280644
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0076018   -0.1836498    0.1988534
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0143526   -0.0271348    0.0558401
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0478989   -0.1128959    0.0170981
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.0543804   -0.1381804    0.0294196
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0109648   -0.0383479    0.0164184
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0297533   -0.0309275    0.0904341
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.2981900   -0.3796771   -0.2167028
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0200971   -0.1828525    0.2230466
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0218629   -0.0159534    0.0596792
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0673166   -0.1359823    0.0013491


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.2388154   -0.2830190    0.5484073
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.9287235   -1.4684403   -0.5070141
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0205003   -0.6580876    0.4213697
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1308023   -0.3424842    0.4372339
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.2602122   -0.6683323    0.0480705
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.7700472   -2.2322597    0.0306883
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.4737427   -2.2931022    0.3404646
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.2042161   -0.3337776    0.5252042
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -1.3246516   -1.8837185   -0.8739710
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0555787   -0.7102388    0.4784755
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1957569   -0.2237713    0.4714642
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.3533471   -0.7674630   -0.0362585
