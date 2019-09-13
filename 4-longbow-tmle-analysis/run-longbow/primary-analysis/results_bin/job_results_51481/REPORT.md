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
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32              0       18      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32              1        0      79
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
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32              0       18      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32              1        0      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       31      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        0      79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38             0       34     161
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38             1        2     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32              0       47     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32              1        6     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          0       68     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          1        4     161
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
![](/tmp/f3bb7d35-4b47-4948-b371-08a78b083b38/b0c48a70-40dd-4fdd-9824-ce666ce75ba0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f3bb7d35-4b47-4948-b371-08a78b083b38/b0c48a70-40dd-4fdd-9824-ce666ce75ba0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f3bb7d35-4b47-4948-b371-08a78b083b38/b0c48a70-40dd-4fdd-9824-ce666ce75ba0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f3bb7d35-4b47-4948-b371-08a78b083b38/b0c48a70-40dd-4fdd-9824-ce666ce75ba0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.3422805   0.1331957   0.5513653
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.5021451   0.4487955   0.5554948
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.1898633   0.1041573   0.2755694
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0968735   0.0565304   0.1372167
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.1047046   0.0756574   0.1337518
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.1282068   0.0760542   0.1803595
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.2459033   0.1778942   0.3139125
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.1772011   0.1561668   0.1982354
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.1637139   0.1166520   0.2107758
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.1250000   0.0265956   0.2234044
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.0635930   0.0431567   0.0840293
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1025641   0.0610899   0.1440383
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0348875   0.0069805   0.0627945
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0180459   0.0119448   0.0241470
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0388845   0.0066466   0.0711225
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.1159420   0.0401494   0.1917347
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.2333333   0.0814808   0.3851858
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1346154   0.0415386   0.2276921
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.5232982   0.4538303   0.5927660
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.2017380   0.1750242   0.2284517
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.2366521   0.1233335   0.3499708
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.3569945   0.1411316   0.5728574
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.4925967   0.4374963   0.5476971
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.1818498   0.0972940   0.2664057
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0868172   0.0495458   0.1240886
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.1111611   0.0812758   0.1410464
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.1079583   0.0656094   0.1503072
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.2639386   0.1926233   0.3352539
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.1812264   0.1588311   0.2036216
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.1571669   0.1121838   0.2021501


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
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              1.4670574   0.7892664   2.7269088
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.5547010   0.2594262   1.1860531
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.0808377   0.6561083   1.7805142
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.3234452   0.7395352   2.3683892
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.7206129   0.5334427   0.9734558
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.6657651   0.4467553   0.9921386
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.5087440   0.2651710   0.9760514
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.8205128   0.4199560   1.6031234
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.5172596   0.2170346   1.2327870
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.1145695   0.3521405   3.5277539
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              2.0125000   0.8000739   5.0622279
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              1.1610577   0.4483418   3.0067571
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.3855125   0.3173584   0.4683029
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.4522319   0.2782614   0.7349699
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              1.3798440   0.7450373   2.5555359
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.5093911   0.2373459   1.0932539
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.2804043   0.7720973   2.1233530
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.2435125   0.6951018   2.2245999
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.6866232   0.5102064   0.9240406
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.5954678   0.4016811   0.8827447


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0363759   -0.0252782    0.0980299
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.2146520   -0.3012396   -0.1280644
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0285329   -0.1778856    0.2349514
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0128541   -0.0242636    0.0499717
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0618271   -0.1282075    0.0045533
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.0543804   -0.1381804    0.0294196
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0117425   -0.0389525    0.0154675
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0297533   -0.0309275    0.0904341
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.2981900   -0.3796771   -0.2167028
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0046015   -0.2089922    0.2181953
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0248666   -0.0094948    0.0592280
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0734274   -0.1430737   -0.0037811


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.2388154   -0.2830190    0.5484073
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.9287235   -1.4684403   -0.5070141
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0769468   -0.6862763    0.4947286
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1171453   -0.2948928    0.3980719
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.3358779   -0.7506381   -0.0193824
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.7700472   -2.2322597    0.0306883
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.5073447   -2.2934293    0.3101148
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.2042161   -0.3337776    0.5252042
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -1.3246516   -1.8837185   -0.8739710
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0127256   -0.7957135    0.4572015
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.2226519   -0.1527983    0.4758232
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.3854230   -0.8050291   -0.0633606
