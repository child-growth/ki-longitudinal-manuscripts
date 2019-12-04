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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        fage       sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38              0       62     133
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38              1        1     133
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32               0       24     133
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32               1        1     133
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)           0       44     133
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)           1        1     133
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38              0        5      18
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38              1        1      18
Birth       ki0047075b-MAL-ED          BRAZIL                         <32               0        1      18
Birth       ki0047075b-MAL-ED          BRAZIL                         <32               1        0      18
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)           0       10      18
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)           1        1      18
Birth       ki0047075b-MAL-ED          INDIA                          >=38              0        7      27
Birth       ki0047075b-MAL-ED          INDIA                          >=38              1        0      27
Birth       ki0047075b-MAL-ED          INDIA                          <32               0        8      27
Birth       ki0047075b-MAL-ED          INDIA                          <32               1        1      27
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)           0       10      27
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)           1        1      27
Birth       ki0047075b-MAL-ED          NEPAL                          >=38              0        2       9
Birth       ki0047075b-MAL-ED          NEPAL                          >=38              1        0       9
Birth       ki0047075b-MAL-ED          NEPAL                          <32               0        2       9
Birth       ki0047075b-MAL-ED          NEPAL                          <32               1        0       9
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)           0        5       9
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)           1        0       9
Birth       ki0047075b-MAL-ED          PERU                           >=38              0       23      69
Birth       ki0047075b-MAL-ED          PERU                           >=38              1        0      69
Birth       ki0047075b-MAL-ED          PERU                           <32               0       22      69
Birth       ki0047075b-MAL-ED          PERU                           <32               1        0      69
Birth       ki0047075b-MAL-ED          PERU                           [32-38)           0       24      69
Birth       ki0047075b-MAL-ED          PERU                           [32-38)           1        0      69
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38              0       16      31
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38              1        1      31
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32               0        5      31
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32               1        0      31
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)           0        9      31
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)           1        0      31
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              0       17      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              1        2      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               0        9      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               1        0      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           0       18      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           1        0      46
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38              0       36    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38              1        4    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32               0      973    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32               1       72    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)           0      150    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)           1       14    1249
Birth       ki1119695-PROBIT           BELARUS                        >=38              0      606   13396
Birth       ki1119695-PROBIT           BELARUS                        >=38              1        0   13396
Birth       ki1119695-PROBIT           BELARUS                        <32               0    10724   13396
Birth       ki1119695-PROBIT           BELARUS                        <32               1        5   13396
Birth       ki1119695-PROBIT           BELARUS                        [32-38)           0     2061   13396
Birth       ki1119695-PROBIT           BELARUS                        [32-38)           1        0   13396
Birth       ki1135781-COHORTS          GUATEMALA                      >=38              0      243     823
Birth       ki1135781-COHORTS          GUATEMALA                      >=38              1        2     823
Birth       ki1135781-COHORTS          GUATEMALA                      <32               0      373     823
Birth       ki1135781-COHORTS          GUATEMALA                      <32               1        7     823
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)           0      196     823
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)           1        2     823
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38              0      321    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38              1        7    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    <32               0     2048    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    <32               1       31    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)           0      531    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)           1        6    2944
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38              0       69     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38              1        0     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32               0       29     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32               1        1     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)           0       49     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)           1        2     150
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38              0       30      79
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38              1        0      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32               0       18      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32               1        0      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)           0       31      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)           1        0      79
6 months    ki0047075b-MAL-ED          INDIA                          >=38              0       34     161
6 months    ki0047075b-MAL-ED          INDIA                          >=38              1        2     161
6 months    ki0047075b-MAL-ED          INDIA                          <32               0       50     161
6 months    ki0047075b-MAL-ED          INDIA                          <32               1        3     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)           0       71     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)           1        1     161
6 months    ki0047075b-MAL-ED          NEPAL                          >=38              0       17      79
6 months    ki0047075b-MAL-ED          NEPAL                          >=38              1        0      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32               0       15      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32               1        0      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)           0       47      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)           1        0      79
6 months    ki0047075b-MAL-ED          PERU                           >=38              0       27      83
6 months    ki0047075b-MAL-ED          PERU                           >=38              1        0      83
6 months    ki0047075b-MAL-ED          PERU                           <32               0       26      83
6 months    ki0047075b-MAL-ED          PERU                           <32               1        2      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)           0       25      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)           1        3      83
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38              0       63      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38              1        1      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32               0        9      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32               1        0      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)           0       16      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)           1        0      89
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              0       45     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              1        3     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               0       13     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               1        2     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           0       36     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           1        1     100
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38              0       33    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38              1       11    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32               0     1030    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32               1       95    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)           0      142    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)           1       22    1333
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38              0       32     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38              1        7     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32               0      228     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32               1       36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)           0       66     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)           1       11     380
6 months    ki1119695-PROBIT           BELARUS                        >=38              0      687   15183
6 months    ki1119695-PROBIT           BELARUS                        >=38              1       14   15183
6 months    ki1119695-PROBIT           BELARUS                        <32               0    12007   15183
6 months    ki1119695-PROBIT           BELARUS                        <32               1      169   15183
6 months    ki1119695-PROBIT           BELARUS                        [32-38)           0     2265   15183
6 months    ki1119695-PROBIT           BELARUS                        [32-38)           1       41   15183
6 months    ki1135781-COHORTS          GUATEMALA                      >=38              0      234     929
6 months    ki1135781-COHORTS          GUATEMALA                      >=38              1       41     929
6 months    ki1135781-COHORTS          GUATEMALA                      <32               0      376     929
6 months    ki1135781-COHORTS          GUATEMALA                      <32               1       45     929
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)           0      200     929
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)           1       33     929
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38              0      276    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38              1       24    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    <32               0     1753    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    <32               1       76    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)           0      468    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)           1       27    2624
6 months    ki1148112-LCNI-5           MALAWI                         >=38              0       25     106
6 months    ki1148112-LCNI-5           MALAWI                         >=38              1        1     106
6 months    ki1148112-LCNI-5           MALAWI                         <32               0       50     106
6 months    ki1148112-LCNI-5           MALAWI                         <32               1        6     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)           0       22     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)           1        2     106
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38              0       59     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38              1       10     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32               0       24     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32               1        6     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)           0       46     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)           1        6     151
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38              0       30      79
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38              1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32               0       18      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32               1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)           0       31      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)           1        0      79
24 months   ki0047075b-MAL-ED          INDIA                          >=38              0       31     161
24 months   ki0047075b-MAL-ED          INDIA                          >=38              1        5     161
24 months   ki0047075b-MAL-ED          INDIA                          <32               0       45     161
24 months   ki0047075b-MAL-ED          INDIA                          <32               1        8     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)           0       64     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)           1        8     161
24 months   ki0047075b-MAL-ED          NEPAL                          >=38              0       17      79
24 months   ki0047075b-MAL-ED          NEPAL                          >=38              1        0      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32               0       14      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32               1        1      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)           0       45      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)           1        2      79
24 months   ki0047075b-MAL-ED          PERU                           >=38              0       26      79
24 months   ki0047075b-MAL-ED          PERU                           >=38              1        0      79
24 months   ki0047075b-MAL-ED          PERU                           <32               0       25      79
24 months   ki0047075b-MAL-ED          PERU                           <32               1        2      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)           0       23      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)           1        3      79
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38              0       58      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38              1        7      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32               0        8      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32               1        0      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)           0       16      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)           1        0      89
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              0       32     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              1       16     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               0        8     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               1        7     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           0       21     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           1       16     100
24 months   ki1119695-PROBIT           BELARUS                        >=38              0      175    3909
24 months   ki1119695-PROBIT           BELARUS                        >=38              1        3    3909
24 months   ki1119695-PROBIT           BELARUS                        <32               0     3093    3909
24 months   ki1119695-PROBIT           BELARUS                        <32               1       50    3909
24 months   ki1119695-PROBIT           BELARUS                        [32-38)           0      578    3909
24 months   ki1119695-PROBIT           BELARUS                        [32-38)           1       10    3909
24 months   ki1135781-COHORTS          GUATEMALA                      >=38              0      158    1021
24 months   ki1135781-COHORTS          GUATEMALA                      >=38              1      127    1021
24 months   ki1135781-COHORTS          GUATEMALA                      <32               0      251    1021
24 months   ki1135781-COHORTS          GUATEMALA                      <32               1      240    1021
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)           0      115    1021
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)           1      130    1021
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38              0      169    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38              1      101    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    <32               0     1200    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    <32               1      466    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)           0      313    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)           1      122    2371
24 months   ki1148112-LCNI-5           MALAWI                         >=38              0       21      74
24 months   ki1148112-LCNI-5           MALAWI                         >=38              1        0      74
24 months   ki1148112-LCNI-5           MALAWI                         <32               0       33      74
24 months   ki1148112-LCNI-5           MALAWI                         <32               1        4      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)           0       14      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)           1        2      74


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/e05d75ab-34c2-43fe-9eff-e55baef1f33e/ff009cf3-b9c2-453a-a6db-d505e1a8d040/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e05d75ab-34c2-43fe-9eff-e55baef1f33e/ff009cf3-b9c2-453a-a6db-d505e1a8d040/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e05d75ab-34c2-43fe-9eff-e55baef1f33e/ff009cf3-b9c2-453a-a6db-d505e1a8d040/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e05d75ab-34c2-43fe-9eff-e55baef1f33e/ff009cf3-b9c2-453a-a6db-d505e1a8d040/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.0213415   0.0056987   0.0369842
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.0149110   0.0097004   0.0201216
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.0111732   0.0022815   0.0200649
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.1678184   0.0940350   0.2416019
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.0761986   0.0636062   0.0887909
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.1446514   0.0479789   0.2413240
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.1794872   0.0588872   0.3000872
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.1363636   0.0949128   0.1778145
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.1428571   0.0645949   0.2211194
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                0.0189802   0.0053507   0.0326096
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                0.0139524   0.0088715   0.0190332
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0165930   0.0085882   0.0245978
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.0951356   0.0533592   0.1369120
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.1094437   0.0751621   0.1437253
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.1236066   0.0612060   0.1860073
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.0547825   0.0128053   0.0967597
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.0455295   0.0310164   0.0600425
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.0455886   0.0106149   0.0805623
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1449275   0.0615895   0.2282656
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.2000000   0.0563881   0.3436119
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.1153846   0.0282601   0.2025091
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.1388889   0.0255672   0.2522106
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.1509434   0.0542630   0.2476238
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.1111111   0.0382934   0.1839289
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.3333333   0.1993028   0.4673638
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.4666667   0.2129274   0.7204059
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.4324324   0.2719980   0.5928669
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.4090182   0.3217993   0.4962371
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.4697648   0.4199635   0.5195660
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.5140909   0.4174198   0.6107621
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.3007241   0.2298920   0.3715562
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.2696193   0.2418765   0.2973621
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.2645416   0.2054072   0.3236760


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0149457   0.0105620   0.0193293
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0960240   0.0777684   0.1142796
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0147533   0.0094871   0.0200196
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1280947   0.1065929   0.1495965
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0483994   0.0401865   0.0566123
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1456954   0.0892366   0.2021542
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1304348   0.0782510   0.1826186
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3900000   0.2939212   0.4860788
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4867777   0.4561040   0.5174514
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2905947   0.2723152   0.3088742


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.6986876   0.3101923   1.573747
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.5235435   0.1774516   1.544634
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.4540535   0.2834836   0.727254
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.8619521   0.3915506   1.897485
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              0.7597403   0.3633993   1.588350
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.7959184   0.3344716   1.893991
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              0.7351009   0.4001785   1.350331
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              0.8742261   0.5283744   1.446458
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              1.1503970   0.6720511   1.969215
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.2992681   0.6662746   2.533636
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.8310950   0.3624563   1.905661
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.8321745   0.2811849   2.462843
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.3800000   0.5499947   3.462579
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              0.7961538   0.3081799   2.056788
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              1.0867925   0.3851745   3.066449
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              0.8000000   0.2809245   2.278192
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              1.4000000   0.7119272   2.753090
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              1.2972973   0.7506467   2.242040
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              1.1485179   0.9067594   1.454734
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.2568901   0.9471745   1.667879
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.8965671   0.6940686   1.158146
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.8796822   0.6364977   1.215780


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0063958   -0.0208660   0.0080744
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0717944   -0.1464627   0.0028738
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0373819   -0.1504952   0.0757313
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0042268   -0.0150403   0.0065866
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0329591   -0.0052089   0.0711272
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0063831   -0.0473798   0.0346136
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0007678   -0.0607588   0.0622945
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0084541   -0.1075603   0.0906521
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0566667   -0.0430816   0.1564149
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0777594   -0.0039291   0.1594480
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0101294   -0.0791587   0.0588999


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.4279379   -1.7976835    0.2711804
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.7476716   -1.7843862   -0.0969585
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.2630579   -1.3691050    0.3266169
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.2865009   -1.2211360    0.2548478
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.2573028   -0.1071393    0.5017798
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1318839   -1.3919066    0.4643765
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0052701   -0.5208155    0.3493704
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0648148   -1.1729436    0.4782052
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.1452991   -0.1531681    0.3665160
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.1597432   -0.0263549    0.3120982
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0348575   -0.3019799    0.1774604
