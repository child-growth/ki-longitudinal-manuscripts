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

**Outcome Variable:** y_rate_haz

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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38           68     150  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32            30     150  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     150  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38           26      65  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32            16      65  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)        23      65  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38           28     121  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          <32            41     121  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)        52     121  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38           13      54  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32             9      54  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)        32      54  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           >=38           27      79  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           <32            26      79  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)        26      79  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           49      70  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32             7      70  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        14      70  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           42      91  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      91  y_rate_haz       
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        34      91  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38           37    1258  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32          1049    1258  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)       172    1258  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS                        >=38          680   14760  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS                        <32         11825   14760  y_rate_haz       
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)      2255   14760  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38          214     706  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32           316     706  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)       176     706  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38           68     148  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32            30     148  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)        50     148  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32            18      79  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38           34     157  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          <32            53     157  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)        70     157  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38           17      79  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32            15      79  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           >=38           27      83  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           <32            28      83  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)        28      83  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           63      87  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32             9      87  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15      87  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100  y_rate_haz       
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38           37    1121  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32           935    1121  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)       149    1121  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS                        >=38          594   12816  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS                        <32         10269   12816  y_rate_haz       
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)      1953   12816  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38          228     779  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32           348     779  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)       203     779  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38           67     147  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <32            30     147  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)        50     147  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <32            18      79  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38           34     159  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          <32            53     159  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          INDIA                          [32-38)        72     159  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38           16      78  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          <32            15      78  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          NEPAL                          [32-38)        47      78  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           >=38           26      82  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           <32            28      82  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          PERU                           [32-38)        28      82  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           62      84  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      84  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        14      84  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           47      97  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      97  y_rate_haz       
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        35      97  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38           40    1141  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <32           954    1141  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)       147    1141  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38           35     314  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <32           211     314  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        68     314  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS                        >=38          563   11986  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS                        <32          9605   11986  y_rate_haz       
6-9 months     ki1119695-PROBIT           BELARUS                        [32-38)      1818   11986  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38          225     792  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      <32           365     792  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      [32-38)       202     792  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38           18      68  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         <32            36      68  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         [32-38)        14      68  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38           68     147  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32            30     147  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)        49     147  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <32            18      79  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38           36     159  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          <32            52     159  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)        71     159  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38           16      78  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          <32            15      78  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)        47      78  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           >=38           26      80  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           <32            26      80  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          PERU                           [32-38)        28      80  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           62      84  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             7      84  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15      84  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           46      95  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      95  y_rate_haz       
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        34      95  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38           42    1143  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32           951    1143  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)       150    1143  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38           35     311  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32           206     311  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        70     311  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS                        >=38          583   12237  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS                        <32          9798   12237  y_rate_haz       
9-12 months    ki1119695-PROBIT           BELARUS                        [32-38)      1856   12237  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38          258     898  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      <32           424     898  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       216     898  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38           12      46  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         <32            25      46  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)         9      46  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           68     145  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <32            28     145  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        49     145  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      79  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38           36     159  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          <32            52     159  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          INDIA                          [32-38)        71     159  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      79  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          <32            15      79  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           >=38           27      79  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           <32            25      79  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          PERU                           [32-38)        27      79  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           62      84  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             6      84  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      84  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           46      97  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      97  y_rate_haz       
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36      97  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38           41    1165  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <32           975    1165  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)       149    1165  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38           32     303  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32           204     303  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        67     303  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS                        >=38           44     965  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS                        <32           793     965  y_rate_haz       
12-15 months   ki1119695-PROBIT           BELARUS                        [32-38)       128     965  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38          248     852  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      <32           394     852  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       210     852  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         >=38            4      14  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         <32             8      14  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         [32-38)         2      14  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           66     146  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <32            28     146  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     146  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38           29      77  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      77  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        30      77  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38           35     160  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          <32            53     160  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72     160  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      78  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          <32            15      78  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        46      78  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           >=38           26      80  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           <32            27      80  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          PERU                           [32-38)        27      80  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           62      85  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             7      85  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      85  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           46      96  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            14      96  y_rate_haz       
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36      96  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38           38    1168  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <32           986    1168  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)       144    1168  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38           31     291  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32           200     291  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        60     291  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS                        >=38            9     258  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS                        <32           218     258  y_rate_haz       
15-18 months   ki1119695-PROBIT           BELARUS                        [32-38)        31     258  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38          222     763  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      <32           351     763  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       190     763  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         >=38            4      13  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         <32             7      13  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         [32-38)         2      13  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           66     147  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <32            29     147  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     147  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38           29      77  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      77  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        30      77  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38           35     159  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          <32            52     159  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72     159  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      78  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          <32            15      78  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        46      78  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           >=38           26      77  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           <32            25      77  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          PERU                           [32-38)        26      77  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           63      87  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      87  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      87  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           43      92  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            14      92  y_rate_haz       
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        35      92  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS                        >=38            6     211  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS                        <32           180     211  y_rate_haz       
18-21 months   ki1119695-PROBIT           BELARUS                        [32-38)        25     211  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38          222     752  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      <32           350     752  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       180     752  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38           18      63  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         <32            31      63  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         [32-38)        14      63  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           66     147  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32            29     147  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     147  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30      79  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      79  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38           36     160  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          <32            52     160  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72     160  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      79  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          <32            15      79  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           >=38           26      76  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           <32            25      76  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          PERU                           [32-38)        25      76  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           65      89  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      89  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           45      96  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      96  y_rate_haz       
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36      96  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS                        >=38            8     204  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS                        <32           165     204  y_rate_haz       
21-24 months   ki1119695-PROBIT           BELARUS                        [32-38)        31     204  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38          244     832  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      <32           390     832  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       198     832  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38           16      55  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         <32            28      55  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)        11      55  y_rate_haz       


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
![](/tmp/ae6b2d2a-b0e2-48db-bad1-ef31c6e8f1f2/08810bf7-3b9b-4652-9a13-47b45539ccd5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ae6b2d2a-b0e2-48db-bad1-ef31c6e8f1f2/08810bf7-3b9b-4652-9a13-47b45539ccd5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ae6b2d2a-b0e2-48db-bad1-ef31c6e8f1f2/08810bf7-3b9b-4652-9a13-47b45539ccd5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.1039328   -0.1827154   -0.0251503
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.2486394   -0.3073258   -0.1899530
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.0738268   -0.1609216    0.0132680
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.2655202    0.1184926    0.4125479
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.0565132   -0.1363990    0.2494253
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.0952478   -0.0421667    0.2326623
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.2110751   -0.3398307   -0.0823195
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.0564504   -0.1260178    0.0131170
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.0286624   -0.1401853    0.0828605
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0087868   -0.1734460    0.1910197
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.0115324   -0.2088560    0.1857911
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                 0.0344348   -0.0575259    0.1263956
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.2999769   -0.4068069   -0.1931468
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  NA                -0.1594340   -0.2584021   -0.0604659
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                -0.2164126   -0.3638953   -0.0689300
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.1041060   -0.2043219   -0.0038902
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.1566827   -0.4867251    0.1733598
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.1701766   -0.3754167    0.0350636
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1244906   -0.2122851   -0.0366961
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1185431   -0.2514482    0.0143620
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.2345905   -0.3504615   -0.1187194
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1381070   -0.1948479   -0.0813661
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.1153036   -0.1403616   -0.0902456
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.1840080   -0.3128634   -0.0551527
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.4210315   -0.4775670   -0.3644960
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  NA                -0.4264684   -0.4859638   -0.3669730
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                -0.4186876   -0.4855890   -0.3517861
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.5293153   -0.5752969   -0.4833337
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.5164150   -0.5545506   -0.4782794
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.5796884   -0.6365629   -0.5228139
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0116502   -0.0593933    0.0360928
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.0373572   -0.0957714    0.0210571
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.0544814   -0.1129356    0.0039727
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0555704   -0.0386418    0.1497825
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.2228689    0.0566409    0.3890969
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.0578360   -0.0358653    0.1515373
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0048777   -0.0778331    0.0875885
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.0771872   -0.1660590    0.0116846
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.0523806   -0.1297151    0.0249539
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0007100   -0.1504509    0.1518708
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                 0.0486594   -0.0759168    0.1732357
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.0575785   -0.1155663    0.0004094
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1004802   -0.0062243    0.2071847
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  NA                 0.0347172   -0.0662472    0.1356815
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                -0.0128568   -0.1142017    0.0884882
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0494797   -0.1135083    0.0145490
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.1020784   -0.3183353    0.1141784
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0171357   -0.1343106    0.1000392
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0714778   -0.1288662   -0.0140895
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1301084   -0.2339387   -0.0262780
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0625483   -0.1429113    0.0178147
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0504646   -0.1015210    0.0005918
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.0173375   -0.0348546    0.0001797
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.0009162   -0.0582368    0.0564043
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0676150    0.0481619    0.0870680
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  NA                 0.0468938    0.0275316    0.0662561
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.0429014    0.0136495    0.0721532
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1355953   -0.1749999   -0.0961907
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.0847252   -0.1070622   -0.0623883
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.0975738   -0.1366171   -0.0585305
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.1120351   -0.1568587   -0.0672115
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.0164051   -0.0498731    0.0170630
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.0765545   -0.1363302   -0.0167788
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0346792   -0.1130880    0.0437296
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                -0.0479885   -0.1641597    0.0681826
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.0077127   -0.0862783    0.1017036
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0812155   -0.1385640   -0.0238669
6-9 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.0719977   -0.1138488   -0.0301467
6-9 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.0872025   -0.1340505   -0.0403544
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0429799   -0.1196802    0.0337203
6-9 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.0242038   -0.0800705    0.0316628
6-9 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.0595285   -0.1017085   -0.0173486
6-9 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0433492   -0.1190972    0.0323987
6-9 months     ki0047075b-MAL-ED          PERU                           <32                  NA                -0.0898872   -0.1613996   -0.0183749
6-9 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                -0.0243227   -0.1314900    0.0828446
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0010910   -0.0503889    0.0525708
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0133949   -0.1311157    0.1043259
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.0260373   -0.0486750    0.1007497
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0580971   -0.1415081    0.0253140
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1590654   -0.2312792   -0.0868517
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0357037   -0.1682151    0.0968077
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0451277   -0.1369148    0.0466593
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.0873374   -0.0972192   -0.0774556
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.1061628   -0.2023438   -0.0099819
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0879201   -0.2003263    0.0244860
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                -0.1310621   -0.1555793   -0.1065448
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.0762291   -0.1486804   -0.0037778
6-9 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0252578    0.0002960    0.0502196
6-9 months     ki1119695-PROBIT           BELARUS                        <32                  NA                 0.0505840    0.0355180    0.0656500
6-9 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.0508180    0.0161425    0.0854935
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1168971   -0.1467985   -0.0869957
6-9 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.0972604   -0.1169905   -0.0775303
6-9 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.1436467   -0.1844304   -0.1028630
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0591132   -0.0417340    0.1599603
6-9 months     ki1148112-LCNI-5           MALAWI                         <32                  NA                -0.0483136   -0.1104873    0.0138601
6-9 months     ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -0.0359021   -0.1592193    0.0874152
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0968752   -0.1296019   -0.0641485
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.0921004   -0.1286171   -0.0555836
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.1003342   -0.1674057   -0.0332626
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0630095   -0.0274887    0.1535078
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.1351375    0.0148946    0.2553804
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.0130260   -0.0532421    0.0792942
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0275565   -0.0729967    0.0178837
9-12 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.1123347   -0.1465060   -0.0781634
9-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.1034810   -0.1318628   -0.0750993
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0055562   -0.0612430    0.0723554
9-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.0714656   -0.1410164   -0.0019148
9-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.0589796   -0.0885719   -0.0293872
9-12 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0644279   -0.1225000   -0.0063557
9-12 months    ki0047075b-MAL-ED          PERU                           <32                  NA                 0.0070970   -0.0862540    0.1004480
9-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                 0.0448126   -0.0649704    0.1545956
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.1155567   -0.1726333   -0.0584801
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0696293   -0.2131818    0.0739232
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0762157   -0.1495062   -0.0029251
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1162096   -0.1978117   -0.0346074
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1037609   -0.1993273   -0.0081944
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.1934258   -0.3130783   -0.0737734
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1747615   -0.2304778   -0.1190452
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.0898258   -0.1018638   -0.0777878
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.1081956   -0.1624633   -0.0539279
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.1561043   -0.2513696   -0.0608390
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                -0.2027251   -0.2491810   -0.1562692
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.0359502   -0.4018933    0.3299929
9-12 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0570084    0.0293654    0.0846514
9-12 months    ki1119695-PROBIT           BELARUS                        <32                  NA                 0.0375797    0.0161443    0.0590151
9-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.0225757   -0.0048545    0.0500059
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0954481   -0.1202723   -0.0706238
9-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.1144489   -0.1327514   -0.0961463
9-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.0804550   -0.1104238   -0.0504862
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0342592   -0.1289118    0.0603935
9-12 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                -0.0108929   -0.1338573    0.1120714
9-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -0.0087416   -0.1727251    0.1552419
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0624597   -0.0932263   -0.0316931
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.0859056   -0.1201747   -0.0516365
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.0397623   -0.0809625    0.0014380
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0174493   -0.0489809    0.0838794
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.0098757   -0.0468390    0.0665904
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.0045284   -0.0528273    0.0618841
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0418714   -0.0863767    0.0026339
12-15 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.0520074   -0.0800689   -0.0239459
12-15 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.0624721   -0.1033744   -0.0215699
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0201425   -0.0931424    0.0528575
12-15 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.0589740   -0.0954375   -0.0225105
12-15 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.0488252   -0.0842290   -0.0134214
12-15 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0720310   -0.1204668   -0.0235951
12-15 months   ki0047075b-MAL-ED          PERU                           <32                  NA                -0.1652945   -0.2261512   -0.1044379
12-15 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                -0.0104459   -0.0850530    0.0641611
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0422398   -0.0778416   -0.0066380
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0806234   -0.1574820   -0.0037648
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0132647   -0.1100483    0.0835190
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1627101   -0.2361673   -0.0892529
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0720662   -0.2419802    0.0978478
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0354056   -0.0862367    0.0154256
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.2147893   -0.2531269   -0.1764517
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.0753497   -0.0864731   -0.0642264
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.0358252   -0.1356881    0.0640376
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                 0.0804646    0.0226176    0.1383116
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                 0.0045356   -0.0384956    0.0475669
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                 0.0705861    0.0176861    0.1234861
12-15 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1733489   -0.4205065    0.0738087
12-15 months   ki1119695-PROBIT           BELARUS                        <32                  NA                 0.0085220   -0.1086203    0.1256643
12-15 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.2008797   -0.1738350    0.5755944
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0988118   -0.1190990   -0.0785246
12-15 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.0791118   -0.0944216   -0.0638020
12-15 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.0983749   -0.1227980   -0.0739517
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0532112   -0.0771272   -0.0292953
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.0006539   -0.0375016    0.0361938
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.0200543   -0.0521649    0.0120563
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0465699   -0.0967095    0.0035697
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                -0.0533661   -0.1152456    0.0085134
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                -0.0173525   -0.0748990    0.0401940
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0077201   -0.0460930    0.0306527
15-18 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.0550314   -0.0800321   -0.0300307
15-18 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.0464211   -0.0695180   -0.0233241
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0597333   -0.1072678   -0.0121987
15-18 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.0684186   -0.1249713   -0.0118658
15-18 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.0500440   -0.0836132   -0.0164749
15-18 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0686163   -0.1150859   -0.0221467
15-18 months   ki0047075b-MAL-ED          PERU                           <32                  NA                 0.0558686    0.0154286    0.0963085
15-18 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                -0.0071066   -0.0704438    0.0562306
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0436615   -0.0798437   -0.0074794
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                 0.0988467    0.0181821    0.1795114
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0425738   -0.0880219    0.0028742
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0429476   -0.0838423   -0.0020528
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0274477   -0.0969597    0.0420643
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.1037918   -0.1685522   -0.0390313
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.0993386    0.0317149    0.1669623
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.0142877   -0.0280733   -0.0005021
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.0200529   -0.0851718    0.0450660
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0939657   -0.1477356   -0.0401958
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                -0.0304407   -0.0509407   -0.0099408
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                 0.0221231   -0.0419087    0.0861550
15-18 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0494026   -0.1285068    0.0297017
15-18 months   ki1119695-PROBIT           BELARUS                        <32                  NA                -0.0106858   -0.2052433    0.1838717
15-18 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                -0.0143809   -0.3157212    0.2869593
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0647454   -0.0915592   -0.0379316
15-18 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.0324834   -0.0509986   -0.0139683
15-18 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.0525518   -0.0948891   -0.0102144
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0266515   -0.0530805   -0.0002225
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.0078198   -0.0231412    0.0075015
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.0119317   -0.0438807    0.0200173
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0171844   -0.0929502    0.0585813
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                -0.0915669   -0.1502741   -0.0328597
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                -0.0339515   -0.1171515    0.0492486
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0095968   -0.0377241    0.0185306
18-21 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                 0.0023033   -0.0209995    0.0256060
18-21 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                 0.0146384   -0.0084669    0.0377438
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0554507   -0.1062908   -0.0046106
18-21 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                 0.0189092   -0.0206938    0.0585122
18-21 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.0617381   -0.0844212   -0.0390551
18-21 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0060854   -0.0381911    0.0503619
18-21 months   ki0047075b-MAL-ED          PERU                           <32                  NA                 0.0252709   -0.0309251    0.0814668
18-21 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                 0.0047348   -0.0322436    0.0417132
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0482845   -0.0810541   -0.0155150
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0927999   -0.1781038   -0.0074961
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.0120261   -0.0494927    0.0735450
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0167860   -0.0613052    0.0277333
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0726319   -0.1943313    0.0490674
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0493000   -0.1012185    0.0026186
18-21 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0478358   -0.1372917    0.0416200
18-21 months   ki1119695-PROBIT           BELARUS                        <32                  NA                -0.0356310   -0.2873808    0.2161188
18-21 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.0272236   -0.0387099    0.0931571
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0151259   -0.0129951    0.0432468
18-21 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.0368402   -0.0505828   -0.0230976
18-21 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.0127104   -0.0537561    0.0283352
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0278346   -0.1073271    0.0516579
18-21 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                -0.1084766   -0.1930631   -0.0238901
18-21 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -0.0555214   -0.1188087    0.0077659
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0459149    0.0209144    0.0709154
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                 0.0606689    0.0283634    0.0929744
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                 0.0069132   -0.0169362    0.0307625
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0176994   -0.0169195    0.0523183
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.0802013    0.0432266    0.1171761
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                -0.0041754   -0.0416311    0.0332803
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0046920   -0.0255517    0.0349357
21-24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                 0.0442929    0.0224759    0.0661098
21-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                 0.0217121    0.0021871    0.0412371
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0079512   -0.0435737    0.0594761
21-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                 0.0039426   -0.0417646    0.0496498
21-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                 0.0252676   -0.0108474    0.0613827
21-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0837556    0.0206022    0.1469091
21-24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                 0.0343914   -0.0103339    0.0791167
21-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                 0.0601807    0.0118088    0.1085526
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0443685    0.0134110    0.0753259
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                 0.1494046   -0.0461148    0.3449241
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.0316490   -0.0229631    0.0862611
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0090082   -0.0241105    0.0421270
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0186697   -0.1050097    0.0676703
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.0108617   -0.0434669    0.0651903
21-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0825844   -1.9143983    2.0795671
21-24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                 0.0606234   -0.0708380    0.1920848
21-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.0577322   -0.2731883    0.3886527
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0136241   -0.0362749    0.0090267
21-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                 0.0238942    0.0124095    0.0353788
21-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.0132805   -0.0366344    0.0100734
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0090891   -0.1062125    0.0880343
21-24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                 0.0671990   -0.0135800    0.1479780
21-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                 0.0514037   -0.0185401    0.1213476


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1260188   -0.1657795   -0.0862581
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1518150    0.0637580    0.2398721
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0917652   -0.1479657   -0.0355647
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0205991   -0.0568547    0.0980529
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.2716212   -0.3319685   -0.2112740
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1225778   -0.2105573   -0.0345983
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1589292   -0.2212938   -0.0965646
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.1273591   -0.1551143   -0.0996039
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4283578   -0.4872572   -0.3694583
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5345707   -0.5567405   -0.5124010
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0312090   -0.0615144   -0.0009036
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1002473    0.0416171    0.1588775
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0307929   -0.0668151    0.0052294
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0602143   -0.1076559   -0.0127727
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0378684   -0.0182723    0.0940091
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0493444   -0.1048352    0.0061465
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0743387   -0.1146928   -0.0339846
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0168853   -0.0357401    0.0019694
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0473064    0.0279787    0.0666342
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0986159   -0.1135079   -0.0837240
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0709042   -0.0926163   -0.0491920
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0021404   -0.0535226    0.0492418
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0816309   -0.1082289   -0.0550329
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0541507   -0.0830383   -0.0252631
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0634305   -0.1036884   -0.0231725
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0038691   -0.0377229    0.0454611
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0763082   -0.1319197   -0.0206968
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0817065   -0.0897503   -0.0736627
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1052304   -0.1233192   -0.0871417
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0492573    0.0350159    0.0634988
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1203205   -0.1323439   -0.1082972
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0201749   -0.0631904    0.0228406
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0975034   -0.1174913   -0.0775156
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0538191    0.0052226    0.1024155
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0916240   -0.1117458   -0.0715022
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0627393   -0.0885935   -0.0368851
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0359027   -0.0763029    0.0044976
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1047043   -0.1505805   -0.0588280
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1543999   -0.2133860   -0.0954138
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0809694   -0.0945744   -0.0673643
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1462637   -0.2015231   -0.0910043
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0365227    0.0156293    0.0574161
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0889435   -0.0990780   -0.0788091
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0165676   -0.0947634    0.0616283
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0522301   -0.0703393   -0.0341208
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0090675   -0.0224265    0.0405616
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0505071   -0.0684609   -0.0325533
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0454500   -0.0683796   -0.0225205
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0723353   -0.1031807   -0.0414900
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0394624   -0.0722101   -0.0067147
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0819479   -0.1193613   -0.0445345
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0856674   -0.0993862   -0.0719486
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                 0.0088746   -0.0268397    0.0445889
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0090399   -0.1150257    0.1331055
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0874822   -0.0978258   -0.0771387
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0365770   -0.0524822   -0.0206719
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0344191   -0.0666580   -0.0021802
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0431795   -0.0587210   -0.0276380
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0459633   -0.0696800   -0.0222466
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0200267   -0.0488198    0.0087664
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0317208   -0.0614498   -0.0019918
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0661851   -0.0972883   -0.0350819
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0112160   -0.0212566   -0.0011754
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.0369125   -0.0500204   -0.0238046
15-18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0124803   -0.1858175    0.1608568
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0550045   -0.0661243   -0.0438848
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0239892   -0.0372537   -0.0107247
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0187209   -0.0635079    0.0260661
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0076999   -0.0063780    0.0217778
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0567462   -0.0747600   -0.0387323
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0147818   -0.0104664    0.0400299
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0412863   -0.0693658   -0.0132067
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0373528   -0.0702246   -0.0044810
18-21 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0285309   -0.2459313    0.1888696
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0204501   -0.0304670   -0.0104333
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0662505   -0.1142275   -0.0182735
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0309594    0.0173201    0.0445987
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0212097   -0.0012828    0.0437023
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0255484    0.0124580    0.0386389
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0120812   -0.0119150    0.0360773
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0639043    0.0365607    0.0912478
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0515233    0.0205592    0.0824873
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0056517   -0.0220711    0.0333745
21-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0610453   -0.0945596    0.2166501
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0053807   -0.0133720    0.0026106
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.0501896    0.0009107    0.0994684


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.1447066   -0.2430153   -0.0463978
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0301060   -0.0874910    0.1477031
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.2090071   -0.4503774    0.0323633
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.1702724   -0.3719188    0.0313739
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.1546247    0.0073266    0.3019227
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.1824127    0.0123060    0.3525195
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0203193   -0.2889182    0.2482797
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0256480   -0.1784735    0.2297695
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  >=38               0.1405428   -0.0071810    0.2882667
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0835642   -0.0977835    0.2649119
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0525766   -0.3974987    0.2923454
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0660705   -0.2944709    0.1623298
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0059475   -0.1550910    0.1669860
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.1100999   -0.2557691    0.0355693
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.0228034   -0.0404630    0.0860699
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0459010   -0.1419329    0.0501309
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0054369   -0.0420632    0.0311894
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0023440   -0.0439067    0.0485947
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0129003   -0.0468891    0.0726897
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0503731   -0.1232150    0.0224688
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0257069   -0.1012078    0.0497939
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0428312   -0.1183405    0.0326781
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.1672985   -0.0238754    0.3584724
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0022656   -0.1315499    0.1360811
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0820649   -0.2063447    0.0422150
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0572583   -0.1710128    0.0564962
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0479495   -0.1466041    0.2425030
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0582884   -0.2207489    0.1041720
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0657630   -0.2143556    0.0828295
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.1133370   -0.2608705    0.0341966
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0525988   -0.2781352    0.1729377
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0323440   -0.1011837    0.1658716
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0586305   -0.1782578    0.0609967
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0089295   -0.0916259    0.1094849
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.0331272   -0.0197130    0.0859674
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0495484   -0.0210908    0.1201876
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0207211   -0.0423049    0.0008627
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0247136   -0.0588771    0.0094499
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0508701    0.0056111    0.0961291
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0380215   -0.0175186    0.0935617
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0956300    0.0392541    0.1520059
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0354806   -0.0384885    0.1094497
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0133093   -0.1549543    0.1283357
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0423919   -0.0812198    0.1660036
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0092177   -0.0616953    0.0801307
6-9 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0059870   -0.0811717    0.0691977
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0187761   -0.0782898    0.1158420
6-9 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0165486   -0.1053943    0.0722971
6-9 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0465380   -0.1505942    0.0575183
6-9 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0190266   -0.1117646    0.1498177
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0144859   -0.1429707    0.1139990
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0249464   -0.0657846    0.1156773
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.1009684   -0.2114624    0.0095257
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0223934   -0.1369844    0.1817711
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.0422096   -0.1326516    0.0482323
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0610351   -0.1765658    0.0544956
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0431419   -0.1580499    0.0717661
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0116910   -0.1220395    0.1454215
6-9 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0253262   -0.0045736    0.0552261
6-9 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0255602   -0.0168258    0.0679462
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0196367   -0.0161080    0.0553814
6-9 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0267496   -0.0773490    0.0238498
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.1074268   -0.2283655    0.0135120
6-9 months     ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.0950153   -0.2591668    0.0691363
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0047748   -0.0447685    0.0543181
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0034590   -0.0784295    0.0715115
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0721279   -0.0790706    0.2233265
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0499835   -0.1637087    0.0637417
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0847782   -0.1417132   -0.0278432
9-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0759245   -0.1295326   -0.0223164
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0770218   -0.1723594    0.0183158
9-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0645358   -0.1382702    0.0091986
9-12 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0715249   -0.0373785    0.1804283
9-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.1092404   -0.0158444    0.2343253
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0459274   -0.1085558    0.2004106
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0393410   -0.0535527    0.1322348
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0124487   -0.1117500    0.1366474
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0772163   -0.2228515    0.0684190
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.0849356    0.0361434    0.1337279
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0665659   -0.0213743    0.1545060
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0466208   -0.1527897    0.0595480
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.1201541   -0.2580505    0.4983586
9-12 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0194287   -0.0477565    0.0088992
9-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0344327   -0.0685564   -0.0003089
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0190008   -0.0498782    0.0118766
9-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0149931   -0.0238673    0.0538534
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38               0.0233662   -0.1318090    0.1785415
9-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.0255176   -0.1638226    0.2148578
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0234459   -0.0694677    0.0225760
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0226975   -0.0286184    0.0740133
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0075736   -0.0954938    0.0803466
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0129209   -0.1008605    0.0750188
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0101360   -0.0625683    0.0422963
12-15 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0206007   -0.0816129    0.0404114
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0388315   -0.1204187    0.0427556
12-15 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0286827   -0.1101880    0.0528226
12-15 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0932636   -0.1709441   -0.0155830
12-15 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0615851   -0.0278516    0.1510217
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0383836   -0.1230874    0.0463201
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0289751   -0.0741489    0.1320991
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0906439   -0.0968969    0.2781846
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.1273045    0.0375420    0.2170671
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.1394396    0.0943787    0.1845005
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.1789641    0.0509070    0.3070211
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              -0.0759289   -0.1481690   -0.0036889
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              -0.0098785   -0.0882878    0.0685308
12-15 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        <32                  >=38               0.1818709   -0.0803933    0.4441351
12-15 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.3742286   -0.0934275    0.8418847
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0197000   -0.0058038    0.0452039
12-15 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0004369   -0.0314688    0.0323426
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0525573    0.0088214    0.0962933
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0331569   -0.0070290    0.0733429
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0067962   -0.0864442    0.0728518
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0292174   -0.0473753    0.1058101
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0473112   -0.0932467   -0.0013758
15-18 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0387010   -0.0835311    0.0061292
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0086853   -0.0830942    0.0657236
15-18 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0096892   -0.0485644    0.0679428
15-18 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           <32                  >=38               0.1244849    0.0643583    0.1846115
15-18 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0615098   -0.0173758    0.1403953
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1425082    0.0541005    0.2309160
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0010877   -0.0570043    0.0591796
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0154999   -0.0657039    0.0967038
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0608442   -0.1367697    0.0150814
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.1136263   -0.1886378   -0.0386148
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.1193915   -0.2000035   -0.0387796
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.0635249    0.0062213    0.1208285
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.1160888    0.0324730    0.1997046
15-18 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0387168   -0.1690606    0.2464942
15-18 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0350216   -0.2797775    0.3498208
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0322620   -0.0003618    0.0648857
15-18 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0121937   -0.0378871    0.0622744
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0188317   -0.0118732    0.0495365
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0147198   -0.0271048    0.0565443
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0743825   -0.1689983    0.0202334
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0167670   -0.1248407    0.0913066
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0119000   -0.0247574    0.0485575
18-21 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0242352   -0.0124515    0.0609219
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0743598    0.0091569    0.1395628
18-21 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0062875   -0.0621568    0.0495818
18-21 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0191855   -0.0529804    0.0913513
18-21 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0013506   -0.0596181    0.0569169
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0445154   -0.1358970    0.0468662
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0603107   -0.0093916    0.1300130
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0558460   -0.1853527    0.0736607
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0325140   -0.1012632    0.0362352
18-21 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0122048   -0.2555090    0.2799186
18-21 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0750595   -0.0434424    0.1935614
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0519661   -0.0833057   -0.0206265
18-21 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0278363   -0.0777551    0.0220824
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0806420   -0.1969809    0.0356970
18-21 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.0276868   -0.1304346    0.0750611
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0147540   -0.0263743    0.0558823
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0390017   -0.0737406   -0.0042628
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0625019    0.0113339    0.1136700
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0218748   -0.0727378    0.0289882
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0396009    0.0022330    0.0769687
21-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0170202   -0.0189748    0.0530151
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0040086   -0.0734523    0.0654351
21-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0173164   -0.0458141    0.0804469
21-24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0493642   -0.1271969    0.0284685
21-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0235749   -0.1034722    0.0563224
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1050362   -0.0929189    0.3029913
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0127194   -0.0754956    0.0500567
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0276779   -0.1200079    0.0646520
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0018534   -0.0615605    0.0652673
21-24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0219610   -1.9907237    1.9468017
21-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0248522   -2.0427262    1.9930218
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0375183    0.0121330    0.0629035
21-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0003436   -0.0323003    0.0329874
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38               0.0762881   -0.0523142    0.2048905
21-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.0604928   -0.0589984    0.1799840


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0220860   -0.0895806    0.0454087
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1137052   -0.2331043    0.0056939
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.1193099   -0.0005877    0.2392074
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0118123   -0.1405638    0.1641884
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0283556   -0.0675953    0.1243066
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0184718   -0.0794891    0.0425455
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0344387   -0.1023903    0.0335130
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.0107479   -0.0481180    0.0696137
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0073262   -0.0417603    0.0271078
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0052555   -0.0479700    0.0374591
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0195588   -0.0537274    0.0146098
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0446769   -0.0341155    0.1234694
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0356705   -0.1166318    0.0452908
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0609243   -0.1985784    0.0767298
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0626118   -0.1519664    0.0267428
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0001353   -0.0350989    0.0353695
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0028609   -0.0479399    0.0422181
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.0335793   -0.0164740    0.0836325
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0203085   -0.0424226    0.0018056
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0369794    0.0013838    0.0725750
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0411309    0.0025044    0.0797575
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0325389   -0.0340986    0.0991763
6-9 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0004154   -0.0525804    0.0517495
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0111707   -0.0798379    0.0574964
6-9 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0200812   -0.0897650    0.0496025
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0027781   -0.0188530    0.0244093
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0182112   -0.0814118    0.0449895
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0365788   -0.1250551    0.0518975
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0173103   -0.1270119    0.0923913
6-9 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0239995   -0.0035890    0.0515881
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0034234   -0.0312431    0.0243962
6-9 months     ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0792880   -0.1687983    0.0102222
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0006283   -0.0261180    0.0248615
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0091905   -0.0802584    0.0618775
9-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0640675   -0.1036939   -0.0244411
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0682955   -0.1264895   -0.0101016
9-12 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0285252   -0.0267633    0.0838136
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0108525   -0.0126705    0.0343754
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0381903   -0.0999656    0.0235849
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.0937921    0.0457264    0.1418578
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                 0.0098406   -0.0871434    0.1068247
9-12 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0204857   -0.0465229    0.0055514
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0065045   -0.0167297    0.0297387
9-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0176916   -0.0842858    0.1196690
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0102297   -0.0138288    0.0342881
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0083818   -0.0629882    0.0462247
12-15 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0086357   -0.0504974    0.0332260
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0253076   -0.0909833    0.0403682
12-15 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0003044   -0.0471317    0.0465230
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0027774   -0.0188754    0.0244302
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0807622    0.0136142    0.1479101
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.1291219    0.0814062    0.1768376
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0715900   -0.1379453   -0.0052346
12-15 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.1823887   -0.0841984    0.4489759
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0113296   -0.0076470    0.0303062
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0166342   -0.0012546    0.0345230
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0121508   -0.0287065    0.0530080
15-18 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0354593   -0.0686669   -0.0022518
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0137700   -0.0295888    0.0571287
15-18 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0485896    0.0056402    0.0915391
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0119407   -0.0048862    0.0287676
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0232375   -0.0565203    0.0100452
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1105546   -0.1794564   -0.0416527
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                 0.0570531    0.0038160    0.1102903
15-18 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0369222   -0.1509124    0.2247569
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0097409   -0.0152208    0.0347025
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0026623   -0.0194653    0.0247899
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0015365   -0.0594561    0.0563831
18-21 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0172966   -0.0086262    0.0432194
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0012955   -0.0474194    0.0448283
18-21 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0086964   -0.0276775    0.0450702
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0069982   -0.0105255    0.0245220
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0205668   -0.0566027    0.0154690
18-21 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0193050   -0.2156741    0.2542841
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0355760   -0.0617086   -0.0094434
18-21 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0384159   -0.1105006    0.0336688
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0149555   -0.0345456    0.0046346
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0035103   -0.0254966    0.0325173
21-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0208564   -0.0055321    0.0472450
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0041299   -0.0434978    0.0517577
21-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0198513   -0.0681258    0.0284231
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0071548   -0.0155890    0.0298986
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0033565   -0.0327780    0.0260650
21-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0215392   -1.9171987    1.8741204
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0082434   -0.0132510    0.0297378
21-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0592786   -0.0250248    0.1435821
