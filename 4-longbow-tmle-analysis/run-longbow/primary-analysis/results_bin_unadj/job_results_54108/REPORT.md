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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        fage       wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  --------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 0       12     77
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       22     77
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  0        5     77
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  1       17     77
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0       11     77
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1       10     77
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 0        0      7
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      7
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  0        0      7
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  1        3      7
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              0        2      7
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        2      7
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 0        6    123
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 1        9    123
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  0       23    123
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  1       28    123
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              0       17    123
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              1       40    123
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 0        1     32
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 1        5     32
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  0        2     32
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  1        7     32
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              0        1     32
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              1       16     32
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 0        0     10
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 1        1     10
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  0        1     10
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  1        4     10
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              0        1     10
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              1        3     10
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0        4     27
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1       14     27
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        0     27
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        2     27
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0        0     27
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        7     27
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0        2     21
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        6     21
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0        1     21
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        6     21
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0        4     21
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        2     21
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 0       23    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 1       13    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  0      418    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  1      247    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0       60    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       50    811
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0       25    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1        2    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0      149    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1        8    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       47    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1        3    234
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 0       25   4253
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 1      141   4253
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  0      476   4253
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  1     2984   4253
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              0       94   4253
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              1      533   4253
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 0       59    366
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 1       51    366
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  0       86    366
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  1       74    366
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              0       57    366
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              1       39    366
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 0       83   1620
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 1      114   1620
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  0      429   1620
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  1      703   1620
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              0      123   1620
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              1      168   1620
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 0        2     14
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 1        0     14
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  0        7     14
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  1        2     14
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              0        3     14
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              1        0     14
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 0        4     37
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       14     37
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  0        0     37
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  1        9     37
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0        4     37
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1        6     37
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 0        0      4
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      4
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  0        0      4
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  1        3      4
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              0        0      4
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        1      4
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 0        3     55
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 1        4     55
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  0        6     55
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  1       13     55
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              0        6     55
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              1       23     55
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 0        0     12
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 1        0     12
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                  0        2     12
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                  1        2     12
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              0        0     12
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              1        8     12
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 0        0      3
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 1        0      3
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  0        0      3
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  1        2      3
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              0        0      3
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              1        1      3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0        1     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1        4     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        0     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        2     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0        0     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        3     10
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        3      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0        1      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        1      5
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 0        8    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 1        7    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  0      132    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  1      140    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0       25    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       28    340
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0       12     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0       51     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       15     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1        0     78
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 0       21   4088
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 1      138   4088
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  0      372   4088
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  1     2954   4088
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              0       76   4088
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              1      527   4088
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 0       19    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 1       49    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  0       18    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  1       71    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              0       14    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              1       36    207
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 0       21    715
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 1       56    715
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  0      129    715
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  1      381    715
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              0       37    715
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              1       91    715
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                 0        0      1
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                 1        0      1
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                  0        1      1
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                  1        0      1
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              0        0      1
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              1        0      1
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 0        8     40
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 1        8     40
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  0        5     40
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  1        8     40
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0        7     40
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1        4     40
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 0        0      3
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      3
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  0        0      3
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  1        0      3
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              0        2      3
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        1      3
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 0        3     68
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 1        5     68
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  0       17     68
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  1       15     68
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              0       11     68
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              1       17     68
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 0        1     20
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 1        5     20
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  0        0     20
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  1        5     20
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              0        1     20
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              1        8     20
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                 0        0      7
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                 1        1      7
6-24 months   ki0047075b-MAL-ED          PERU                           <32                  0        1      7
6-24 months   ki0047075b-MAL-ED          PERU                           <32                  1        2      7
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              0        1      7
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              1        2      7
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0        3     17
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1       10     17
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        0     17
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        0     17
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0        0     17
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        4     17
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0        2     16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        3     16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0        1     16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        6     16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0        3     16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        1     16
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 0       15    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 1        6    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  0      286    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  1      107    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0       35    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       22    471
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0       13    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1        2    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0       98    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1        8    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       32    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1        3    156
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 0        4    165
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 1        3    165
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  0      104    165
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  1       30    165
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              0       18    165
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              1        6    165
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 0       40    159
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 1        2    159
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  0       68    159
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  1        3    159
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              0       43    159
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              1        3    159
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 0       62    905
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 1       58    905
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  0      300    905
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  1      322    905
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              0       86    905
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              1       77    905
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 0        2     13
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 1        0     13
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  0        6     13
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  1        2     13
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              0        3     13
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              1        0     13


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/4a48f65f-8891-442e-98e3-660850960725/da90a99f-d5e8-4be4-a1b6-31e244cd54cd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4a48f65f-8891-442e-98e3-660850960725/da90a99f-d5e8-4be4-a1b6-31e244cd54cd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4a48f65f-8891-442e-98e3-660850960725/da90a99f-d5e8-4be4-a1b6-31e244cd54cd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4a48f65f-8891-442e-98e3-660850960725/da90a99f-d5e8-4be4-a1b6-31e244cd54cd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=38                 NA                0.6470588   0.4696719   0.8244457
0-24 months   ki0047075b-MAL-ED         BANGLADESH    <32                  NA                0.7727273   0.5883808   0.9570738
0-24 months   ki0047075b-MAL-ED         BANGLADESH    [32-38)              NA                0.4761905   0.2843868   0.6679942
0-24 months   ki0047075b-MAL-ED         INDIA         >=38                 NA                0.6000000   0.3314652   0.8685348
0-24 months   ki0047075b-MAL-ED         INDIA         <32                  NA                0.5490196   0.3942129   0.7038263
0-24 months   ki0047075b-MAL-ED         INDIA         [32-38)              NA                0.7017544   0.5709473   0.8325615
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                0.3611111   0.1927671   0.5294551
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <32                  NA                0.3714286   0.3327469   0.4101103
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [32-38)              NA                0.4545455   0.3586882   0.5504027
0-24 months   ki1119695-PROBIT          BELARUS       >=38                 NA                0.8493976   0.7938288   0.9049664
0-24 months   ki1119695-PROBIT          BELARUS       <32                  NA                0.8624277   0.8510686   0.8737869
0-24 months   ki1119695-PROBIT          BELARUS       [32-38)              NA                0.8500797   0.8222429   0.8779166
0-24 months   ki1135781-COHORTS         GUATEMALA     >=38                 NA                0.4636364   0.3687770   0.5584957
0-24 months   ki1135781-COHORTS         GUATEMALA     <32                  NA                0.4625000   0.3812953   0.5437047
0-24 months   ki1135781-COHORTS         GUATEMALA     [32-38)              NA                0.4062500   0.3055426   0.5069574
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                0.5786802   0.5085776   0.6487828
0-24 months   ki1135781-COHORTS         PHILIPPINES   <32                  NA                0.6210247   0.5908047   0.6512448
0-24 months   ki1135781-COHORTS         PHILIPPINES   [32-38)              NA                0.5773196   0.5199854   0.6346537
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                0.4666667   0.2061538   0.7271796
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <32                  NA                0.5147059   0.4543062   0.5751055
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [32-38)              NA                0.5283019   0.3989989   0.6576049
0-6 months    ki1119695-PROBIT          BELARUS       >=38                 NA                0.8679245   0.8147833   0.9210657
0-6 months    ki1119695-PROBIT          BELARUS       <32                  NA                0.8881539   0.8773665   0.8989414
0-6 months    ki1119695-PROBIT          BELARUS       [32-38)              NA                0.8739635   0.8472013   0.9007257
0-6 months    ki1135781-COHORTS         GUATEMALA     >=38                 NA                0.7205882   0.6131598   0.8280167
0-6 months    ki1135781-COHORTS         GUATEMALA     <32                  NA                0.7977528   0.7136930   0.8818126
0-6 months    ki1135781-COHORTS         GUATEMALA     [32-38)              NA                0.7200000   0.5980967   0.8419033
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=38                 NA                0.7272727   0.6287266   0.8258189
0-6 months    ki1135781-COHORTS         PHILIPPINES   <32                  NA                0.7470588   0.7093834   0.7847342
0-6 months    ki1135781-COHORTS         PHILIPPINES   [32-38)              NA                0.7109375   0.6314136   0.7904614
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                0.2857143   0.0723858   0.4990428
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <32                  NA                0.2722646   0.2273817   0.3171476
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [32-38)              NA                0.3859649   0.2542449   0.5176849
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                0.4833333   0.3891595   0.5775072
6-24 months   ki1135781-COHORTS         PHILIPPINES   <32                  NA                0.5176849   0.4756795   0.5596903
6-24 months   ki1135781-COHORTS         PHILIPPINES   [32-38)              NA                0.4723926   0.3949587   0.5498266


### Parameter: E(Y)


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    NA                   NA                0.6363636   0.5243346   0.7483927
0-24 months   ki0047075b-MAL-ED         INDIA         NA                   NA                0.6260163   0.5320687   0.7199638
0-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.3822441   0.3470990   0.4173892
0-24 months   ki1119695-PROBIT          BELARUS       NA                   NA                0.8600988   0.8497563   0.8704412
0-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.4480874   0.3954108   0.5007641
0-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.6080247   0.5830213   0.6330281
0-6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.5147059   0.4610948   0.5683169
0-6 months    ki1119695-PROBIT          BELARUS       NA                   NA                0.8852740   0.8754291   0.8951189
0-6 months    ki1135781-COHORTS         GUATEMALA     NA                   NA                0.7536232   0.6949302   0.8123162
0-6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.7384615   0.7062339   0.7706892
6-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.2866242   0.2446853   0.3285631
6-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.5049724   0.4705318   0.5394130


### Parameter: RR


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH    <32                  >=38              1.1942149   0.8303676   1.717491
0-24 months   ki0047075b-MAL-ED         BANGLADESH    [32-38)              >=38              0.7359307   0.4521186   1.197903
0-24 months   ki0047075b-MAL-ED         INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         INDIA         <32                  >=38              0.9150327   0.5384477   1.554997
0-24 months   ki0047075b-MAL-ED         INDIA         [32-38)              >=38              1.1695906   0.7206230   1.898277
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <32                  >=38              1.0285714   0.6379637   1.658338
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [32-38)              >=38              1.2587413   0.7546320   2.099606
0-24 months   ki1119695-PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT          BELARUS       <32                  >=38              1.0153405   0.9497942   1.085410
0-24 months   ki1119695-PROBIT          BELARUS       [32-38)              >=38              1.0008031   0.9301994   1.076766
0-24 months   ki1135781-COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <32                  >=38              0.9975490   0.7617595   1.306323
0-24 months   ki1135781-COHORTS         GUATEMALA     [32-38)              >=38              0.8762255   0.6352953   1.208526
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <32                  >=38              1.0731743   0.9418273   1.222839
0-24 months   ki1135781-COHORTS         PHILIPPINES   [32-38)              >=38              0.9976488   0.8529894   1.166841
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <32                  >=38              1.1029412   0.6234654   1.951158
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [32-38)              >=38              1.1320755   0.6153979   2.082547
0-6 months    ki1119695-PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT          BELARUS       <32                  >=38              1.0233078   0.9613846   1.089219
0-6 months    ki1119695-PROBIT          BELARUS       [32-38)              >=38              1.0069580   0.9403299   1.078307
0-6 months    ki1135781-COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS         GUATEMALA     <32                  >=38              1.1070855   0.9223488   1.328823
0-6 months    ki1135781-COHORTS         GUATEMALA     [32-38)              >=38              0.9991837   0.7973916   1.252042
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS         PHILIPPINES   <32                  >=38              1.0272059   0.8889263   1.186996
0-6 months    ki1135781-COHORTS         PHILIPPINES   [32-38)              >=38              0.9775391   0.8200225   1.165313
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <32                  >=38              0.9529262   0.4435900   2.047089
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [32-38)              >=38              1.3508772   0.5944071   3.070066
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <32                  >=38              1.0710722   0.8672718   1.322764
6-24 months   ki1135781-COHORTS         PHILIPPINES   [32-38)              >=38              0.9773641   0.7576601   1.260777


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=38                 NA                -0.0106952   -0.1380673   0.1166770
0-24 months   ki0047075b-MAL-ED         INDIA         >=38                 NA                 0.0260163   -0.2262080   0.2782405
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0211330   -0.1433720   0.1856381
0-24 months   ki1119695-PROBIT          BELARUS       >=38                 NA                 0.0107012   -0.0436471   0.0650495
0-24 months   ki1135781-COHORTS         GUATEMALA     >=38                 NA                -0.0155489   -0.0953032   0.0642054
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.0293445   -0.0365766   0.0952656
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0480392   -0.2064266   0.3025050
0-6 months    ki1119695-PROBIT          BELARUS       >=38                 NA                 0.0173494   -0.0346235   0.0693223
0-6 months    ki1135781-COHORTS         GUATEMALA     >=38                 NA                 0.0330350   -0.0530076   0.1190775
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.0111888   -0.0818684   0.1042461
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0009099   -0.2069616   0.2087814
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.0216390   -0.0661150   0.1093931


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=38                 NA                -0.0168067   -0.2377087   0.1646694
0-24 months   ki0047075b-MAL-ED         INDIA         >=38                 NA                 0.0415584   -0.4592634   0.3704973
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0552867   -0.4899315   0.4009905
0-24 months   ki1119695-PROBIT          BELARUS       >=38                 NA                 0.0124418   -0.0528161   0.0736547
0-24 months   ki1135781-COHORTS         GUATEMALA     >=38                 NA                -0.0347007   -0.2290491   0.1289156
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.0482620   -0.0665554   0.1507190
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0933333   -0.5644012   0.4745309
0-6 months    ki1119695-PROBIT          BELARUS       >=38                 NA                 0.0195978   -0.0409101   0.0765885
0-6 months    ki1135781-COHORTS         GUATEMALA     >=38                 NA                 0.0438348   -0.0777541   0.1517065
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.0151515   -0.1192843   0.1334404
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0031746   -1.0634622   0.5184497
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.0428519   -0.1477224   0.2017822
