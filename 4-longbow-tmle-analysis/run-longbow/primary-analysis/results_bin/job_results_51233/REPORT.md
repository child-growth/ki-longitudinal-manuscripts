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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        fage       wasted   n_cell       n
----------  -------------------------  -----------------------------  --------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38            0       54     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38            1       11     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32             0       19     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32             1        6     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)         0       44     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)         1        6     140
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38            0       25      65
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38            1        0      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <32             0       16      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <32             1        0      65
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)         0       23      65
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)         1        1      65
Birth       ki0047075b-MAL-ED          INDIA                          >=38            0       24     128
Birth       ki0047075b-MAL-ED          INDIA                          >=38            1        2     128
Birth       ki0047075b-MAL-ED          INDIA                          <32             0       31     128
Birth       ki0047075b-MAL-ED          INDIA                          <32             1       12     128
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)         0       49     128
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)         1       10     128
Birth       ki0047075b-MAL-ED          NEPAL                          >=38            0       13      59
Birth       ki0047075b-MAL-ED          NEPAL                          >=38            1        0      59
Birth       ki0047075b-MAL-ED          NEPAL                          <32             0        7      59
Birth       ki0047075b-MAL-ED          NEPAL                          <32             1        2      59
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)         0       33      59
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)         1        4      59
Birth       ki0047075b-MAL-ED          PERU                           >=38            0       27      78
Birth       ki0047075b-MAL-ED          PERU                           >=38            1        0      78
Birth       ki0047075b-MAL-ED          PERU                           <32             0       24      78
Birth       ki0047075b-MAL-ED          PERU                           <32             1        2      78
Birth       ki0047075b-MAL-ED          PERU                           [32-38)         0       25      78
Birth       ki0047075b-MAL-ED          PERU                           [32-38)         1        0      78
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38            0       51      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38            1        1      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             0        7      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             1        1      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         0       13      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         1        2      75
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            0       20      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            1        0      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             0        6      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             1        0      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         0       17      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         1        1      44
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38            0        3     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38            1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32             0      125     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32             1       10     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)         0       27     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)         1        1     166
Birth       ki1119695-PROBIT           BELARUS                        >=38            0      502   13333
Birth       ki1119695-PROBIT           BELARUS                        >=38            1      104   13333
Birth       ki1119695-PROBIT           BELARUS                        <32             0     8407   13333
Birth       ki1119695-PROBIT           BELARUS                        <32             1     2269   13333
Birth       ki1119695-PROBIT           BELARUS                        [32-38)         0     1652   13333
Birth       ki1119695-PROBIT           BELARUS                        [32-38)         1      399   13333
Birth       ki1135781-COHORTS          GUATEMALA                      >=38            0      165     735
Birth       ki1135781-COHORTS          GUATEMALA                      >=38            1       57     735
Birth       ki1135781-COHORTS          GUATEMALA                      <32             0      251     735
Birth       ki1135781-COHORTS          GUATEMALA                      <32             1       86     735
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)         0      132     735
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)         1       44     735
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38            0      264    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38            1       39    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    <32             0     1659    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    <32             1      322    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)         0      445    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)         1       68    2797
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38            0       67     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38            1        2     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32             0       30     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32             1        0     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)         0       48     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)         1        3     150
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38            0       30      79
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38            1        0      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32             0       18      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32             1        0      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)         0       31      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)         1        0      79
6 months    ki0047075b-MAL-ED          INDIA                          >=38            0       35     161
6 months    ki0047075b-MAL-ED          INDIA                          >=38            1        1     161
6 months    ki0047075b-MAL-ED          INDIA                          <32             0       49     161
6 months    ki0047075b-MAL-ED          INDIA                          <32             1        4     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)         0       65     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)         1        7     161
6 months    ki0047075b-MAL-ED          NEPAL                          >=38            0       17      79
6 months    ki0047075b-MAL-ED          NEPAL                          >=38            1        0      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32             0       14      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32             1        1      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)         0       47      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)         1        0      79
6 months    ki0047075b-MAL-ED          PERU                           >=38            0       27      83
6 months    ki0047075b-MAL-ED          PERU                           >=38            1        0      83
6 months    ki0047075b-MAL-ED          PERU                           <32             0       28      83
6 months    ki0047075b-MAL-ED          PERU                           <32             1        0      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)         0       28      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)         1        0      83
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38            0       62      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38            1        2      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             0        8      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             1        1      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         0       15      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         1        1      89
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            0       48     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            1        0     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             0       15     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             1        0     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         0       36     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         1        1     100
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38            0       38    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38            1        6    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32             0      992    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32             1      130    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)         0      136    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)         1       29    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38            0       30     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38            1       10     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32             0      222     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32             1       42     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)         0       59     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)         1       17     380
6 months    ki1119695-PROBIT           BELARUS                        >=38            0      693   15179
6 months    ki1119695-PROBIT           BELARUS                        >=38            1        8   15179
6 months    ki1119695-PROBIT           BELARUS                        <32             0    12071   15179
6 months    ki1119695-PROBIT           BELARUS                        <32             1      103   15179
6 months    ki1119695-PROBIT           BELARUS                        [32-38)         0     2287   15179
6 months    ki1119695-PROBIT           BELARUS                        [32-38)         1       17   15179
6 months    ki1135781-COHORTS          GUATEMALA                      >=38            0      267     930
6 months    ki1135781-COHORTS          GUATEMALA                      >=38            1        9     930
6 months    ki1135781-COHORTS          GUATEMALA                      <32             0      412     930
6 months    ki1135781-COHORTS          GUATEMALA                      <32             1        9     930
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)         0      222     930
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)         1       11     930
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38            0      275    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38            1       24    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    <32             0     1731    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    <32             1       97    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)         0      462    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)         1       33    2622
6 months    ki1148112-LCNI-5           MALAWI                         >=38            0       26     106
6 months    ki1148112-LCNI-5           MALAWI                         >=38            1        0     106
6 months    ki1148112-LCNI-5           MALAWI                         <32             0       54     106
6 months    ki1148112-LCNI-5           MALAWI                         <32             1        2     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)         0       24     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)         1        0     106
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38            0       62     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38            1        7     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32             0       27     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32             1        3     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)         0       46     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)         1        6     151
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38            0       30      79
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38            1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32             0       18      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32             1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)         0       30      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)         1        1      79
24 months   ki0047075b-MAL-ED          INDIA                          >=38            0       35     161
24 months   ki0047075b-MAL-ED          INDIA                          >=38            1        1     161
24 months   ki0047075b-MAL-ED          INDIA                          <32             0       44     161
24 months   ki0047075b-MAL-ED          INDIA                          <32             1        9     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)         0       64     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)         1        8     161
24 months   ki0047075b-MAL-ED          NEPAL                          >=38            0       17      79
24 months   ki0047075b-MAL-ED          NEPAL                          >=38            1        0      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32             0       15      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32             1        0      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)         0       46      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)         1        1      79
24 months   ki0047075b-MAL-ED          PERU                           >=38            0       26      79
24 months   ki0047075b-MAL-ED          PERU                           >=38            1        0      79
24 months   ki0047075b-MAL-ED          PERU                           <32             0       26      79
24 months   ki0047075b-MAL-ED          PERU                           <32             1        1      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)         0       25      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)         1        1      79
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38            0       64      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38            1        1      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             0        8      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             1        0      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         0       16      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         1        0      89
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            0       48     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            1        0     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             0       14     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             1        1     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         0       36     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         1        1     100
24 months   ki1119695-PROBIT           BELARUS                        >=38            0      176    3848
24 months   ki1119695-PROBIT           BELARUS                        >=38            1        0    3848
24 months   ki1119695-PROBIT           BELARUS                        <32             0     3058    3848
24 months   ki1119695-PROBIT           BELARUS                        <32             1       36    3848
24 months   ki1119695-PROBIT           BELARUS                        [32-38)         0      571    3848
24 months   ki1119695-PROBIT           BELARUS                        [32-38)         1        7    3848
24 months   ki1135781-COHORTS          GUATEMALA                      >=38            0      276    1032
24 months   ki1135781-COHORTS          GUATEMALA                      >=38            1       11    1032
24 months   ki1135781-COHORTS          GUATEMALA                      <32             0      471    1032
24 months   ki1135781-COHORTS          GUATEMALA                      <32             1       24    1032
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)         0      239    1032
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)         1       11    1032
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38            0      247    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38            1       24    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    <32             0     1570    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    <32             1      100    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)         0      401    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)         1       34    2376
24 months   ki1148112-LCNI-5           MALAWI                         >=38            0       21      74
24 months   ki1148112-LCNI-5           MALAWI                         >=38            1        0      74
24 months   ki1148112-LCNI-5           MALAWI                         <32             0       35      74
24 months   ki1148112-LCNI-5           MALAWI                         <32             1        2      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)         0       16      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)         1        0      74


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/829d20ea-794e-494e-bab8-9ea273872e16/6c8d994d-5be4-4237-ab20-9299b2cd8fd1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/829d20ea-794e-494e-bab8-9ea273872e16/6c8d994d-5be4-4237-ab20-9299b2cd8fd1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/829d20ea-794e-494e-bab8-9ea273872e16/6c8d994d-5be4-4237-ab20-9299b2cd8fd1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/829d20ea-794e-494e-bab8-9ea273872e16/6c8d994d-5be4-4237-ab20-9299b2cd8fd1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.1692308   0.0777504   0.2607111
Birth       ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.2400000   0.0719854   0.4080146
Birth       ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1200000   0.0296035   0.2103965
Birth       ki1119695-PROBIT           BELARUS       >=38                 NA                0.1453898   0.1086714   0.1821082
Birth       ki1119695-PROBIT           BELARUS       <32                  NA                0.2115466   0.1442050   0.2788882
Birth       ki1119695-PROBIT           BELARUS       [32-38)              NA                0.1953870   0.1354750   0.2552990
Birth       ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.3439899   0.2562670   0.4317129
Birth       ki1135781-COHORTS          GUATEMALA     <32                  NA                0.2356532   0.1860692   0.2852372
Birth       ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.2291059   0.1316856   0.3265262
Birth       ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.1357903   0.0831306   0.1884501
Birth       ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.1636120   0.1429975   0.1842265
Birth       ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.1421930   0.0892540   0.1951320
6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.1363636   0.0538801   0.2188472
6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.1158645   0.0916826   0.1400465
6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1757576   0.1320926   0.2194226
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.3549606   0.1324065   0.5775147
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.2550833   0.1688653   0.3413012
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.0846192   0.0259317   0.1433066
6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                0.0114123   0.0003147   0.0225098
6 months    ki1119695-PROBIT           BELARUS       <32                  NA                0.0084607   0.0064263   0.0104950
6 months    ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0073785   0.0038513   0.0109056
6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0326087   0.0116437   0.0535737
6 months    ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0213777   0.0075538   0.0352015
6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0472103   0.0199632   0.0744574
6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0579196   0.0312291   0.0846100
6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0511043   0.0378054   0.0644033
6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0440917   0.0250995   0.0630839
24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0391078   0.0161214   0.0620943
24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0497631   0.0302151   0.0693111
24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0429799   0.0164140   0.0695459
24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0916583   0.0455474   0.1377693
24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0539519   0.0425387   0.0653652
24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0943187   0.0464794   0.1421580


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1642857   0.1026873   0.2258841
Birth       ki1119695-PROBIT           BELARUS       NA                   NA                0.2079052   0.1425355   0.2732749
Birth       ki1135781-COHORTS          GUATEMALA     NA                   NA                0.2544218   0.2229136   0.2859300
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1533786   0.1400217   0.1667355
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1239669   0.0988748   0.1490591
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0084327   0.0066853   0.0101801
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0311828   0.0200060   0.0423596
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0587338   0.0497323   0.0677353
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0445736   0.0319770   0.0571703
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0664983   0.0564781   0.0765186


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.4181818   0.5856109   3.4344303
Birth       ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.7090909   0.2805621   1.7921519
Birth       ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS       <32                  >=38              1.4550303   1.1707585   1.8083262
Birth       ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.3438840   1.0340070   1.7466267
Birth       ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.6850585   0.4923278   0.9532370
Birth       ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.6660251   0.4058224   1.0930629
Birth       ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   <32                  >=38              1.2048869   0.8013775   1.8115712
Birth       ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.0471514   0.6116868   1.7926267
6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.8496732   0.4582271   1.5755168
6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              1.2888889   0.7620445   2.1799704
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.7186242   0.3512084   1.4704111
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.2383903   0.0931990   0.6097697
6 months    ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS       <32                  >=38              0.7413648   0.2644592   2.0782853
6 months    ki1119695-PROBIT           BELARUS       [32-38)              >=38              0.6465386   0.1961174   2.1314386
6 months    ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.6555819   0.2633944   1.6317271
6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.4477825   0.6102174   3.4349634
6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.8823321   0.5195527   1.4984235
6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.7612570   0.4053961   1.4294960
24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.2724597   0.6278235   2.5789948
24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.0990116   0.4677216   2.5823619
24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.5886203   0.3410139   1.0160108
24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.0290250   0.5036160   2.1025792


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0049451   -0.0712182    0.0613281
Birth       ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0625154    0.0176378    0.1073930
Birth       ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0895681   -0.1699951   -0.0091412
Birth       ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0175883   -0.0342375    0.0694140
6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.0123967   -0.0901578    0.0653644
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.1733817   -0.3922781    0.0455148
6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                -0.0029796   -0.0140524    0.0080932
6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0014259   -0.0188492    0.0159974
6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0008142   -0.0248503    0.0264787
24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0054658   -0.0146888    0.0256204
24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0251600   -0.0699837    0.0196637


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0301003   -0.5237568    0.3036246
Birth       ki1119695-PROBIT           BELARUS       >=38                 NA                 0.3006918    0.1389306    0.4320645
Birth       ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.3520459   -0.7094272   -0.0693805
Birth       ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.1146724   -0.2960035    0.3952138
6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1000000   -0.9449871    0.3778879
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.9548556   -2.6514063   -0.0465722
6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                -0.3533345   -2.5888223    0.4896615
6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0457271   -0.7839164    0.3869975
6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0138627   -0.5357575    0.3667836
24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1226245   -0.4669892    0.4752601
24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.3783555   -1.2499383    0.1555930
