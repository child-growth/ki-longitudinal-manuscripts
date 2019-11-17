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




# Results Detail

## Results Plots
![](/tmp/f966fa33-67ab-43b8-9e56-95d062e19a8a/2fe12975-9ee4-48f8-aeb1-a52a8ed69fe7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f966fa33-67ab-43b8-9e56-95d062e19a8a/2fe12975-9ee4-48f8-aeb1-a52a8ed69fe7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f966fa33-67ab-43b8-9e56-95d062e19a8a/2fe12975-9ee4-48f8-aeb1-a52a8ed69fe7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f966fa33-67ab-43b8-9e56-95d062e19a8a/2fe12975-9ee4-48f8-aeb1-a52a8ed69fe7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                0.4078002   0.2440036   0.5715969
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <32                  NA                0.3711525   0.3324719   0.4098332
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [32-38)              NA                0.4738265   0.3765444   0.5711087
0-24 months   ki1119695-PROBIT          BELARUS       >=38                 NA                0.8505489   0.7941088   0.9069890
0-24 months   ki1119695-PROBIT          BELARUS       <32                  NA                0.8625932   0.8512357   0.8739508
0-24 months   ki1119695-PROBIT          BELARUS       [32-38)              NA                0.8496080   0.8218969   0.8773191
0-24 months   ki1135781-COHORTS         GUATEMALA     >=38                 NA                0.4657175   0.3725892   0.5588458
0-24 months   ki1135781-COHORTS         GUATEMALA     <32                  NA                0.4547104   0.3746754   0.5347454
0-24 months   ki1135781-COHORTS         GUATEMALA     [32-38)              NA                0.4182209   0.3229393   0.5135025
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                0.4615090   0.3426778   0.5803402
0-24 months   ki1135781-COHORTS         PHILIPPINES   <32                  NA                0.6378925   0.6027867   0.6729984
0-24 months   ki1135781-COHORTS         PHILIPPINES   [32-38)              NA                0.5833751   0.4864343   0.6803158
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                0.4666667   0.2061538   0.7271796
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <32                  NA                0.5147059   0.4543062   0.5751055
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [32-38)              NA                0.5283019   0.3989989   0.6576049
0-6 months    ki1119695-PROBIT          BELARUS       >=38                 NA                0.8662674   0.8119856   0.9205492
0-6 months    ki1119695-PROBIT          BELARUS       <32                  NA                0.8882443   0.8774609   0.8990277
0-6 months    ki1119695-PROBIT          BELARUS       [32-38)              NA                0.8734837   0.8468682   0.9000991
0-6 months    ki1135781-COHORTS         GUATEMALA     >=38                 NA                0.7369767   0.6328210   0.8411324
0-6 months    ki1135781-COHORTS         GUATEMALA     <32                  NA                0.7893833   0.7013652   0.8774014
0-6 months    ki1135781-COHORTS         GUATEMALA     [32-38)              NA                0.7133496   0.5807018   0.8459973
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=38                 NA                0.7208050   0.5583103   0.8832996
0-6 months    ki1135781-COHORTS         PHILIPPINES   <32                  NA                0.7686522   0.7298838   0.8074206
0-6 months    ki1135781-COHORTS         PHILIPPINES   [32-38)              NA                0.7547046   0.6460104   0.8633987
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                0.2857143   0.0723858   0.4990428
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <32                  NA                0.2722646   0.2273817   0.3171476
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [32-38)              NA                0.3859649   0.2542449   0.5176849
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                0.4114243   0.2877761   0.5350724
6-24 months   ki1135781-COHORTS         PHILIPPINES   <32                  NA                0.5339242   0.4867101   0.5811383
6-24 months   ki1135781-COHORTS         PHILIPPINES   [32-38)              NA                0.4503177   0.3404324   0.5602029


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
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <32                  >=38              0.9101332   0.6012148   1.377781
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [32-38)              >=38              1.1619084   0.7400772   1.824176
0-24 months   ki1119695-PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT          BELARUS       <32                  >=38              1.0141607   0.9478396   1.085122
0-24 months   ki1119695-PROBIT          BELARUS       [32-38)              >=38              0.9988938   0.9277090   1.075541
0-24 months   ki1135781-COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <32                  >=38              0.9763652   0.7511948   1.269030
0-24 months   ki1135781-COHORTS         GUATEMALA     [32-38)              >=38              0.8980142   0.6679280   1.207360
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <32                  >=38              1.3821887   1.0622435   1.798501
0-24 months   ki1135781-COHORTS         PHILIPPINES   [32-38)              >=38              1.2640600   0.9304187   1.717343
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <32                  >=38              1.1029412   0.6234654   1.951158
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [32-38)              >=38              1.1320755   0.6153979   2.082547
0-6 months    ki1119695-PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT          BELARUS       <32                  >=38              1.0253696   0.9619772   1.092939
0-6 months    ki1119695-PROBIT          BELARUS       [32-38)              >=38              1.0083303   0.9404688   1.081088
0-6 months    ki1135781-COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS         GUATEMALA     <32                  >=38              1.0711103   0.8956214   1.280985
0-6 months    ki1135781-COHORTS         GUATEMALA     [32-38)              >=38              0.9679405   0.7666475   1.222085
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS         PHILIPPINES   <32                  >=38              1.0663803   0.8465920   1.343229
0-6 months    ki1135781-COHORTS         PHILIPPINES   [32-38)              >=38              1.0470302   0.8012376   1.368224
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <32                  >=38              0.9529262   0.4435900   2.047089
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [32-38)              >=38              1.3508772   0.5944071   3.070066
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <32                  >=38              1.2977460   0.9487251   1.775166
6-24 months   ki1135781-COHORTS         PHILIPPINES   [32-38)              >=38              1.0945335   0.7432024   1.611948


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=38                 NA                -0.0106952   -0.1380673   0.1166770
0-24 months   ki0047075b-MAL-ED         INDIA         >=38                 NA                 0.0260163   -0.2262080   0.2782405
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                -0.0255561   -0.1857024   0.1345902
0-24 months   ki1119695-PROBIT          BELARUS       >=38                 NA                 0.0095499   -0.0456546   0.0647543
0-24 months   ki1135781-COHORTS         GUATEMALA     >=38                 NA                -0.0176301   -0.0950231   0.0597629
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.1465157    0.0304382   0.2625932
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0480392   -0.2064266   0.3025050
0-6 months    ki1119695-PROBIT          BELARUS       >=38                 NA                 0.0190066   -0.0340854   0.0720985
0-6 months    ki1135781-COHORTS         GUATEMALA     >=38                 NA                 0.0166465   -0.0673417   0.1006347
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.0176566   -0.1409698   0.1762830
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0009099   -0.2069616   0.2087814
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.0935481   -0.0263721   0.2134682


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=38                 NA                -0.0168067   -0.2377087   0.1646694
0-24 months   ki0047075b-MAL-ED         INDIA         >=38                 NA                 0.0415584   -0.4592634   0.3704973
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                -0.0668580   -0.5801107   0.2796795
0-24 months   ki1119695-PROBIT          BELARUS       >=38                 NA                 0.0111032   -0.0552133   0.0732520
0-24 months   ki1135781-COHORTS         GUATEMALA     >=38                 NA                -0.0393452   -0.2273785   0.1198816
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.2409700    0.0235280   0.4099917
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0933333   -0.5644012   0.4745309
0-6 months    ki1119695-PROBIT          BELARUS       >=38                 NA                 0.0214697   -0.0403866   0.0796483
0-6 months    ki1135781-COHORTS         GUATEMALA     >=38                 NA                 0.0220886   -0.0960391   0.1274849
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.0239100   -0.2163953   0.2167417
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0031746   -1.0634622   0.5184497
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.1852539   -0.0903375   0.3911873
