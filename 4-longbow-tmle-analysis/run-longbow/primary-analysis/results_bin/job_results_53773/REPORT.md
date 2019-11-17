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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        fage       pers_wast   n_cell       n
------------  -------------------------  -----------------------------  --------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38               0       65     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38               1        4     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                0       30     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                1        0     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)            0       49     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)            1        3     151
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38               0       30      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38               1        0      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                0       18      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                1        0      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)            0       30      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)            1        1      79
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38               0       36     161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38               1        0     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                0       46     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                1        7     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)            0       66     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)            1        6     161
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38               0       17      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38               1        0      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                0       14      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                1        1      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)            0       47      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)            1        0      79
0-24 months   ki0047075b-MAL-ED          PERU                           >=38               0       27      84
0-24 months   ki0047075b-MAL-ED          PERU                           >=38               1        0      84
0-24 months   ki0047075b-MAL-ED          PERU                           <32                0       28      84
0-24 months   ki0047075b-MAL-ED          PERU                           <32                1        1      84
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)            0       28      84
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)            1        0      84
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               0       64      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               1        1      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                0        9      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                1        0      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            0       16      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            1        0      90
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               0       48     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               1        0     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                0       15     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                1        0     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            0       37     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            1        0     100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38               0       33    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38               1       10    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                0     1059    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                1       92    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)            0      157    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)            1       12    1363
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38               0       29     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38               1       12     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                0      221     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                1       36     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)            0       60     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)            1       17     375
0-24 months   ki1119695-PROBIT           BELARUS                        >=38               0      725   15975
0-24 months   ki1119695-PROBIT           BELARUS                        >=38               1        8   15975
0-24 months   ki1119695-PROBIT           BELARUS                        <32                0    12675   15975
0-24 months   ki1119695-PROBIT           BELARUS                        <32                1      122   15975
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)            0     2424   15975
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)            1       21   15975
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38               0      289    1018
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38               1        9    1018
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                0      458    1018
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                1       15    1018
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)            0      236    1018
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)            1       11    1018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38               0      284    2723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38               1       21    2723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                0     1824    2723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                1       89    2723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)            0      477    2723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)            1       28    2723
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38               0       26      99
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38               1        0      99
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                0       50      99
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                1        1      99
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)            0       22      99
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)            1        0      99
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38               0       66     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38               1        3     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                0       30     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                1        0     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)            0       50     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)            1        2     151
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38               0       30      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38               1        0      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                0       18      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                1        0      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)            0       31      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)            1        0      79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38               0       34     160
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38               1        2     160
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                0       47     160
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                1        6     160
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)            0       67     160
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)            1        4     160
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38               0       17      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38               1        0      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                0       14      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                1        1      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)            0       47      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)            1        0      79
0-6 months    ki0047075b-MAL-ED          PERU                           >=38               0       27      84
0-6 months    ki0047075b-MAL-ED          PERU                           >=38               1        0      84
0-6 months    ki0047075b-MAL-ED          PERU                           <32                0       29      84
0-6 months    ki0047075b-MAL-ED          PERU                           <32                1        0      84
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)            0       28      84
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)            1        0      84
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               0       63      89
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               1        1      89
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                0        9      89
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                1        0      89
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            0       16      89
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            1        0      89
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               0       48     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               1        0     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                0       15     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                1        0     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            0       37     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            1        0     100
0-6 months    ki1119695-PROBIT           BELARUS                        >=38               0      554   13054
0-6 months    ki1119695-PROBIT           BELARUS                        >=38               1       48   13054
0-6 months    ki1119695-PROBIT           BELARUS                        <32                0     9554   13054
0-6 months    ki1119695-PROBIT           BELARUS                        <32                1      890   13054
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)            0     1850   13054
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)            1      158   13054
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38               0       85     822
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38               1        3     822
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                0      539     822
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                1       33     822
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)            0      149     822
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)            1       13     822
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38               0       65     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38               1        4     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                0       30     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                1        0     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)            0       49     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)            1        3     151
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38               0       30      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38               1        0      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                0       18      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                1        0      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)            0       30      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)            1        1      79
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38               0       36     161
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38               1        0     161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                0       46     161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                1        7     161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)            0       66     161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)            1        6     161
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38               0       17      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38               1        0      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                0       14      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                1        1      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)            0       47      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)            1        0      79
6-24 months   ki0047075b-MAL-ED          PERU                           >=38               0       27      84
6-24 months   ki0047075b-MAL-ED          PERU                           >=38               1        0      84
6-24 months   ki0047075b-MAL-ED          PERU                           <32                0       28      84
6-24 months   ki0047075b-MAL-ED          PERU                           <32                1        1      84
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)            0       28      84
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)            1        0      84
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               0       64      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               1        1      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                0        9      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                1        0      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            0       16      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            1        0      90
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               0       48     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               1        0     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                0       15     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                1        0     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            0       37     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            1        0     100
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38               0       33    1363
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38               1       10    1363
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                0     1059    1363
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                1       92    1363
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)            0      157    1363
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)            1       12    1363
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38               0       29     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38               1       12     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                0      221     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                1       36     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)            0       60     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)            1       17     375
6-24 months   ki1119695-PROBIT           BELARUS                        >=38               0      725   15975
6-24 months   ki1119695-PROBIT           BELARUS                        >=38               1        8   15975
6-24 months   ki1119695-PROBIT           BELARUS                        <32                0    12675   15975
6-24 months   ki1119695-PROBIT           BELARUS                        <32                1      122   15975
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)            0     2424   15975
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)            1       21   15975
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38               0      289    1018
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38               1        9    1018
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                0      458    1018
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                1       15    1018
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)            0      236    1018
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)            1       11    1018
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38               0      284    2723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38               1       21    2723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                0     1824    2723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                1       89    2723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)            0      477    2723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)            1       28    2723
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38               0       26      99
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38               1        0      99
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                0       50      99
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                1        1      99
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)            0       22      99
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)            1        0      99


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
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/9295b0fc-52da-42ee-af0d-2e1ad2b29e67/4db18d34-f94e-406c-b3aa-2ba90350a679/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9295b0fc-52da-42ee-af0d-2e1ad2b29e67/4db18d34-f94e-406c-b3aa-2ba90350a679/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9295b0fc-52da-42ee-af0d-2e1ad2b29e67/4db18d34-f94e-406c-b3aa-2ba90350a679/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9295b0fc-52da-42ee-af0d-2e1ad2b29e67/4db18d34-f94e-406c-b3aa-2ba90350a679/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.2848287    0.2144566   0.3552009
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.0808534    0.0570246   0.1046822
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1201942    0.0372484   0.2031401
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.3735077    0.1548907   0.5921247
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.1862184    0.1019604   0.2704764
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.1320613    0.0518192   0.2123034
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.0109141   -0.0006952   0.0225233
0-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.0095335    0.0052504   0.0138166
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0085890    0.0019106   0.0152673
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0302013    0.0107608   0.0496418
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0317125    0.0159128   0.0475121
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0445344    0.0187968   0.0702720
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.1186634    0.0679050   0.1694218
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0401547    0.0317636   0.0485459
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0473020    0.0174731   0.0771310
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                0.0726086    0.0407922   0.1044249
0-6 months    ki1119695-PROBIT           BELARUS       <32                  NA                0.0853596    0.0568124   0.1139068
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0776313    0.0517312   0.1035315
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.2848287    0.2144566   0.3552009
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.0808534    0.0570246   0.1046822
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1201942    0.0372484   0.2031401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.3382485    0.1172182   0.5592789
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.1629942    0.0917563   0.2342321
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.1201427    0.0496952   0.1905902
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.0109141   -0.0006952   0.0225233
6-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.0095335    0.0052504   0.0138166
6-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0085890    0.0019106   0.0152673
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0302013    0.0107608   0.0496418
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0317125    0.0159128   0.0475121
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0445344    0.0187968   0.0702720
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.1213928    0.0682906   0.1744951
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0404008    0.0319408   0.0488609
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0490759    0.0192248   0.0789271


### Parameter: E(Y)


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0836390   0.0602327   0.1070453
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0094523   0.0051727   0.0137318
0-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0343811   0.0231829   0.0455794
0-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0506794   0.0424394   0.0589194
0-6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0839589   0.0565071   0.1114108
6-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0836390   0.0602327   0.1070453
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0094523   0.0051727   0.0137318
6-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0343811   0.0231829   0.0455794
6-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0506794   0.0424394   0.0589194


### Parameter: RR


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.2838667   0.1886485   0.4271452
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.4219878   0.1974828   0.9017174
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.4985664   0.2376938   1.0457507
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.3535705   0.1516795   0.8241856
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              0.8735055   0.4040925   1.8882107
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              0.7869632   0.2094002   2.9575476
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.0500352   0.4652609   2.3697973
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.4745839   0.6208331   3.5023869
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.3383918   0.2102776   0.5445611
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.3986237   0.1860394   0.8541248
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS       <32                  >=38              1.1756131   0.8593948   1.6081853
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.0691759   0.7667741   1.4908394
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.2838667   0.1886485   0.4271452
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.4219878   0.1974828   0.9017174
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.4818770   0.2194818   1.0579711
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.3551906   0.1473683   0.8560888
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              0.8735055   0.4040925   1.8882107
6-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              0.7869632   0.2094002   2.9575476
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.0500352   0.4652609   2.3697973
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.4745839   0.6208331   3.5023869
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.3328107   0.2049443   0.5404542
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.4042738   0.1910904   0.8552878


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.2011897   -0.2767774   -0.1256020
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.2001744   -0.4146172    0.0142684
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                -0.0014618   -0.0103666    0.0074430
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0041798   -0.0126151    0.0209747
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0679840   -0.1173632   -0.0186047
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0113504   -0.0104590    0.0331597
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.2011897   -0.2767774   -0.1256020
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.1649152   -0.3811923    0.0513619
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                -0.0014618   -0.0103666    0.0074430
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0041798   -0.0126151    0.0209747
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0707134   -0.1224058   -0.0190211


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -2.4054524   -4.0052956   -1.3169673
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -1.1548522   -2.8636138   -0.2018251
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                -0.1546489   -1.5393504    0.4749783
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1215724   -0.5292244    0.4954076
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -1.3414521   -2.5582998   -0.5407353
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                 0.1351894   -0.1620324    0.3563885
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -2.4054524   -4.0052956   -1.3169673
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.9514339   -2.7177043   -0.0243134
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                -0.1546489   -1.5393504    0.4749783
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1215724   -0.5292244    0.4954076
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -1.3953095   -2.6729319   -0.5621056
