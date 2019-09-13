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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38             0       56     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38             1       11     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32              0       24     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32              1        3     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       45     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        6     145
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38             0       23      68
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38             1        4      68
Birth       ki0047075b-MAL-ED          BRAZIL                         <32              0       15      68
Birth       ki0047075b-MAL-ED          BRAZIL                         <32              1        1      68
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       23      68
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        2      68
Birth       ki0047075b-MAL-ED          INDIA                          >=38             0       24     131
Birth       ki0047075b-MAL-ED          INDIA                          >=38             1        3     131
Birth       ki0047075b-MAL-ED          INDIA                          <32              0       38     131
Birth       ki0047075b-MAL-ED          INDIA                          <32              1        6     131
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)          0       49     131
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)          1       11     131
Birth       ki0047075b-MAL-ED          NEPAL                          >=38             0       12      61
Birth       ki0047075b-MAL-ED          NEPAL                          >=38             1        1      61
Birth       ki0047075b-MAL-ED          NEPAL                          <32              0        9      61
Birth       ki0047075b-MAL-ED          NEPAL                          <32              1        0      61
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)          0       35      61
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)          1        4      61
Birth       ki0047075b-MAL-ED          PERU                           >=38             0       27      80
Birth       ki0047075b-MAL-ED          PERU                           >=38             1        0      80
Birth       ki0047075b-MAL-ED          PERU                           <32              0       22      80
Birth       ki0047075b-MAL-ED          PERU                           <32              1        5      80
Birth       ki0047075b-MAL-ED          PERU                           [32-38)          0       21      80
Birth       ki0047075b-MAL-ED          PERU                           [32-38)          1        5      80
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       49      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        4      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        7      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        1      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0       11      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        4      76
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       18      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        3      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0        6      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        0      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       17      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        2      46
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38             0        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38             1        1     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32              0      112     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32              1       40     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0       26     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1        5     187
Birth       ki1119695-PROBIT           BELARUS                        >=38             0      605   13390
Birth       ki1119695-PROBIT           BELARUS                        >=38             1        1   13390
Birth       ki1119695-PROBIT           BELARUS                        <32              0    10695   13390
Birth       ki1119695-PROBIT           BELARUS                        <32              1       29   13390
Birth       ki1119695-PROBIT           BELARUS                        [32-38)          0     2059   13390
Birth       ki1119695-PROBIT           BELARUS                        [32-38)          1        1   13390
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
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       44     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        7     150
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
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          0       64     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          1        8     161
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
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             0       40     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             1       29     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              0       14     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              1       16     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       28     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1       24     151
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
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          0       41     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          1       31     161
24 months   ki0047075b-MAL-ED          NEPAL                          >=38             0       12      79
24 months   ki0047075b-MAL-ED          NEPAL                          >=38             1        5      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32              0       13      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32              1        2      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          0       35      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          1       12      79
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
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       13     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1       35     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0        3     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1       12     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0        8     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1       29     100
24 months   ki1119695-PROBIT           BELARUS                        >=38             0      165    3909
24 months   ki1119695-PROBIT           BELARUS                        >=38             1       13    3909
24 months   ki1119695-PROBIT           BELARUS                        <32              0     2875    3909
24 months   ki1119695-PROBIT           BELARUS                        <32              1      268    3909
24 months   ki1119695-PROBIT           BELARUS                        [32-38)          0      537    3909
24 months   ki1119695-PROBIT           BELARUS                        [32-38)          1       51    3909
24 months   ki1135781-COHORTS          GUATEMALA                      >=38             0       65    1024
24 months   ki1135781-COHORTS          GUATEMALA                      >=38             1      220    1024
24 months   ki1135781-COHORTS          GUATEMALA                      <32              0      102    1024
24 months   ki1135781-COHORTS          GUATEMALA                      <32              1      390    1024
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          0       48    1024
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          1      199    1024
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             0       87    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             1      183    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    <32              0      641    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    <32              1     1025    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      174    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          1      261    2371
24 months   ki1148112-LCNI-5           MALAWI                         >=38             0       11      74
24 months   ki1148112-LCNI-5           MALAWI                         >=38             1       10      74
24 months   ki1148112-LCNI-5           MALAWI                         <32              0       23      74
24 months   ki1148112-LCNI-5           MALAWI                         <32              1       14      74
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/5383df52-21d7-4265-bdb2-eb6fedfab275/7c554b73-e78a-499a-8dc2-a0c339b1c25b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5383df52-21d7-4265-bdb2-eb6fedfab275/7c554b73-e78a-499a-8dc2-a0c339b1c25b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5383df52-21d7-4265-bdb2-eb6fedfab275/7c554b73-e78a-499a-8dc2-a0c339b1c25b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5383df52-21d7-4265-bdb2-eb6fedfab275/7c554b73-e78a-499a-8dc2-a0c339b1c25b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.0603572   0.0305173   0.0901970
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.0593939   0.0350196   0.0837682
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.0654540   0.0298710   0.1010371
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.0588355   0.0221010   0.0955699
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.0691154   0.0537019   0.0845289
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.0627508   0.0259866   0.0995150
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1884058   0.0958310   0.2809806
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.3333333   0.1640814   0.5025853
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.1372549   0.0424959   0.2320139
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.2777778   0.1310089   0.4245467
6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                0.2264151   0.1133913   0.3394389
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.1111111   0.0382934   0.1839289
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.2708333   0.1444836   0.3971831
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.3333333   0.0935723   0.5730944
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.2432432   0.1043030   0.3821835
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.6004140   0.5180813   0.6827468
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.2762405   0.2293615   0.3231195
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.2309835   0.1413696   0.3205974
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.4715804   0.3072846   0.6358761
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.4315869   0.3717440   0.4914297
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.3866448   0.2762160   0.4970736
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                0.0546568   0.0390924   0.0702212
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                0.0605199   0.0468454   0.0741943
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0706934   0.0471599   0.0942270
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.3822488   0.3015844   0.4629132
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.4671695   0.4100616   0.5242774
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.4368191   0.3391246   0.5345136
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.1984085   0.1392939   0.2575230
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.2002702   0.1771989   0.2233415
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.2379416   0.1742018   0.3016814
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.1923077   0.0400985   0.3445169
6 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                0.3392857   0.2146903   0.4638811
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.3750000   0.1803939   0.5696061
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.4201261   0.3096290   0.5306232
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.4702594   0.2869583   0.6535604
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.4783799   0.3441171   0.6126428
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.3185044   0.1648698   0.4721391
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.4581094   0.3253927   0.5908261
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.4410072   0.3243757   0.5576387
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.2692308   0.0976454   0.4408161
24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.2962963   0.1229596   0.4696330
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.4230769   0.2319613   0.6141926
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.0682270   0.0372579   0.0991960
24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.0858008   0.0540378   0.1175638
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0847809   0.0415042   0.1280575
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.7831850   0.7051664   0.8612035
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.7651576   0.7229885   0.8073268
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.8302114   0.7677061   0.8927168
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.6032907   0.5205617   0.6860197
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.6091748   0.5811501   0.6371994
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.6094522   0.5347793   0.6841251


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0607533   0.0444233   0.0770834
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0611413   0.0524852   0.0697974
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2000000   0.1357734   0.2642266
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1863354   0.1260019   0.2466689
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2700000   0.1825472   0.3574528
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2835709   0.2656121   0.3015297
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0611869   0.0477477   0.0746260
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4047363   0.3731561   0.4363165
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2118902   0.1962516   0.2275288
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3113208   0.2227550   0.3998865
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4569536   0.3772355   0.5366718
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4099379   0.3337307   0.4861451
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3291139   0.2248346   0.4333933
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0849322   0.0549995   0.1148649
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7900391   0.7650814   0.8149967
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6195698   0.6000239   0.6391157


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  >=38              0.9840401   0.5174012   1.8715357
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.0844446   0.5200684   2.2612798
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              1.1747233   0.6054892   2.2791073
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              1.0665472   0.4528620   2.5118531
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.7692308   0.8728158   3.5862980
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              0.7285068   0.3121888   1.7000037
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              0.8150943   0.3940268   1.6861258
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              0.4000000   0.1723694   0.9282392
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              1.2307692   0.5222084   2.9007439
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              0.8981289   0.4295810   1.8777263
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.4600833   0.3684095   0.5745689
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.3847070   0.2700508   0.5480431
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              0.9151926   0.6290761   1.3314407
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.8198917   0.5226171   1.2862618
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              1.1072708   0.8636498   1.4196131
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              1.2934065   0.9029945   1.8526141
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              1.2221607   0.9599465   1.5560001
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.1427611   0.8416168   1.5516600
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              1.0093830   0.7336091   1.3888241
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              1.1992511   0.8034287   1.7900819
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              1.7642857   0.7372819   4.2218641
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              1.9500000   0.7568292   5.0242509
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.1193291   0.7029258   1.7824040
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              1.1386580   0.7845548   1.6525833
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              1.4383141   0.8234440   2.5123109
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              1.3846186   0.8000267   2.3963810
24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              1.1005291   0.4633297   2.6140444
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              1.5714286   0.7195080   3.4320507
24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              1.2575790   0.7880395   2.0068852
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              1.2426302   0.6748976   2.2879468
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              0.9769820   0.8723650   1.0941451
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.0600452   0.9358449   1.2007286
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              1.0097533   0.8741862   1.1663438
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              1.0102131   0.8407720   1.2138018


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0003962   -0.0246053    0.0253976
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0023058   -0.0336651    0.0382768
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0115942   -0.0577647    0.0809531
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0914424   -0.2161338    0.0332490
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0008333   -0.0918639    0.0901972
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.3168431   -0.4009721   -0.2327141
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0426330   -0.1980687    0.1128027
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0065301   -0.0060977    0.0191579
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0224875   -0.0521541    0.0971291
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0134818   -0.0443216    0.0712851
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.1190131   -0.0211521    0.2591783
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0368276   -0.0453342    0.1189894
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0914334   -0.0458293    0.2286962
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0598832   -0.0848113    0.2045776
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0167053   -0.0164139    0.0498244
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0068541   -0.0666441    0.0803523
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0162791   -0.0648709    0.0974291


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0065209   -0.5033321    0.3434580
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0377132   -0.7732091    0.4777853
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0579710   -0.3608861    0.3479112
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.4907407   -1.3259527    0.0445601
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0030864   -0.4038159    0.2832519
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -1.1173331   -1.4614344   -0.8213362
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0993898   -0.5285068    0.2092558
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.1067235   -0.1185400    0.2866211
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0555608   -0.1480896    0.2230873
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0636261   -0.2528042    0.3001332
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.3822844   -0.2683064    0.6991479
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0805936   -0.1174944    0.2435684
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.2230422   -0.1962948    0.4953891
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1819527   -0.3989032    0.5216242
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.1966892   -0.2554997    0.4860148
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0086756   -0.0888661    0.0974794
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0262748   -0.1138871    0.1488000
