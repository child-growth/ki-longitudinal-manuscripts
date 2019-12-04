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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        fage       swasted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38             0       58     128
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38             1        3     128
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32              0       22     128
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32              1        1     128
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       42     128
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        2     128
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38             0        5      16
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      16
Birth       ki0047075b-MAL-ED          BRAZIL                         <32              0        1      16
Birth       ki0047075b-MAL-ED          BRAZIL                         <32              1        0      16
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       10      16
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        0      16
Birth       ki0047075b-MAL-ED          INDIA                          >=38             0        7      25
Birth       ki0047075b-MAL-ED          INDIA                          >=38             1        0      25
Birth       ki0047075b-MAL-ED          INDIA                          <32              0        8      25
Birth       ki0047075b-MAL-ED          INDIA                          <32              1        0      25
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)          0       10      25
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)          1        0      25
Birth       ki0047075b-MAL-ED          NEPAL                          >=38             0        2       9
Birth       ki0047075b-MAL-ED          NEPAL                          >=38             1        0       9
Birth       ki0047075b-MAL-ED          NEPAL                          <32              0        2       9
Birth       ki0047075b-MAL-ED          NEPAL                          <32              1        0       9
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)          0        4       9
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)          1        1       9
Birth       ki0047075b-MAL-ED          PERU                           >=38             0       23      67
Birth       ki0047075b-MAL-ED          PERU                           >=38             1        0      67
Birth       ki0047075b-MAL-ED          PERU                           <32              0       21      67
Birth       ki0047075b-MAL-ED          PERU                           <32              1        0      67
Birth       ki0047075b-MAL-ED          PERU                           [32-38)          0       23      67
Birth       ki0047075b-MAL-ED          PERU                           [32-38)          1        0      67
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       16      30
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        0      30
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        5      30
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        0      30
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0        9      30
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        0      30
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       17      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        0      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0        9      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        0      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       18      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        0      44
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38             0       30    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38             1        4    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32              0      901    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32              1       22    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0      141    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1        3    1101
Birth       ki1119695-PROBIT           BELARUS                        >=38             0      575   13339
Birth       ki1119695-PROBIT           BELARUS                        >=38             1       31   13339
Birth       ki1119695-PROBIT           BELARUS                        <32              0     9960   13339
Birth       ki1119695-PROBIT           BELARUS                        <32              1      721   13339
Birth       ki1119695-PROBIT           BELARUS                        [32-38)          0     1935   13339
Birth       ki1119695-PROBIT           BELARUS                        [32-38)          1      117   13339
Birth       ki1135781-COHORTS          GUATEMALA                      >=38             0      207     735
Birth       ki1135781-COHORTS          GUATEMALA                      >=38             1       15     735
Birth       ki1135781-COHORTS          GUATEMALA                      <32              0      306     735
Birth       ki1135781-COHORTS          GUATEMALA                      <32              1       31     735
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)          0      163     735
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)          1       13     735
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38             0      296    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38             1        7    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    <32              0     1892    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    <32              1       89    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      494    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)          1       19    2797
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38             0       68     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38             1        1     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32              0       30     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32              1        0     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       51     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        0     150
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32              0       18      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32              1        0      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       31      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        0      79
6 months    ki0047075b-MAL-ED          INDIA                          >=38             0       35     161
6 months    ki0047075b-MAL-ED          INDIA                          >=38             1        1     161
6 months    ki0047075b-MAL-ED          INDIA                          <32              0       52     161
6 months    ki0047075b-MAL-ED          INDIA                          <32              1        1     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          0       69     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          1        3     161
6 months    ki0047075b-MAL-ED          NEPAL                          >=38             0       17      79
6 months    ki0047075b-MAL-ED          NEPAL                          >=38             1        0      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32              0       15      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32              1        0      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)          0       47      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)          1        0      79
6 months    ki0047075b-MAL-ED          PERU                           >=38             0       27      83
6 months    ki0047075b-MAL-ED          PERU                           >=38             1        0      83
6 months    ki0047075b-MAL-ED          PERU                           <32              0       28      83
6 months    ki0047075b-MAL-ED          PERU                           <32              1        0      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)          0       28      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)          1        0      83
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       63      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        1      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        9      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        0      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0       16      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        0      89
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       48     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        0     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       15     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        0     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       37     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        0     100
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38             0       41    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38             1        3    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32              0     1085    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32              1       37    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0      162    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1        3    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38             0       38     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38             1        2     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32              0      253     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32              1       11     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          0       70     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          1        6     380
6 months    ki1119695-PROBIT           BELARUS                        >=38             0      699   15180
6 months    ki1119695-PROBIT           BELARUS                        >=38             1        2   15180
6 months    ki1119695-PROBIT           BELARUS                        <32              0    12161   15180
6 months    ki1119695-PROBIT           BELARUS                        <32              1       14   15180
6 months    ki1119695-PROBIT           BELARUS                        [32-38)          0     2304   15180
6 months    ki1119695-PROBIT           BELARUS                        [32-38)          1        0   15180
6 months    ki1135781-COHORTS          GUATEMALA                      >=38             0      274     930
6 months    ki1135781-COHORTS          GUATEMALA                      >=38             1        2     930
6 months    ki1135781-COHORTS          GUATEMALA                      <32              0      419     930
6 months    ki1135781-COHORTS          GUATEMALA                      <32              1        2     930
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)          0      232     930
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)          1        1     930
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38             0      293    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38             1        6    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    <32              0     1810    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    <32              1       18    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      486    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)          1        9    2622
6 months    ki1148112-LCNI-5           MALAWI                         >=38             0       26     106
6 months    ki1148112-LCNI-5           MALAWI                         >=38             1        0     106
6 months    ki1148112-LCNI-5           MALAWI                         <32              0       56     106
6 months    ki1148112-LCNI-5           MALAWI                         <32              1        0     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)          0       24     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)          1        0     106
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             0       69     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             1        0     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              0       30     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              1        0     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       52     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        0     151
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32              0       18      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32              1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       31      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        0      79
24 months   ki0047075b-MAL-ED          INDIA                          >=38             0       36     161
24 months   ki0047075b-MAL-ED          INDIA                          >=38             1        0     161
24 months   ki0047075b-MAL-ED          INDIA                          <32              0       53     161
24 months   ki0047075b-MAL-ED          INDIA                          <32              1        0     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          0       72     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          1        0     161
24 months   ki0047075b-MAL-ED          NEPAL                          >=38             0       17      79
24 months   ki0047075b-MAL-ED          NEPAL                          >=38             1        0      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32              0       15      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32              1        0      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          0       47      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          1        0      79
24 months   ki0047075b-MAL-ED          PERU                           >=38             0       26      79
24 months   ki0047075b-MAL-ED          PERU                           >=38             1        0      79
24 months   ki0047075b-MAL-ED          PERU                           <32              0       26      79
24 months   ki0047075b-MAL-ED          PERU                           <32              1        1      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)          0       26      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)          1        0      79
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       65      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        0      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        8      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        0      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0       16      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        0      89
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       48     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        0     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       15     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        0     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       37     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        0     100
24 months   ki1119695-PROBIT           BELARUS                        >=38             0      176    3849
24 months   ki1119695-PROBIT           BELARUS                        >=38             1        0    3849
24 months   ki1119695-PROBIT           BELARUS                        <32              0     3092    3849
24 months   ki1119695-PROBIT           BELARUS                        <32              1        3    3849
24 months   ki1119695-PROBIT           BELARUS                        [32-38)          0      577    3849
24 months   ki1119695-PROBIT           BELARUS                        [32-38)          1        1    3849
24 months   ki1135781-COHORTS          GUATEMALA                      >=38             0      285    1032
24 months   ki1135781-COHORTS          GUATEMALA                      >=38             1        2    1032
24 months   ki1135781-COHORTS          GUATEMALA                      <32              0      493    1032
24 months   ki1135781-COHORTS          GUATEMALA                      <32              1        2    1032
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          0      250    1032
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          1        0    1032
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             0      268    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             1        3    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    <32              0     1653    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    <32              1       17    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      430    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          1        5    2376
24 months   ki1148112-LCNI-5           MALAWI                         >=38             0       21      74
24 months   ki1148112-LCNI-5           MALAWI                         >=38             1        0      74
24 months   ki1148112-LCNI-5           MALAWI                         <32              0       37      74
24 months   ki1148112-LCNI-5           MALAWI                         <32              1        0      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          0       16      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          1        0      74


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
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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




# Results Detail

## Results Plots
![](/tmp/b59bfd14-418f-4137-a3cc-a2243e0d3d63/aacc2608-205b-4da7-b78f-fd16ea7475f2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b59bfd14-418f-4137-a3cc-a2243e0d3d63/aacc2608-205b-4da7-b78f-fd16ea7475f2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b59bfd14-418f-4137-a3cc-a2243e0d3d63/aacc2608-205b-4da7-b78f-fd16ea7475f2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b59bfd14-418f-4137-a3cc-a2243e0d3d63/aacc2608-205b-4da7-b78f-fd16ea7475f2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1119695-PROBIT    BELARUS       >=38                 NA                0.0363303   0.0199948   0.0526657
Birth      ki1119695-PROBIT    BELARUS       <32                  NA                0.0653316   0.0327378   0.0979253
Birth      ki1119695-PROBIT    BELARUS       [32-38)              NA                0.0640224   0.0301496   0.0978952
Birth      ki1135781-COHORTS   GUATEMALA     >=38                 NA                0.0720866   0.0356432   0.1085300
Birth      ki1135781-COHORTS   GUATEMALA     <32                  NA                0.0872506   0.0574884   0.1170127
Birth      ki1135781-COHORTS   GUATEMALA     [32-38)              NA                0.0699344   0.0323367   0.1075322
Birth      ki1135781-COHORTS   PHILIPPINES   >=38                 NA                0.0231023   0.0061840   0.0400206
Birth      ki1135781-COHORTS   PHILIPPINES   <32                  NA                0.0449268   0.0358034   0.0540502
Birth      ki1135781-COHORTS   PHILIPPINES   [32-38)              NA                0.0370370   0.0206918   0.0533822
6 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                0.0200669   0.0041692   0.0359646
6 months   ki1135781-COHORTS   PHILIPPINES   <32                  NA                0.0098468   0.0053195   0.0143742
6 months   ki1135781-COHORTS   PHILIPPINES   [32-38)              NA                0.0181818   0.0064095   0.0299542


### Parameter: E(Y)


agecat     studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1119695-PROBIT    BELARUS       NA                   NA                0.0651473   0.0322673   0.0980273
Birth      ki1135781-COHORTS   GUATEMALA     NA                   NA                0.0802721   0.0606153   0.0999289
Birth      ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0411155   0.0337557   0.0484753
6 months   ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0125858   0.0083180   0.0168536


### Parameter: RR


agecat     studyid             country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth      ki1119695-PROBIT    BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
Birth      ki1119695-PROBIT    BELARUS       <32                  >=38              1.7982681   1.3146291   2.459833
Birth      ki1119695-PROBIT    BELARUS       [32-38)              >=38              1.7622330   1.2675017   2.450068
Birth      ki1135781-COHORTS   GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
Birth      ki1135781-COHORTS   GUATEMALA     <32                  >=38              1.2103572   0.6575813   2.227808
Birth      ki1135781-COHORTS   GUATEMALA     [32-38)              >=38              0.9701442   0.4639551   2.028601
Birth      ki1135781-COHORTS   PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
Birth      ki1135781-COHORTS   PHILIPPINES   <32                  >=38              1.9446888   0.9095066   4.158095
Birth      ki1135781-COHORTS   PHILIPPINES   [32-38)              >=38              1.6031746   0.6817905   3.769734
6 months   ki1135781-COHORTS   PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
6 months   ki1135781-COHORTS   PHILIPPINES   <32                  >=38              0.4907002   0.1963401   1.226375
6 months   ki1135781-COHORTS   PHILIPPINES   [32-38)              >=38              0.9060606   0.3256890   2.520643


### Parameter: PAR


agecat     studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth      ki1119695-PROBIT    BELARUS       >=38                 NA                 0.0288171    0.0075201   0.0501140
Birth      ki1135781-COHORTS   GUATEMALA     >=38                 NA                 0.0081855   -0.0236932   0.0400641
Birth      ki1135781-COHORTS   PHILIPPINES   >=38                 NA                 0.0180132    0.0013284   0.0346979
6 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                -0.0074811   -0.0220862   0.0071240


### Parameter: PAF


agecat     studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth      ki1119695-PROBIT    BELARUS       >=38                 NA                 0.4423368    0.2613294   0.5789892
Birth      ki1135781-COHORTS   GUATEMALA     >=38                 NA                 0.1019717   -0.3963942   0.4224734
Birth      ki1135781-COHORTS   PHILIPPINES   >=38                 NA                 0.4381116   -0.1420289   0.7235459
6 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                -0.5944056   -2.2664745   0.2217514
