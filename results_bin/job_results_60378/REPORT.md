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

agecat        studyid         country                        fage       wast_rec90d   n_cell      n
------------  --------------  -----------------------------  --------  ------------  -------  -----
0-24 months   COHORTS         GUATEMALA                      >=38                 0       59    366
0-24 months   COHORTS         GUATEMALA                      >=38                 1       51    366
0-24 months   COHORTS         GUATEMALA                      <32                  0       86    366
0-24 months   COHORTS         GUATEMALA                      <32                  1       74    366
0-24 months   COHORTS         GUATEMALA                      [32-38)              0       57    366
0-24 months   COHORTS         GUATEMALA                      [32-38)              1       39    366
0-24 months   COHORTS         PHILIPPINES                    >=38                 0       83   1620
0-24 months   COHORTS         PHILIPPINES                    >=38                 1      114   1620
0-24 months   COHORTS         PHILIPPINES                    <32                  0      429   1620
0-24 months   COHORTS         PHILIPPINES                    <32                  1      703   1620
0-24 months   COHORTS         PHILIPPINES                    [32-38)              0      123   1620
0-24 months   COHORTS         PHILIPPINES                    [32-38)              1      168   1620
0-24 months   LCNI-5          MALAWI                         >=38                 0        2     14
0-24 months   LCNI-5          MALAWI                         >=38                 1        0     14
0-24 months   LCNI-5          MALAWI                         <32                  0        7     14
0-24 months   LCNI-5          MALAWI                         <32                  1        2     14
0-24 months   LCNI-5          MALAWI                         [32-38)              0        3     14
0-24 months   LCNI-5          MALAWI                         [32-38)              1        0     14
0-24 months   MAL-ED          BANGLADESH                     >=38                 0       12     77
0-24 months   MAL-ED          BANGLADESH                     >=38                 1       22     77
0-24 months   MAL-ED          BANGLADESH                     <32                  0        5     77
0-24 months   MAL-ED          BANGLADESH                     <32                  1       17     77
0-24 months   MAL-ED          BANGLADESH                     [32-38)              0       11     77
0-24 months   MAL-ED          BANGLADESH                     [32-38)              1       10     77
0-24 months   MAL-ED          BRAZIL                         >=38                 0        0      7
0-24 months   MAL-ED          BRAZIL                         >=38                 1        0      7
0-24 months   MAL-ED          BRAZIL                         <32                  0        0      7
0-24 months   MAL-ED          BRAZIL                         <32                  1        3      7
0-24 months   MAL-ED          BRAZIL                         [32-38)              0        2      7
0-24 months   MAL-ED          BRAZIL                         [32-38)              1        2      7
0-24 months   MAL-ED          INDIA                          >=38                 0        6    123
0-24 months   MAL-ED          INDIA                          >=38                 1        9    123
0-24 months   MAL-ED          INDIA                          <32                  0       23    123
0-24 months   MAL-ED          INDIA                          <32                  1       28    123
0-24 months   MAL-ED          INDIA                          [32-38)              0       17    123
0-24 months   MAL-ED          INDIA                          [32-38)              1       40    123
0-24 months   MAL-ED          NEPAL                          >=38                 0        1     32
0-24 months   MAL-ED          NEPAL                          >=38                 1        5     32
0-24 months   MAL-ED          NEPAL                          <32                  0        2     32
0-24 months   MAL-ED          NEPAL                          <32                  1        7     32
0-24 months   MAL-ED          NEPAL                          [32-38)              0        1     32
0-24 months   MAL-ED          NEPAL                          [32-38)              1       16     32
0-24 months   MAL-ED          PERU                           >=38                 0        0     10
0-24 months   MAL-ED          PERU                           >=38                 1        1     10
0-24 months   MAL-ED          PERU                           <32                  0        1     10
0-24 months   MAL-ED          PERU                           <32                  1        4     10
0-24 months   MAL-ED          PERU                           [32-38)              0        1     10
0-24 months   MAL-ED          PERU                           [32-38)              1        3     10
0-24 months   MAL-ED          SOUTH AFRICA                   >=38                 0        4     27
0-24 months   MAL-ED          SOUTH AFRICA                   >=38                 1       14     27
0-24 months   MAL-ED          SOUTH AFRICA                   <32                  0        0     27
0-24 months   MAL-ED          SOUTH AFRICA                   <32                  1        2     27
0-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              0        0     27
0-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              1        7     27
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0        2     21
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        6     21
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0        1     21
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        6     21
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0        4     21
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        2     21
0-24 months   PROBIT          BELARUS                        >=38                 0       26   4219
0-24 months   PROBIT          BELARUS                        >=38                 1      144   4219
0-24 months   PROBIT          BELARUS                        <32                  0      398   4219
0-24 months   PROBIT          BELARUS                        <32                  1     3039   4219
0-24 months   PROBIT          BELARUS                        [32-38)              0       84   4219
0-24 months   PROBIT          BELARUS                        [32-38)              1      528   4219
0-24 months   SAS-CompFeed    INDIA                          >=38                 0       23    811
0-24 months   SAS-CompFeed    INDIA                          >=38                 1       13    811
0-24 months   SAS-CompFeed    INDIA                          <32                  0      418    811
0-24 months   SAS-CompFeed    INDIA                          <32                  1      247    811
0-24 months   SAS-CompFeed    INDIA                          [32-38)              0       60    811
0-24 months   SAS-CompFeed    INDIA                          [32-38)              1       50    811
0-24 months   SAS-FoodSuppl   INDIA                          >=38                 0       25    234
0-24 months   SAS-FoodSuppl   INDIA                          >=38                 1        2    234
0-24 months   SAS-FoodSuppl   INDIA                          <32                  0      149    234
0-24 months   SAS-FoodSuppl   INDIA                          <32                  1        8    234
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)              0       47    234
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)              1        3    234
0-6 months    COHORTS         GUATEMALA                      >=38                 0       19    207
0-6 months    COHORTS         GUATEMALA                      >=38                 1       49    207
0-6 months    COHORTS         GUATEMALA                      <32                  0       18    207
0-6 months    COHORTS         GUATEMALA                      <32                  1       71    207
0-6 months    COHORTS         GUATEMALA                      [32-38)              0       14    207
0-6 months    COHORTS         GUATEMALA                      [32-38)              1       36    207
0-6 months    COHORTS         PHILIPPINES                    >=38                 0       21    715
0-6 months    COHORTS         PHILIPPINES                    >=38                 1       56    715
0-6 months    COHORTS         PHILIPPINES                    <32                  0      129    715
0-6 months    COHORTS         PHILIPPINES                    <32                  1      381    715
0-6 months    COHORTS         PHILIPPINES                    [32-38)              0       37    715
0-6 months    COHORTS         PHILIPPINES                    [32-38)              1       91    715
0-6 months    LCNI-5          MALAWI                         >=38                 0        0      1
0-6 months    LCNI-5          MALAWI                         >=38                 1        0      1
0-6 months    LCNI-5          MALAWI                         <32                  0        1      1
0-6 months    LCNI-5          MALAWI                         <32                  1        0      1
0-6 months    LCNI-5          MALAWI                         [32-38)              0        0      1
0-6 months    LCNI-5          MALAWI                         [32-38)              1        0      1
0-6 months    MAL-ED          BANGLADESH                     >=38                 0        4     37
0-6 months    MAL-ED          BANGLADESH                     >=38                 1       14     37
0-6 months    MAL-ED          BANGLADESH                     <32                  0        0     37
0-6 months    MAL-ED          BANGLADESH                     <32                  1        9     37
0-6 months    MAL-ED          BANGLADESH                     [32-38)              0        4     37
0-6 months    MAL-ED          BANGLADESH                     [32-38)              1        6     37
0-6 months    MAL-ED          BRAZIL                         >=38                 0        0      4
0-6 months    MAL-ED          BRAZIL                         >=38                 1        0      4
0-6 months    MAL-ED          BRAZIL                         <32                  0        0      4
0-6 months    MAL-ED          BRAZIL                         <32                  1        3      4
0-6 months    MAL-ED          BRAZIL                         [32-38)              0        0      4
0-6 months    MAL-ED          BRAZIL                         [32-38)              1        1      4
0-6 months    MAL-ED          INDIA                          >=38                 0        3     55
0-6 months    MAL-ED          INDIA                          >=38                 1        4     55
0-6 months    MAL-ED          INDIA                          <32                  0        6     55
0-6 months    MAL-ED          INDIA                          <32                  1       13     55
0-6 months    MAL-ED          INDIA                          [32-38)              0        6     55
0-6 months    MAL-ED          INDIA                          [32-38)              1       23     55
0-6 months    MAL-ED          NEPAL                          >=38                 0        0     12
0-6 months    MAL-ED          NEPAL                          >=38                 1        0     12
0-6 months    MAL-ED          NEPAL                          <32                  0        2     12
0-6 months    MAL-ED          NEPAL                          <32                  1        2     12
0-6 months    MAL-ED          NEPAL                          [32-38)              0        0     12
0-6 months    MAL-ED          NEPAL                          [32-38)              1        8     12
0-6 months    MAL-ED          PERU                           >=38                 0        0      3
0-6 months    MAL-ED          PERU                           >=38                 1        0      3
0-6 months    MAL-ED          PERU                           <32                  0        0      3
0-6 months    MAL-ED          PERU                           <32                  1        2      3
0-6 months    MAL-ED          PERU                           [32-38)              0        0      3
0-6 months    MAL-ED          PERU                           [32-38)              1        1      3
0-6 months    MAL-ED          SOUTH AFRICA                   >=38                 0        1     10
0-6 months    MAL-ED          SOUTH AFRICA                   >=38                 1        4     10
0-6 months    MAL-ED          SOUTH AFRICA                   <32                  0        0     10
0-6 months    MAL-ED          SOUTH AFRICA                   <32                  1        2     10
0-6 months    MAL-ED          SOUTH AFRICA                   [32-38)              0        0     10
0-6 months    MAL-ED          SOUTH AFRICA                   [32-38)              1        3     10
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0        0      5
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        3      5
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0        0      5
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        0      5
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0        1      5
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        1      5
0-6 months    PROBIT          BELARUS                        >=38                 0       21   4083
0-6 months    PROBIT          BELARUS                        >=38                 1      142   4083
0-6 months    PROBIT          BELARUS                        <32                  0      317   4083
0-6 months    PROBIT          BELARUS                        <32                  1     3007   4083
0-6 months    PROBIT          BELARUS                        [32-38)              0       70   4083
0-6 months    PROBIT          BELARUS                        [32-38)              1      526   4083
0-6 months    SAS-CompFeed    INDIA                          >=38                 0        8    340
0-6 months    SAS-CompFeed    INDIA                          >=38                 1        7    340
0-6 months    SAS-CompFeed    INDIA                          <32                  0      132    340
0-6 months    SAS-CompFeed    INDIA                          <32                  1      140    340
0-6 months    SAS-CompFeed    INDIA                          [32-38)              0       25    340
0-6 months    SAS-CompFeed    INDIA                          [32-38)              1       28    340
0-6 months    SAS-FoodSuppl   INDIA                          >=38                 0       12     78
0-6 months    SAS-FoodSuppl   INDIA                          >=38                 1        0     78
0-6 months    SAS-FoodSuppl   INDIA                          <32                  0       51     78
0-6 months    SAS-FoodSuppl   INDIA                          <32                  1        0     78
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)              0       15     78
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)              1        0     78
6-24 months   COHORTS         GUATEMALA                      >=38                 0       40    159
6-24 months   COHORTS         GUATEMALA                      >=38                 1        2    159
6-24 months   COHORTS         GUATEMALA                      <32                  0       68    159
6-24 months   COHORTS         GUATEMALA                      <32                  1        3    159
6-24 months   COHORTS         GUATEMALA                      [32-38)              0       43    159
6-24 months   COHORTS         GUATEMALA                      [32-38)              1        3    159
6-24 months   COHORTS         PHILIPPINES                    >=38                 0       62    905
6-24 months   COHORTS         PHILIPPINES                    >=38                 1       58    905
6-24 months   COHORTS         PHILIPPINES                    <32                  0      300    905
6-24 months   COHORTS         PHILIPPINES                    <32                  1      322    905
6-24 months   COHORTS         PHILIPPINES                    [32-38)              0       86    905
6-24 months   COHORTS         PHILIPPINES                    [32-38)              1       77    905
6-24 months   LCNI-5          MALAWI                         >=38                 0        2     13
6-24 months   LCNI-5          MALAWI                         >=38                 1        0     13
6-24 months   LCNI-5          MALAWI                         <32                  0        6     13
6-24 months   LCNI-5          MALAWI                         <32                  1        2     13
6-24 months   LCNI-5          MALAWI                         [32-38)              0        3     13
6-24 months   LCNI-5          MALAWI                         [32-38)              1        0     13
6-24 months   MAL-ED          BANGLADESH                     >=38                 0        8     40
6-24 months   MAL-ED          BANGLADESH                     >=38                 1        8     40
6-24 months   MAL-ED          BANGLADESH                     <32                  0        5     40
6-24 months   MAL-ED          BANGLADESH                     <32                  1        8     40
6-24 months   MAL-ED          BANGLADESH                     [32-38)              0        7     40
6-24 months   MAL-ED          BANGLADESH                     [32-38)              1        4     40
6-24 months   MAL-ED          BRAZIL                         >=38                 0        0      3
6-24 months   MAL-ED          BRAZIL                         >=38                 1        0      3
6-24 months   MAL-ED          BRAZIL                         <32                  0        0      3
6-24 months   MAL-ED          BRAZIL                         <32                  1        0      3
6-24 months   MAL-ED          BRAZIL                         [32-38)              0        2      3
6-24 months   MAL-ED          BRAZIL                         [32-38)              1        1      3
6-24 months   MAL-ED          INDIA                          >=38                 0        3     68
6-24 months   MAL-ED          INDIA                          >=38                 1        5     68
6-24 months   MAL-ED          INDIA                          <32                  0       17     68
6-24 months   MAL-ED          INDIA                          <32                  1       15     68
6-24 months   MAL-ED          INDIA                          [32-38)              0       11     68
6-24 months   MAL-ED          INDIA                          [32-38)              1       17     68
6-24 months   MAL-ED          NEPAL                          >=38                 0        1     20
6-24 months   MAL-ED          NEPAL                          >=38                 1        5     20
6-24 months   MAL-ED          NEPAL                          <32                  0        0     20
6-24 months   MAL-ED          NEPAL                          <32                  1        5     20
6-24 months   MAL-ED          NEPAL                          [32-38)              0        1     20
6-24 months   MAL-ED          NEPAL                          [32-38)              1        8     20
6-24 months   MAL-ED          PERU                           >=38                 0        0      7
6-24 months   MAL-ED          PERU                           >=38                 1        1      7
6-24 months   MAL-ED          PERU                           <32                  0        1      7
6-24 months   MAL-ED          PERU                           <32                  1        2      7
6-24 months   MAL-ED          PERU                           [32-38)              0        1      7
6-24 months   MAL-ED          PERU                           [32-38)              1        2      7
6-24 months   MAL-ED          SOUTH AFRICA                   >=38                 0        3     17
6-24 months   MAL-ED          SOUTH AFRICA                   >=38                 1       10     17
6-24 months   MAL-ED          SOUTH AFRICA                   <32                  0        0     17
6-24 months   MAL-ED          SOUTH AFRICA                   <32                  1        0     17
6-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              0        0     17
6-24 months   MAL-ED          SOUTH AFRICA                   [32-38)              1        4     17
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0        2     16
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        3     16
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0        1     16
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        6     16
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0        3     16
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        1     16
6-24 months   PROBIT          BELARUS                        >=38                 0        5    136
6-24 months   PROBIT          BELARUS                        >=38                 1        2    136
6-24 months   PROBIT          BELARUS                        <32                  0       81    136
6-24 months   PROBIT          BELARUS                        <32                  1       32    136
6-24 months   PROBIT          BELARUS                        [32-38)              0       14    136
6-24 months   PROBIT          BELARUS                        [32-38)              1        2    136
6-24 months   SAS-CompFeed    INDIA                          >=38                 0       15    471
6-24 months   SAS-CompFeed    INDIA                          >=38                 1        6    471
6-24 months   SAS-CompFeed    INDIA                          <32                  0      286    471
6-24 months   SAS-CompFeed    INDIA                          <32                  1      107    471
6-24 months   SAS-CompFeed    INDIA                          [32-38)              0       35    471
6-24 months   SAS-CompFeed    INDIA                          [32-38)              1       22    471
6-24 months   SAS-FoodSuppl   INDIA                          >=38                 0       13    156
6-24 months   SAS-FoodSuppl   INDIA                          >=38                 1        2    156
6-24 months   SAS-FoodSuppl   INDIA                          <32                  0       98    156
6-24 months   SAS-FoodSuppl   INDIA                          <32                  1        8    156
6-24 months   SAS-FoodSuppl   INDIA                          [32-38)              0       32    156
6-24 months   SAS-FoodSuppl   INDIA                          [32-38)              1        3    156


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/f5aace2d-6e98-4bb5-895d-3e0f02f0fc47/908ea93b-1c2c-4af7-aac9-9c56cc771b87/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f5aace2d-6e98-4bb5-895d-3e0f02f0fc47/908ea93b-1c2c-4af7-aac9-9c56cc771b87/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f5aace2d-6e98-4bb5-895d-3e0f02f0fc47/908ea93b-1c2c-4af7-aac9-9c56cc771b87/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f5aace2d-6e98-4bb5-895d-3e0f02f0fc47/908ea93b-1c2c-4af7-aac9-9c56cc771b87/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        GUATEMALA     >=38                 NA                0.4653661   0.3740724   0.5566599
0-24 months   COHORTS        GUATEMALA     <32                  NA                0.4549180   0.3747915   0.5350445
0-24 months   COHORTS        GUATEMALA     [32-38)              NA                0.4152413   0.3209498   0.5095327
0-24 months   COHORTS        PHILIPPINES   >=38                 NA                0.5057200   0.3921761   0.6192639
0-24 months   COHORTS        PHILIPPINES   <32                  NA                0.6345944   0.6017927   0.6673960
0-24 months   COHORTS        PHILIPPINES   [32-38)              NA                0.5632675   0.4687642   0.6577708
0-24 months   MAL-ED         BANGLADESH    >=38                 NA                0.6470588   0.4696719   0.8244457
0-24 months   MAL-ED         BANGLADESH    <32                  NA                0.7727273   0.5883808   0.9570738
0-24 months   MAL-ED         BANGLADESH    [32-38)              NA                0.4761905   0.2843868   0.6679942
0-24 months   MAL-ED         INDIA         >=38                 NA                0.6000000   0.3314652   0.8685348
0-24 months   MAL-ED         INDIA         <32                  NA                0.5490196   0.3942129   0.7038263
0-24 months   MAL-ED         INDIA         [32-38)              NA                0.7017544   0.5709473   0.8325615
0-24 months   PROBIT         BELARUS       >=38                 NA                0.8478880   0.7933919   0.9023840
0-24 months   PROBIT         BELARUS       <32                  NA                0.8842675   0.8737120   0.8948230
0-24 months   PROBIT         BELARUS       [32-38)              NA                0.8613554   0.8337326   0.8889781
0-24 months   SAS-CompFeed   INDIA         >=38                 NA                0.3787172   0.1951518   0.5622826
0-24 months   SAS-CompFeed   INDIA         <32                  NA                0.3701734   0.3315317   0.4088151
0-24 months   SAS-CompFeed   INDIA         [32-38)              NA                0.4544330   0.3566046   0.5522613
0-6 months    COHORTS        GUATEMALA     >=38                 NA                0.7342909   0.6303929   0.8381888
0-6 months    COHORTS        GUATEMALA     <32                  NA                0.7836405   0.6960841   0.8711970
0-6 months    COHORTS        GUATEMALA     [32-38)              NA                0.7263012   0.5965095   0.8560928
0-6 months    COHORTS        PHILIPPINES   >=38                 NA                0.7166349   0.5568675   0.8764023
0-6 months    COHORTS        PHILIPPINES   <32                  NA                0.7683786   0.7287582   0.8079990
0-6 months    COHORTS        PHILIPPINES   [32-38)              NA                0.7337476   0.6003204   0.8671748
0-6 months    PROBIT         BELARUS       >=38                 NA                0.8701477   0.8176105   0.9226850
0-6 months    PROBIT         BELARUS       <32                  NA                0.9046028   0.8945739   0.9146317
0-6 months    PROBIT         BELARUS       [32-38)              NA                0.8820689   0.8560461   0.9080916
0-6 months    SAS-CompFeed   INDIA         >=38                 NA                0.4666667   0.2061538   0.7271796
0-6 months    SAS-CompFeed   INDIA         <32                  NA                0.5147059   0.4543062   0.5751055
0-6 months    SAS-CompFeed   INDIA         [32-38)              NA                0.5283019   0.3989989   0.6576049
6-24 months   COHORTS        PHILIPPINES   >=38                 NA                0.4849707   0.3344420   0.6354993
6-24 months   COHORTS        PHILIPPINES   <32                  NA                0.5365809   0.4919504   0.5812114
6-24 months   COHORTS        PHILIPPINES   [32-38)              NA                0.4622669   0.3490447   0.5754892
6-24 months   SAS-CompFeed   INDIA         >=38                 NA                0.2857143   0.0723858   0.4990428
6-24 months   SAS-CompFeed   INDIA         <32                  NA                0.2722646   0.2273817   0.3171476
6-24 months   SAS-CompFeed   INDIA         [32-38)              NA                0.3859649   0.2542449   0.5176849


### Parameter: E(Y)


agecat        studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        GUATEMALA     NA                   NA                0.4480874   0.3954108   0.5007641
0-24 months   COHORTS        PHILIPPINES   NA                   NA                0.6080247   0.5830213   0.6330281
0-24 months   MAL-ED         BANGLADESH    NA                   NA                0.6363636   0.5243346   0.7483927
0-24 months   MAL-ED         INDIA         NA                   NA                0.6260163   0.5320687   0.7199638
0-24 months   PROBIT         BELARUS       NA                   NA                0.8795923   0.8698558   0.8893288
0-24 months   SAS-CompFeed   INDIA         NA                   NA                0.3822441   0.3470990   0.4173892
0-6 months    COHORTS        GUATEMALA     NA                   NA                0.7536232   0.6949302   0.8123162
0-6 months    COHORTS        PHILIPPINES   NA                   NA                0.7384615   0.7062339   0.7706892
0-6 months    PROBIT         BELARUS       NA                   NA                0.9000735   0.8908226   0.9093244
0-6 months    SAS-CompFeed   INDIA         NA                   NA                0.5147059   0.4610948   0.5683169
6-24 months   COHORTS        PHILIPPINES   NA                   NA                0.5049724   0.4705318   0.5394130
6-24 months   SAS-CompFeed   INDIA         NA                   NA                0.2866242   0.2446853   0.3285631


### Parameter: RR


agecat        studyid        country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS        GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   COHORTS        GUATEMALA     <32                  >=38              0.9775486   0.7544540   1.266613
0-24 months   COHORTS        GUATEMALA     [32-38)              >=38              0.8922894   0.6645528   1.198069
0-24 months   COHORTS        PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   COHORTS        PHILIPPINES   <32                  >=38              1.2548335   0.9966393   1.579917
0-24 months   COHORTS        PHILIPPINES   [32-38)              >=38              1.1137932   0.8415639   1.474083
0-24 months   MAL-ED         BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         BANGLADESH    <32                  >=38              1.1942149   0.8303676   1.717491
0-24 months   MAL-ED         BANGLADESH    [32-38)              >=38              0.7359307   0.4521186   1.197903
0-24 months   MAL-ED         INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         INDIA         <32                  >=38              0.9150327   0.5384477   1.554997
0-24 months   MAL-ED         INDIA         [32-38)              >=38              1.1695906   0.7206230   1.898277
0-24 months   PROBIT         BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   PROBIT         BELARUS       <32                  >=38              1.0429060   0.9769041   1.113367
0-24 months   PROBIT         BELARUS       [32-38)              >=38              1.0158835   0.9454881   1.091520
0-24 months   SAS-CompFeed   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed   INDIA         <32                  >=38              0.9774401   0.5956725   1.603883
0-24 months   SAS-CompFeed   INDIA         [32-38)              >=38              1.1999269   0.7065307   2.037880
0-6 months    COHORTS        GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    COHORTS        GUATEMALA     <32                  >=38              1.0672073   0.8926029   1.275966
0-6 months    COHORTS        GUATEMALA     [32-38)              >=38              0.9891192   0.7879626   1.241628
0-6 months    COHORTS        PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    COHORTS        PHILIPPINES   <32                  >=38              1.0722037   0.8529699   1.347786
0-6 months    COHORTS        PHILIPPINES   [32-38)              >=38              1.0238793   0.7678768   1.365230
0-6 months    PROBIT         BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    PROBIT         BELARUS       <32                  >=38              1.0395968   0.9777003   1.105412
0-6 months    PROBIT         BELARUS       [32-38)              >=38              1.0137001   0.9478263   1.084152
0-6 months    SAS-CompFeed   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed   INDIA         <32                  >=38              1.1029412   0.6234654   1.951158
0-6 months    SAS-CompFeed   INDIA         [32-38)              >=38              1.1320755   0.6153979   2.082547
6-24 months   COHORTS        PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   COHORTS        PHILIPPINES   <32                  >=38              1.1064194   0.8024113   1.525607
6-24 months   COHORTS        PHILIPPINES   [32-38)              >=38              0.9531854   0.6416061   1.416075
6-24 months   SAS-CompFeed   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed   INDIA         <32                  >=38              0.9529262   0.4435900   2.047089
6-24 months   SAS-CompFeed   INDIA         [32-38)              >=38              1.3508772   0.5944071   3.070066


### Parameter: PAR


agecat        studyid        country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS        GUATEMALA     >=38                 NA                -0.0172787   -0.0933138   0.0587564
0-24 months   COHORTS        PHILIPPINES   >=38                 NA                 0.1023047   -0.0084327   0.2130420
0-24 months   MAL-ED         BANGLADESH    >=38                 NA                -0.0106952   -0.1380673   0.1166770
0-24 months   MAL-ED         INDIA         >=38                 NA                 0.0260163   -0.2262080   0.2782405
0-24 months   PROBIT         BELARUS       >=38                 NA                 0.0317044   -0.0214731   0.0848819
0-24 months   SAS-CompFeed   INDIA         >=38                 NA                 0.0035269   -0.1758971   0.1829510
0-6 months    COHORTS        GUATEMALA     >=38                 NA                 0.0193323   -0.0641235   0.1027881
0-6 months    COHORTS        PHILIPPINES   >=38                 NA                 0.0218267   -0.1346575   0.1783109
0-6 months    PROBIT         BELARUS       >=38                 NA                 0.0299258   -0.0213406   0.0811921
0-6 months    SAS-CompFeed   INDIA         >=38                 NA                 0.0480392   -0.2064266   0.3025050
6-24 months   COHORTS        PHILIPPINES   >=38                 NA                 0.0200017   -0.1260426   0.1660460
6-24 months   SAS-CompFeed   INDIA         >=38                 NA                 0.0009099   -0.2069616   0.2087814


### Parameter: PAF


agecat        studyid        country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS        GUATEMALA     >=38                 NA                -0.0385610   -0.2231173   0.1181476
0-24 months   COHORTS        PHILIPPINES   >=38                 NA                 0.1682575   -0.0355180   0.3319327
0-24 months   MAL-ED         BANGLADESH    >=38                 NA                -0.0168067   -0.2377087   0.1646694
0-24 months   MAL-ED         INDIA         >=38                 NA                 0.0415584   -0.4592634   0.3704973
0-24 months   PROBIT         BELARUS       >=38                 NA                 0.0360444   -0.0263694   0.0946628
0-24 months   SAS-CompFeed   INDIA         >=38                 NA                 0.0092269   -0.5912456   0.3831051
0-6 months    COHORTS        GUATEMALA     >=38                 NA                 0.0256525   -0.0917334   0.1304168
0-6 months    COHORTS        PHILIPPINES   >=38                 NA                 0.0295570   -0.2072695   0.2199259
0-6 months    PROBIT         BELARUS       >=38                 NA                 0.0332481   -0.0254400   0.0885774
0-6 months    SAS-CompFeed   INDIA         >=38                 NA                 0.0933333   -0.5644012   0.4745309
6-24 months   COHORTS        PHILIPPINES   >=38                 NA                 0.0396095   -0.2979402   0.2893741
6-24 months   SAS-CompFeed   INDIA         >=38                 NA                 0.0031746   -1.0634622   0.5184497
