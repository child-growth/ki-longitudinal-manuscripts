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

**Outcome Variable:** y_rate_wtkg

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

agecat         studyid                    country                        fage       n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  --------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38           69     151  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32            30     151  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     151  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32            18      79  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38           36     159  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          <32            53     159  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)        70     159  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38           17      78  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32            14      78  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)        47      78  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           >=38           27      84  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           <32            29      84  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)        28      84  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           64      89  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32             9      89  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           44      94  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      94  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        35      94  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38           39    1262  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32          1052    1262  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)       171    1262  y_rate_wtkg      
0-3 months     ki1119695-PROBIT           BELARUS                        >=38          681   14768  y_rate_wtkg      
0-3 months     ki1119695-PROBIT           BELARUS                        <32         11831   14768  y_rate_wtkg      
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)      2256   14768  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38          234     777  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32           341     777  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)       202     777  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38           68     148  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32            30     148  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)        50     148  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32            18      79  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38           34     157  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          <32            53     157  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)        70     157  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38           17      79  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32            15      79  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           >=38           27      83  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           <32            28      83  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)        28      83  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           63      87  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32             9      87  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15      87  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38           38    1115  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32           931    1115  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)       146    1115  y_rate_wtkg      
3-6 months     ki1119695-PROBIT           BELARUS                        >=38          594   12825  y_rate_wtkg      
3-6 months     ki1119695-PROBIT           BELARUS                        <32         10278   12825  y_rate_wtkg      
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)      1953   12825  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38          233     783  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32           349     783  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)       201     783  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38           67     147  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <32            30     147  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)        50     147  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <32            18      79  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38           34     159  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          <32            53     159  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          INDIA                          [32-38)        72     159  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38           16      78  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          <32            15      78  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          NEPAL                          [32-38)        47      78  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           >=38           26      82  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           <32            28      82  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          PERU                           [32-38)        28      82  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           62      84  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      84  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        14      84  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           47      97  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      97  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        35      97  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38           39    1135  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <32           950    1135  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)       146    1135  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38           35     309  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <32           210     309  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        64     309  y_rate_wtkg      
6-9 months     ki1119695-PROBIT           BELARUS                        >=38          563   11995  y_rate_wtkg      
6-9 months     ki1119695-PROBIT           BELARUS                        <32          9615   11995  y_rate_wtkg      
6-9 months     ki1119695-PROBIT           BELARUS                        [32-38)      1817   11995  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38          227     794  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      <32           365     794  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      [32-38)       202     794  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38           18      68  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         <32            36      68  y_rate_wtkg      
6-9 months     ki1148112-LCNI-5           MALAWI                         [32-38)        14      68  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38           68     147  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32            30     147  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)        49     147  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <32            18      79  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38           36     159  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          <32            52     159  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)        71     159  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38           16      78  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          <32            15      78  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)        47      78  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           >=38           26      80  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           <32            26      80  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          PERU                           [32-38)        28      80  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           62      84  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             7      84  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15      84  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           46      95  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      95  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        34      95  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38           40    1138  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32           950    1138  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)       148    1138  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38           34     298  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32           199     298  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        65     298  y_rate_wtkg      
9-12 months    ki1119695-PROBIT           BELARUS                        >=38          584   12242  y_rate_wtkg      
9-12 months    ki1119695-PROBIT           BELARUS                        <32          9801   12242  y_rate_wtkg      
9-12 months    ki1119695-PROBIT           BELARUS                        [32-38)      1857   12242  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38          260     899  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      <32           424     899  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       215     899  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38           12      45  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         <32            24      45  y_rate_wtkg      
9-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)         9      45  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           68     145  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <32            28     145  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        49     145  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      79  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38           36     159  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          <32            52     159  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          INDIA                          [32-38)        71     159  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      79  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          <32            15      79  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           >=38           27      79  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           <32            25      79  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          PERU                           [32-38)        27      79  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           62      84  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             6      84  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      84  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           46      97  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      97  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36      97  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38           40    1162  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <32           973    1162  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)       149    1162  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38           32     300  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32           202     300  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        66     300  y_rate_wtkg      
12-15 months   ki1119695-PROBIT           BELARUS                        >=38           43     965  y_rate_wtkg      
12-15 months   ki1119695-PROBIT           BELARUS                        <32           790     965  y_rate_wtkg      
12-15 months   ki1119695-PROBIT           BELARUS                        [32-38)       132     965  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38          252     858  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      <32           396     858  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       210     858  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         >=38            4      13  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         <32             7      13  y_rate_wtkg      
12-15 months   ki1148112-LCNI-5           MALAWI                         [32-38)         2      13  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           66     146  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <32            28     146  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     146  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38           29      77  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      77  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        30      77  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38           35     160  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          <32            53     160  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72     160  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      78  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          <32            15      78  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        46      78  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           >=38           26      80  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           <32            27      80  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          PERU                           [32-38)        27      80  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           62      85  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             7      85  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      85  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           47      98  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            14      98  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37      98  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38           38    1168  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <32           986    1168  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)       144    1168  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38           31     290  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32           198     290  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        61     290  y_rate_wtkg      
15-18 months   ki1119695-PROBIT           BELARUS                        >=38            9     262  y_rate_wtkg      
15-18 months   ki1119695-PROBIT           BELARUS                        <32           221     262  y_rate_wtkg      
15-18 months   ki1119695-PROBIT           BELARUS                        [32-38)        32     262  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38          227     773  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      <32           353     773  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       193     773  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         >=38            4      13  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         <32             7      13  y_rate_wtkg      
15-18 months   ki1148112-LCNI-5           MALAWI                         [32-38)         2      13  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           66     147  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <32            29     147  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     147  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38           29      77  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      77  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        30      77  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38           35     159  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          <32            52     159  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72     159  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      78  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          <32            15      78  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        46      78  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           >=38           26      77  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           <32            25      77  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          PERU                           [32-38)        26      77  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           63      87  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      87  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      87  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           44      94  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            14      94  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36      94  y_rate_wtkg      
18-21 months   ki1119695-PROBIT           BELARUS                        >=38            6     208  y_rate_wtkg      
18-21 months   ki1119695-PROBIT           BELARUS                        <32           178     208  y_rate_wtkg      
18-21 months   ki1119695-PROBIT           BELARUS                        [32-38)        24     208  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38          226     768  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      <32           356     768  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       186     768  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38           15      59  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         <32            30      59  y_rate_wtkg      
18-21 months   ki1148112-LCNI-5           MALAWI                         [32-38)        14      59  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           66     147  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32            29     147  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     147  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      79  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38           36     160  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          <32            52     160  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72     160  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      79  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          <32            15      79  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           >=38           26      76  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           <32            25      76  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          PERU                           [32-38)        25      76  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           65      89  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      89  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           45      96  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      96  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36      96  y_rate_wtkg      
21-24 months   ki1119695-PROBIT           BELARUS                        >=38            8     205  y_rate_wtkg      
21-24 months   ki1119695-PROBIT           BELARUS                        <32           166     205  y_rate_wtkg      
21-24 months   ki1119695-PROBIT           BELARUS                        [32-38)        31     205  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38          247     846  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      <32           396     846  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       203     846  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38           15      53  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         <32            27      53  y_rate_wtkg      
21-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)        11      53  y_rate_wtkg      


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/086c987d-1c7f-477c-8a8f-3d4eda1e0875/de775e22-198b-4a56-ab75-825b7a2d6e14/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/086c987d-1c7f-477c-8a8f-3d4eda1e0875/de775e22-198b-4a56-ab75-825b7a2d6e14/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/086c987d-1c7f-477c-8a8f-3d4eda1e0875/de775e22-198b-4a56-ab75-825b7a2d6e14/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.8559465    0.8066365   0.9052566
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.9438069    0.8894212   0.9981926
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.8881115    0.8342180   0.9420050
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                1.0212711    0.9026062   1.1399359
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                1.0411221    0.9607228   1.1215215
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                1.0731001    0.9755928   1.1706074
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.7300351    0.6704956   0.7895747
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                0.7566056    0.7091380   0.8040731
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.7669661    0.7274157   0.8065166
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.9750593    0.8670097   1.0831088
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.9081027    0.8073602   1.0088452
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.9457718    0.8806678   1.0108759
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                0.9363096    0.8531698   1.0194493
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  NA                0.9436830    0.8820652   1.0053007
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                1.0008634    0.8971896   1.1045371
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.9808637    0.9231370   1.0385903
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.9550553    0.8205106   1.0896001
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.9396671    0.8693825   1.0099517
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.8335586    0.7711901   0.8959271
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.9640264    0.8224977   1.1055551
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.8859875    0.7951107   0.9768644
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.6982465    0.6163199   0.7801731
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.7986131    0.7800235   0.8172028
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.7675496    0.7259496   0.8091496
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                0.8697397    0.8533436   0.8861358
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  NA                0.8368039    0.8259839   0.8476240
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.8284508    0.8081330   0.8487687
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.7437407    0.7031961   0.7842854
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.8429475    0.8131438   0.8727512
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.7849097    0.7344150   0.8354044
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.4663777    0.4371891   0.4955664
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.5065590    0.4582287   0.5548893
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.4462636    0.3966374   0.4958898
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.5924155    0.5075651   0.6772659
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.6128313    0.5117842   0.7138783
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.5421234    0.4710472   0.6131995
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.4523678    0.4161469   0.4885886
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                0.4095870    0.3706202   0.4485538
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.4439492    0.4147496   0.4731488
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.5222005    0.4546939   0.5897071
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.4721296    0.3904016   0.5538577
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.5067230    0.4734829   0.5399631
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                0.5299558    0.4395754   0.6203362
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  NA                0.4827529    0.4342378   0.5312679
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.5310403    0.4589866   0.6030940
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.4469201    0.4017536   0.4920865
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.4196559    0.2494437   0.5898682
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.4424206    0.3493899   0.5354512
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.4638037    0.3965433   0.5310640
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.5117662    0.3968131   0.6267194
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.4370689    0.3740125   0.5001254
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.4090555    0.3637605   0.4543504
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.4511824    0.4360713   0.4662936
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.4567700    0.4312913   0.4822486
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                0.6497786    0.6382108   0.6613464
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  NA                0.6646348    0.6565549   0.6727147
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.6660822    0.6499093   0.6822550
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.4587022    0.4257849   0.4916195
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.4474548    0.4306109   0.4642988
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.4492257    0.4216887   0.4767626
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.2317739    0.2103307   0.2532171
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.2472989    0.2033752   0.2912226
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.2377408    0.2044328   0.2710488
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.4389255    0.3663923   0.5114587
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.3366012    0.2350637   0.4381386
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.3930518    0.3304146   0.4556889
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.2461224    0.2004484   0.2917965
6-9 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                0.2281064    0.1849124   0.2713004
6-9 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.2388881    0.2154276   0.2623486
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.2810879    0.2146824   0.3474934
6-9 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.3065649    0.2176560   0.3954737
6-9 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.2551898    0.2245784   0.2858012
6-9 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                0.2529908    0.1632259   0.3427557
6-9 months     ki0047075b-MAL-ED          PERU                           <32                  NA                0.2620643    0.2209736   0.3031551
6-9 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.2684331    0.2076609   0.3292053
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.2484049    0.2076383   0.2891715
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.2801037    0.1710843   0.3891231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.2643039    0.1726743   0.3559335
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.2544541    0.1801658   0.3287424
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1734305    0.0758953   0.2709658
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.2753754    0.2126649   0.3380859
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.2023787    0.1124168   0.2923407
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.2092762    0.1932809   0.2252715
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.2134591    0.1940691   0.2328490
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.2684379    0.1597904   0.3770855
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.1749685    0.1526657   0.1972713
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.2047464    0.1253376   0.2841552
6-9 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                0.4781892    0.4671585   0.4892199
6-9 months     ki1119695-PROBIT           BELARUS                        <32                  NA                0.4726489    0.4625992   0.4826986
6-9 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.4733706    0.4543819   0.4923593
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.2235692    0.2002827   0.2468557
6-9 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.1980536    0.1795936   0.2165136
6-9 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.2285961    0.2037905   0.2534016
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.2609742    0.2071312   0.3148172
6-9 months     ki1148112-LCNI-5           MALAWI                         <32                  NA                0.3116367    0.2659614   0.3573120
6-9 months     ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.1987943    0.1081081   0.2894805
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1599203    0.1394993   0.1803414
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.1573325    0.1130202   0.2016448
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.1864632    0.1576463   0.2152802
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.3242576    0.2431497   0.4053656
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.4679806    0.3284209   0.6075403
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.2594460    0.1764200   0.3424720
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.2179930    0.1748986   0.2610875
9-12 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                0.1663447    0.1167317   0.2159577
9-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.1618419    0.1189536   0.2047303
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.1743216    0.1291988   0.2194445
9-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.1192964    0.0178393   0.2207535
9-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.2063183    0.1811077   0.2315289
9-12 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                0.2451988    0.1926177   0.2977799
9-12 months    ki0047075b-MAL-ED          PERU                           <32                  NA                0.2009246    0.1543069   0.2475423
9-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.2101390    0.1610160   0.2592620
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.1980120    0.1593030   0.2367210
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.2023962    0.0364316   0.3683609
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.2048793    0.1002975   0.3094610
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.1637320    0.1235511   0.2039130
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1307808    0.0351130   0.2264487
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1240715    0.0706726   0.1774705
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.1816073    0.1170733   0.2461412
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.1983812    0.1903785   0.2063839
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.1688641    0.1273290   0.2103992
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.2112093    0.1239253   0.2984932
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.1430264    0.1199004   0.1661523
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.2062508    0.1330219   0.2794797
9-12 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                0.3568589    0.3420026   0.3717153
9-12 months    ki1119695-PROBIT           BELARUS                        <32                  NA                0.3704954    0.3554962   0.3854946
9-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.3589598    0.3391362   0.3787835
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.1681465    0.1504520   0.1858409
9-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.1331353    0.1206374   0.1456331
9-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.1534302    0.1274609   0.1793995
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.2336709    0.2022926   0.2650493
9-12 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                0.1414750    0.0732717   0.2096783
9-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.2485001    0.1515497   0.3454505
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1412407    0.1130625   0.1694189
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.1364281    0.0752868   0.1975693
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.1560541    0.1178082   0.1943001
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.1750717    0.1089296   0.2412139
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.1641548    0.0708186   0.2574909
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.2099574    0.1472165   0.2726984
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.1952908    0.1534000   0.2371817
12-15 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.1739761    0.1436975   0.2042547
12-15 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.1785697    0.1460951   0.2110444
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.1480033    0.1078647   0.1881420
12-15 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.2074219    0.0998438   0.3150000
12-15 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.0978188    0.0516914   0.1439463
12-15 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.1378037    0.0801233   0.1954840
12-15 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.1841759    0.1320769   0.2362748
12-15 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.1110680    0.0556814   0.1664547
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.1996143    0.1473285   0.2519002
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.3423189    0.1877118   0.4969260
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.2261022    0.1250355   0.3271689
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.1852603    0.0948172   0.2757033
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.0940680   -0.0228543   0.2109903
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.0787089    0.0073627   0.1500551
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.2313315    0.1667214   0.2959416
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.1827802    0.1720510   0.1935095
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.1900926    0.1581843   0.2220010
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.1781536    0.1047399   0.2515673
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.1856645    0.1651759   0.2061531
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.1716164    0.1301637   0.2130692
12-15 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.2706100    0.0939164   0.4473037
12-15 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.2189597    0.1555237   0.2823957
12-15 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.2160751    0.0398109   0.3923394
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.1628515    0.1392807   0.1864223
12-15 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.1624332    0.1494812   0.1753852
12-15 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.1427893    0.1141912   0.1713874
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1419654    0.1186420   0.1652888
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.1395065    0.0849784   0.1940346
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.1514458    0.1101326   0.1927589
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.1941552    0.1049267   0.2833837
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.2667126    0.1534853   0.3799399
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.2807675    0.2013392   0.3601959
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.1288681    0.0985552   0.1591811
15-18 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.1637110    0.1338239   0.1935982
15-18 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.1640015    0.1326107   0.1953923
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.1492955    0.0839627   0.2146283
15-18 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.1873276    0.1194094   0.2552459
15-18 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.1631207    0.1366350   0.1896063
15-18 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.1486607    0.0721956   0.2251258
15-18 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.1177049    0.0520448   0.1833650
15-18 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.1628814    0.1153357   0.2104272
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.2105611    0.1517265   0.2693957
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.3279582    0.2333677   0.4225486
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.2505200    0.1574704   0.3435695
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.1324436    0.0793370   0.1855503
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1687617    0.0748674   0.2626560
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1486009    0.0872481   0.2099536
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.2784593    0.2475784   0.3093401
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.1779488    0.1623856   0.1935119
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.1754187    0.1453674   0.2054700
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.1479339    0.1093927   0.1864752
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.1556712    0.1304754   0.1808670
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.2178311    0.1409791   0.2946830
15-18 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.1153357   -0.0302881   0.2609594
15-18 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.2369694    0.1632000   0.3107387
15-18 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.1813903    0.1433154   0.2194653
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.1362215    0.1044217   0.1680213
15-18 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.1433414    0.1212560   0.1654269
15-18 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.1338486    0.1049859   0.1627112
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1376288    0.1060259   0.1692317
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.0999575    0.0724661   0.1274489
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.1158672    0.0650769   0.1666575
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.1902627    0.1276557   0.2528696
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.1587296    0.1061360   0.2113231
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.1671694    0.0891130   0.2452257
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.1913421    0.1588313   0.2238529
18-21 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.1847071    0.1512082   0.2182060
18-21 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.1772171    0.1479422   0.2064919
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.2012501    0.1543248   0.2481755
18-21 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.2423674    0.1676995   0.3170353
18-21 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.1750031    0.1454496   0.2045566
18-21 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.1680194    0.1078861   0.2281527
18-21 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.1939815    0.1458621   0.2421009
18-21 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.1110773    0.0241160   0.1980386
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.1606211    0.1045368   0.2167055
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.2423864    0.1680511   0.3167216
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.1937025    0.0485500   0.3388549
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.1866246    0.1338050   0.2394441
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.2016713   -0.0289476   0.4322901
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1326585    0.0576828   0.2076341
18-21 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.1535714   -0.0332356   0.3403784
18-21 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.1846864    0.0166965   0.3526762
18-21 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.2241350   -0.4900345   0.9383045
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.1848092    0.1525401   0.2170784
18-21 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.1468664    0.1278378   0.1658950
18-21 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.1642427    0.1321902   0.1962952
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.2161716    0.1537498   0.2785934
18-21 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                0.1633596    0.0691148   0.2576043
18-21 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.1188228   -0.0028771   0.2405226
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1653657    0.1337914   0.1969399
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.1407562    0.1059291   0.1755833
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.1476072    0.1191634   0.1760509
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.1532899    0.0679853   0.2385945
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.1975686    0.1075006   0.2876366
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.1120756    0.0512774   0.1728737
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.1755600    0.1440975   0.2070226
21-24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.1678236    0.1375656   0.1980817
21-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.1705054    0.1471691   0.1938418
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.2209764    0.1444043   0.2975485
21-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.1987300    0.1168670   0.2805930
21-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.1740422    0.1219699   0.2261146
21-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.2151713    0.1603749   0.2699676
21-24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.1688728    0.1145112   0.2232345
21-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.2387974    0.1205617   0.3570330
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.2193163    0.1755606   0.2630719
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.1550059    0.1141767   0.1958351
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.1494783    0.0749127   0.2240438
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.1367274    0.0510997   0.2223550
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.1242137   -0.0044355   0.2528628
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.1471260    0.0767433   0.2175087
21-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.1952015   -0.8340491   1.2244521
21-24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.1637993    0.0816360   0.2459625
21-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.1919295   -0.0155986   0.3994576
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.1650052    0.1274048   0.2026056
21-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.2117630    0.1960204   0.2275056
21-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.1749916    0.1459272   0.2040560
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.1778202    0.0270023   0.3286382
21-24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                0.0850596   -0.0089219   0.1790411
21-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.2431647    0.1074742   0.3788552


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8813181   0.8523002   0.9103361
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0519137   0.9915451   1.1122824
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7634772   0.7362560   0.7906983
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9370223   0.8885664   0.9854781
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.9607608   0.9174356   1.0040861
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9708477   0.9252425   1.0164529
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8723107   0.8244598   0.9201616
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.7907067   0.7702767   0.8111368
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.8355642   0.8249916   0.8461367
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7981686   0.7812292   0.8151080
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4666993   0.4463537   0.4870449
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.5766737   0.5303441   0.6230033
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4393676   0.4189812   0.4597541
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.5012513   0.4728207   0.5296820
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.5021551   0.4660009   0.5383093
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4433239   0.4028262   0.4838216
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4604262   0.4167857   0.5040667
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4504374   0.4371549   0.4637198
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.6658572   0.6579711   0.6737434
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4570216   0.4460350   0.4680081
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2357500   0.2194193   0.2520807
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.4014869   0.3597213   0.4432525
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2331610   0.2156968   0.2506252
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2586687   0.2316430   0.2856945
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.2618558   0.2317502   0.2919613
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2540737   0.2186999   0.2894474
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2447921   0.1997413   0.2898428
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2098831   0.1951058   0.2246604
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1982186   0.1818458   0.2145914
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.4737064   0.4646823   0.4827304
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2145767   0.2047084   0.2244451
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2735849   0.2414957   0.3056741
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1678849   0.1523357   0.1834342
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.3257006   0.2714459   0.3799553
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1769297   0.1597056   0.1941539
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1845408   0.1572083   0.2118732
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2175569   0.1905725   0.2445413
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1996036   0.1627703   0.2364369
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1362526   0.1074068   0.1650985
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1942701   0.1877716   0.2007686
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1410472   0.1219662   0.1601282
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.3666453   0.3519996   0.3812910
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1568791   0.1481574   0.1656008
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1874656   0.1429417   0.2319895
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1409754   0.1227577   0.1591931
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1992367   0.1605457   0.2379277
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1815324   0.1618745   0.2011903
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1164481   0.0872881   0.1456081
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1445225   0.1156255   0.1734195
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2148528   0.1696351   0.2600706
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1695773   0.1314588   0.2076959
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1850197   0.1777323   0.1923071
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1752090   0.1590517   0.1913663
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2213798   0.1478168   0.2949429
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1501455   0.1408055   0.1594854
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1419478   0.1236639   0.1602318
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2150113   0.1700612   0.2599614
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1565038   0.1384785   0.1745291
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1642160   0.1405776   0.1878544
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1510897   0.1203542   0.1818252
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2277508   0.1801980   0.2753036
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1426388   0.1066757   0.1786020
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1779207   0.1649792   0.1908623
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1648845   0.1491151   0.1806540
15-18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2260028   0.1619365   0.2900692
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1408629   0.1296882   0.1520377
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1368851   0.1170300   0.1567402
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1830766   0.1437984   0.2223548
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1794249   0.1616011   0.1972487
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1791615   0.1551321   0.2031909
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1523476   0.1189567   0.1857385
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1742237   0.1248586   0.2235888
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1613255   0.1220903   0.2005607
18-21 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1883406   0.0108050   0.3658762
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1635215   0.1527716   0.1742713
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1648762   0.1075820   0.2221704
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1527022   0.1351256   0.1702789
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1475154   0.1093518   0.1856790
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1658488   0.1501840   0.1815136
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1881769   0.1521138   0.2242400
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1871341   0.1519649   0.2223032
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2009804   0.1655657   0.2363951
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1320769   0.0886257   0.1755282
21-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1692786   0.0860689   0.2524882
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1854737   0.1754276   0.1955197
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1394686   0.0754909   0.2034463


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0878603    0.0139887    0.1617320
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0321650   -0.0408509    0.1051809
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0198511   -0.1244155    0.1641177
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0518290   -0.1028063    0.2064644
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0265704   -0.0495750    0.1027159
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0369310   -0.0340559    0.1079179
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0669566   -0.2146052    0.0806920
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0292874   -0.1567670    0.0981921
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0073734   -0.0964958    0.1112426
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0645538   -0.0687821    0.1978897
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0258083   -0.1722141    0.1205975
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0411965   -0.1321487    0.0497556
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.1304678   -0.0242942    0.2852298
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0524289   -0.0573981    0.1622560
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.1003666    0.0140459    0.1866874
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0693031   -0.0359977    0.1746038
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0329357   -0.0458343   -0.0200372
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0412888   -0.0640254   -0.0185523
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0992068    0.0488390    0.1495746
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0411689   -0.0237072    0.1060451
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0401813   -0.0164516    0.0968142
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0201141   -0.0779122    0.0376840
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0204157   -0.1116032    0.1524347
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0502922   -0.1613267    0.0607423
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0427807   -0.0960397    0.0104782
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0084186   -0.0550318    0.0381947
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0500709   -0.1562839    0.0561422
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0154775   -0.0906612    0.0597062
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0472029   -0.1505599    0.0561541
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0010845   -0.1156456    0.1178146
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0272641   -0.2033670    0.1488388
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0044995   -0.1079147    0.0989157
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0479626   -0.0852780    0.1812032
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0267347   -0.1191954    0.0657260
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.0421270   -0.0012674    0.0855214
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0477145   -0.0128586    0.1082877
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0148562    0.0026203    0.0270920
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0163036   -0.0030057    0.0356129
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0112474   -0.0482409    0.0257461
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0094766   -0.0523829    0.0334298
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0155250   -0.0335098    0.0645598
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0059669   -0.0336410    0.0455748
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.1023244   -0.2276640    0.0230153
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0458738   -0.1433117    0.0515642
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0180160   -0.0809013    0.0448692
6-9 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0072343   -0.0585150    0.0440464
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0254770   -0.0858233    0.1367772
6-9 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0258981   -0.0992417    0.0474455
6-9 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0090735   -0.0899989    0.1081460
6-9 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0154423   -0.0934193    0.1243039
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0316988   -0.0846934    0.1480910
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0158990   -0.0843900    0.1161881
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0810236   -0.2044449    0.0423977
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0209213   -0.0768267    0.1186692
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.0068975   -0.0773724    0.0911674
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0110803   -0.0870114    0.1091721
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0934694   -0.2040172    0.0170784
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0636915   -0.1982118    0.0708288
6-9 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0055403   -0.0178041    0.0067235
6-9 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0048186   -0.0241097    0.0144724
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0255156   -0.0553295    0.0042983
6-9 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0050268   -0.0290852    0.0391388
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         <32                  >=38               0.0506625   -0.0234234    0.1247483
6-9 months     ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.0621799   -0.1668061    0.0424463
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0025878   -0.0513938    0.0462181
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0265429   -0.0089701    0.0620559
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.1437230   -0.0150769    0.3025228
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0648116   -0.1789719    0.0493486
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0516483   -0.1171172    0.0138205
9-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0561511   -0.1186850    0.0063828
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0550252   -0.1662334    0.0561829
9-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0319967   -0.0199603    0.0839537
9-12 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0442742   -0.1156907    0.0271423
9-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0350599   -0.1075558    0.0374360
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0043843   -0.1660348    0.1748034
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0068673   -0.1046483    0.1183829
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0329512   -0.1390314    0.0731289
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0396605   -0.1058513    0.0265303
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.0167739   -0.0509512    0.0844991
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0127432   -0.0933999    0.0679135
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0681829   -0.1588156    0.0224497
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0049585   -0.1193793    0.1094623
9-12 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0136365   -0.0011633    0.0284362
9-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0021009   -0.0168134    0.0210151
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0350112   -0.0567403   -0.0132821
9-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0147163   -0.0461572    0.0167246
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0921959   -0.1672711   -0.0171207
9-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.0148292   -0.0870727    0.1167310
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0048126   -0.0727413    0.0631161
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0148134   -0.0330625    0.0626894
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0109170   -0.1260503    0.1042164
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0348857   -0.0569676    0.1267390
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0213147   -0.0731499    0.0305205
12-15 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0167211   -0.0701846    0.0367424
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0594186   -0.0560557    0.1748929
12-15 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0501845   -0.1122703    0.0119014
12-15 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0463722   -0.0314261    0.1241705
12-15 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0267356   -0.1065416    0.0530704
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1427046   -0.0205044    0.3059135
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0264879   -0.0873027    0.1402784
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0911922   -0.2390632    0.0566787
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.1065514   -0.2240475    0.0109447
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.0485513   -0.1180300    0.0209274
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0412389   -0.1004163    0.0179385
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.0075109   -0.0687766    0.0837985
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0065371   -0.0908104    0.0777361
12-15 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0516503   -0.2227763    0.1194757
12-15 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0545349   -0.2815430    0.1724732
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0004183   -0.0273863    0.0265496
12-15 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0200622   -0.0571775    0.0170531
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0024589   -0.0618427    0.0569249
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0094803   -0.0379454    0.0569060
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0725574   -0.0720168    0.2171316
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0866123   -0.0376729    0.2108976
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0348429   -0.0077479    0.0774337
15-18 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0351334   -0.0085954    0.0788621
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0380321   -0.0558813    0.1319456
15-18 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0138252   -0.0566299    0.0842802
15-18 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0309558   -0.1321191    0.0702075
15-18 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0142208   -0.0760095    0.1044510
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1173971    0.0060020    0.2287922
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0399589   -0.0701308    0.1500485
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0363181   -0.0712431    0.1438793
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0161572   -0.0652106    0.0975250
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.1005105   -0.1342349   -0.0667861
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.1030406   -0.1492199   -0.0568612
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.0077373   -0.0384115    0.0538860
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0698971   -0.0162783    0.1560725
15-18 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1119695-PROBIT           BELARUS                        <32                  >=38               0.1216337   -0.0391855    0.2824529
15-18 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0660546   -0.0807243    0.2128335
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0071200   -0.0315927    0.0458326
15-18 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0023729   -0.0452853    0.0405394
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0376713   -0.0804783    0.0051356
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0217616   -0.0821037    0.0385805
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0315331   -0.1136085    0.0505422
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0230933   -0.1238055    0.0776189
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0066350   -0.0540763    0.0408062
18-21 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0141250   -0.0588728    0.0306228
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0411173   -0.0475562    0.1297908
18-21 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0262470   -0.0825987    0.0301047
18-21 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0259621   -0.0506501    0.1025744
18-21 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0569421   -0.1628603    0.0489762
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0817652   -0.0113540    0.1748844
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0330814   -0.1225293    0.1886920
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0150467   -0.2219705    0.2520639
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0539661   -0.1461946    0.0382625
18-21 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0311150   -0.2188128    0.2810427
18-21 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0705636   -0.6608541    0.8019813
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0379429   -0.0754657   -0.0004201
18-21 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0205665   -0.0661544    0.0250213
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0528120   -0.1675981    0.0619740
18-21 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.0973488   -0.2359721    0.0412745
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0246094   -0.0725565    0.0233376
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0177585   -0.0610083    0.0254913
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0442787   -0.0798865    0.1684439
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0412144   -0.1469035    0.0644748
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0077364   -0.0515644    0.0360915
21-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0050546   -0.0442572    0.0341480
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0222464   -0.1345922    0.0900994
21-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0469342   -0.1393016    0.0454332
21-24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0462984   -0.1270950    0.0344981
21-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0236261   -0.1042981    0.1515502
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0643104   -0.1241567   -0.0044640
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0698380   -0.1562936    0.0166177
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0125137   -0.1670246    0.1419972
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0103986   -0.0998207    0.1206179
21-24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0314022   -1.0647365    1.0019321
21-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0032720   -1.0442012    1.0376573
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0467579    0.0060881    0.0874276
21-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0099864   -0.0375126    0.0574855
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0927606   -0.2717443    0.0862231
21-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.0653445   -0.1374369    0.2681259


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0253716   -0.0110833    0.0618264
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0306427   -0.0547883    0.1160737
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0334420   -0.0185040    0.0853880
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0380370   -0.1332994    0.0572253
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0244513   -0.0462151    0.0951177
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0100160   -0.0349074    0.0148755
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0387521   -0.0134815    0.0909858
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.0924602    0.0073460    0.1775745
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0341755   -0.0463825   -0.0219685
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0544279    0.0167593    0.0920965
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0003216   -0.0227465    0.0233896
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0157418   -0.0801151    0.0486315
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0130001   -0.0474727    0.0214725
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0209491   -0.0798449    0.0379466
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0278007   -0.1020336    0.0464322
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0035962   -0.0305328    0.0233404
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0033775   -0.0487029    0.0419480
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.0413819   -0.0018346    0.0845985
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0160787    0.0041831    0.0279743
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0016807   -0.0316627    0.0283013
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0039761   -0.0148727    0.0228248
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0374387   -0.0941357    0.0192584
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0129615   -0.0557218    0.0297988
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0224192   -0.0827517    0.0379134
6-9 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0088650   -0.0660749    0.0838048
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0056688   -0.0157768    0.0271144
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0096621   -0.0577494    0.0384253
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.0075044   -0.0751062    0.0901149
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0702194   -0.1766007    0.0361620
6-9 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0044829   -0.0156882    0.0067225
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0089925   -0.0313262    0.0133412
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0126107   -0.0382256    0.0634469
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0079646   -0.0086005    0.0245297
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0014430   -0.0674363    0.0703223
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0410633   -0.0824005    0.0002740
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0102191   -0.0342023    0.0546406
9-12 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0276419   -0.0700414    0.0147576
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0015917   -0.0237692    0.0269525
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0274794   -0.0590439    0.0040851
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.0126628   -0.0526738    0.0779995
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0701621   -0.1567309    0.0164067
9-12 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0097864   -0.0047886    0.0243613
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0112673   -0.0278911    0.0053564
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0462053   -0.0956205    0.0032098
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0002653   -0.0221945    0.0216639
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0241650   -0.0282158    0.0765458
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0137584   -0.0514121    0.0238952
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0315552   -0.0753094    0.0121990
12-15 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0067189   -0.0418154    0.0552531
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0152385   -0.0120165    0.0424935
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0156829   -0.0964575    0.0650917
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0463118   -0.1107815    0.0181579
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0029446   -0.0751058    0.0692166
12-15 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0492302   -0.2163743    0.1179139
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0127061   -0.0348288    0.0094166
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0000176   -0.0195496    0.0195144
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0208561   -0.0510207    0.0927328
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0276356   -0.0018773    0.0571485
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0149205   -0.0407858    0.0706268
15-18 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0024290   -0.0631327    0.0679908
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0171897   -0.0087535    0.0431328
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0101952   -0.0287831    0.0491735
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1005385   -0.1329877   -0.0680893
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                 0.0169506   -0.0232995    0.0572007
15-18 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.1106671   -0.0434069    0.2647411
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0046415   -0.0252063    0.0344892
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0007437   -0.0265992    0.0251118
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0071861   -0.0585162    0.0441441
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0119172   -0.0435932    0.0197588
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0220886   -0.0650513    0.0208740
18-21 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0156718   -0.0669918    0.0356482
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0136026   -0.0184425    0.0456476
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0252991   -0.0714652    0.0208670
18-21 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0347692   -0.2153586    0.2848970
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0212878   -0.0515408    0.0089653
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0512954   -0.1238792    0.0212885
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0126634   -0.0350725    0.0097456
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0057745   -0.0685312    0.0569823
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0097112   -0.0380029    0.0185805
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0327995   -0.1044697    0.0388707
21-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0280372   -0.0815839    0.0255095
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0183358   -0.0376287    0.0009570
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0046504   -0.0761746    0.0668738
21-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0259229   -1.0176647    0.9658188
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0204685   -0.0149555    0.0558925
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0383516   -0.1683493    0.0916461
