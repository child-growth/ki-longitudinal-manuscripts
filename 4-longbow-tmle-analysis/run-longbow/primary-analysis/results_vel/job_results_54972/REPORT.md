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

**Outcome Variable:** y_rate_len

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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38           68     150  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32            30     150  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     150  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38           26      65  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32            16      65  y_rate_len       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)        23      65  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38           28     121  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          <32            41     121  y_rate_len       
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)        52     121  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38           13      54  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32             9      54  y_rate_len       
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)        32      54  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           >=38           27      79  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           <32            26      79  y_rate_len       
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)        26      79  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           49      70  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32             7      70  y_rate_len       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        14      70  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           42      91  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      91  y_rate_len       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        34      91  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38           37    1258  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32          1049    1258  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)       172    1258  y_rate_len       
0-3 months     ki1119695-PROBIT           BELARUS                        >=38          680   14760  y_rate_len       
0-3 months     ki1119695-PROBIT           BELARUS                        <32         11825   14760  y_rate_len       
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)      2255   14760  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38          214     706  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32           316     706  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)       176     706  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38           68     148  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32            30     148  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)        50     148  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32            18      79  y_rate_len       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38           34     157  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          <32            53     157  y_rate_len       
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)        70     157  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38           17      79  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32            15      79  y_rate_len       
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           >=38           27      83  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           <32            28      83  y_rate_len       
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)        28      83  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           63      87  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32             9      87  y_rate_len       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15      87  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100  y_rate_len       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38           37    1121  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32           935    1121  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)       149    1121  y_rate_len       
3-6 months     ki1119695-PROBIT           BELARUS                        >=38          594   12816  y_rate_len       
3-6 months     ki1119695-PROBIT           BELARUS                        <32         10269   12816  y_rate_len       
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)      1953   12816  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38          228     779  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32           348     779  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)       203     779  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38           67     147  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <32            30     147  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)        50     147  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <32            18      79  y_rate_len       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38           34     159  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          <32            53     159  y_rate_len       
6-9 months     ki0047075b-MAL-ED          INDIA                          [32-38)        72     159  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38           16      78  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          <32            15      78  y_rate_len       
6-9 months     ki0047075b-MAL-ED          NEPAL                          [32-38)        47      78  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           >=38           26      82  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           <32            28      82  y_rate_len       
6-9 months     ki0047075b-MAL-ED          PERU                           [32-38)        28      82  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           62      84  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      84  y_rate_len       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        14      84  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           47      97  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      97  y_rate_len       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        35      97  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38           40    1141  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <32           954    1141  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)       147    1141  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38           35     314  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <32           211     314  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        68     314  y_rate_len       
6-9 months     ki1119695-PROBIT           BELARUS                        >=38          563   11986  y_rate_len       
6-9 months     ki1119695-PROBIT           BELARUS                        <32          9605   11986  y_rate_len       
6-9 months     ki1119695-PROBIT           BELARUS                        [32-38)      1818   11986  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38          225     792  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      <32           365     792  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      [32-38)       202     792  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38           18      68  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         <32            36      68  y_rate_len       
6-9 months     ki1148112-LCNI-5           MALAWI                         [32-38)        14      68  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38           68     147  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32            30     147  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)        49     147  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <32            18      79  y_rate_len       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38           36     159  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          <32            52     159  y_rate_len       
9-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)        71     159  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38           16      78  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          <32            15      78  y_rate_len       
9-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)        47      78  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           >=38           26      80  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           <32            26      80  y_rate_len       
9-12 months    ki0047075b-MAL-ED          PERU                           [32-38)        28      80  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           62      84  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             7      84  y_rate_len       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15      84  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           46      95  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      95  y_rate_len       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        34      95  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38           42    1143  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32           951    1143  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)       150    1143  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38           35     311  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32           206     311  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        70     311  y_rate_len       
9-12 months    ki1119695-PROBIT           BELARUS                        >=38          583   12237  y_rate_len       
9-12 months    ki1119695-PROBIT           BELARUS                        <32          9798   12237  y_rate_len       
9-12 months    ki1119695-PROBIT           BELARUS                        [32-38)      1856   12237  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38          258     898  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      <32           424     898  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       216     898  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38           12      46  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         <32            25      46  y_rate_len       
9-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)         9      46  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           68     145  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <32            28     145  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        49     145  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      79  y_rate_len       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38           36     159  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          <32            52     159  y_rate_len       
12-15 months   ki0047075b-MAL-ED          INDIA                          [32-38)        71     159  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      79  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          <32            15      79  y_rate_len       
12-15 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           >=38           27      79  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           <32            25      79  y_rate_len       
12-15 months   ki0047075b-MAL-ED          PERU                           [32-38)        27      79  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           62      84  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             6      84  y_rate_len       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      84  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           46      97  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      97  y_rate_len       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36      97  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38           41    1165  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <32           975    1165  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)       149    1165  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38           32     303  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32           204     303  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        67     303  y_rate_len       
12-15 months   ki1119695-PROBIT           BELARUS                        >=38           44     965  y_rate_len       
12-15 months   ki1119695-PROBIT           BELARUS                        <32           793     965  y_rate_len       
12-15 months   ki1119695-PROBIT           BELARUS                        [32-38)       128     965  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38          248     852  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      <32           394     852  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       210     852  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         >=38            4      14  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         <32             8      14  y_rate_len       
12-15 months   ki1148112-LCNI-5           MALAWI                         [32-38)         2      14  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           66     146  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <32            28     146  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     146  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38           29      77  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      77  y_rate_len       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        30      77  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38           35     160  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          <32            53     160  y_rate_len       
15-18 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72     160  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      78  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          <32            15      78  y_rate_len       
15-18 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        46      78  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           >=38           26      80  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           <32            27      80  y_rate_len       
15-18 months   ki0047075b-MAL-ED          PERU                           [32-38)        27      80  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           62      85  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             7      85  y_rate_len       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      85  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           46      96  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            14      96  y_rate_len       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36      96  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38           38    1168  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <32           986    1168  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)       144    1168  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38           31     291  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32           200     291  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        60     291  y_rate_len       
15-18 months   ki1119695-PROBIT           BELARUS                        >=38            9     258  y_rate_len       
15-18 months   ki1119695-PROBIT           BELARUS                        <32           218     258  y_rate_len       
15-18 months   ki1119695-PROBIT           BELARUS                        [32-38)        31     258  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38          222     763  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      <32           351     763  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       190     763  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         >=38            4      13  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         <32             7      13  y_rate_len       
15-18 months   ki1148112-LCNI-5           MALAWI                         [32-38)         2      13  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           66     147  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <32            29     147  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     147  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38           29      77  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      77  y_rate_len       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        30      77  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38           35     159  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          <32            52     159  y_rate_len       
18-21 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72     159  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      78  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          <32            15      78  y_rate_len       
18-21 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        46      78  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           >=38           26      77  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           <32            25      77  y_rate_len       
18-21 months   ki0047075b-MAL-ED          PERU                           [32-38)        26      77  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           63      87  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      87  y_rate_len       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      87  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           43      92  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            14      92  y_rate_len       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        35      92  y_rate_len       
18-21 months   ki1119695-PROBIT           BELARUS                        >=38            6     211  y_rate_len       
18-21 months   ki1119695-PROBIT           BELARUS                        <32           180     211  y_rate_len       
18-21 months   ki1119695-PROBIT           BELARUS                        [32-38)        25     211  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38          222     752  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      <32           350     752  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       180     752  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38           18      63  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         <32            31      63  y_rate_len       
18-21 months   ki1148112-LCNI-5           MALAWI                         [32-38)        14      63  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           66     147  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32            29     147  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     147  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      79  y_rate_len       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38           36     160  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          <32            52     160  y_rate_len       
21-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72     160  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      79  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          <32            15      79  y_rate_len       
21-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           >=38           26      76  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           <32            25      76  y_rate_len       
21-24 months   ki0047075b-MAL-ED          PERU                           [32-38)        25      76  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           65      89  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      89  y_rate_len       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           45      96  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      96  y_rate_len       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36      96  y_rate_len       
21-24 months   ki1119695-PROBIT           BELARUS                        >=38            8     204  y_rate_len       
21-24 months   ki1119695-PROBIT           BELARUS                        <32           165     204  y_rate_len       
21-24 months   ki1119695-PROBIT           BELARUS                        [32-38)        31     204  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38          244     832  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      <32           390     832  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       198     832  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38           16      55  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         <32            28      55  y_rate_len       
21-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)        11      55  y_rate_len       


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
![](/tmp/de427dc1-2d63-44ec-84c7-a68c3027214f/7c89d171-ccf8-4da8-b255-2c562d8e6e02/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/de427dc1-2d63-44ec-84c7-a68c3027214f/7c89d171-ccf8-4da8-b255-2c562d8e6e02/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/de427dc1-2d63-44ec-84c7-a68c3027214f/7c89d171-ccf8-4da8-b255-2c562d8e6e02/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                3.3604774    3.2336856   3.4872693
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                3.2238777    3.0753304   3.3724251
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                3.4294667    3.2850036   3.5739298
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                3.9417284    3.6744297   4.2090271
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                3.6673275    3.2655707   4.0690843
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                3.7788123    3.4885325   4.0690922
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                3.0630307    2.8112684   3.3147930
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                3.3077820    3.1916160   3.4239479
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                3.4169405    3.1956313   3.6382497
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                3.5520298    3.1530633   3.9509964
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                3.3972082    3.0245983   3.7698180
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                3.5611691    3.3848421   3.7374962
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                2.8726006    2.6901518   3.0550495
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  NA                3.1642423    2.9680760   3.3604085
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                3.0878679    2.7687645   3.4069712
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                3.2933269    3.0861138   3.5005400
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                3.2667673    2.6373150   3.8962196
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                3.1882784    2.8224884   3.5540684
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                3.2543416    3.0871340   3.4215493
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                3.3116658    2.9800557   3.6432758
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                3.0535207    2.8206421   3.2863993
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                2.9889304    2.7205268   3.2573339
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                3.3819017    3.3233554   3.4404480
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                3.2394469    3.0863837   3.3925102
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                2.8168790    2.7133527   2.9204053
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  NA                2.8174829    2.7031393   2.9318265
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                2.8239862    2.6986419   2.9493306
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                2.5624300    2.4764466   2.6484134
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                2.6012299    2.5281781   2.6742817
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                2.5553787    2.4398795   2.6708779
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                1.9689487    1.8619844   2.0759130
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                1.8852474    1.7391385   2.0313564
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                1.8885601    1.7546869   2.0224332
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                2.1680525    1.9619823   2.3741227
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                2.4296273    2.0962740   2.7629805
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                2.2077875    2.0195885   2.3959865
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                1.9752936    1.8126844   2.1379027
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                1.8719118    1.6978187   2.0460049
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                1.9028212    1.7542619   2.0513805
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                1.9057183    1.6692270   2.1422096
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                1.9226117    1.6574540   2.1877693
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                1.8897205    1.7653024   2.0141385
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                2.1607932    1.9341812   2.3874052
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  NA                2.0512416    1.8201859   2.2822974
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                2.0459737    1.8317046   2.2602428
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                1.8759677    1.7377058   2.0142296
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                1.7766280    1.3254495   2.2278064
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                1.9390510    1.6953495   2.1827524
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                1.8195886    1.6968855   1.9422918
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                1.7025673    1.4495167   1.9556179
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                1.8457309    1.6890918   2.0023700
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                1.8343344    1.6942003   1.9744685
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                1.9399233    1.8992036   1.9806429
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                1.9663994    1.8341628   2.0986359
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                2.1401697    2.0941716   2.1861678
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  NA                2.0915394    2.0508263   2.1322525
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                2.0892677    2.0307516   2.1477839
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                1.7004495    1.6112588   1.7896403
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                1.7687183    1.7248358   1.8126008
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                1.7538051    1.6718541   1.8357562
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                1.1754687    1.0912613   1.2596762
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                1.3987395    1.2853658   1.5121133
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                1.2515427    1.1577232   1.3453621
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                1.3891770    1.2065564   1.5717975
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                1.5307838    1.3068338   1.7547337
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                1.4729799    1.2509595   1.6950004
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                1.1419622    0.9770984   1.3068260
6-9 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                1.3140930    1.2000561   1.4281298
6-9 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                1.2455132    1.1409860   1.3500404
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                1.2595599    1.0949815   1.4241383
6-9 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                1.3019456    1.1930299   1.4108614
6-9 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                1.2892710    1.1966924   1.3818497
6-9 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                1.3098496    1.1585705   1.4611287
6-9 months     ki0047075b-MAL-ED          PERU                           <32                  NA                1.1816536    1.0369845   1.3263226
6-9 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                1.3087068    1.0793662   1.5380473
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                1.4270536    1.3105373   1.5435699
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                1.3882002    1.1346907   1.6417096
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                1.4679147    1.2908188   1.6450105
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                1.2306230    1.0419827   1.4192632
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                1.1583904    0.9942192   1.3225617
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                1.2999968    1.0452021   1.5547915
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                1.3154228    1.0799690   1.5508766
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                1.2136165    1.1920715   1.2351614
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                1.2237660    1.1589232   1.2886087
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                1.2161557    0.9139410   1.5183703
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                1.0878304    1.0404241   1.1352368
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                1.2161862    1.0571460   1.3752264
6-9 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                1.5237393    1.4617436   1.5857349
6-9 months     ki1119695-PROBIT           BELARUS                        <32                  NA                1.5753806    1.5426913   1.6080699
6-9 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                1.5726556    1.4960972   1.6492140
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                1.1147800    1.0488637   1.1806964
6-9 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                1.1467059    1.1012226   1.1921893
6-9 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                1.0583502    0.9719383   1.1447621
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38                 NA                1.4815286    1.2763733   1.6866839
6-9 months     ki1148112-LCNI-5           MALAWI                         <32                  NA                1.3152722    1.1833030   1.4472413
6-9 months     ki1148112-LCNI-5           MALAWI                         [32-38)              NA                1.3489714    1.0767929   1.6211500
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.9716669    0.8942020   1.0491318
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.9368864    0.8247490   1.0490237
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.9597183    0.8614416   1.0579950
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                1.4624602    1.2563902   1.6685301
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                1.5155218    1.2817319   1.7493117
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                1.3098370    1.1203225   1.4993515
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                1.1279571    1.0129212   1.2429930
9-12 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                0.9738627    0.8693244   1.0784010
9-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.9101040    0.8252976   0.9949104
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                1.1736832    0.9975229   1.3498436
9-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.9327026    0.7522711   1.1131341
9-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                1.0519398    0.9797309   1.1241487
9-12 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                0.9946380    0.8398567   1.1494193
9-12 months    ki0047075b-MAL-ED          PERU                           <32                  NA                1.1963471    1.0392665   1.3534276
9-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                1.1377016    0.9507752   1.3246280
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.9488065    0.8097391   1.0878739
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                1.0679340    0.7327871   1.4030809
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                1.0180432    0.8448339   1.1912526
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.8865177    0.7063885   1.0666469
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.8176827    0.6054683   1.0298971
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.6869247    0.3571104   1.0167391
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.9564870    0.7914432   1.1215307
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                1.0071807    0.9857996   1.0285617
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.9612143    0.8324160   1.0900126
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.6961932    0.5289011   0.8634854
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.6710006    0.5532823   0.7887189
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                1.1306515    0.2441027   2.0172004
9-12 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                1.4161089    1.3562041   1.4760137
9-12 months    ki1119695-PROBIT           BELARUS                        <32                  NA                1.3769608    1.3252989   1.4286228
9-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                1.3446505    1.2801487   1.4091523
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.9534733    0.8936480   1.0132985
9-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.9024333    0.8615225   0.9433441
9-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.9676220    0.9009113   1.0343328
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                1.1610501    0.9198168   1.4022835
9-12 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                1.1861374    0.8906439   1.4816309
9-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                1.1821339    0.7814667   1.5828011
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.9059558    0.8307040   0.9812076
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.9138784    0.7976397   1.0301172
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.9245681    0.8411967   1.0079394
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                1.2477447    1.1164439   1.3790454
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                1.0985916    0.9727710   1.2244123
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                1.1752589    1.0261233   1.3243945
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.9253041    0.8261339   1.0244743
12-15 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.9592334    0.8817837   1.0366832
12-15 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.9079731    0.8320770   0.9838693
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                1.0131598    0.8488059   1.1775136
12-15 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.9281419    0.7578605   1.0984233
12-15 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.9603302    0.8885611   1.0320994
12-15 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.8606824    0.7647833   0.9565816
12-15 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.7868381    0.6232772   0.9503990
12-15 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.9662335    0.8116477   1.1208192
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.9701546    0.8777156   1.0625935
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.8911482    0.6833992   1.0988971
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                1.0422629    0.7929638   1.2915619
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.7288396    0.6013423   0.8563369
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.8989303    0.5124929   1.2853677
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.8868868    0.7379987   1.0357750
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.7189980    0.4861603   0.9518357
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.8474043    0.8125433   0.8822654
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.7787622    0.6432355   0.9142890
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                1.2386833    1.1142195   1.3631470
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                1.0243080    0.9162640   1.1323521
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                1.1627962    1.0519188   1.2736737
12-15 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.6113173   -0.0503480   1.2729825
12-15 months   ki1119695-PROBIT           BELARUS                        <32                  NA                1.1947218    0.9048728   1.4845708
12-15 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                1.6491935    0.1750593   3.1233278
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.7747789    0.7203030   0.8292549
12-15 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.7968046    0.7525408   0.8410684
12-15 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.7614660    0.6973356   0.8255965
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.8176386    0.7504264   0.8848509
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.8969738    0.7955151   0.9984326
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.8692066    0.7883257   0.9500875
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.9519639    0.8068293   1.0970986
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.8743538    0.6979455   1.0507621
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                1.0097475    0.8509391   1.1685559
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.8553651    0.7212444   0.9894858
15-18 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.8029384    0.7519424   0.8539344
15-18 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.8376396    0.7588508   0.9164284
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.9207638    0.7529313   1.0885962
15-18 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.8751783    0.7119047   1.0384519
15-18 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.8548444    0.7651472   0.9445415
15-18 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.8115194    0.6890532   0.9339856
15-18 months   ki0047075b-MAL-ED          PERU                           <32                  NA                1.0259620    0.8759461   1.1759779
15-18 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.8539455    0.6738842   1.0340067
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.8579317    0.7585445   0.9573190
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                1.2680730    1.0363720   1.4997740
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.8538727    0.7177219   0.9900235
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.7866044    0.6726981   0.9005107
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.7862699    0.5913331   0.9812068
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.6538659    0.4791085   0.8286232
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                1.1927045    0.9657379   1.4196711
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.8987207    0.8616492   0.9357922
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.8804195    0.7048630   1.0559760
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.6685434    0.5504238   0.7866630
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.8056518    0.7521120   0.8591915
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.8681682    0.7019841   1.0343523
15-18 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.9547210    0.7456755   1.1637665
15-18 months   ki1119695-PROBIT           BELARUS                        <32                  NA                1.0319011    0.5120563   1.5517458
15-18 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                1.0260272    0.1760237   1.8760308
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.7114234    0.6326473   0.7901996
15-18 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.8151613    0.7625731   0.8677494
15-18 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.7531551    0.6308686   0.8754417
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.7798298    0.7131018   0.8465579
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.7278246    0.6496582   0.8059911
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.7781313    0.7108201   0.8454426
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.9780437    0.7685543   1.1875330
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.8728129    0.7506001   0.9950256
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.9587402    0.6990310   1.2184494
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.8628693    0.7807303   0.9450082
18-21 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.8676006    0.7932584   0.9419428
18-21 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.9109811    0.8395841   0.9823780
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.7254851    0.5709849   0.8799853
18-21 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.8120338    0.6853913   0.9386762
18-21 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.6964052    0.6286215   0.7641889
18-21 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.8356092    0.7009941   0.9702243
18-21 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.9994565    0.8250217   1.1738914
18-21 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.8801155    0.7688871   0.9913440
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.7456706    0.6482415   0.8430996
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                0.6471890    0.3890002   0.9053777
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.9088091    0.7412631   1.0763551
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.7619963    0.6332244   0.8907682
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.6533473    0.3036671   1.0030276
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.6588676    0.5004779   0.8172572
18-21 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.8616190    0.5995946   1.1236435
18-21 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.8715535    0.1387389   1.6043681
18-21 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                1.0409599    0.7919490   1.2899708
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.8445816    0.7670595   0.9221037
18-21 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.7089739    0.6690606   0.7488872
18-21 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.7522337    0.6300465   0.8744210
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.7289959    0.4995112   0.9584807
18-21 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                0.5498586    0.3169973   0.7827198
18-21 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.6359001    0.4048060   0.8669942
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.8230628    0.7545768   0.8915488
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.7798731    0.7063120   0.8534343
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.7067972    0.6370048   0.7765897
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.8025019    0.6998357   0.9051680
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.9728106    0.8598141   1.0858071
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.7651355    0.6724984   0.8577727
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.7875333    0.6980458   0.8770208
21-24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.8617545    0.8009820   0.9225269
21-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.8096903    0.7510825   0.8682982
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.7096840    0.5889097   0.8304583
21-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.7511415    0.6420491   0.8602340
21-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.8212945    0.7095985   0.9329905
21-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.8573104    0.6810652   1.0335556
21-24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.7624076    0.6193198   0.9054954
21-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.7561901    0.6122915   0.9000886
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.8495434    0.7524155   0.9466714
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                1.2155486    0.5831306   1.8479666
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.8399900    0.6796321   1.0003479
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.7445305    0.6448644   0.8441966
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.6347233    0.4198544   0.8495923
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.6769502    0.5229160   0.8309843
21-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.9277474   -5.1841731   7.0396679
21-24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.9389631    0.5557440   1.3221822
21-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.9173975   -0.0403193   1.8751143
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.6664376    0.6042221   0.7286530
21-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.7490678    0.7134213   0.7847143
21-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.6336585    0.5641354   0.7031817
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.6545694    0.3519800   0.9571588
21-24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                0.9018494    0.6605068   1.1431921
21-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.9059003    0.7032829   1.1085177


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3491161   3.2717886   3.4264437
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                3.8031391   3.6383467   3.9679315
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.2960481   3.1870759   3.4050203
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.5316421   3.3758765   3.6874077
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0501989   2.9295886   3.1708093
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.2696613   3.0951646   3.4441579
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2061985   3.0825156   3.3298814
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.3515519   3.2970118   3.4060920
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8141711   2.7013011   2.9270411
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.5875315   2.5434733   2.6315896
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9147816   1.8504595   1.9791037
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.2288260   2.1021293   2.3555227
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.9080852   1.8302412   1.9859292
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.8753144   1.7759777   1.9746511
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0445080   1.9244992   2.1645168
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.8765676   1.7580590   1.9950762
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8134766   1.7288377   1.8981155
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9401040   1.8974682   1.9827398
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0923463   2.0510631   2.1336294
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7566595   1.7253717   1.7879472
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2440582   1.1939196   1.2941968
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4607769   1.3430762   1.5784776
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2222273   1.1612882   1.2831664
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3014532   1.2353703   1.3675362
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.2525442   1.1613943   1.3436940
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.4301634   1.3359869   1.5243400
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.2258886   1.0940255   1.3577517
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.2179942   1.1975880   1.2384003
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.1426155   1.1021386   1.1830923
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                1.5731047   1.5426930   1.6035164
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.1079428   1.0805938   1.1352919
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                1.3577587   1.2608409   1.4546764
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9638244   0.9162830   1.0113657
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4129719   1.2953507   1.5305931
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9808657   0.9322032   1.0295281
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0778136   1.0136680   1.1419593
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.1090022   1.0147042   1.2033003
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9710975   0.8599937   1.0822013
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8061088   0.6645672   0.9476504
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0004042   0.9688633   1.0319452
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8106649   0.6745544   0.9467754
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.3722625   1.3216679   1.4228570
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.9503206   0.9255547   0.9750866
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.1788096   0.9893217   1.3682975
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9195436   0.8725575   0.9665297
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.1830889   1.1009226   1.2652552
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9265063   0.8804996   0.9725130
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9703198   0.9108527   1.0297869
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8734417   0.7936064   0.9532771
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9782462   0.8934306   1.0630618
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8169458   0.7225030   0.9113885
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.8313011   0.7943319   0.8682702
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0267825   0.9374856   1.1160794
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.1914383   0.8653012   1.5175754
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7864613   0.7595811   0.8133415
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8463325   0.8029895   0.8896755
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9748426   0.8843846   1.0653007
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8317492   0.7874866   0.8760119
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8557048   0.7917206   0.9196890
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8916664   0.8141547   0.9691781
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8909440   0.8081180   0.9737700
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7315725   0.6465481   0.8165969
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9061147   0.8810452   0.9311841
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7947861   0.7590601   0.8305122
15-18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.0285030   0.5623973   1.4946086
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7452175   0.7150258   0.7754093
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7879921   0.7483367   0.8276476
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9279027   0.7990301   1.0567753
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8857196   0.8418371   0.9296020
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7267903   0.6739002   0.7796804
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.9086860   0.8345500   0.9828220
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7666173   0.6845834   0.8486512
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7115890   0.6134511   0.8097268
18-21 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8913428   0.2568085   1.5258772
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7471283   0.7180550   0.7762016
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6693894   0.5307616   0.8080171
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7803676   0.7387346   0.8220005
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.8253408   0.7645970   0.8860847
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8202421   0.7822662   0.8582179
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8045285   0.7325617   0.8764954
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7938145   0.7104356   0.8771934
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8807253   0.7828557   0.9785949
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7026174   0.6218016   0.7834332
21-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.9352461   0.4698355   1.4006568
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6811370   0.6575053   0.7047687
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8211667   0.6788314   0.9635020


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.1365997   -0.3326160    0.0594166
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0689893   -0.1233276    0.2613061
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.2744009   -0.7577614    0.2089596
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.1629160   -0.5618675    0.2360354
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.2447513   -0.0333110    0.5228136
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.3539098    0.0174788    0.6903409
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.1548217   -0.7007268    0.3910835
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0091393   -0.4270551    0.4453337
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  >=38               0.2916416    0.0223826    0.5609007
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.2152673   -0.1542337    0.5847682
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0265596   -0.6892416    0.6361224
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.1050485   -0.5254526    0.3153556
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0573241   -0.3146772    0.4293254
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.2008209   -0.4888570    0.0872152
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.3929713    0.1516664    0.6342763
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.2505166   -0.0995592    0.6005923
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0006039   -0.0710907    0.0722984
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0071072   -0.0811967    0.0954111
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0387999   -0.0741781    0.1517780
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0070513   -0.1505791    0.1364766
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0837013   -0.2660388    0.0986362
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0803887   -0.2528927    0.0921154
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.2615747   -0.1329373    0.6560868
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0397350   -0.2400669    0.3195368
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.1033818   -0.3425449    0.1357814
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0724724   -0.2925898    0.1476451
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0168933   -0.3406143    0.3744010
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0159979   -0.2836082    0.2516125
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.1095516   -0.4321525    0.2130493
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.1148196   -0.4284026    0.1987634
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0993398   -0.5712279    0.3725483
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0630833   -0.2171073    0.3432738
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.1170213   -0.3980732    0.1640305
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0261423   -0.1744712    0.2267557
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.1055889   -0.0449299    0.2561076
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.1320650   -0.0784133    0.3425432
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0486303   -0.0998765    0.0026159
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0509019   -0.1239171    0.0221132
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0682688   -0.0311612    0.1676988
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0533556   -0.0677735    0.1744848
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.2232708    0.0813466    0.3651951
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0760739   -0.0501762    0.2023241
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.1416068   -0.1542516    0.4374651
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0838029   -0.2010677    0.3686736
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.1721308   -0.0289546    0.3732161
6-9 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.1035510   -0.0926452    0.2997472
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0423858   -0.1550700    0.2398415
6-9 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0297112   -0.1606738    0.2200961
6-9 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.1281961   -0.3383536    0.0819614
6-9 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0011428   -0.2797252    0.2774396
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0388534   -0.3178572    0.2401504
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0408611   -0.1711271    0.2528493
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0722325   -0.3213076    0.1768425
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0693739   -0.2468408    0.3855885
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.1018064   -0.3406299    0.1370171
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0916569   -0.3254332    0.1421195
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.1283252   -0.4339283    0.1772778
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0000305   -0.3414621    0.3415231
6-9 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0516413   -0.0220324    0.1253150
6-9 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0489163   -0.0426160    0.1404486
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0319259   -0.0481169    0.1119687
6-9 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0564299   -0.1650952    0.0522355
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.1662564   -0.4119300    0.0794172
6-9 months     ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.1325572   -0.4783073    0.2131930
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0347806   -0.1714787    0.1019176
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0119486   -0.1374655    0.1135682
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0530616   -0.2576126    0.3637358
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.1526232   -0.4343180    0.1290716
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.1540944   -0.3100921    0.0019033
9-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.2178531   -0.3609449   -0.0747614
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.2409806   -0.4935135    0.0115523
9-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.1217435   -0.3132276    0.0697406
9-12 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           <32                  >=38               0.2017090   -0.0193060    0.4227241
9-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.1430636   -0.1007830    0.3869102
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1191275   -0.2437267    0.4819817
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0692367   -0.1528921    0.2913655
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0688350   -0.3466098    0.2089399
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.1995929   -0.5766654    0.1774796
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.0506937   -0.1116152    0.2130026
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0047274   -0.2139881    0.2234429
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0251927   -0.2313302    0.1809448
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.4344583   -0.4678352    1.3367518
9-12 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0391480   -0.1001374    0.0218413
9-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0714584   -0.1447837    0.0018670
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0510400   -0.1235469    0.0214669
9-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0141487   -0.0754412    0.1037387
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38               0.0250873   -0.3563703    0.4065449
9-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.0210838   -0.4465996    0.4887671
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0079226   -0.1305128    0.1463581
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0186123   -0.0939883    0.1312128
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.1491530   -0.3325425    0.0342365
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0724857   -0.2715014    0.1265299
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0339294   -0.0941149    0.1619736
12-15 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0173309   -0.1443099    0.1096480
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0850179   -0.3229762    0.1529405
12-15 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0528295   -0.2316996    0.1260406
12-15 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0738443   -0.2636407    0.1159520
12-15 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.1055510   -0.0761182    0.2872202
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0790064   -0.3063928    0.1483800
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0721083   -0.1937769    0.3379936
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.1700907   -0.2378438    0.5780253
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.1580473   -0.0381813    0.3542758
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.1284063   -0.1288177    0.3856303
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0597642   -0.2691685    0.3886969
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.2143752   -0.3798388   -0.0489117
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0758870   -0.2431138    0.0913398
12-15 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        <32                  >=38               0.5834045   -0.1154220    1.2822310
12-15 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38               1.0378762   -0.5897649    2.6655174
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0220257   -0.0485572    0.0926086
12-15 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0133129   -0.0978487    0.0712229
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0793352   -0.0422078    0.2008782
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0515680   -0.0546915    0.1578275
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0776101   -0.3065920    0.1513717
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0577836   -0.1586206    0.2741877
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0524267   -0.1962691    0.0914157
15-18 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0177255   -0.1733117    0.1378607
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0455854   -0.2830117    0.1918408
15-18 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0659194   -0.2597780    0.1279392
15-18 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           <32                  >=38               0.2144426    0.0193205    0.4095647
15-18 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0424261   -0.1750950    0.2599471
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.4101412    0.1580239    0.6622586
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0040590   -0.1726261    0.1645080
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0003344   -0.2315084    0.2308395
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.1327385   -0.3409949    0.0755178
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.2939839   -0.5380309   -0.0499368
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.3122850   -0.5794716   -0.0450984
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.1371084    0.0079879    0.2662288
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.1996248   -0.0040333    0.4032828
15-18 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0771801   -0.4761176    0.6304777
15-18 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0713063   -0.8105273    0.9531398
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.1037378    0.0088807    0.1985949
15-18 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0417317   -0.1039723    0.1874357
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0520052   -0.1539942    0.0499838
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0016985   -0.0972371    0.0938402
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.1052308   -0.3493604    0.1388989
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0193034   -0.3575383    0.3189314
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0047313   -0.1059665    0.1154292
18-21 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0481118   -0.0605494    0.1567729
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0865487   -0.1133164    0.2864137
18-21 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0290799   -0.2011510    0.1429913
18-21 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           <32                  >=38               0.1638473   -0.0613922    0.3890867
18-21 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0445063   -0.1391923    0.2282049
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0984816   -0.3744415    0.1774782
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.1631385   -0.0306760    0.3569531
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.1086490   -0.4817174    0.2644195
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.1031287   -0.3085814    0.1023240
18-21 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0099345   -0.7718812    0.7917501
18-21 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.1793409   -0.2023654    0.5610472
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.1356077   -0.2231632   -0.0480522
18-21 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0923479   -0.2370111    0.0523154
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.1791374   -0.5128378    0.1545630
18-21 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.0930958   -0.4145410    0.2283493
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0431897   -0.1438778    0.0574985
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.1162656   -0.2146348   -0.0178963
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.1703087    0.0173052    0.3233123
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0373663   -0.1762302    0.1014975
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0742212   -0.0344506    0.1828929
21-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0221570   -0.0852837    0.1295977
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0414575   -0.1191098    0.2020248
21-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.1116105   -0.0531352    0.2763562
21-24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0949028   -0.3218052    0.1319996
21-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.1011203   -0.3276210    0.1253804
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.3660052   -0.2738279    1.0058383
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0095534   -0.1970328    0.1779259
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.1098072   -0.3464402    0.1268258
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0675804   -0.2522783    0.1171175
21-24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0112157   -6.0163842    6.0388156
21-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0103499   -6.1777739    6.1570740
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0826303    0.0111101    0.1541504
21-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0327790   -0.1260243    0.0604663
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38               0.2472800   -0.1529037    0.6474637
21-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.2513309   -0.1116231    0.6142849


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0113613   -0.1087072    0.0859846
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1385893   -0.3633682    0.0861896
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.2330174   -0.0010514    0.4670863
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0203877   -0.3471870    0.3064115
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1775983    0.0115956    0.3436010
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0236657   -0.1388792    0.0915479
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0481431   -0.1851842    0.0888980
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.3626216    0.1200183    0.6052248
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0027079   -0.0691117    0.0636958
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0251015   -0.0537270    0.1039300
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0541671   -0.1325892    0.0242549
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0607735   -0.1089294    0.2304764
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0672084   -0.2255990    0.0911822
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0304039   -0.2363845    0.1755766
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.1162852   -0.3114290    0.0788586
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0005999   -0.0733926    0.0745923
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0061120   -0.1011176    0.0888935
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.1057696   -0.0434228    0.2549621
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0478234   -0.0997826    0.0041358
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0562099   -0.0252758    0.1376957
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0685895    0.0039170    0.1332620
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0715999   -0.0799041    0.2231040
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0802651   -0.0722407    0.2327709
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0418933   -0.1035805    0.1873672
6-9 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0573055   -0.2002261    0.0856151
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0031099   -0.0459252    0.0521449
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0047344   -0.1376685    0.1281996
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0974287   -0.3283420    0.1334846
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0735402   -0.3682764    0.2211960
6-9 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0493655   -0.0181307    0.1168616
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0068372   -0.0677455    0.0540710
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.1237699   -0.3036682    0.0561284
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0078426   -0.0653531    0.0496679
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0494883   -0.2027882    0.1038116
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.1470915   -0.2522063   -0.0419766
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0958696   -0.2504473    0.0587081
9-12 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1143642   -0.0223458    0.2510743
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0222910   -0.0336970    0.0782790
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0804089   -0.2197627    0.0589449
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.0439173   -0.1149948    0.2028294
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                 0.1144716   -0.0836889    0.3126322
9-12 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0438464   -0.1004254    0.0127326
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0031527   -0.0589619    0.0526565
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0177595   -0.2347031    0.2702221
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0135878   -0.0420495    0.0692251
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0646558   -0.1710596    0.0417481
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0012022   -0.0884969    0.0909013
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0428399   -0.1835713    0.0978914
12-15 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0127593   -0.0852931    0.1108117
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0080916   -0.0478070    0.0639902
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0881062   -0.0149108    0.1911232
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.1123031   -0.1452410    0.3698471
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.2119007   -0.3606362   -0.0631653
12-15 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.5801210   -0.1313382    1.2915802
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0116824   -0.0392445    0.0626093
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0286939   -0.0207492    0.0781369
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0228787   -0.0957435    0.1415009
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0236159   -0.1461979    0.0989661
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0650590   -0.2175987    0.0874808
15-18 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0801469   -0.0337427    0.1940366
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0330123   -0.0152367    0.0812613
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0550319   -0.1472684    0.0372046
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.2865898   -0.5160557   -0.0571240
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                 0.1262428    0.0084151    0.2440704
15-18 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0737820   -0.4287018    0.5762657
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0337941   -0.0398786    0.1074668
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0081623   -0.0418438    0.0581684
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0501410   -0.2100224    0.1097404
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0228503   -0.0529196    0.0986202
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0013052   -0.1360863    0.1386967
18-21 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0730768   -0.0397430    0.1858966
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0209467   -0.0287961    0.0706895
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0504073   -0.1550962    0.0542815
18-21 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0297238   -0.6584871    0.7179347
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0974533   -0.1699977   -0.0249088
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0596066   -0.2682628    0.1490496
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0426952   -0.0952950    0.0099046
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0228390   -0.0579969    0.1036749
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0327088   -0.0451915    0.1106091
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0948445   -0.0221360    0.2118250
21-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0634959   -0.1998176    0.0728259
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0311819   -0.0411544    0.1035181
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0419131   -0.1295456    0.0457194
21-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0074987   -5.7940139    5.8090114
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0146995   -0.0434359    0.0728348
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.1665973   -0.0946532    0.4278478
