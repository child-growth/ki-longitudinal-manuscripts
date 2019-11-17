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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        fage       stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38             0       52     133
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38             1       11     133
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32              0       21     133
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32              1        4     133
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       40     133
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        5     133
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38             0        4      18
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38             1        2      18
Birth       ki0047075b-MAL-ED          BRAZIL                         <32              0        1      18
Birth       ki0047075b-MAL-ED          BRAZIL                         <32              1        0      18
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)          0        9      18
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        2      18
Birth       ki0047075b-MAL-ED          INDIA                          >=38             0        6      27
Birth       ki0047075b-MAL-ED          INDIA                          >=38             1        1      27
Birth       ki0047075b-MAL-ED          INDIA                          <32              0        5      27
Birth       ki0047075b-MAL-ED          INDIA                          <32              1        4      27
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)          0        9      27
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)          1        2      27
Birth       ki0047075b-MAL-ED          NEPAL                          >=38             0        2       9
Birth       ki0047075b-MAL-ED          NEPAL                          >=38             1        0       9
Birth       ki0047075b-MAL-ED          NEPAL                          <32              0        2       9
Birth       ki0047075b-MAL-ED          NEPAL                          <32              1        0       9
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)          0        5       9
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)          1        0       9
Birth       ki0047075b-MAL-ED          PERU                           >=38             0       23      69
Birth       ki0047075b-MAL-ED          PERU                           >=38             1        0      69
Birth       ki0047075b-MAL-ED          PERU                           <32              0       18      69
Birth       ki0047075b-MAL-ED          PERU                           <32              1        4      69
Birth       ki0047075b-MAL-ED          PERU                           [32-38)          0       19      69
Birth       ki0047075b-MAL-ED          PERU                           [32-38)          1        5      69
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       15      31
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        2      31
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        4      31
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        1      31
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0        7      31
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        2      31
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       15      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        4      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0        7      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        2      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       17      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        1      46
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38             0       26    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38             1       14    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32              0      756    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32              1      289    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0      119    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1       45    1249
Birth       ki1119695-PROBIT           BELARUS                        >=38             0      605   13396
Birth       ki1119695-PROBIT           BELARUS                        >=38             1        1   13396
Birth       ki1119695-PROBIT           BELARUS                        <32              0    10700   13396
Birth       ki1119695-PROBIT           BELARUS                        <32              1       29   13396
Birth       ki1119695-PROBIT           BELARUS                        [32-38)          0     2060   13396
Birth       ki1119695-PROBIT           BELARUS                        [32-38)          1        1   13396
Birth       ki1135781-COHORTS          GUATEMALA                      >=38             0      230     823
Birth       ki1135781-COHORTS          GUATEMALA                      >=38             1       15     823
Birth       ki1135781-COHORTS          GUATEMALA                      <32              0      358     823
Birth       ki1135781-COHORTS          GUATEMALA                      <32              1       22     823
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)          0      185     823
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)          1       13     823
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38             0      304    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38             1       24    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    <32              0     1954    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    <32              1      125    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      506    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)          1       31    2944
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38             0       56     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38             1       13     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32              0       20     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32              1       10     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       45     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        6     150
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32              0       18      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32              1        0      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       31      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        0      79
6 months    ki0047075b-MAL-ED          INDIA                          >=38             0       26     161
6 months    ki0047075b-MAL-ED          INDIA                          >=38             1       10     161
6 months    ki0047075b-MAL-ED          INDIA                          <32              0       41     161
6 months    ki0047075b-MAL-ED          INDIA                          <32              1       12     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          0       65     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          1        7     161
6 months    ki0047075b-MAL-ED          NEPAL                          >=38             0       16      79
6 months    ki0047075b-MAL-ED          NEPAL                          >=38             1        1      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32              0       14      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32              1        1      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)          0       45      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)          1        2      79
6 months    ki0047075b-MAL-ED          PERU                           >=38             0       27      83
6 months    ki0047075b-MAL-ED          PERU                           >=38             1        0      83
6 months    ki0047075b-MAL-ED          PERU                           <32              0       20      83
6 months    ki0047075b-MAL-ED          PERU                           <32              1        8      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)          0       17      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)          1       11      83
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       57      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        7      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        8      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        1      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0       12      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        4      89
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       35     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1       13     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       10     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        5     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       28     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        9     100
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38             0       23    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38             1       21    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32              0      815    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32              1      310    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0      117    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1       47    1333
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38             0       20     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38             1       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32              0      150     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32              1      114     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          0       47     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          1       30     380
6 months    ki1119695-PROBIT           BELARUS                        >=38             0      652   15183
6 months    ki1119695-PROBIT           BELARUS                        >=38             1       49   15183
6 months    ki1119695-PROBIT           BELARUS                        <32              0    11428   15183
6 months    ki1119695-PROBIT           BELARUS                        <32              1      748   15183
6 months    ki1119695-PROBIT           BELARUS                        [32-38)          0     2174   15183
6 months    ki1119695-PROBIT           BELARUS                        [32-38)          1      132   15183
6 months    ki1135781-COHORTS          GUATEMALA                      >=38             0      168     929
6 months    ki1135781-COHORTS          GUATEMALA                      >=38             1      107     929
6 months    ki1135781-COHORTS          GUATEMALA                      <32              0      256     929
6 months    ki1135781-COHORTS          GUATEMALA                      <32              1      165     929
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)          0      129     929
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)          1      104     929
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38             0      216    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38             1       84    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    <32              0     1456    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    <32              1      373    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      396    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)          1       99    2624
6 months    ki1148112-LCNI-5           MALAWI                         >=38             0       21     106
6 months    ki1148112-LCNI-5           MALAWI                         >=38             1        5     106
6 months    ki1148112-LCNI-5           MALAWI                         <32              0       37     106
6 months    ki1148112-LCNI-5           MALAWI                         <32              1       19     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)          0       15     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)          1        9     106
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             0       39     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             1       30     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              0       14     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              1       16     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       27     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1       25     151
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32              0       18      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32              1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       30      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        1      79
24 months   ki0047075b-MAL-ED          INDIA                          >=38             0       25     161
24 months   ki0047075b-MAL-ED          INDIA                          >=38             1       11     161
24 months   ki0047075b-MAL-ED          INDIA                          <32              0       29     161
24 months   ki0047075b-MAL-ED          INDIA                          <32              1       24     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          0       40     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          1       32     161
24 months   ki0047075b-MAL-ED          NEPAL                          >=38             0       12      79
24 months   ki0047075b-MAL-ED          NEPAL                          >=38             1        5      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32              0       12      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32              1        3      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          0       36      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          1       11      79
24 months   ki0047075b-MAL-ED          PERU                           >=38             0       19      79
24 months   ki0047075b-MAL-ED          PERU                           >=38             1        7      79
24 months   ki0047075b-MAL-ED          PERU                           <32              0       19      79
24 months   ki0047075b-MAL-ED          PERU                           <32              1        8      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)          0       15      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)          1       11      79
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       45      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1       20      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        7      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        1      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0        9      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        7      89
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       12     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1       36     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0        2     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1       13     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0        8     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1       29     100
24 months   ki1119695-PROBIT           BELARUS                        >=38             0      165    3909
24 months   ki1119695-PROBIT           BELARUS                        >=38             1       13    3909
24 months   ki1119695-PROBIT           BELARUS                        <32              0     2875    3909
24 months   ki1119695-PROBIT           BELARUS                        <32              1      268    3909
24 months   ki1119695-PROBIT           BELARUS                        [32-38)          0      537    3909
24 months   ki1119695-PROBIT           BELARUS                        [32-38)          1       51    3909
24 months   ki1135781-COHORTS          GUATEMALA                      >=38             0       61    1021
24 months   ki1135781-COHORTS          GUATEMALA                      >=38             1      224    1021
24 months   ki1135781-COHORTS          GUATEMALA                      <32              0       92    1021
24 months   ki1135781-COHORTS          GUATEMALA                      <32              1      399    1021
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          0       41    1021
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          1      204    1021
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             0       86    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             1      184    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    <32              0      632    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    <32              1     1034    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      169    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          1      266    2371
24 months   ki1148112-LCNI-5           MALAWI                         >=38             0       11      74
24 months   ki1148112-LCNI-5           MALAWI                         >=38             1       10      74
24 months   ki1148112-LCNI-5           MALAWI                         <32              0       22      74
24 months   ki1148112-LCNI-5           MALAWI                         <32              1       15      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          0       12      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          1        4      74


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
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/4889719d-7091-4890-a3be-d02c6890cdcd/861e8510-217c-43fe-984b-3e921b76834c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4889719d-7091-4890-a3be-d02c6890cdcd/861e8510-217c-43fe-984b-3e921b76834c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4889719d-7091-4890-a3be-d02c6890cdcd/861e8510-217c-43fe-984b-3e921b76834c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4889719d-7091-4890-a3be-d02c6890cdcd/861e8510-217c-43fe-984b-3e921b76834c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.3413555   0.2468262   0.4358847
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.2772130   0.2460633   0.3083627
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.2711692   0.1967541   0.3455842
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.0600022   0.0303864   0.0896180
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.0584194   0.0346442   0.0821946
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.0637946   0.0296804   0.0979088
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.0618781   0.0230884   0.1006677
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.0685658   0.0536940   0.0834375
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.0621661   0.0301341   0.0941980
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1884058   0.0958310   0.2809806
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.3333333   0.1640814   0.5025853
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.1176471   0.0289259   0.2063682
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.2777778   0.1310089   0.4245467
6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                0.2264151   0.1133913   0.3394389
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.0972222   0.0285774   0.1658671
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.2708333   0.1444836   0.3971831
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.3333333   0.0935723   0.5730944
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.2432432   0.1043030   0.3821835
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.6004140   0.5180813   0.6827468
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.2762405   0.2293615   0.3231195
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.2309835   0.1413696   0.3205974
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.5012898   0.3371055   0.6654741
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.4329588   0.3731803   0.4927374
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.3895034   0.2792387   0.4997681
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                0.0562448   0.0401586   0.0723310
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                0.0604965   0.0465696   0.0744234
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0707944   0.0476805   0.0939082
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.3667352   0.2916269   0.4418435
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.4274467   0.3688378   0.4860555
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.4287140   0.3348787   0.5225492
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.2091656   0.1488148   0.2695163
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.1996157   0.1777608   0.2214705
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.2332581   0.1661353   0.3003810
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.1923077   0.0400985   0.3445169
6 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                0.3392857   0.2146903   0.4638811
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.3750000   0.1803939   0.5696061
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.4337266   0.3228350   0.5446182
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.4664256   0.2810450   0.6518062
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.5067727   0.3719665   0.6415788
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.2916018   0.1444721   0.4387315
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.3957294   0.2617384   0.5297203
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.4228661   0.3083381   0.5373941
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.2692308   0.0976454   0.4408161
24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.2962963   0.1229596   0.4696330
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.4230769   0.2319613   0.6141926
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.0671117   0.0365488   0.0976747
24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.0858117   0.0540543   0.1175691
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0850553   0.0425537   0.1275569
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.7929698   0.7193032   0.8666364
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.7813263   0.7369716   0.8256809
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.8486898   0.7822082   0.9151715
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.6555954   0.5766392   0.7345515
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.6109303   0.5825083   0.6393523
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.6308505   0.5563921   0.7053090


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2786229   0.2475201   0.3097257
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0607533   0.0444233   0.0770834
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0611413   0.0524852   0.0697974
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1933333   0.1299237   0.2567430
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1801242   0.1205788   0.2396696
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2700000   0.1825472   0.3574528
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2835709   0.2656121   0.3015297
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0611869   0.0477477   0.0746260
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4047363   0.3731561   0.4363165
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2118902   0.1962516   0.2275288
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3113208   0.2227550   0.3998865
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4701987   0.3903257   0.5500716
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4161491   0.3397719   0.4925262
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3291139   0.2248346   0.4333933
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0849322   0.0549995   0.1148649
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8099902   0.7859147   0.8340657
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6258962   0.6064148   0.6453777


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.8120947   0.6024463   1.0946998
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.7943894   0.5675032   1.1119841
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  >=38              0.9736205   0.5137023   1.8453039
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.0632040   0.5131485   2.2028766
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              1.1080787   0.5708464   2.1509086
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              1.0046545   0.4461869   2.2621252
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.7692308   0.8728158   3.5862980
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              0.6244344   0.2538556   1.5359844
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              0.8150943   0.3940268   1.6861258
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              0.3500000   0.1449028   0.8453946
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              1.2307692   0.5222084   2.9007439
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              0.8981289   0.4295810   1.8777263
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.4600833   0.3684095   0.5745689
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.3847070   0.2700508   0.5480431
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              0.8636896   0.6051762   1.2326323
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.7770025   0.5038591   1.1982175
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              1.0755928   0.8255672   1.4013396
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              1.2586829   0.8915334   1.7770311
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              1.1655458   0.9130332   1.4878943
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.1690014   0.8681019   1.5741979
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.9543430   0.7012760   1.2987332
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              1.1151842   0.7421507   1.6757189
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              1.7642857   0.7372819   4.2218641
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              1.9500000   0.7568292   5.0242509
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.0753909   0.6764363   1.7096444
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              1.1684151   0.8196322   1.6656175
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              1.3570882   0.7379761   2.4955936
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              1.4501491   0.8220428   2.5581788
24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              1.1005291   0.4633297   2.6140444
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              1.5714286   0.7195080   3.4320507
24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              1.2786390   0.7973689   2.0503906
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              1.2673681   0.6845753   2.3463041
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              0.9853166   0.8840689   1.0981595
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.0702676   0.9479254   1.2083996
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.9318710   0.8194043   1.0597743
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.9622560   0.8131445   1.1387109


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0627326   -0.1573176    0.0318524
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0007511   -0.0240697    0.0255719
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0007368   -0.0387439    0.0372704
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0049275   -0.0636756    0.0735307
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0976536   -0.2219655    0.0266584
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0008333   -0.0918639    0.0901972
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.3168431   -0.4009721   -0.2327141
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0723425   -0.2276493    0.0829644
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0049421   -0.0086203    0.0185044
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0380011   -0.0309929    0.1069950
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0027247   -0.0561797    0.0616290
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.1190131   -0.0211521    0.2591783
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0364721   -0.0443790    0.1173232
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.1245473   -0.0077350    0.2568296
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0598832   -0.0848113    0.2045776
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0178205   -0.0155630    0.0512039
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0170204   -0.0519360    0.0859769
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0296991   -0.1072367    0.0478385


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.2251523   -0.6230222    0.0751832
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0123637   -0.4936371    0.3469461
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0120502   -0.8705744    0.4524433
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0254873   -0.4024951    0.3228674
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.5421456   -1.4008101    0.0094123
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0030864   -0.4038159    0.2832519
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -1.1173331   -1.4614344   -0.8213362
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.1686511   -0.5931852    0.1427579
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0807700   -0.1641999    0.2741935
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0938910   -0.0936193    0.2492510
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0128590   -0.3081809    0.2551126
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.3822844   -0.2683064    0.6991479
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0775674   -0.1113008    0.2343370
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.2992852   -0.1032080    0.5549332
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1819527   -0.3989032    0.5216242
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.2098199   -0.2441308    0.4981359
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0210131   -0.0679519    0.1025670
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0474505   -0.1790529    0.0694628
