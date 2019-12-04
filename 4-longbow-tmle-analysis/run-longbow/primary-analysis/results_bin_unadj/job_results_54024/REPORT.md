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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        fage       wasted   n_cell       n
----------  -------------------------  -----------------------------  --------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38            0       50     128
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38            1       11     128
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32             0       16     128
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32             1        7     128
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)         0       39     128
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)         1        5     128
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38            0        5      16
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38            1        0      16
Birth       ki0047075b-MAL-ED          BRAZIL                         <32             0        1      16
Birth       ki0047075b-MAL-ED          BRAZIL                         <32             1        0      16
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)         0       10      16
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)         1        0      16
Birth       ki0047075b-MAL-ED          INDIA                          >=38            0        7      25
Birth       ki0047075b-MAL-ED          INDIA                          >=38            1        0      25
Birth       ki0047075b-MAL-ED          INDIA                          <32             0        6      25
Birth       ki0047075b-MAL-ED          INDIA                          <32             1        2      25
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)         0        7      25
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)         1        3      25
Birth       ki0047075b-MAL-ED          NEPAL                          >=38            0        2       9
Birth       ki0047075b-MAL-ED          NEPAL                          >=38            1        0       9
Birth       ki0047075b-MAL-ED          NEPAL                          <32             0        2       9
Birth       ki0047075b-MAL-ED          NEPAL                          <32             1        0       9
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)         0        4       9
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)         1        1       9
Birth       ki0047075b-MAL-ED          PERU                           >=38            0       23      67
Birth       ki0047075b-MAL-ED          PERU                           >=38            1        0      67
Birth       ki0047075b-MAL-ED          PERU                           <32             0       19      67
Birth       ki0047075b-MAL-ED          PERU                           <32             1        2      67
Birth       ki0047075b-MAL-ED          PERU                           [32-38)         0       23      67
Birth       ki0047075b-MAL-ED          PERU                           [32-38)         1        0      67
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38            0       15      30
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38            1        1      30
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             0        4      30
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             1        1      30
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         0        8      30
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         1        1      30
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            0       17      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            1        0      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             0        9      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             1        0      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         0       18      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         1        0      44
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38            0       27    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38            1        7    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32             0      830    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32             1       93    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)         0      126    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)         1       18    1101
Birth       ki1119695-PROBIT           BELARUS                        >=38            0      502   13339
Birth       ki1119695-PROBIT           BELARUS                        >=38            1      104   13339
Birth       ki1119695-PROBIT           BELARUS                        <32             0     8413   13339
Birth       ki1119695-PROBIT           BELARUS                        <32             1     2268   13339
Birth       ki1119695-PROBIT           BELARUS                        [32-38)         0     1653   13339
Birth       ki1119695-PROBIT           BELARUS                        [32-38)         1      399   13339
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
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)         0       64     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)         1        8     161
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
6 months    ki1119695-PROBIT           BELARUS                        >=38            0      693   15180
6 months    ki1119695-PROBIT           BELARUS                        >=38            1        8   15180
6 months    ki1119695-PROBIT           BELARUS                        <32             0    12072   15180
6 months    ki1119695-PROBIT           BELARUS                        <32             1      103   15180
6 months    ki1119695-PROBIT           BELARUS                        [32-38)         0     2287   15180
6 months    ki1119695-PROBIT           BELARUS                        [32-38)         1       17   15180
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
24 months   ki1119695-PROBIT           BELARUS                        >=38            0      176    3849
24 months   ki1119695-PROBIT           BELARUS                        >=38            1        0    3849
24 months   ki1119695-PROBIT           BELARUS                        <32             0     3059    3849
24 months   ki1119695-PROBIT           BELARUS                        <32             1       36    3849
24 months   ki1119695-PROBIT           BELARUS                        [32-38)         0      571    3849
24 months   ki1119695-PROBIT           BELARUS                        [32-38)         1        7    3849
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




# Results Detail

## Results Plots
![](/tmp/c2f46aac-dfb3-4662-892a-716a3adf9afd/cced37e9-f229-4b86-83c3-51897f7c4f4c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c2f46aac-dfb3-4662-892a-716a3adf9afd/cced37e9-f229-4b86-83c3-51897f7c4f4c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c2f46aac-dfb3-4662-892a-716a3adf9afd/cced37e9-f229-4b86-83c3-51897f7c4f4c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c2f46aac-dfb3-4662-892a-716a3adf9afd/cced37e9-f229-4b86-83c3-51897f7c4f4c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.1803279   0.0834694   0.2771864
Birth       ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.3043478   0.1155624   0.4931333
Birth       ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1136364   0.0194930   0.2077797
Birth       ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.2058824   0.0314915   0.3802732
Birth       ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.1007584   0.0711101   0.1304067
Birth       ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1250000   0.0790452   0.1709548
Birth       ki1119695-PROBIT           BELARUS       >=38                 NA                0.1716172   0.1048413   0.2383931
Birth       ki1119695-PROBIT           BELARUS       <32                  NA                0.2123397   0.1453153   0.2793640
Birth       ki1119695-PROBIT           BELARUS       [32-38)              NA                0.1944444   0.1346439   0.2542450
Birth       ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.2567568   0.1992533   0.3142602
Birth       ki1135781-COHORTS          GUATEMALA     <32                  NA                0.2551929   0.2086144   0.3017713
Birth       ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.2500000   0.1859841   0.3140159
Birth       ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.1287129   0.0909994   0.1664263
Birth       ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.1625442   0.1462943   0.1787940
Birth       ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.1325536   0.1032052   0.1619020
6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.1363636   0.0538801   0.2188472
6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.1158645   0.0916826   0.1400465
6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1757576   0.1320926   0.2194226
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.2500000   0.1156335   0.3843665
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.1590909   0.1149119   0.2032699
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.2236842   0.1298739   0.3174945
6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                0.0114123   0.0003141   0.0225105
6 months    ki1119695-PROBIT           BELARUS       <32                  NA                0.0084600   0.0064257   0.0104942
6 months    ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0073785   0.0038511   0.0109059
6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0326087   0.0116437   0.0535737
6 months    ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0213777   0.0075538   0.0352015
6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0472103   0.0199632   0.0744574
6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0802676   0.0494643   0.1110708
6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0530635   0.0427856   0.0633413
6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0666667   0.0446880   0.0886453
24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0383275   0.0161053   0.0605497
24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0484848   0.0295541   0.0674156
24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0440000   0.0185643   0.0694357
24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0885609   0.0547280   0.1223938
24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0598802   0.0484983   0.0712621
24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0781609   0.0529309   0.1033909


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1796875   0.1129154   0.2464596
Birth       ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1071753   0.0763487   0.1380019
Birth       ki1119695-PROBIT           BELARUS       NA                   NA                0.2077367   0.1424867   0.2729867
Birth       ki1135781-COHORTS          GUATEMALA     NA                   NA                0.2544218   0.2229136   0.2859300
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1533786   0.1400217   0.1667355
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1239669   0.0988748   0.1490591
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0084321   0.0066848   0.0101795
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0311828   0.0200060   0.0423596
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0587338   0.0497323   0.0677353
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0445736   0.0319770   0.0571703
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0664983   0.0564781   0.0765186


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.6877470   0.7429438   3.834059
Birth       ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.6301653   0.2347772   1.691426
Birth       ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.4893979   0.2320405   1.032192
Birth       ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.6071429   0.3005726   1.226401
Birth       ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS       <32                  >=38              1.2372869   1.0067980   1.520542
Birth       ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.1330128   0.9234073   1.390197
Birth       ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.9939091   0.7445121   1.326849
Birth       ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.9736842   0.6929101   1.368231
Birth       ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   <32                  >=38              1.2628432   0.9266083   1.721086
Birth       ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.0298396   0.7133041   1.486841
6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.8496732   0.4582271   1.575517
6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              1.2888889   0.7620445   2.179970
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.6363636   0.3475134   1.165304
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.8947368   0.4525056   1.769158
6 months    ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS       <32                  >=38              0.7413039   0.2644251   2.078212
6 months    ki1119695-PROBIT           BELARUS       [32-38)              >=38              0.6465386   0.1961028   2.131598
6 months    ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.6555819   0.2633944   1.631727
6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.4477825   0.6102174   3.434963
6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.6610822   0.4300976   1.016118
6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.8305556   0.5007825   1.377489
24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.2650138   0.6288106   2.544900
24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.1480000   0.5062497   2.603269
24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.6761477   0.4412922   1.035993
24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.8825670   0.5352269   1.455317


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0006404   -0.0706280   0.0693473
Birth       ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.0987071   -0.2538955   0.0564814
Birth       ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0361196    0.0019475   0.0702916
Birth       ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0023350   -0.0503134   0.0456434
Birth       ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0246657   -0.0112863   0.0606178
6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.0123967   -0.0901578   0.0653644
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0684211   -0.1939587   0.0571166
6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                -0.0029801   -0.0140535   0.0080933
6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0014259   -0.0188492   0.0159974
6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0215338   -0.0500551   0.0069875
24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0062461   -0.0131919   0.0256841
24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0220626   -0.0534307   0.0093055


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0035638   -0.4794487   0.3192462
Birth       ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.9209870   -2.8138686   0.0324284
Birth       ki1119695-PROBIT           BELARUS       >=38                 NA                 0.1738718   -0.0047452   0.3207354
Birth       ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0091776   -0.2165245   0.1628286
Birth       ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.1608161   -0.1092095   0.3651067
6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1000000   -0.9449871   0.3778879
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.3768116   -1.2718476   0.1656086
6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                -0.3534237   -2.5892294   0.4896521
6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0457271   -0.7839164   0.3869975
6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.3666334   -0.9458509   0.0401697
24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1401303   -0.4251163   0.4811820
24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.3317764   -0.8947679   0.0639337
