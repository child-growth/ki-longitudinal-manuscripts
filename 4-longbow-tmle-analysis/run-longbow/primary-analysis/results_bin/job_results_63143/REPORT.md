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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mage       sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          [20-30)           0       77      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          [20-30)           1        2      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          <20               0        7      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          <20               1        2      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          >=30              0        4      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          >=30              1        0      92  sstunted         
Birth       COHORTS          GUATEMALA                      [20-30)           0      400     852  sstunted         
Birth       COHORTS          GUATEMALA                      [20-30)           1        5     852  sstunted         
Birth       COHORTS          GUATEMALA                      <20               0      120     852  sstunted         
Birth       COHORTS          GUATEMALA                      <20               1        1     852  sstunted         
Birth       COHORTS          GUATEMALA                      >=30              0      321     852  sstunted         
Birth       COHORTS          GUATEMALA                      >=30              1        5     852  sstunted         
Birth       COHORTS          INDIA                          [20-30)           0     3087    4715  sstunted         
Birth       COHORTS          INDIA                          [20-30)           1       93    4715  sstunted         
Birth       COHORTS          INDIA                          <20               0      352    4715  sstunted         
Birth       COHORTS          INDIA                          <20               1       16    4715  sstunted         
Birth       COHORTS          INDIA                          >=30              0     1138    4715  sstunted         
Birth       COHORTS          INDIA                          >=30              1       29    4715  sstunted         
Birth       COHORTS          PHILIPPINES                    [20-30)           0     1802    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    [20-30)           1       19    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    <20               0      368    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    <20               1       10    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    >=30              0      834    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    >=30              1       17    3050  sstunted         
Birth       EE               PAKISTAN                       [20-30)           0       76     239  sstunted         
Birth       EE               PAKISTAN                       [20-30)           1       18     239  sstunted         
Birth       EE               PAKISTAN                       <20               0        1     239  sstunted         
Birth       EE               PAKISTAN                       <20               1        0     239  sstunted         
Birth       EE               PAKISTAN                       >=30              0      115     239  sstunted         
Birth       EE               PAKISTAN                       >=30              1       29     239  sstunted         
Birth       GMS-Nepal        NEPAL                          [20-30)           0      432     696  sstunted         
Birth       GMS-Nepal        NEPAL                          [20-30)           1       14     696  sstunted         
Birth       GMS-Nepal        NEPAL                          <20               0      136     696  sstunted         
Birth       GMS-Nepal        NEPAL                          <20               1       13     696  sstunted         
Birth       GMS-Nepal        NEPAL                          >=30              0       97     696  sstunted         
Birth       GMS-Nepal        NEPAL                          >=30              1        4     696  sstunted         
Birth       IRC              INDIA                          [20-30)           0      313     388  sstunted         
Birth       IRC              INDIA                          [20-30)           1       12     388  sstunted         
Birth       IRC              INDIA                          <20               0       31     388  sstunted         
Birth       IRC              INDIA                          <20               1        4     388  sstunted         
Birth       IRC              INDIA                          >=30              0       28     388  sstunted         
Birth       IRC              INDIA                          >=30              1        0     388  sstunted         
Birth       JiVitA-3         BANGLADESH                     [20-30)           0     9880   22444  sstunted         
Birth       JiVitA-3         BANGLADESH                     [20-30)           1      973   22444  sstunted         
Birth       JiVitA-3         BANGLADESH                     <20               0     8221   22444  sstunted         
Birth       JiVitA-3         BANGLADESH                     <20               1     1251   22444  sstunted         
Birth       JiVitA-3         BANGLADESH                     >=30              0     1896   22444  sstunted         
Birth       JiVitA-3         BANGLADESH                     >=30              1      223   22444  sstunted         
Birth       Keneba           GAMBIA                         [20-30)           0      694    1543  sstunted         
Birth       Keneba           GAMBIA                         [20-30)           1       11    1543  sstunted         
Birth       Keneba           GAMBIA                         <20               0      231    1543  sstunted         
Birth       Keneba           GAMBIA                         <20               1        7    1543  sstunted         
Birth       Keneba           GAMBIA                         >=30              0      589    1543  sstunted         
Birth       Keneba           GAMBIA                         >=30              1       11    1543  sstunted         
Birth       MAL-ED           BANGLADESH                     [20-30)           0      154     231  sstunted         
Birth       MAL-ED           BANGLADESH                     [20-30)           1        6     231  sstunted         
Birth       MAL-ED           BANGLADESH                     <20               0       29     231  sstunted         
Birth       MAL-ED           BANGLADESH                     <20               1        1     231  sstunted         
Birth       MAL-ED           BANGLADESH                     >=30              0       39     231  sstunted         
Birth       MAL-ED           BANGLADESH                     >=30              1        2     231  sstunted         
Birth       MAL-ED           BRAZIL                         [20-30)           0       39      65  sstunted         
Birth       MAL-ED           BRAZIL                         [20-30)           1        2      65  sstunted         
Birth       MAL-ED           BRAZIL                         <20               0        8      65  sstunted         
Birth       MAL-ED           BRAZIL                         <20               1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         >=30              0       15      65  sstunted         
Birth       MAL-ED           BRAZIL                         >=30              1        1      65  sstunted         
Birth       MAL-ED           INDIA                          [20-30)           0       36      47  sstunted         
Birth       MAL-ED           INDIA                          [20-30)           1        1      47  sstunted         
Birth       MAL-ED           INDIA                          <20               0        7      47  sstunted         
Birth       MAL-ED           INDIA                          <20               1        1      47  sstunted         
Birth       MAL-ED           INDIA                          >=30              0        2      47  sstunted         
Birth       MAL-ED           INDIA                          >=30              1        0      47  sstunted         
Birth       MAL-ED           NEPAL                          [20-30)           0       21      27  sstunted         
Birth       MAL-ED           NEPAL                          [20-30)           1        1      27  sstunted         
Birth       MAL-ED           NEPAL                          <20               0        0      27  sstunted         
Birth       MAL-ED           NEPAL                          <20               1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          >=30              0        5      27  sstunted         
Birth       MAL-ED           NEPAL                          >=30              1        0      27  sstunted         
Birth       MAL-ED           PERU                           [20-30)           0      114     233  sstunted         
Birth       MAL-ED           PERU                           [20-30)           1        0     233  sstunted         
Birth       MAL-ED           PERU                           <20               0       63     233  sstunted         
Birth       MAL-ED           PERU                           <20               1        3     233  sstunted         
Birth       MAL-ED           PERU                           >=30              0       52     233  sstunted         
Birth       MAL-ED           PERU                           >=30              1        1     233  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   [20-30)           0       66     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   [20-30)           1        1     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   <20               0       22     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   <20               1        1     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   >=30              0       33     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   >=30              1        0     123  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)           0       66     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)           1        6     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20               0        7     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20               1        0     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30              0       42     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30              1        4     125  sstunted         
Birth       NIH-Birth        BANGLADESH                     [20-30)           0      398     606  sstunted         
Birth       NIH-Birth        BANGLADESH                     [20-30)           1       12     606  sstunted         
Birth       NIH-Birth        BANGLADESH                     <20               0       67     606  sstunted         
Birth       NIH-Birth        BANGLADESH                     <20               1        3     606  sstunted         
Birth       NIH-Birth        BANGLADESH                     >=30              0      122     606  sstunted         
Birth       NIH-Birth        BANGLADESH                     >=30              1        4     606  sstunted         
Birth       NIH-Crypto       BANGLADESH                     [20-30)           0      478     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     [20-30)           1        5     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     <20               0      127     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     <20               1        3     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     >=30              0      117     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     >=30              1        2     732  sstunted         
Birth       PROBIT           BELARUS                        [20-30)           0     9941   13893  sstunted         
Birth       PROBIT           BELARUS                        [20-30)           1        2   13893  sstunted         
Birth       PROBIT           BELARUS                        <20               0     1407   13893  sstunted         
Birth       PROBIT           BELARUS                        <20               1        1   13893  sstunted         
Birth       PROBIT           BELARUS                        >=30              0     2540   13893  sstunted         
Birth       PROBIT           BELARUS                        >=30              1        2   13893  sstunted         
Birth       PROVIDE          BANGLADESH                     [20-30)           0      370     539  sstunted         
Birth       PROVIDE          BANGLADESH                     [20-30)           1        1     539  sstunted         
Birth       PROVIDE          BANGLADESH                     <20               0       67     539  sstunted         
Birth       PROVIDE          BANGLADESH                     <20               1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     >=30              0       98     539  sstunted         
Birth       PROVIDE          BANGLADESH                     >=30              1        3     539  sstunted         
Birth       SAS-CompFeed     INDIA                          [20-30)           0      882    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          [20-30)           1       71    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          <20               0      150    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          <20               1       11    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          >=30              0      129    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          >=30              1        9    1252  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       [20-30)           0     9021   13835  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       [20-30)           1      278   13835  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       <20               0     2122   13835  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       <20               1       83   13835  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       >=30              0     2252   13835  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       >=30              1       79   13835  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          [20-30)           0      261     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          [20-30)           1       32     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          <20               0       30     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          <20               1        3     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          >=30              0       36     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          >=30              1        7     369  sstunted         
6 months    COHORTS          GUATEMALA                      [20-30)           0      412     961  sstunted         
6 months    COHORTS          GUATEMALA                      [20-30)           1       58     961  sstunted         
6 months    COHORTS          GUATEMALA                      <20               0      109     961  sstunted         
6 months    COHORTS          GUATEMALA                      <20               1        9     961  sstunted         
6 months    COHORTS          GUATEMALA                      >=30              0      316     961  sstunted         
6 months    COHORTS          GUATEMALA                      >=30              1       57     961  sstunted         
6 months    COHORTS          INDIA                          [20-30)           0     3174    4904  sstunted         
6 months    COHORTS          INDIA                          [20-30)           1      157    4904  sstunted         
6 months    COHORTS          INDIA                          <20               0      352    4904  sstunted         
6 months    COHORTS          INDIA                          <20               1       19    4904  sstunted         
6 months    COHORTS          INDIA                          >=30              0     1139    4904  sstunted         
6 months    COHORTS          INDIA                          >=30              1       63    4904  sstunted         
6 months    COHORTS          PHILIPPINES                    [20-30)           0     1545    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    [20-30)           1       56    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    <20               0      310    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    <20               1       21    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    >=30              0      721    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    >=30              1       55    2708  sstunted         
6 months    EE               PAKISTAN                       [20-30)           0      125     371  sstunted         
6 months    EE               PAKISTAN                       [20-30)           1       34     371  sstunted         
6 months    EE               PAKISTAN                       <20               0        1     371  sstunted         
6 months    EE               PAKISTAN                       <20               1        0     371  sstunted         
6 months    EE               PAKISTAN                       >=30              0      165     371  sstunted         
6 months    EE               PAKISTAN                       >=30              1       46     371  sstunted         
6 months    GMS-Nepal        NEPAL                          [20-30)           0      365     564  sstunted         
6 months    GMS-Nepal        NEPAL                          [20-30)           1        6     564  sstunted         
6 months    GMS-Nepal        NEPAL                          <20               0      100     564  sstunted         
6 months    GMS-Nepal        NEPAL                          <20               1        8     564  sstunted         
6 months    GMS-Nepal        NEPAL                          >=30              0       78     564  sstunted         
6 months    GMS-Nepal        NEPAL                          >=30              1        7     564  sstunted         
6 months    Guatemala BSC    GUATEMALA                      [20-30)           0      157     276  sstunted         
6 months    Guatemala BSC    GUATEMALA                      [20-30)           1       14     276  sstunted         
6 months    Guatemala BSC    GUATEMALA                      <20               0       42     276  sstunted         
6 months    Guatemala BSC    GUATEMALA                      <20               1        4     276  sstunted         
6 months    Guatemala BSC    GUATEMALA                      >=30              0       52     276  sstunted         
6 months    Guatemala BSC    GUATEMALA                      >=30              1        7     276  sstunted         
6 months    IRC              INDIA                          [20-30)           0      317     407  sstunted         
6 months    IRC              INDIA                          [20-30)           1       25     407  sstunted         
6 months    IRC              INDIA                          <20               0       34     407  sstunted         
6 months    IRC              INDIA                          <20               1        2     407  sstunted         
6 months    IRC              INDIA                          >=30              0       27     407  sstunted         
6 months    IRC              INDIA                          >=30              1        2     407  sstunted         
6 months    JiVitA-3         BANGLADESH                     [20-30)           0     7286   16805  sstunted         
6 months    JiVitA-3         BANGLADESH                     [20-30)           1      393   16805  sstunted         
6 months    JiVitA-3         BANGLADESH                     <20               0     7348   16805  sstunted         
6 months    JiVitA-3         BANGLADESH                     <20               1      557   16805  sstunted         
6 months    JiVitA-3         BANGLADESH                     >=30              0     1151   16805  sstunted         
6 months    JiVitA-3         BANGLADESH                     >=30              1       70   16805  sstunted         
6 months    Keneba           GAMBIA                         [20-30)           0      960    2080  sstunted         
6 months    Keneba           GAMBIA                         [20-30)           1       27    2080  sstunted         
6 months    Keneba           GAMBIA                         <20               0      284    2080  sstunted         
6 months    Keneba           GAMBIA                         <20               1        4    2080  sstunted         
6 months    Keneba           GAMBIA                         >=30              0      766    2080  sstunted         
6 months    Keneba           GAMBIA                         >=30              1       39    2080  sstunted         
6 months    LCNI-5           MALAWI                         [20-30)           0      333     669  sstunted         
6 months    LCNI-5           MALAWI                         [20-30)           1       31     669  sstunted         
6 months    LCNI-5           MALAWI                         <20               0      103     669  sstunted         
6 months    LCNI-5           MALAWI                         <20               1        4     669  sstunted         
6 months    LCNI-5           MALAWI                         >=30              0      180     669  sstunted         
6 months    LCNI-5           MALAWI                         >=30              1       18     669  sstunted         
6 months    MAL-ED           BANGLADESH                     [20-30)           0      160     241  sstunted         
6 months    MAL-ED           BANGLADESH                     [20-30)           1        5     241  sstunted         
6 months    MAL-ED           BANGLADESH                     <20               0       32     241  sstunted         
6 months    MAL-ED           BANGLADESH                     <20               1        3     241  sstunted         
6 months    MAL-ED           BANGLADESH                     >=30              0       41     241  sstunted         
6 months    MAL-ED           BANGLADESH                     >=30              1        0     241  sstunted         
6 months    MAL-ED           BRAZIL                         [20-30)           0      125     209  sstunted         
6 months    MAL-ED           BRAZIL                         [20-30)           1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         <20               0       37     209  sstunted         
6 months    MAL-ED           BRAZIL                         <20               1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         >=30              0       47     209  sstunted         
6 months    MAL-ED           BRAZIL                         >=30              1        0     209  sstunted         
6 months    MAL-ED           INDIA                          [20-30)           0      170     234  sstunted         
6 months    MAL-ED           INDIA                          [20-30)           1        9     234  sstunted         
6 months    MAL-ED           INDIA                          <20               0       34     234  sstunted         
6 months    MAL-ED           INDIA                          <20               1        0     234  sstunted         
6 months    MAL-ED           INDIA                          >=30              0       21     234  sstunted         
6 months    MAL-ED           INDIA                          >=30              1        0     234  sstunted         
6 months    MAL-ED           NEPAL                          [20-30)           0      185     236  sstunted         
6 months    MAL-ED           NEPAL                          [20-30)           1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          <20               0        4     236  sstunted         
6 months    MAL-ED           NEPAL                          <20               1        1     236  sstunted         
6 months    MAL-ED           NEPAL                          >=30              0       46     236  sstunted         
6 months    MAL-ED           NEPAL                          >=30              1        0     236  sstunted         
6 months    MAL-ED           PERU                           [20-30)           0      133     273  sstunted         
6 months    MAL-ED           PERU                           [20-30)           1        3     273  sstunted         
6 months    MAL-ED           PERU                           <20               0       72     273  sstunted         
6 months    MAL-ED           PERU                           <20               1        4     273  sstunted         
6 months    MAL-ED           PERU                           >=30              0       58     273  sstunted         
6 months    MAL-ED           PERU                           >=30              1        3     273  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   [20-30)           0      116     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   [20-30)           1        2     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   <20               0       40     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   <20               1        2     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   >=30              0       92     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   >=30              1        2     254  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)           0      118     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)           1       10     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20               0       15     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20               1        0     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30              0      100     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30              1        4     247  sstunted         
6 months    NIH-Birth        BANGLADESH                     [20-30)           0      334     535  sstunted         
6 months    NIH-Birth        BANGLADESH                     [20-30)           1       23     535  sstunted         
6 months    NIH-Birth        BANGLADESH                     <20               0       59     535  sstunted         
6 months    NIH-Birth        BANGLADESH                     <20               1        2     535  sstunted         
6 months    NIH-Birth        BANGLADESH                     >=30              0      107     535  sstunted         
6 months    NIH-Birth        BANGLADESH                     >=30              1       10     535  sstunted         
6 months    NIH-Crypto       BANGLADESH                     [20-30)           0      452     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     [20-30)           1       10     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     <20               0      124     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     <20               1        7     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     >=30              0      116     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     >=30              1        6     715  sstunted         
6 months    PROBIT           BELARUS                        [20-30)           0    11199   15760  sstunted         
6 months    PROBIT           BELARUS                        [20-30)           1      117   15760  sstunted         
6 months    PROBIT           BELARUS                        <20               0     1589   15760  sstunted         
6 months    PROBIT           BELARUS                        <20               1       30   15760  sstunted         
6 months    PROBIT           BELARUS                        >=30              0     2795   15760  sstunted         
6 months    PROBIT           BELARUS                        >=30              1       30   15760  sstunted         
6 months    PROVIDE          BANGLADESH                     [20-30)           0      414     604  sstunted         
6 months    PROVIDE          BANGLADESH                     [20-30)           1       10     604  sstunted         
6 months    PROVIDE          BANGLADESH                     <20               0       65     604  sstunted         
6 months    PROVIDE          BANGLADESH                     <20               1        1     604  sstunted         
6 months    PROVIDE          BANGLADESH                     >=30              0      111     604  sstunted         
6 months    PROVIDE          BANGLADESH                     >=30              1        3     604  sstunted         
6 months    SAS-CompFeed     INDIA                          [20-30)           0      924    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          [20-30)           1       93    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          <20               0      156    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          <20               1       15    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          >=30              0      128    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          >=30              1       20    1336  sstunted         
6 months    SAS-FoodSuppl    INDIA                          [20-30)           0      228     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          [20-30)           1       33     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          <20               0       31     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          <20               1        5     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          >=30              0       67     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          >=30              1       16     380  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)           0     1307    2012  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)           1       11    2012  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20               0      145    2012  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20               1        1    2012  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              0      542    2012  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              1        6    2012  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       [20-30)           0     5516    8653  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       [20-30)           1      222    8653  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       <20               0     1251    8653  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       <20               1       64    8653  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       >=30              0     1536    8653  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       >=30              1       64    8653  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          [20-30)           0      193     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          [20-30)           1      102     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          <20               0       25     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          <20               1        9     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          >=30              0       28     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          >=30              1       14     371  sstunted         
24 months   COHORTS          GUATEMALA                      [20-30)           0      269    1064  sstunted         
24 months   COHORTS          GUATEMALA                      [20-30)           1      258    1064  sstunted         
24 months   COHORTS          GUATEMALA                      <20               0       70    1064  sstunted         
24 months   COHORTS          GUATEMALA                      <20               1       82    1064  sstunted         
24 months   COHORTS          GUATEMALA                      >=30              0      204    1064  sstunted         
24 months   COHORTS          GUATEMALA                      >=30              1      181    1064  sstunted         
24 months   COHORTS          INDIA                          [20-30)           0     1882    3692  sstunted         
24 months   COHORTS          INDIA                          [20-30)           1      581    3692  sstunted         
24 months   COHORTS          INDIA                          <20               0      163    3692  sstunted         
24 months   COHORTS          INDIA                          <20               1       84    3692  sstunted         
24 months   COHORTS          INDIA                          >=30              0      697    3692  sstunted         
24 months   COHORTS          INDIA                          >=30              1      285    3692  sstunted         
24 months   COHORTS          PHILIPPINES                    [20-30)           0     1060    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    [20-30)           1      400    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    <20               0      205    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    <20               1       87    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    >=30              0      473    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    >=30              1      220    2445  sstunted         
24 months   EE               PAKISTAN                       [20-30)           0       42     167  sstunted         
24 months   EE               PAKISTAN                       [20-30)           1       23     167  sstunted         
24 months   EE               PAKISTAN                       <20               0        1     167  sstunted         
24 months   EE               PAKISTAN                       <20               1        0     167  sstunted         
24 months   EE               PAKISTAN                       >=30              0       65     167  sstunted         
24 months   EE               PAKISTAN                       >=30              1       36     167  sstunted         
24 months   GMS-Nepal        NEPAL                          [20-30)           0      286     488  sstunted         
24 months   GMS-Nepal        NEPAL                          [20-30)           1       32     488  sstunted         
24 months   GMS-Nepal        NEPAL                          <20               0       81     488  sstunted         
24 months   GMS-Nepal        NEPAL                          <20               1       13     488  sstunted         
24 months   GMS-Nepal        NEPAL                          >=30              0       68     488  sstunted         
24 months   GMS-Nepal        NEPAL                          >=30              1        8     488  sstunted         
24 months   IRC              INDIA                          [20-30)           0      309     409  sstunted         
24 months   IRC              INDIA                          [20-30)           1       34     409  sstunted         
24 months   IRC              INDIA                          <20               0       33     409  sstunted         
24 months   IRC              INDIA                          <20               1        4     409  sstunted         
24 months   IRC              INDIA                          >=30              0       26     409  sstunted         
24 months   IRC              INDIA                          >=30              1        3     409  sstunted         
24 months   JiVitA-3         BANGLADESH                     [20-30)           0     3452    8627  sstunted         
24 months   JiVitA-3         BANGLADESH                     [20-30)           1      606    8627  sstunted         
24 months   JiVitA-3         BANGLADESH                     <20               0     3229    8627  sstunted         
24 months   JiVitA-3         BANGLADESH                     <20               1      626    8627  sstunted         
24 months   JiVitA-3         BANGLADESH                     >=30              0      600    8627  sstunted         
24 months   JiVitA-3         BANGLADESH                     >=30              1      114    8627  sstunted         
24 months   Keneba           GAMBIA                         [20-30)           0      734    1714  sstunted         
24 months   Keneba           GAMBIA                         [20-30)           1       56    1714  sstunted         
24 months   Keneba           GAMBIA                         <20               0      201    1714  sstunted         
24 months   Keneba           GAMBIA                         <20               1       16    1714  sstunted         
24 months   Keneba           GAMBIA                         >=30              0      639    1714  sstunted         
24 months   Keneba           GAMBIA                         >=30              1       68    1714  sstunted         
24 months   LCNI-5           MALAWI                         [20-30)           0      217     475  sstunted         
24 months   LCNI-5           MALAWI                         [20-30)           1       33     475  sstunted         
24 months   LCNI-5           MALAWI                         <20               0       73     475  sstunted         
24 months   LCNI-5           MALAWI                         <20               1        7     475  sstunted         
24 months   LCNI-5           MALAWI                         >=30              0      125     475  sstunted         
24 months   LCNI-5           MALAWI                         >=30              1       20     475  sstunted         
24 months   MAL-ED           BANGLADESH                     [20-30)           0      132     212  sstunted         
24 months   MAL-ED           BANGLADESH                     [20-30)           1       14     212  sstunted         
24 months   MAL-ED           BANGLADESH                     <20               0       24     212  sstunted         
24 months   MAL-ED           BANGLADESH                     <20               1        5     212  sstunted         
24 months   MAL-ED           BANGLADESH                     >=30              0       28     212  sstunted         
24 months   MAL-ED           BANGLADESH                     >=30              1        9     212  sstunted         
24 months   MAL-ED           BRAZIL                         [20-30)           0      101     169  sstunted         
24 months   MAL-ED           BRAZIL                         [20-30)           1        1     169  sstunted         
24 months   MAL-ED           BRAZIL                         <20               0       27     169  sstunted         
24 months   MAL-ED           BRAZIL                         <20               1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         >=30              0       40     169  sstunted         
24 months   MAL-ED           BRAZIL                         >=30              1        0     169  sstunted         
24 months   MAL-ED           INDIA                          [20-30)           0      145     225  sstunted         
24 months   MAL-ED           INDIA                          [20-30)           1       27     225  sstunted         
24 months   MAL-ED           INDIA                          <20               0       31     225  sstunted         
24 months   MAL-ED           INDIA                          <20               1        2     225  sstunted         
24 months   MAL-ED           INDIA                          >=30              0       19     225  sstunted         
24 months   MAL-ED           INDIA                          >=30              1        1     225  sstunted         
24 months   MAL-ED           NEPAL                          [20-30)           0      172     228  sstunted         
24 months   MAL-ED           NEPAL                          [20-30)           1        7     228  sstunted         
24 months   MAL-ED           NEPAL                          <20               0        4     228  sstunted         
24 months   MAL-ED           NEPAL                          <20               1        0     228  sstunted         
24 months   MAL-ED           NEPAL                          >=30              0       45     228  sstunted         
24 months   MAL-ED           NEPAL                          >=30              1        0     228  sstunted         
24 months   MAL-ED           PERU                           [20-30)           0       88     201  sstunted         
24 months   MAL-ED           PERU                           [20-30)           1       10     201  sstunted         
24 months   MAL-ED           PERU                           <20               0       50     201  sstunted         
24 months   MAL-ED           PERU                           <20               1        5     201  sstunted         
24 months   MAL-ED           PERU                           >=30              0       48     201  sstunted         
24 months   MAL-ED           PERU                           >=30              1        0     201  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   [20-30)           0       92     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   [20-30)           1       14     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   <20               0       38     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   <20               1        1     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   >=30              0       81     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   >=30              1       12     238  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)           0       71     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)           1       42     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20               0        6     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20               1        3     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30              0       67     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30              1       25     214  sstunted         
24 months   NIH-Birth        BANGLADESH                     [20-30)           0      218     427  sstunted         
24 months   NIH-Birth        BANGLADESH                     [20-30)           1       71     427  sstunted         
24 months   NIH-Birth        BANGLADESH                     <20               0       41     427  sstunted         
24 months   NIH-Birth        BANGLADESH                     <20               1        3     427  sstunted         
24 months   NIH-Birth        BANGLADESH                     >=30              0       73     427  sstunted         
24 months   NIH-Birth        BANGLADESH                     >=30              1       21     427  sstunted         
24 months   NIH-Crypto       BANGLADESH                     [20-30)           0      311     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     [20-30)           1       23     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     <20               0       91     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     <20               1       10     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     >=30              0       76     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     >=30              1        3     514  sstunted         
24 months   PROBIT           BELARUS                        [20-30)           0     2848    4035  sstunted         
24 months   PROBIT           BELARUS                        [20-30)           1       45    4035  sstunted         
24 months   PROBIT           BELARUS                        <20               0      358    4035  sstunted         
24 months   PROBIT           BELARUS                        <20               1       11    4035  sstunted         
24 months   PROBIT           BELARUS                        >=30              0      764    4035  sstunted         
24 months   PROBIT           BELARUS                        >=30              1        9    4035  sstunted         
24 months   PROVIDE          BANGLADESH                     [20-30)           0      372     578  sstunted         
24 months   PROVIDE          BANGLADESH                     [20-30)           1       37     578  sstunted         
24 months   PROVIDE          BANGLADESH                     <20               0       59     578  sstunted         
24 months   PROVIDE          BANGLADESH                     <20               1        5     578  sstunted         
24 months   PROVIDE          BANGLADESH                     >=30              0       95     578  sstunted         
24 months   PROVIDE          BANGLADESH                     >=30              1       10     578  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)           0        2       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)           1        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20               0        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20               1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              0        2       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              1        0       6  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       [20-30)           0      989    1638  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       [20-30)           1      112    1638  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       <20               0      185    1638  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       <20               1       34    1638  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       >=30              0      286    1638  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       >=30              1       32    1638  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
