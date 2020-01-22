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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        fage       stunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38             0       52     133  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38             1       11     133  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32              0       21     133  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32              1        4     133  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       40     133  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        5     133  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38             0        4      18  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38             1        2      18  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         <32              0        1      18  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         <32              1        0      18  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)          0        9      18  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        2      18  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          >=38             0        6      27  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          >=38             1        1      27  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          <32              0        5      27  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          <32              1        4      27  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)          0        9      27  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)          1        2      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          >=38             0        2       9  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          >=38             1        0       9  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          <32              0        2       9  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          <32              1        0       9  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)          0        5       9  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)          1        0       9  stunted          
Birth       ki0047075b-MAL-ED          PERU                           >=38             0       23      69  stunted          
Birth       ki0047075b-MAL-ED          PERU                           >=38             1        0      69  stunted          
Birth       ki0047075b-MAL-ED          PERU                           <32              0       18      69  stunted          
Birth       ki0047075b-MAL-ED          PERU                           <32              1        4      69  stunted          
Birth       ki0047075b-MAL-ED          PERU                           [32-38)          0       19      69  stunted          
Birth       ki0047075b-MAL-ED          PERU                           [32-38)          1        5      69  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       15      31  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        2      31  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        4      31  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        1      31  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0        7      31  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        2      31  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       15      46  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        4      46  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0        7      46  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        2      46  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       17      46  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        1      46  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38             0       26    1249  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38             1       14    1249  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32              0      756    1249  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32              1      289    1249  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0      119    1249  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1       45    1249  stunted          
Birth       ki1119695-PROBIT           BELARUS                        >=38             0      605   13396  stunted          
Birth       ki1119695-PROBIT           BELARUS                        >=38             1        1   13396  stunted          
Birth       ki1119695-PROBIT           BELARUS                        <32              0    10700   13396  stunted          
Birth       ki1119695-PROBIT           BELARUS                        <32              1       29   13396  stunted          
Birth       ki1119695-PROBIT           BELARUS                        [32-38)          0     2060   13396  stunted          
Birth       ki1119695-PROBIT           BELARUS                        [32-38)          1        1   13396  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      >=38             0      230     823  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      >=38             1       15     823  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      <32              0      358     823  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      <32              1       22     823  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)          0      185     823  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)          1       13     823  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38             0      304    2944  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38             1       24    2944  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    <32              0     1954    2944  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    <32              1      125    2944  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      506    2944  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)          1       31    2944  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38             0       56     150  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38             1       13     150  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32              0       20     150  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32              1       10     150  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       45     150  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        6     150  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         <32              0       18      79  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         <32              1        0      79  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       31      79  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        0      79  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          >=38             0       26     161  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          >=38             1       10     161  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          <32              0       41     161  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          <32              1       12     161  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          0       65     161  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          1        7     161  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          >=38             0       16      79  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          >=38             1        1      79  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          <32              0       14      79  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          <32              1        1      79  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)          0       45      79  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)          1        2      79  stunted          
6 months    ki0047075b-MAL-ED          PERU                           >=38             0       27      83  stunted          
6 months    ki0047075b-MAL-ED          PERU                           >=38             1        0      83  stunted          
6 months    ki0047075b-MAL-ED          PERU                           <32              0       20      83  stunted          
6 months    ki0047075b-MAL-ED          PERU                           <32              1        8      83  stunted          
6 months    ki0047075b-MAL-ED          PERU                           [32-38)          0       17      83  stunted          
6 months    ki0047075b-MAL-ED          PERU                           [32-38)          1       11      83  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       57      89  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        7      89  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        8      89  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        1      89  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0       12      89  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        4      89  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       35     100  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1       13     100  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       10     100  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        5     100  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       28     100  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        9     100  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38             0       23    1333  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38             1       21    1333  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32              0      815    1333  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32              1      310    1333  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0      117    1333  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1       47    1333  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38             0       20     380  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38             1       19     380  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32              0      150     380  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32              1      114     380  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          0       47     380  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          1       30     380  stunted          
6 months    ki1119695-PROBIT           BELARUS                        >=38             0      652   15183  stunted          
6 months    ki1119695-PROBIT           BELARUS                        >=38             1       49   15183  stunted          
6 months    ki1119695-PROBIT           BELARUS                        <32              0    11428   15183  stunted          
6 months    ki1119695-PROBIT           BELARUS                        <32              1      748   15183  stunted          
6 months    ki1119695-PROBIT           BELARUS                        [32-38)          0     2174   15183  stunted          
6 months    ki1119695-PROBIT           BELARUS                        [32-38)          1      132   15183  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      >=38             0      168     929  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      >=38             1      107     929  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      <32              0      256     929  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      <32              1      165     929  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)          0      129     929  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)          1      104     929  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38             0      216    2624  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38             1       84    2624  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    <32              0     1456    2624  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    <32              1      373    2624  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      396    2624  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)          1       99    2624  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         >=38             0       21     106  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         >=38             1        5     106  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         <32              0       37     106  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         <32              1       19     106  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)          0       15     106  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)          1        9     106  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             0       39     151  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             1       30     151  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              0       14     151  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              1       16     151  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       27     151  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1       25     151  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         <32              0       18      79  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         <32              1        0      79  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       30      79  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        1      79  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          >=38             0       25     161  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          >=38             1       11     161  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          <32              0       29     161  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          <32              1       24     161  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          0       40     161  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          1       32     161  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          >=38             0       12      79  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          >=38             1        5      79  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          <32              0       12      79  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          <32              1        3      79  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          0       36      79  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          1       11      79  stunted          
24 months   ki0047075b-MAL-ED          PERU                           >=38             0       19      79  stunted          
24 months   ki0047075b-MAL-ED          PERU                           >=38             1        7      79  stunted          
24 months   ki0047075b-MAL-ED          PERU                           <32              0       19      79  stunted          
24 months   ki0047075b-MAL-ED          PERU                           <32              1        8      79  stunted          
24 months   ki0047075b-MAL-ED          PERU                           [32-38)          0       15      79  stunted          
24 months   ki0047075b-MAL-ED          PERU                           [32-38)          1       11      79  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       45      89  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1       20      89  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        7      89  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        1      89  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0        9      89  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        7      89  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       12     100  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1       36     100  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0        2     100  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1       13     100  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0        8     100  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1       29     100  stunted          
24 months   ki1119695-PROBIT           BELARUS                        >=38             0      165    3909  stunted          
24 months   ki1119695-PROBIT           BELARUS                        >=38             1       13    3909  stunted          
24 months   ki1119695-PROBIT           BELARUS                        <32              0     2875    3909  stunted          
24 months   ki1119695-PROBIT           BELARUS                        <32              1      268    3909  stunted          
24 months   ki1119695-PROBIT           BELARUS                        [32-38)          0      537    3909  stunted          
24 months   ki1119695-PROBIT           BELARUS                        [32-38)          1       51    3909  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      >=38             0       61    1021  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      >=38             1      224    1021  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      <32              0       92    1021  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      <32              1      399    1021  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          0       41    1021  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          1      204    1021  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             0       86    2371  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             1      184    2371  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    <32              0      632    2371  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    <32              1     1034    2371  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      169    2371  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          1      266    2371  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         >=38             0       11      74  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         >=38             1       10      74  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         <32              0       22      74  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         <32              1       15      74  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          0       12      74  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          1        4      74  stunted          


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
![](/tmp/26d9cb44-fa71-44de-8a75-b448876acb2d/cb21a21c-2936-4efe-a157-85ad516cd31e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/26d9cb44-fa71-44de-8a75-b448876acb2d/cb21a21c-2936-4efe-a157-85ad516cd31e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/26d9cb44-fa71-44de-8a75-b448876acb2d/cb21a21c-2936-4efe-a157-85ad516cd31e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/26d9cb44-fa71-44de-8a75-b448876acb2d/cb21a21c-2936-4efe-a157-85ad516cd31e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.3500000   0.2617803   0.4382197
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.2765550   0.2455552   0.3075548
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.2743902   0.2008031   0.3479774
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.0612245   0.0311864   0.0912626
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.0578947   0.0343990   0.0813905
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.0656566   0.0311365   0.1001767
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.0731707   0.0449834   0.1013580
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.0601251   0.0499049   0.0703452
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.0577281   0.0379986   0.0774576
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1884058   0.0958310   0.2809806
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.3333333   0.1640814   0.5025853
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.1176471   0.0289259   0.2063682
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.2777778   0.1310089   0.4245467
6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                0.2264151   0.1133913   0.3394389
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.0972222   0.0285774   0.1658671
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.2708333   0.1444836   0.3971831
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.3333333   0.0935723   0.5730944
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.2432432   0.1043030   0.3821835
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.4772727   0.2887378   0.6658077
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.2755556   0.2521947   0.2989164
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.2865854   0.2408141   0.3323566
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.4871795   0.3301016   0.6442574
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.4318182   0.3719891   0.4916473
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.3896104   0.2805433   0.4986775
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                0.0699001   0.0439397   0.0958606
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                0.0614323   0.0478814   0.0749832
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0572420   0.0401314   0.0743525
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.3890909   0.3314369   0.4467449
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.3919240   0.3452666   0.4385814
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.4463519   0.3824874   0.5102164
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.2800000   0.2291822   0.3308178
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.2039366   0.1854675   0.2224057
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.2000000   0.1647558   0.2352442
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.1923077   0.0400985   0.3445169
6 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                0.3392857   0.2146903   0.4638811
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.3750000   0.1803939   0.5696061
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.4347826   0.3174253   0.5521399
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.5333333   0.3542179   0.7124488
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.4807692   0.3445188   0.6170196
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.3055556   0.1546123   0.4564988
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.4528302   0.3184015   0.5872588
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.4444444   0.3293095   0.5595794
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.2692308   0.0976454   0.4408161
24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.2962963   0.1229596   0.4696330
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.4230769   0.2319613   0.6141926
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.0730337   0.0412745   0.1047929
24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.0852689   0.0533618   0.1171759
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0867347   0.0460721   0.1273972
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.7859649   0.7383237   0.8336061
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.8126273   0.7780955   0.8471591
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.8326531   0.7858883   0.8794178
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.6814815   0.6258972   0.7370658
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.6206483   0.5973434   0.6439531
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.6114943   0.5656811   0.6573074


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
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.7901572   0.6005631   1.0396050
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.7839721   0.5641978   1.0893560
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  >=38              0.9456140   0.5002530   1.7874675
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.0723906   0.5224451   2.2012293
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.8217092   0.5393283   1.2519385
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.7889510   0.4714085   1.3203912
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.5773545   0.3723486   0.8952315
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.6004646   0.4096962   0.8800612
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              0.8863636   0.6240281   1.2589826
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.7997266   0.5217965   1.2256937
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              0.8788584   0.6436826   1.1999579
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              0.8189107   0.5991811   1.1192190
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              1.0072813   0.8329182   1.2181455
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.1471662   0.9336191   1.4095580
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.7283449   0.5946318   0.8921258
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.7142857   0.5546372   0.9198880
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              1.7642857   0.7372819   4.2218641
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              1.9500000   0.7568292   5.0242509
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.2266667   0.7972654   1.8873402
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              1.1057692   0.7476405   1.6354460
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              1.4819897   0.8328118   2.6372025
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              1.4545455   0.8326794   2.5408368
24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              1.1005291   0.4633297   2.6140444
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              1.5714286   0.7195080   3.4320507
24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              1.1675274   0.7382154   1.8465073
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              1.1875981   0.6725161   2.0971831
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              1.0339231   0.9601498   1.1133648
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.0594023   0.9753783   1.1506646
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.9107339   0.8325212   0.9962944
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.8973013   0.8032301   1.0023898


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0713771   -0.1601573    0.0174030
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0004711   -0.0256058    0.0246635
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0120294   -0.0383431    0.0142843
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0049275   -0.0636756    0.0735307
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0976536   -0.2219655    0.0266584
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0008333   -0.0918639    0.0901972
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1937018   -0.3849385   -0.0024652
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0582321   -0.2068649    0.0904006
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0087133   -0.0288182    0.0113916
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0156454   -0.0328663    0.0641570
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0681098   -0.1154015   -0.0208180
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.1190131   -0.0211521    0.2591783
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0354161   -0.0515634    0.1223955
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.1105935   -0.0251573    0.2463443
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0598832   -0.0848113    0.2045776
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0118985   -0.0217390    0.0455360
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0240253   -0.0157516    0.0638022
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0555852   -0.1081730   -0.0029974


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.2561782   -0.6275781    0.0304714
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0077551   -0.5193057    0.3315563
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1967480   -0.7135925    0.1642087
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0254873   -0.4024951    0.3228674
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.5421456   -1.4008101    0.0094123
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0030864   -0.4038159    0.2832519
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.6830808   -1.5272725   -0.1208767
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.1357559   -0.5412746    0.1630684
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1424046   -0.5182035    0.1403733
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0386557   -0.0890099    0.1513550
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.3214388   -0.5641523   -0.1163879
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.3822844   -0.2683064    0.6991479
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0753215   -0.1298108    0.2432093
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.2657546   -0.1452182    0.5292457
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1819527   -0.3989032    0.5216242
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.1400941   -0.3276707    0.4430560
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0296612   -0.0207711    0.0776019
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0888090   -0.1762856   -0.0078378
