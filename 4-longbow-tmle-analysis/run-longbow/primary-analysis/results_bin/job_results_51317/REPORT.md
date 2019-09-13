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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 0       12     76
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       22     76
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  0        5     76
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  1       16     76
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0       11     76
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1       10     76
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 0        0      6
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      6
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  0        0      6
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  1        2      6
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              0        2      6
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        2      6
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 0        6    122
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 1        9    122
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  0       24    122
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  1       27    122
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              0       17    122
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              1       39    122
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0        4     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1       13     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        0     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        2     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0        0     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        7     26
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0        2     17
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        6     17
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0        1     17
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        3     17
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0        3     17
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        2     17
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
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 0        4     36
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       14     36
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  0        0     36
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  1        8     36
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0        4     36
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1        6     36
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 0        0      3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  0        0      3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  1        2      3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              0        0      3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        1      3
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 0        3     54
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 1        4     54
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  0        6     54
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  1       13     54
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              0        6     54
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              1       22     54
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0        1      9
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1        3      9
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        0      9
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        2      9
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0        0      9
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        3      9
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
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  0       18     68
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  1       14     68
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
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0        2     12
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        3     12
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0        1     12
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        3     12
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0        2     12
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        1     12
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
![](/tmp/bda4f55d-ea97-401f-96ca-3b593657d5f4/01eaf896-b5f2-4ed3-afc4-dca930e1ba8d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bda4f55d-ea97-401f-96ca-3b593657d5f4/01eaf896-b5f2-4ed3-afc4-dca930e1ba8d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bda4f55d-ea97-401f-96ca-3b593657d5f4/01eaf896-b5f2-4ed3-afc4-dca930e1ba8d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bda4f55d-ea97-401f-96ca-3b593657d5f4/01eaf896-b5f2-4ed3-afc4-dca930e1ba8d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=38                 NA                0.6470588   0.4719757   0.8221420
0-24 months   ki0047075b-MAL-ED         BANGLADESH    <32                  NA                0.7619048   0.5675039   0.9563056
0-24 months   ki0047075b-MAL-ED         BANGLADESH    [32-38)              NA                0.4761905   0.2868777   0.6655032
0-24 months   ki0047075b-MAL-ED         INDIA         >=38                 NA                0.6000000   0.3336484   0.8663516
0-24 months   ki0047075b-MAL-ED         INDIA         <32                  NA                0.5294118   0.3739682   0.6848553
0-24 months   ki0047075b-MAL-ED         INDIA         [32-38)              NA                0.6964286   0.5644321   0.8284250
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                0.3995279   0.2134348   0.5856210
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <32                  NA                0.3719313   0.3328890   0.4109736
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [32-38)              NA                0.4509047   0.3469086   0.5549009
0-24 months   ki1119695-PROBIT          BELARUS       >=38                 NA                0.8552823   0.7991715   0.9113931
0-24 months   ki1119695-PROBIT          BELARUS       <32                  NA                0.8625215   0.8511657   0.8738774
0-24 months   ki1119695-PROBIT          BELARUS       [32-38)              NA                0.8508959   0.8231116   0.8786802
0-24 months   ki1135781-COHORTS         GUATEMALA     >=38                 NA                0.4719731   0.3780911   0.5658551
0-24 months   ki1135781-COHORTS         GUATEMALA     <32                  NA                0.4525713   0.3719138   0.5332288
0-24 months   ki1135781-COHORTS         GUATEMALA     [32-38)              NA                0.4230087   0.3274547   0.5185626
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                0.4942559   0.3834251   0.6050867
0-24 months   ki1135781-COHORTS         PHILIPPINES   <32                  NA                0.6327873   0.5979632   0.6676115
0-24 months   ki1135781-COHORTS         PHILIPPINES   [32-38)              NA                0.5780595   0.4869687   0.6691504
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                0.4666667   0.2061538   0.7271796
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <32                  NA                0.5147059   0.4543062   0.5751055
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [32-38)              NA                0.5283019   0.3989989   0.6576049
0-6 months    ki1119695-PROBIT          BELARUS       >=38                 NA                0.8660906   0.8124921   0.9196892
0-6 months    ki1119695-PROBIT          BELARUS       <32                  NA                0.8882068   0.8774241   0.8989895
0-6 months    ki1119695-PROBIT          BELARUS       [32-38)              NA                0.8719887   0.8454097   0.8985678
0-6 months    ki1135781-COHORTS         GUATEMALA     >=38                 NA                0.7436773   0.6415332   0.8458215
0-6 months    ki1135781-COHORTS         GUATEMALA     <32                  NA                0.7808988   0.6901142   0.8716834
0-6 months    ki1135781-COHORTS         GUATEMALA     [32-38)              NA                0.7276374   0.5995135   0.8557613
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=38                 NA                0.6753336   0.5148839   0.8357833
0-6 months    ki1135781-COHORTS         PHILIPPINES   <32                  NA                0.7717021   0.7322841   0.8111202
0-6 months    ki1135781-COHORTS         PHILIPPINES   [32-38)              NA                0.7590809   0.6232341   0.8949277
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                0.2857143   0.0723858   0.4990428
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <32                  NA                0.2722646   0.2273817   0.3171476
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [32-38)              NA                0.3859649   0.2542449   0.5176849
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                0.4077533   0.2771255   0.5383812
6-24 months   ki1135781-COHORTS         PHILIPPINES   <32                  NA                0.5309985   0.4846190   0.5773779
6-24 months   ki1135781-COHORTS         PHILIPPINES   [32-38)              NA                0.4647820   0.3529039   0.5766601


### Parameter: E(Y)


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    NA                   NA                0.6315789   0.5193816   0.7437763
0-24 months   ki0047075b-MAL-ED         INDIA         NA                   NA                0.6147541   0.5199078   0.7096004
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
0-24 months   ki0047075b-MAL-ED         BANGLADESH    <32                  >=38              1.1774892   0.8118096   1.707889
0-24 months   ki0047075b-MAL-ED         BANGLADESH    [32-38)              >=38              0.7359307   0.4549883   1.190347
0-24 months   ki0047075b-MAL-ED         INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         INDIA         <32                  >=38              0.8823529   0.5176350   1.504046
0-24 months   ki0047075b-MAL-ED         INDIA         [32-38)              >=38              1.1607143   0.7166205   1.880016
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <32                  >=38              0.9309271   0.5777685   1.499952
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [32-38)              >=38              1.1285939   0.6715202   1.896777
0-24 months   ki1119695-PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT          BELARUS       <32                  >=38              1.0084641   0.9432213   1.078220
0-24 months   ki1119695-PROBIT          BELARUS       [32-38)              >=38              0.9948714   0.9246012   1.070482
0-24 months   ki1135781-COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <32                  >=38              0.9588922   0.7372815   1.247114
0-24 months   ki1135781-COHORTS         GUATEMALA     [32-38)              >=38              0.8962559   0.6676446   1.203147
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <32                  >=38              1.2802829   1.0163748   1.612716
0-24 months   ki1135781-COHORTS         PHILIPPINES   [32-38)              >=38              1.1695552   0.8891816   1.538335
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <32                  >=38              1.1029412   0.6234654   1.951158
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [32-38)              >=38              1.1320755   0.6153979   2.082547
0-6 months    ki1119695-PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT          BELARUS       <32                  >=38              1.0255356   0.9628647   1.092286
0-6 months    ki1119695-PROBIT          BELARUS       [32-38)              >=38              1.0068100   0.9396956   1.078718
0-6 months    ki1135781-COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS         GUATEMALA     <32                  >=38              1.0500505   0.8774281   1.256634
0-6 months    ki1135781-COHORTS         GUATEMALA     [32-38)              >=38              0.9784316   0.7830517   1.222561
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS         PHILIPPINES   <32                  >=38              1.1426978   0.8963160   1.456806
0-6 months    ki1135781-COHORTS         PHILIPPINES   [32-38)              >=38              1.1240088   0.8348669   1.513290
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <32                  >=38              0.9529262   0.4435900   2.047089
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [32-38)              >=38              1.3508772   0.5944071   3.070066
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <32                  >=38              1.3022541   0.9340003   1.815701
6-24 months   ki1135781-COHORTS         PHILIPPINES   [32-38)              >=38              1.1398607   0.7631252   1.702581


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=38                 NA                -0.0154799   -0.1412234   0.1102637
0-24 months   ki0047075b-MAL-ED         INDIA         >=38                 NA                 0.0147541   -0.2355840   0.2650922
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                -0.0172837   -0.1994105   0.1648430
0-24 months   ki1119695-PROBIT          BELARUS       >=38                 NA                 0.0048164   -0.0500620   0.0596948
0-24 months   ki1135781-COHORTS         GUATEMALA     >=38                 NA                -0.0238857   -0.1020344   0.0542630
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.1137688    0.0056112   0.2219264
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0480392   -0.2064266   0.3025050
0-6 months    ki1119695-PROBIT          BELARUS       >=38                 NA                 0.0191833   -0.0332393   0.0716059
0-6 months    ki1135781-COHORTS         GUATEMALA     >=38                 NA                 0.0099458   -0.0722910   0.0921827
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.0631280   -0.0937526   0.2200085
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0009099   -0.2069616   0.2087814
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.0972190   -0.0297285   0.2241666


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=38                 NA                -0.0245098   -0.2439004   0.1561862
0-24 months   ki0047075b-MAL-ED         INDIA         >=38                 NA                 0.0240000   -0.4812659   0.3569176
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                -0.0452165   -0.6487645   0.3373963
0-24 months   ki1119695-PROBIT          BELARUS       >=38                 NA                 0.0055999   -0.0602983   0.0674024
0-24 months   ki1135781-COHORTS         GUATEMALA     >=38                 NA                -0.0533058   -0.2431748   0.1075646
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.1871122   -0.0118720   0.3469662
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0933333   -0.5644012   0.4745309
0-6 months    ki1119695-PROBIT          BELARUS       >=38                 NA                 0.0216694   -0.0393831   0.0791357
0-6 months    ki1135781-COHORTS         GUATEMALA     >=38                 NA                 0.0131974   -0.1022189   0.1165281
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.0854858   -0.1537439   0.2751111
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0031746   -1.0634622   0.5184497
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.1925235   -0.1023834   0.4085376
