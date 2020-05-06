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

agecat      studyid         country                        fage       stunted   n_cell       n  outcome_variable 
----------  --------------  -----------------------------  --------  --------  -------  ------  -----------------
Birth       COHORTS         GUATEMALA                      >=38             0      230     823  stunted          
Birth       COHORTS         GUATEMALA                      >=38             1       15     823  stunted          
Birth       COHORTS         GUATEMALA                      <32              0      358     823  stunted          
Birth       COHORTS         GUATEMALA                      <32              1       22     823  stunted          
Birth       COHORTS         GUATEMALA                      [32-38)          0      185     823  stunted          
Birth       COHORTS         GUATEMALA                      [32-38)          1       13     823  stunted          
Birth       COHORTS         PHILIPPINES                    >=38             0      304    2944  stunted          
Birth       COHORTS         PHILIPPINES                    >=38             1       24    2944  stunted          
Birth       COHORTS         PHILIPPINES                    <32              0     1954    2944  stunted          
Birth       COHORTS         PHILIPPINES                    <32              1      125    2944  stunted          
Birth       COHORTS         PHILIPPINES                    [32-38)          0      506    2944  stunted          
Birth       COHORTS         PHILIPPINES                    [32-38)          1       31    2944  stunted          
Birth       MAL-ED          BANGLADESH                     >=38             0       52     133  stunted          
Birth       MAL-ED          BANGLADESH                     >=38             1       11     133  stunted          
Birth       MAL-ED          BANGLADESH                     <32              0       21     133  stunted          
Birth       MAL-ED          BANGLADESH                     <32              1        4     133  stunted          
Birth       MAL-ED          BANGLADESH                     [32-38)          0       40     133  stunted          
Birth       MAL-ED          BANGLADESH                     [32-38)          1        5     133  stunted          
Birth       MAL-ED          BRAZIL                         >=38             0        4      18  stunted          
Birth       MAL-ED          BRAZIL                         >=38             1        2      18  stunted          
Birth       MAL-ED          BRAZIL                         <32              0        1      18  stunted          
Birth       MAL-ED          BRAZIL                         <32              1        0      18  stunted          
Birth       MAL-ED          BRAZIL                         [32-38)          0        9      18  stunted          
Birth       MAL-ED          BRAZIL                         [32-38)          1        2      18  stunted          
Birth       MAL-ED          INDIA                          >=38             0        6      27  stunted          
Birth       MAL-ED          INDIA                          >=38             1        1      27  stunted          
Birth       MAL-ED          INDIA                          <32              0        5      27  stunted          
Birth       MAL-ED          INDIA                          <32              1        4      27  stunted          
Birth       MAL-ED          INDIA                          [32-38)          0        9      27  stunted          
Birth       MAL-ED          INDIA                          [32-38)          1        2      27  stunted          
Birth       MAL-ED          NEPAL                          >=38             0        2       9  stunted          
Birth       MAL-ED          NEPAL                          >=38             1        0       9  stunted          
Birth       MAL-ED          NEPAL                          <32              0        2       9  stunted          
Birth       MAL-ED          NEPAL                          <32              1        0       9  stunted          
Birth       MAL-ED          NEPAL                          [32-38)          0        5       9  stunted          
Birth       MAL-ED          NEPAL                          [32-38)          1        0       9  stunted          
Birth       MAL-ED          PERU                           >=38             0       23      69  stunted          
Birth       MAL-ED          PERU                           >=38             1        0      69  stunted          
Birth       MAL-ED          PERU                           <32              0       18      69  stunted          
Birth       MAL-ED          PERU                           <32              1        4      69  stunted          
Birth       MAL-ED          PERU                           [32-38)          0       19      69  stunted          
Birth       MAL-ED          PERU                           [32-38)          1        5      69  stunted          
Birth       MAL-ED          SOUTH AFRICA                   >=38             0       15      31  stunted          
Birth       MAL-ED          SOUTH AFRICA                   >=38             1        2      31  stunted          
Birth       MAL-ED          SOUTH AFRICA                   <32              0        4      31  stunted          
Birth       MAL-ED          SOUTH AFRICA                   <32              1        1      31  stunted          
Birth       MAL-ED          SOUTH AFRICA                   [32-38)          0        7      31  stunted          
Birth       MAL-ED          SOUTH AFRICA                   [32-38)          1        2      31  stunted          
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       15      46  stunted          
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        4      46  stunted          
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0        7      46  stunted          
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        2      46  stunted          
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       17      46  stunted          
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        1      46  stunted          
Birth       PROBIT          BELARUS                        >=38             0      605   13399  stunted          
Birth       PROBIT          BELARUS                        >=38             1        1   13399  stunted          
Birth       PROBIT          BELARUS                        <32              0    10703   13399  stunted          
Birth       PROBIT          BELARUS                        <32              1       29   13399  stunted          
Birth       PROBIT          BELARUS                        [32-38)          0     2057   13399  stunted          
Birth       PROBIT          BELARUS                        [32-38)          1        4   13399  stunted          
Birth       SAS-CompFeed    INDIA                          >=38             0       26    1249  stunted          
Birth       SAS-CompFeed    INDIA                          >=38             1       14    1249  stunted          
Birth       SAS-CompFeed    INDIA                          <32              0      756    1249  stunted          
Birth       SAS-CompFeed    INDIA                          <32              1      289    1249  stunted          
Birth       SAS-CompFeed    INDIA                          [32-38)          0      119    1249  stunted          
Birth       SAS-CompFeed    INDIA                          [32-38)          1       45    1249  stunted          
6 months    COHORTS         GUATEMALA                      >=38             0      168     929  stunted          
6 months    COHORTS         GUATEMALA                      >=38             1      107     929  stunted          
6 months    COHORTS         GUATEMALA                      <32              0      256     929  stunted          
6 months    COHORTS         GUATEMALA                      <32              1      165     929  stunted          
6 months    COHORTS         GUATEMALA                      [32-38)          0      129     929  stunted          
6 months    COHORTS         GUATEMALA                      [32-38)          1      104     929  stunted          
6 months    COHORTS         PHILIPPINES                    >=38             0      216    2624  stunted          
6 months    COHORTS         PHILIPPINES                    >=38             1       84    2624  stunted          
6 months    COHORTS         PHILIPPINES                    <32              0     1456    2624  stunted          
6 months    COHORTS         PHILIPPINES                    <32              1      373    2624  stunted          
6 months    COHORTS         PHILIPPINES                    [32-38)          0      396    2624  stunted          
6 months    COHORTS         PHILIPPINES                    [32-38)          1       99    2624  stunted          
6 months    LCNI-5          MALAWI                         >=38             0       21     106  stunted          
6 months    LCNI-5          MALAWI                         >=38             1        5     106  stunted          
6 months    LCNI-5          MALAWI                         <32              0       37     106  stunted          
6 months    LCNI-5          MALAWI                         <32              1       19     106  stunted          
6 months    LCNI-5          MALAWI                         [32-38)          0       15     106  stunted          
6 months    LCNI-5          MALAWI                         [32-38)          1        9     106  stunted          
6 months    MAL-ED          BANGLADESH                     >=38             0       56     150  stunted          
6 months    MAL-ED          BANGLADESH                     >=38             1       13     150  stunted          
6 months    MAL-ED          BANGLADESH                     <32              0       20     150  stunted          
6 months    MAL-ED          BANGLADESH                     <32              1       10     150  stunted          
6 months    MAL-ED          BANGLADESH                     [32-38)          0       45     150  stunted          
6 months    MAL-ED          BANGLADESH                     [32-38)          1        6     150  stunted          
6 months    MAL-ED          BRAZIL                         >=38             0       30      79  stunted          
6 months    MAL-ED          BRAZIL                         >=38             1        0      79  stunted          
6 months    MAL-ED          BRAZIL                         <32              0       18      79  stunted          
6 months    MAL-ED          BRAZIL                         <32              1        0      79  stunted          
6 months    MAL-ED          BRAZIL                         [32-38)          0       31      79  stunted          
6 months    MAL-ED          BRAZIL                         [32-38)          1        0      79  stunted          
6 months    MAL-ED          INDIA                          >=38             0       26     161  stunted          
6 months    MAL-ED          INDIA                          >=38             1       10     161  stunted          
6 months    MAL-ED          INDIA                          <32              0       41     161  stunted          
6 months    MAL-ED          INDIA                          <32              1       12     161  stunted          
6 months    MAL-ED          INDIA                          [32-38)          0       65     161  stunted          
6 months    MAL-ED          INDIA                          [32-38)          1        7     161  stunted          
6 months    MAL-ED          NEPAL                          >=38             0       16      79  stunted          
6 months    MAL-ED          NEPAL                          >=38             1        1      79  stunted          
6 months    MAL-ED          NEPAL                          <32              0       14      79  stunted          
6 months    MAL-ED          NEPAL                          <32              1        1      79  stunted          
6 months    MAL-ED          NEPAL                          [32-38)          0       45      79  stunted          
6 months    MAL-ED          NEPAL                          [32-38)          1        2      79  stunted          
6 months    MAL-ED          PERU                           >=38             0       27      83  stunted          
6 months    MAL-ED          PERU                           >=38             1        0      83  stunted          
6 months    MAL-ED          PERU                           <32              0       20      83  stunted          
6 months    MAL-ED          PERU                           <32              1        8      83  stunted          
6 months    MAL-ED          PERU                           [32-38)          0       17      83  stunted          
6 months    MAL-ED          PERU                           [32-38)          1       11      83  stunted          
6 months    MAL-ED          SOUTH AFRICA                   >=38             0       57      89  stunted          
6 months    MAL-ED          SOUTH AFRICA                   >=38             1        7      89  stunted          
6 months    MAL-ED          SOUTH AFRICA                   <32              0        8      89  stunted          
6 months    MAL-ED          SOUTH AFRICA                   <32              1        1      89  stunted          
6 months    MAL-ED          SOUTH AFRICA                   [32-38)          0       12      89  stunted          
6 months    MAL-ED          SOUTH AFRICA                   [32-38)          1        4      89  stunted          
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       35     100  stunted          
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1       13     100  stunted          
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       10     100  stunted          
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        5     100  stunted          
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       28     100  stunted          
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        9     100  stunted          
6 months    PROBIT          BELARUS                        >=38             0      677   15182  stunted          
6 months    PROBIT          BELARUS                        >=38             1       24   15182  stunted          
6 months    PROBIT          BELARUS                        <32              0    11712   15182  stunted          
6 months    PROBIT          BELARUS                        <32              1      463   15182  stunted          
6 months    PROBIT          BELARUS                        [32-38)          0     2215   15182  stunted          
6 months    PROBIT          BELARUS                        [32-38)          1       91   15182  stunted          
6 months    SAS-CompFeed    INDIA                          >=38             0       23    1333  stunted          
6 months    SAS-CompFeed    INDIA                          >=38             1       21    1333  stunted          
6 months    SAS-CompFeed    INDIA                          <32              0      815    1333  stunted          
6 months    SAS-CompFeed    INDIA                          <32              1      310    1333  stunted          
6 months    SAS-CompFeed    INDIA                          [32-38)          0      117    1333  stunted          
6 months    SAS-CompFeed    INDIA                          [32-38)          1       47    1333  stunted          
6 months    SAS-FoodSuppl   INDIA                          >=38             0       20     380  stunted          
6 months    SAS-FoodSuppl   INDIA                          >=38             1       19     380  stunted          
6 months    SAS-FoodSuppl   INDIA                          <32              0      150     380  stunted          
6 months    SAS-FoodSuppl   INDIA                          <32              1      114     380  stunted          
6 months    SAS-FoodSuppl   INDIA                          [32-38)          0       47     380  stunted          
6 months    SAS-FoodSuppl   INDIA                          [32-38)          1       30     380  stunted          
24 months   COHORTS         GUATEMALA                      >=38             0       61    1021  stunted          
24 months   COHORTS         GUATEMALA                      >=38             1      224    1021  stunted          
24 months   COHORTS         GUATEMALA                      <32              0       92    1021  stunted          
24 months   COHORTS         GUATEMALA                      <32              1      399    1021  stunted          
24 months   COHORTS         GUATEMALA                      [32-38)          0       41    1021  stunted          
24 months   COHORTS         GUATEMALA                      [32-38)          1      204    1021  stunted          
24 months   COHORTS         PHILIPPINES                    >=38             0       86    2371  stunted          
24 months   COHORTS         PHILIPPINES                    >=38             1      184    2371  stunted          
24 months   COHORTS         PHILIPPINES                    <32              0      632    2371  stunted          
24 months   COHORTS         PHILIPPINES                    <32              1     1034    2371  stunted          
24 months   COHORTS         PHILIPPINES                    [32-38)          0      169    2371  stunted          
24 months   COHORTS         PHILIPPINES                    [32-38)          1      266    2371  stunted          
24 months   LCNI-5          MALAWI                         >=38             0       11      74  stunted          
24 months   LCNI-5          MALAWI                         >=38             1       10      74  stunted          
24 months   LCNI-5          MALAWI                         <32              0       22      74  stunted          
24 months   LCNI-5          MALAWI                         <32              1       15      74  stunted          
24 months   LCNI-5          MALAWI                         [32-38)          0       12      74  stunted          
24 months   LCNI-5          MALAWI                         [32-38)          1        4      74  stunted          
24 months   MAL-ED          BANGLADESH                     >=38             0       39     151  stunted          
24 months   MAL-ED          BANGLADESH                     >=38             1       30     151  stunted          
24 months   MAL-ED          BANGLADESH                     <32              0       14     151  stunted          
24 months   MAL-ED          BANGLADESH                     <32              1       16     151  stunted          
24 months   MAL-ED          BANGLADESH                     [32-38)          0       27     151  stunted          
24 months   MAL-ED          BANGLADESH                     [32-38)          1       25     151  stunted          
24 months   MAL-ED          BRAZIL                         >=38             0       30      79  stunted          
24 months   MAL-ED          BRAZIL                         >=38             1        0      79  stunted          
24 months   MAL-ED          BRAZIL                         <32              0       18      79  stunted          
24 months   MAL-ED          BRAZIL                         <32              1        0      79  stunted          
24 months   MAL-ED          BRAZIL                         [32-38)          0       30      79  stunted          
24 months   MAL-ED          BRAZIL                         [32-38)          1        1      79  stunted          
24 months   MAL-ED          INDIA                          >=38             0       25     161  stunted          
24 months   MAL-ED          INDIA                          >=38             1       11     161  stunted          
24 months   MAL-ED          INDIA                          <32              0       29     161  stunted          
24 months   MAL-ED          INDIA                          <32              1       24     161  stunted          
24 months   MAL-ED          INDIA                          [32-38)          0       40     161  stunted          
24 months   MAL-ED          INDIA                          [32-38)          1       32     161  stunted          
24 months   MAL-ED          NEPAL                          >=38             0       12      79  stunted          
24 months   MAL-ED          NEPAL                          >=38             1        5      79  stunted          
24 months   MAL-ED          NEPAL                          <32              0       12      79  stunted          
24 months   MAL-ED          NEPAL                          <32              1        3      79  stunted          
24 months   MAL-ED          NEPAL                          [32-38)          0       36      79  stunted          
24 months   MAL-ED          NEPAL                          [32-38)          1       11      79  stunted          
24 months   MAL-ED          PERU                           >=38             0       19      79  stunted          
24 months   MAL-ED          PERU                           >=38             1        7      79  stunted          
24 months   MAL-ED          PERU                           <32              0       19      79  stunted          
24 months   MAL-ED          PERU                           <32              1        8      79  stunted          
24 months   MAL-ED          PERU                           [32-38)          0       15      79  stunted          
24 months   MAL-ED          PERU                           [32-38)          1       11      79  stunted          
24 months   MAL-ED          SOUTH AFRICA                   >=38             0       45      89  stunted          
24 months   MAL-ED          SOUTH AFRICA                   >=38             1       20      89  stunted          
24 months   MAL-ED          SOUTH AFRICA                   <32              0        7      89  stunted          
24 months   MAL-ED          SOUTH AFRICA                   <32              1        1      89  stunted          
24 months   MAL-ED          SOUTH AFRICA                   [32-38)          0        9      89  stunted          
24 months   MAL-ED          SOUTH AFRICA                   [32-38)          1        7      89  stunted          
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       12     100  stunted          
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1       36     100  stunted          
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0        2     100  stunted          
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1       13     100  stunted          
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0        8     100  stunted          
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1       29     100  stunted          
24 months   PROBIT          BELARUS                        >=38             0      167    3909  stunted          
24 months   PROBIT          BELARUS                        >=38             1       11    3909  stunted          
24 months   PROBIT          BELARUS                        <32              0     2934    3909  stunted          
24 months   PROBIT          BELARUS                        <32              1      209    3909  stunted          
24 months   PROBIT          BELARUS                        [32-38)          0      546    3909  stunted          
24 months   PROBIT          BELARUS                        [32-38)          1       42    3909  stunted          


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
