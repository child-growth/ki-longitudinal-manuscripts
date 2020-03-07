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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mage       swasted   n_cell       n
----------  ---------------  -----------------------------  --------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          [20-30)          0       74      86
Birth       CMC-V-BCS-2002   INDIA                          [20-30)          1        1      86
Birth       CMC-V-BCS-2002   INDIA                          <20              0        7      86
Birth       CMC-V-BCS-2002   INDIA                          <20              1        0      86
Birth       CMC-V-BCS-2002   INDIA                          >=30             0        4      86
Birth       CMC-V-BCS-2002   INDIA                          >=30             1        0      86
Birth       COHORTS          GUATEMALA                      [20-30)          0      339     756
Birth       COHORTS          GUATEMALA                      [20-30)          1       28     756
Birth       COHORTS          GUATEMALA                      <20              0       91     756
Birth       COHORTS          GUATEMALA                      <20              1       10     756
Birth       COHORTS          GUATEMALA                      >=30             0      266     756
Birth       COHORTS          GUATEMALA                      >=30             1       22     756
Birth       COHORTS          INDIA                          [20-30)          0     2832    4405
Birth       COHORTS          INDIA                          [20-30)          1      133    4405
Birth       COHORTS          INDIA                          <20              0      317    4405
Birth       COHORTS          INDIA                          <20              1       20    4405
Birth       COHORTS          INDIA                          >=30             0     1045    4405
Birth       COHORTS          INDIA                          >=30             1       58    4405
Birth       COHORTS          PHILIPPINES                    [20-30)          0     1668    2899
Birth       COHORTS          PHILIPPINES                    [20-30)          1       76    2899
Birth       COHORTS          PHILIPPINES                    <20              0      334    2899
Birth       COHORTS          PHILIPPINES                    <20              1       20    2899
Birth       COHORTS          PHILIPPINES                    >=30             0      776    2899
Birth       COHORTS          PHILIPPINES                    >=30             1       25    2899
Birth       EE               PAKISTAN                       [20-30)          0       67     177
Birth       EE               PAKISTAN                       [20-30)          1        1     177
Birth       EE               PAKISTAN                       <20              0        1     177
Birth       EE               PAKISTAN                       <20              1        0     177
Birth       EE               PAKISTAN                       >=30             0      103     177
Birth       EE               PAKISTAN                       >=30             1        5     177
Birth       GMS-Nepal        NEPAL                          [20-30)          0      404     641
Birth       GMS-Nepal        NEPAL                          [20-30)          1       17     641
Birth       GMS-Nepal        NEPAL                          <20              0      118     641
Birth       GMS-Nepal        NEPAL                          <20              1        7     641
Birth       GMS-Nepal        NEPAL                          >=30             0       92     641
Birth       GMS-Nepal        NEPAL                          >=30             1        3     641
Birth       IRC              INDIA                          [20-30)          0      242     343
Birth       IRC              INDIA                          [20-30)          1       47     343
Birth       IRC              INDIA                          <20              0       26     343
Birth       IRC              INDIA                          <20              1        2     343
Birth       IRC              INDIA                          >=30             0       21     343
Birth       IRC              INDIA                          >=30             1        5     343
Birth       JiVitA-3         BANGLADESH                     [20-30)          0     8872   18006
Birth       JiVitA-3         BANGLADESH                     [20-30)          1      156   18006
Birth       JiVitA-3         BANGLADESH                     <20              0     7100   18006
Birth       JiVitA-3         BANGLADESH                     <20              1      151   18006
Birth       JiVitA-3         BANGLADESH                     >=30             0     1685   18006
Birth       JiVitA-3         BANGLADESH                     >=30             1       42   18006
Birth       Keneba           GAMBIA                         [20-30)          0      621    1466
Birth       Keneba           GAMBIA                         [20-30)          1       49    1466
Birth       Keneba           GAMBIA                         <20              0      210    1466
Birth       Keneba           GAMBIA                         <20              1       14    1466
Birth       Keneba           GAMBIA                         >=30             0      532    1466
Birth       Keneba           GAMBIA                         >=30             1       40    1466
Birth       MAL-ED           BANGLADESH                     [20-30)          0      142     215
Birth       MAL-ED           BANGLADESH                     [20-30)          1        6     215
Birth       MAL-ED           BANGLADESH                     <20              0       28     215
Birth       MAL-ED           BANGLADESH                     <20              1        0     215
Birth       MAL-ED           BANGLADESH                     >=30             0       37     215
Birth       MAL-ED           BANGLADESH                     >=30             1        2     215
Birth       MAL-ED           BRAZIL                         [20-30)          0       39      62
Birth       MAL-ED           BRAZIL                         [20-30)          1        0      62
Birth       MAL-ED           BRAZIL                         <20              0        8      62
Birth       MAL-ED           BRAZIL                         <20              1        0      62
Birth       MAL-ED           BRAZIL                         >=30             0       15      62
Birth       MAL-ED           BRAZIL                         >=30             1        0      62
Birth       MAL-ED           INDIA                          [20-30)          0       36      45
Birth       MAL-ED           INDIA                          [20-30)          1        0      45
Birth       MAL-ED           INDIA                          <20              0        7      45
Birth       MAL-ED           INDIA                          <20              1        0      45
Birth       MAL-ED           INDIA                          >=30             0        2      45
Birth       MAL-ED           INDIA                          >=30             1        0      45
Birth       MAL-ED           NEPAL                          [20-30)          0       20      26
Birth       MAL-ED           NEPAL                          [20-30)          1        1      26
Birth       MAL-ED           NEPAL                          <20              0        0      26
Birth       MAL-ED           NEPAL                          <20              1        0      26
Birth       MAL-ED           NEPAL                          >=30             0        5      26
Birth       MAL-ED           NEPAL                          >=30             1        0      26
Birth       MAL-ED           PERU                           [20-30)          0      113     228
Birth       MAL-ED           PERU                           [20-30)          1        0     228
Birth       MAL-ED           PERU                           <20              0       63     228
Birth       MAL-ED           PERU                           <20              1        0     228
Birth       MAL-ED           PERU                           >=30             0       52     228
Birth       MAL-ED           PERU                           >=30             1        0     228
Birth       MAL-ED           SOUTH AFRICA                   [20-30)          0       65     120
Birth       MAL-ED           SOUTH AFRICA                   [20-30)          1        0     120
Birth       MAL-ED           SOUTH AFRICA                   <20              0       22     120
Birth       MAL-ED           SOUTH AFRICA                   <20              1        0     120
Birth       MAL-ED           SOUTH AFRICA                   >=30             0       33     120
Birth       MAL-ED           SOUTH AFRICA                   >=30             1        0     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          0       66     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              0        7     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             0       42     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             1        0     115
Birth       NIH-Birth        BANGLADESH                     [20-30)          0      356     573
Birth       NIH-Birth        BANGLADESH                     [20-30)          1       29     573
Birth       NIH-Birth        BANGLADESH                     <20              0       61     573
Birth       NIH-Birth        BANGLADESH                     <20              1        6     573
Birth       NIH-Birth        BANGLADESH                     >=30             0      118     573
Birth       NIH-Birth        BANGLADESH                     >=30             1        3     573
Birth       NIH-Crypto       BANGLADESH                     [20-30)          0      441     707
Birth       NIH-Crypto       BANGLADESH                     [20-30)          1       28     707
Birth       NIH-Crypto       BANGLADESH                     <20              0      114     707
Birth       NIH-Crypto       BANGLADESH                     <20              1       10     707
Birth       NIH-Crypto       BANGLADESH                     >=30             0      105     707
Birth       NIH-Crypto       BANGLADESH                     >=30             1        9     707
Birth       PROBIT           BELARUS                        [20-30)          0     9194   13817
Birth       PROBIT           BELARUS                        [20-30)          1      695   13817
Birth       PROBIT           BELARUS                        <20              0     1321   13817
Birth       PROBIT           BELARUS                        <20              1       81   13817
Birth       PROBIT           BELARUS                        >=30             0     2383   13817
Birth       PROBIT           BELARUS                        >=30             1      143   13817
Birth       PROVIDE          BANGLADESH                     [20-30)          0      356     532
Birth       PROVIDE          BANGLADESH                     [20-30)          1       10     532
Birth       PROVIDE          BANGLADESH                     <20              0       66     532
Birth       PROVIDE          BANGLADESH                     <20              1        1     532
Birth       PROVIDE          BANGLADESH                     >=30             0       97     532
Birth       PROVIDE          BANGLADESH                     >=30             1        2     532
Birth       SAS-CompFeed     INDIA                          [20-30)          0      822    1103
Birth       SAS-CompFeed     INDIA                          [20-30)          1       19    1103
Birth       SAS-CompFeed     INDIA                          <20              0      131    1103
Birth       SAS-CompFeed     INDIA                          <20              1        7    1103
Birth       SAS-CompFeed     INDIA                          >=30             0      121    1103
Birth       SAS-CompFeed     INDIA                          >=30             1        3    1103
Birth       ZVITAMBO         ZIMBABWE                       [20-30)          0     8145   12881
Birth       ZVITAMBO         ZIMBABWE                       [20-30)          1      535   12881
Birth       ZVITAMBO         ZIMBABWE                       <20              0     1892   12881
Birth       ZVITAMBO         ZIMBABWE                       <20              1      138   12881
Birth       ZVITAMBO         ZIMBABWE                       >=30             0     2057   12881
Birth       ZVITAMBO         ZIMBABWE                       >=30             1      114   12881
6 months    CMC-V-BCS-2002   INDIA                          [20-30)          0      283     368
6 months    CMC-V-BCS-2002   INDIA                          [20-30)          1        9     368
6 months    CMC-V-BCS-2002   INDIA                          <20              0       31     368
6 months    CMC-V-BCS-2002   INDIA                          <20              1        2     368
6 months    CMC-V-BCS-2002   INDIA                          >=30             0       42     368
6 months    CMC-V-BCS-2002   INDIA                          >=30             1        1     368
6 months    COHORTS          GUATEMALA                      [20-30)          0      467     963
6 months    COHORTS          GUATEMALA                      [20-30)          1        4     963
6 months    COHORTS          GUATEMALA                      <20              0      118     963
6 months    COHORTS          GUATEMALA                      <20              1        0     963
6 months    COHORTS          GUATEMALA                      >=30             0      372     963
6 months    COHORTS          GUATEMALA                      >=30             1        2     963
6 months    COHORTS          INDIA                          [20-30)          0     3229    4897
6 months    COHORTS          INDIA                          [20-30)          1       97    4897
6 months    COHORTS          INDIA                          <20              0      358    4897
6 months    COHORTS          INDIA                          <20              1       13    4897
6 months    COHORTS          INDIA                          >=30             0     1158    4897
6 months    COHORTS          INDIA                          >=30             1       42    4897
6 months    COHORTS          PHILIPPINES                    [20-30)          0     1585    2706
6 months    COHORTS          PHILIPPINES                    [20-30)          1       15    2706
6 months    COHORTS          PHILIPPINES                    <20              0      326    2706
6 months    COHORTS          PHILIPPINES                    <20              1        5    2706
6 months    COHORTS          PHILIPPINES                    >=30             0      760    2706
6 months    COHORTS          PHILIPPINES                    >=30             1       15    2706
6 months    EE               PAKISTAN                       [20-30)          0      157     372
6 months    EE               PAKISTAN                       [20-30)          1        2     372
6 months    EE               PAKISTAN                       <20              0        1     372
6 months    EE               PAKISTAN                       <20              1        0     372
6 months    EE               PAKISTAN                       >=30             0      201     372
6 months    EE               PAKISTAN                       >=30             1       11     372
6 months    GMS-Nepal        NEPAL                          [20-30)          0      365     564
6 months    GMS-Nepal        NEPAL                          [20-30)          1        6     564
6 months    GMS-Nepal        NEPAL                          <20              0      108     564
6 months    GMS-Nepal        NEPAL                          <20              1        0     564
6 months    GMS-Nepal        NEPAL                          >=30             0       84     564
6 months    GMS-Nepal        NEPAL                          >=30             1        1     564
6 months    Guatemala BSC    GUATEMALA                      [20-30)          0      171     276
6 months    Guatemala BSC    GUATEMALA                      [20-30)          1        0     276
6 months    Guatemala BSC    GUATEMALA                      <20              0       46     276
6 months    Guatemala BSC    GUATEMALA                      <20              1        0     276
6 months    Guatemala BSC    GUATEMALA                      >=30             0       59     276
6 months    Guatemala BSC    GUATEMALA                      >=30             1        0     276
6 months    IRC              INDIA                          [20-30)          0      325     408
6 months    IRC              INDIA                          [20-30)          1       17     408
6 months    IRC              INDIA                          <20              0       36     408
6 months    IRC              INDIA                          <20              1        1     408
6 months    IRC              INDIA                          >=30             0       25     408
6 months    IRC              INDIA                          >=30             1        4     408
6 months    JiVitA-3         BANGLADESH                     [20-30)          0     7560   16779
6 months    JiVitA-3         BANGLADESH                     [20-30)          1       96   16779
6 months    JiVitA-3         BANGLADESH                     <20              0     7792   16779
6 months    JiVitA-3         BANGLADESH                     <20              1      112   16779
6 months    JiVitA-3         BANGLADESH                     >=30             0     1197   16779
6 months    JiVitA-3         BANGLADESH                     >=30             1       22   16779
6 months    Keneba           GAMBIA                         [20-30)          0      972    2080
6 months    Keneba           GAMBIA                         [20-30)          1       15    2080
6 months    Keneba           GAMBIA                         <20              0      283    2080
6 months    Keneba           GAMBIA                         <20              1        5    2080
6 months    Keneba           GAMBIA                         >=30             0      791    2080
6 months    Keneba           GAMBIA                         >=30             1       14    2080
6 months    LCNI-5           MALAWI                         [20-30)          0      364     669
6 months    LCNI-5           MALAWI                         [20-30)          1        0     669
6 months    LCNI-5           MALAWI                         <20              0      107     669
6 months    LCNI-5           MALAWI                         <20              1        0     669
6 months    LCNI-5           MALAWI                         >=30             0      198     669
6 months    LCNI-5           MALAWI                         >=30             1        0     669
6 months    MAL-ED           BANGLADESH                     [20-30)          0      164     241
6 months    MAL-ED           BANGLADESH                     [20-30)          1        1     241
6 months    MAL-ED           BANGLADESH                     <20              0       34     241
6 months    MAL-ED           BANGLADESH                     <20              1        1     241
6 months    MAL-ED           BANGLADESH                     >=30             0       41     241
6 months    MAL-ED           BANGLADESH                     >=30             1        0     241
6 months    MAL-ED           BRAZIL                         [20-30)          0      125     209
6 months    MAL-ED           BRAZIL                         [20-30)          1        0     209
6 months    MAL-ED           BRAZIL                         <20              0       37     209
6 months    MAL-ED           BRAZIL                         <20              1        0     209
6 months    MAL-ED           BRAZIL                         >=30             0       47     209
6 months    MAL-ED           BRAZIL                         >=30             1        0     209
6 months    MAL-ED           INDIA                          [20-30)          0      173     234
6 months    MAL-ED           INDIA                          [20-30)          1        6     234
6 months    MAL-ED           INDIA                          <20              0       34     234
6 months    MAL-ED           INDIA                          <20              1        0     234
6 months    MAL-ED           INDIA                          >=30             0       21     234
6 months    MAL-ED           INDIA                          >=30             1        0     234
6 months    MAL-ED           NEPAL                          [20-30)          0      185     236
6 months    MAL-ED           NEPAL                          [20-30)          1        0     236
6 months    MAL-ED           NEPAL                          <20              0        5     236
6 months    MAL-ED           NEPAL                          <20              1        0     236
6 months    MAL-ED           NEPAL                          >=30             0       46     236
6 months    MAL-ED           NEPAL                          >=30             1        0     236
6 months    MAL-ED           PERU                           [20-30)          0      136     273
6 months    MAL-ED           PERU                           [20-30)          1        0     273
6 months    MAL-ED           PERU                           <20              0       76     273
6 months    MAL-ED           PERU                           <20              1        0     273
6 months    MAL-ED           PERU                           >=30             0       61     273
6 months    MAL-ED           PERU                           >=30             1        0     273
6 months    MAL-ED           SOUTH AFRICA                   [20-30)          0      116     254
6 months    MAL-ED           SOUTH AFRICA                   [20-30)          1        2     254
6 months    MAL-ED           SOUTH AFRICA                   <20              0       42     254
6 months    MAL-ED           SOUTH AFRICA                   <20              1        0     254
6 months    MAL-ED           SOUTH AFRICA                   >=30             0       93     254
6 months    MAL-ED           SOUTH AFRICA                   >=30             1        1     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          0      128     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              0       15     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             0      104     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             1        0     247
6 months    NIH-Birth        BANGLADESH                     [20-30)          0      353     535
6 months    NIH-Birth        BANGLADESH                     [20-30)          1        4     535
6 months    NIH-Birth        BANGLADESH                     <20              0       61     535
6 months    NIH-Birth        BANGLADESH                     <20              1        0     535
6 months    NIH-Birth        BANGLADESH                     >=30             0      115     535
6 months    NIH-Birth        BANGLADESH                     >=30             1        2     535
6 months    NIH-Crypto       BANGLADESH                     [20-30)          0      462     715
6 months    NIH-Crypto       BANGLADESH                     [20-30)          1        0     715
6 months    NIH-Crypto       BANGLADESH                     <20              0      131     715
6 months    NIH-Crypto       BANGLADESH                     <20              1        0     715
6 months    NIH-Crypto       BANGLADESH                     >=30             0      122     715
6 months    NIH-Crypto       BANGLADESH                     >=30             1        0     715
6 months    PROBIT           BELARUS                        [20-30)          0    11311   15757
6 months    PROBIT           BELARUS                        [20-30)          1        3   15757
6 months    PROBIT           BELARUS                        <20              0     1618   15757
6 months    PROBIT           BELARUS                        <20              1        1   15757
6 months    PROBIT           BELARUS                        >=30             0     2819   15757
6 months    PROBIT           BELARUS                        >=30             1        5   15757
6 months    PROVIDE          BANGLADESH                     [20-30)          0      420     603
6 months    PROVIDE          BANGLADESH                     [20-30)          1        4     603
6 months    PROVIDE          BANGLADESH                     <20              0       66     603
6 months    PROVIDE          BANGLADESH                     <20              1        0     603
6 months    PROVIDE          BANGLADESH                     >=30             0      112     603
6 months    PROVIDE          BANGLADESH                     >=30             1        1     603
6 months    SAS-CompFeed     INDIA                          [20-30)          0      980    1334
6 months    SAS-CompFeed     INDIA                          [20-30)          1       35    1334
6 months    SAS-CompFeed     INDIA                          <20              0      168    1334
6 months    SAS-CompFeed     INDIA                          <20              1        3    1334
6 months    SAS-CompFeed     INDIA                          >=30             0      143    1334
6 months    SAS-CompFeed     INDIA                          >=30             1        5    1334
6 months    SAS-FoodSuppl    INDIA                          [20-30)          0      248     380
6 months    SAS-FoodSuppl    INDIA                          [20-30)          1       12     380
6 months    SAS-FoodSuppl    INDIA                          <20              0       36     380
6 months    SAS-FoodSuppl    INDIA                          <20              1        0     380
6 months    SAS-FoodSuppl    INDIA                          >=30             0       77     380
6 months    SAS-FoodSuppl    INDIA                          >=30             1        7     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0     1308    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1        9    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0      144    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1        2    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      547    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1        1    2011
6 months    ZVITAMBO         ZIMBABWE                       [20-30)          0     5582    8489
6 months    ZVITAMBO         ZIMBABWE                       [20-30)          1       49    8489
6 months    ZVITAMBO         ZIMBABWE                       <20              0     1280    8489
6 months    ZVITAMBO         ZIMBABWE                       <20              1       12    8489
6 months    ZVITAMBO         ZIMBABWE                       >=30             0     1548    8489
6 months    ZVITAMBO         ZIMBABWE                       >=30             1       18    8489
24 months   CMC-V-BCS-2002   INDIA                          [20-30)          0      293     372
24 months   CMC-V-BCS-2002   INDIA                          [20-30)          1        3     372
24 months   CMC-V-BCS-2002   INDIA                          <20              0       34     372
24 months   CMC-V-BCS-2002   INDIA                          <20              1        0     372
24 months   CMC-V-BCS-2002   INDIA                          >=30             0       42     372
24 months   CMC-V-BCS-2002   INDIA                          >=30             1        0     372
24 months   COHORTS          GUATEMALA                      [20-30)          0      530    1076
24 months   COHORTS          GUATEMALA                      [20-30)          1        2    1076
24 months   COHORTS          GUATEMALA                      <20              0      154    1076
24 months   COHORTS          GUATEMALA                      <20              1        0    1076
24 months   COHORTS          GUATEMALA                      >=30             0      388    1076
24 months   COHORTS          GUATEMALA                      >=30             1        2    1076
24 months   COHORTS          INDIA                          [20-30)          0     2418    3665
24 months   COHORTS          INDIA                          [20-30)          1       28    3665
24 months   COHORTS          INDIA                          <20              0      245    3665
24 months   COHORTS          INDIA                          <20              1        1    3665
24 months   COHORTS          INDIA                          >=30             0      961    3665
24 months   COHORTS          INDIA                          >=30             1       12    3665
24 months   COHORTS          PHILIPPINES                    [20-30)          0     1446    2449
24 months   COHORTS          PHILIPPINES                    [20-30)          1       15    2449
24 months   COHORTS          PHILIPPINES                    <20              0      290    2449
24 months   COHORTS          PHILIPPINES                    <20              1        3    2449
24 months   COHORTS          PHILIPPINES                    >=30             0      688    2449
24 months   COHORTS          PHILIPPINES                    >=30             1        7    2449
24 months   EE               PAKISTAN                       [20-30)          0       64     168
24 months   EE               PAKISTAN                       [20-30)          1        2     168
24 months   EE               PAKISTAN                       <20              0        1     168
24 months   EE               PAKISTAN                       <20              1        0     168
24 months   EE               PAKISTAN                       >=30             0       99     168
24 months   EE               PAKISTAN                       >=30             1        2     168
24 months   GMS-Nepal        NEPAL                          [20-30)          0      308     487
24 months   GMS-Nepal        NEPAL                          [20-30)          1        9     487
24 months   GMS-Nepal        NEPAL                          <20              0       91     487
24 months   GMS-Nepal        NEPAL                          <20              1        3     487
24 months   GMS-Nepal        NEPAL                          >=30             0       73     487
24 months   GMS-Nepal        NEPAL                          >=30             1        3     487
24 months   IRC              INDIA                          [20-30)          0      341     409
24 months   IRC              INDIA                          [20-30)          1        2     409
24 months   IRC              INDIA                          <20              0       36     409
24 months   IRC              INDIA                          <20              1        1     409
24 months   IRC              INDIA                          >=30             0       27     409
24 months   IRC              INDIA                          >=30             1        2     409
24 months   JiVitA-3         BANGLADESH                     [20-30)          0     3888    8598
24 months   JiVitA-3         BANGLADESH                     [20-30)          1      153    8598
24 months   JiVitA-3         BANGLADESH                     <20              0     3697    8598
24 months   JiVitA-3         BANGLADESH                     <20              1      148    8598
24 months   JiVitA-3         BANGLADESH                     >=30             0      678    8598
24 months   JiVitA-3         BANGLADESH                     >=30             1       34    8598
24 months   Keneba           GAMBIA                         [20-30)          0      776    1715
24 months   Keneba           GAMBIA                         [20-30)          1       15    1715
24 months   Keneba           GAMBIA                         <20              0      214    1715
24 months   Keneba           GAMBIA                         <20              1        3    1715
24 months   Keneba           GAMBIA                         >=30             0      696    1715
24 months   Keneba           GAMBIA                         >=30             1       11    1715
24 months   LCNI-5           MALAWI                         [20-30)          0      241     461
24 months   LCNI-5           MALAWI                         [20-30)          1        0     461
24 months   LCNI-5           MALAWI                         <20              0       77     461
24 months   LCNI-5           MALAWI                         <20              1        1     461
24 months   LCNI-5           MALAWI                         >=30             0      142     461
24 months   LCNI-5           MALAWI                         >=30             1        0     461
24 months   MAL-ED           BANGLADESH                     [20-30)          0      146     212
24 months   MAL-ED           BANGLADESH                     [20-30)          1        0     212
24 months   MAL-ED           BANGLADESH                     <20              0       29     212
24 months   MAL-ED           BANGLADESH                     <20              1        0     212
24 months   MAL-ED           BANGLADESH                     >=30             0       37     212
24 months   MAL-ED           BANGLADESH                     >=30             1        0     212
24 months   MAL-ED           BRAZIL                         [20-30)          0      102     169
24 months   MAL-ED           BRAZIL                         [20-30)          1        0     169
24 months   MAL-ED           BRAZIL                         <20              0       27     169
24 months   MAL-ED           BRAZIL                         <20              1        0     169
24 months   MAL-ED           BRAZIL                         >=30             0       39     169
24 months   MAL-ED           BRAZIL                         >=30             1        1     169
24 months   MAL-ED           INDIA                          [20-30)          0      170     225
24 months   MAL-ED           INDIA                          [20-30)          1        2     225
24 months   MAL-ED           INDIA                          <20              0       33     225
24 months   MAL-ED           INDIA                          <20              1        0     225
24 months   MAL-ED           INDIA                          >=30             0       20     225
24 months   MAL-ED           INDIA                          >=30             1        0     225
24 months   MAL-ED           NEPAL                          [20-30)          0      179     228
24 months   MAL-ED           NEPAL                          [20-30)          1        0     228
24 months   MAL-ED           NEPAL                          <20              0        4     228
24 months   MAL-ED           NEPAL                          <20              1        0     228
24 months   MAL-ED           NEPAL                          >=30             0       45     228
24 months   MAL-ED           NEPAL                          >=30             1        0     228
24 months   MAL-ED           PERU                           [20-30)          0       98     201
24 months   MAL-ED           PERU                           [20-30)          1        0     201
24 months   MAL-ED           PERU                           <20              0       53     201
24 months   MAL-ED           PERU                           <20              1        2     201
24 months   MAL-ED           PERU                           >=30             0       48     201
24 months   MAL-ED           PERU                           >=30             1        0     201
24 months   MAL-ED           SOUTH AFRICA                   [20-30)          0      106     238
24 months   MAL-ED           SOUTH AFRICA                   [20-30)          1        0     238
24 months   MAL-ED           SOUTH AFRICA                   <20              0       39     238
24 months   MAL-ED           SOUTH AFRICA                   <20              1        0     238
24 months   MAL-ED           SOUTH AFRICA                   >=30             0       93     238
24 months   MAL-ED           SOUTH AFRICA                   >=30             1        0     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          0      113     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              0        9     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             0       92     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             1        0     214
24 months   NIH-Birth        BANGLADESH                     [20-30)          0      280     426
24 months   NIH-Birth        BANGLADESH                     [20-30)          1        8     426
24 months   NIH-Birth        BANGLADESH                     <20              0       44     426
24 months   NIH-Birth        BANGLADESH                     <20              1        0     426
24 months   NIH-Birth        BANGLADESH                     >=30             0       92     426
24 months   NIH-Birth        BANGLADESH                     >=30             1        2     426
24 months   NIH-Crypto       BANGLADESH                     [20-30)          0      332     514
24 months   NIH-Crypto       BANGLADESH                     [20-30)          1        2     514
24 months   NIH-Crypto       BANGLADESH                     <20              0      100     514
24 months   NIH-Crypto       BANGLADESH                     <20              1        1     514
24 months   NIH-Crypto       BANGLADESH                     >=30             0       78     514
24 months   NIH-Crypto       BANGLADESH                     >=30             1        1     514
24 months   PROBIT           BELARUS                        [20-30)          0     2838    3970
24 months   PROBIT           BELARUS                        [20-30)          1        7    3970
24 months   PROBIT           BELARUS                        <20              0      365    3970
24 months   PROBIT           BELARUS                        <20              1        0    3970
24 months   PROBIT           BELARUS                        >=30             0      760    3970
24 months   PROBIT           BELARUS                        >=30             1        0    3970
24 months   PROVIDE          BANGLADESH                     [20-30)          0      403     579
24 months   PROVIDE          BANGLADESH                     [20-30)          1        6     579
24 months   PROVIDE          BANGLADESH                     <20              0       64     579
24 months   PROVIDE          BANGLADESH                     <20              1        0     579
24 months   PROVIDE          BANGLADESH                     >=30             0      103     579
24 months   PROVIDE          BANGLADESH                     >=30             1        3     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1        0       6
24 months   ZVITAMBO         ZIMBABWE                       [20-30)          0      253     432
24 months   ZVITAMBO         ZIMBABWE                       [20-30)          1       23     432
24 months   ZVITAMBO         ZIMBABWE                       <20              0       67     432
24 months   ZVITAMBO         ZIMBABWE                       <20              1        2     432
24 months   ZVITAMBO         ZIMBABWE                       >=30             0       81     432
24 months   ZVITAMBO         ZIMBABWE                       >=30             1        6     432


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
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
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
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
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
![](/tmp/bee8a40f-f9ba-4f77-825a-acc5c3cf52be/1282d2ae-a6f0-4e7b-87a7-b92c57b52f0c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bee8a40f-f9ba-4f77-825a-acc5c3cf52be/1282d2ae-a6f0-4e7b-87a7-b92c57b52f0c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bee8a40f-f9ba-4f77-825a-acc5c3cf52be/1282d2ae-a6f0-4e7b-87a7-b92c57b52f0c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bee8a40f-f9ba-4f77-825a-acc5c3cf52be/1282d2ae-a6f0-4e7b-87a7-b92c57b52f0c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      GUATEMALA     [20-30)              NA                0.0762943   0.0491164   0.1034721
Birth       COHORTS      GUATEMALA     <20                  NA                0.0990099   0.0407226   0.1572972
Birth       COHORTS      GUATEMALA     >=30                 NA                0.0763889   0.0456917   0.1070861
Birth       COHORTS      INDIA         [20-30)              NA                0.0448567   0.0374053   0.0523080
Birth       COHORTS      INDIA         <20                  NA                0.0593472   0.0341183   0.0845760
Birth       COHORTS      INDIA         >=30                 NA                0.0525839   0.0394102   0.0657575
Birth       COHORTS      PHILIPPINES   [20-30)              NA                0.0435780   0.0339948   0.0531611
Birth       COHORTS      PHILIPPINES   <20                  NA                0.0564972   0.0324421   0.0805522
Birth       COHORTS      PHILIPPINES   >=30                 NA                0.0312110   0.0191669   0.0432551
Birth       JiVitA-3     BANGLADESH    [20-30)              NA                0.0172796   0.0142783   0.0202809
Birth       JiVitA-3     BANGLADESH    <20                  NA                0.0208247   0.0170405   0.0246090
Birth       JiVitA-3     BANGLADESH    >=30                 NA                0.0243196   0.0141425   0.0344967
Birth       Keneba       GAMBIA        [20-30)              NA                0.0731343   0.0534134   0.0928553
Birth       Keneba       GAMBIA        <20                  NA                0.0625000   0.0307899   0.0942101
Birth       Keneba       GAMBIA        >=30                 NA                0.0699301   0.0490232   0.0908369
Birth       NIH-Crypto   BANGLADESH    [20-30)              NA                0.0597015   0.0382432   0.0811598
Birth       NIH-Crypto   BANGLADESH    <20                  NA                0.0806452   0.0326856   0.1286047
Birth       NIH-Crypto   BANGLADESH    >=30                 NA                0.0789474   0.0294122   0.1284826
Birth       PROBIT       BELARUS       [20-30)              NA                0.0702801   0.0355373   0.1050229
Birth       PROBIT       BELARUS       <20                  NA                0.0577746   0.0295916   0.0859576
Birth       PROBIT       BELARUS       >=30                 NA                0.0566112   0.0246758   0.0885467
Birth       ZVITAMBO     ZIMBABWE      [20-30)              NA                0.0616359   0.0565764   0.0666954
Birth       ZVITAMBO     ZIMBABWE      <20                  NA                0.0679803   0.0570301   0.0789305
Birth       ZVITAMBO     ZIMBABWE      >=30                 NA                0.0525104   0.0431273   0.0618934
6 months    COHORTS      INDIA         [20-30)              NA                0.0291642   0.0234450   0.0348833
6 months    COHORTS      INDIA         <20                  NA                0.0350404   0.0163274   0.0537535
6 months    COHORTS      INDIA         >=30                 NA                0.0350000   0.0246008   0.0453992
6 months    COHORTS      PHILIPPINES   [20-30)              NA                0.0093750   0.0046521   0.0140979
6 months    COHORTS      PHILIPPINES   <20                  NA                0.0151057   0.0019632   0.0282483
6 months    COHORTS      PHILIPPINES   >=30                 NA                0.0193548   0.0096536   0.0290561
6 months    JiVitA-3     BANGLADESH    [20-30)              NA                0.0125392   0.0098656   0.0152127
6 months    JiVitA-3     BANGLADESH    <20                  NA                0.0141700   0.0109880   0.0173521
6 months    JiVitA-3     BANGLADESH    >=30                 NA                0.0180476   0.0107349   0.0253602
6 months    Keneba       GAMBIA        [20-30)              NA                0.0151976   0.0075635   0.0228316
6 months    Keneba       GAMBIA        <20                  NA                0.0173611   0.0022728   0.0324495
6 months    Keneba       GAMBIA        >=30                 NA                0.0173913   0.0083587   0.0264239
6 months    ZVITAMBO     ZIMBABWE      [20-30)              NA                0.0087018   0.0062758   0.0111278
6 months    ZVITAMBO     ZIMBABWE      <20                  NA                0.0092879   0.0040570   0.0145188
6 months    ZVITAMBO     ZIMBABWE      >=30                 NA                0.0114943   0.0062146   0.0167739
24 months   JiVitA-3     BANGLADESH    [20-30)              NA                0.0378619   0.0319054   0.0438185
24 months   JiVitA-3     BANGLADESH    <20                  NA                0.0384915   0.0317593   0.0452238
24 months   JiVitA-3     BANGLADESH    >=30                 NA                0.0477528   0.0317831   0.0637225


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      GUATEMALA     NA                   NA                0.0793651   0.0600839   0.0986462
Birth       COHORTS      INDIA         NA                   NA                0.0479001   0.0415930   0.0542073
Birth       COHORTS      PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       JiVitA-3     BANGLADESH    NA                   NA                0.0193824   0.0169738   0.0217910
Birth       Keneba       GAMBIA        NA                   NA                0.0702592   0.0571716   0.0833469
Birth       NIH-Crypto   BANGLADESH    NA                   NA                0.0664781   0.0481022   0.0848539
Birth       PROBIT       BELARUS       NA                   NA                0.0665123   0.0333611   0.0996634
Birth       ZVITAMBO     ZIMBABWE      NA                   NA                0.0610977   0.0569614   0.0652340
6 months    COHORTS      INDIA         NA                   NA                0.0310394   0.0261816   0.0358972
6 months    COHORTS      PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    JiVitA-3     BANGLADESH    NA                   NA                0.0137076   0.0116310   0.0157842
6 months    Keneba       GAMBIA        NA                   NA                0.0163462   0.0108955   0.0217968
6 months    ZVITAMBO     ZIMBABWE      NA                   NA                0.0093062   0.0072635   0.0113488
24 months   JiVitA-3     BANGLADESH    NA                   NA                0.0389625   0.0346386   0.0432864


### Parameter: RR


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      GUATEMALA     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       COHORTS      GUATEMALA     <20                  [20-30)           1.2977369   0.6521592   2.5823771
Birth       COHORTS      GUATEMALA     >=30                 [20-30)           1.0012401   0.5852165   1.7130098
Birth       COHORTS      INDIA         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       COHORTS      INDIA         <20                  [20-30)           1.3230405   0.8382189   2.0882807
Birth       COHORTS      INDIA         >=30                 [20-30)           1.1722643   0.8679182   1.5833331
Birth       COHORTS      PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       COHORTS      PHILIPPINES   <20                  [20-30)           1.2964615   0.8028619   2.0935263
Birth       COHORTS      PHILIPPINES   >=30                 [20-30)           0.7162100   0.4593529   1.1166944
Birth       JiVitA-3     BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       JiVitA-3     BANGLADESH    <20                  [20-30)           1.2051636   0.9477589   1.5324775
Birth       JiVitA-3     BANGLADESH    >=30                 [20-30)           1.4074206   0.8931338   2.2178455
Birth       Keneba       GAMBIA        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       Keneba       GAMBIA        <20                  [20-30)           0.8545918   0.4810904   1.5180665
Birth       Keneba       GAMBIA        >=30                 [20-30)           0.9561867   0.6392804   1.4301908
Birth       NIH-Crypto   BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto   BANGLADESH    <20                  [20-30)           1.3508065   0.6742361   2.7062893
Birth       NIH-Crypto   BANGLADESH    >=30                 [20-30)           1.3223684   0.6416727   2.7251561
Birth       PROBIT       BELARUS       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       PROBIT       BELARUS       <20                  [20-30)           0.8220620   0.6624224   1.0201738
Birth       PROBIT       BELARUS       >=30                 [20-30)           0.8055088   0.6802950   0.9537691
Birth       ZVITAMBO     ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO     ZIMBABWE      <20                  [20-30)           1.1029326   0.9205204   1.3214921
Birth       ZVITAMBO     ZIMBABWE      >=30                 [20-30)           0.8519438   0.6998584   1.0370788
6 months    COHORTS      INDIA         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    COHORTS      INDIA         <20                  [20-30)           1.2014894   0.6802152   2.1222354
6 months    COHORTS      INDIA         >=30                 [20-30)           1.2001031   0.8406398   1.7132754
6 months    COHORTS      PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    COHORTS      PHILIPPINES   <20                  [20-30)           1.6112790   0.5895856   4.4034656
6 months    COHORTS      PHILIPPINES   >=30                 [20-30)           2.0645161   1.0143478   4.2019384
6 months    JiVitA-3     BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    JiVitA-3     BANGLADESH    <20                  [20-30)           1.1300607   0.8358125   1.5278992
6 months    JiVitA-3     BANGLADESH    >=30                 [20-30)           1.4392945   0.9220224   2.2467662
6 months    Keneba       GAMBIA        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    Keneba       GAMBIA        <20                  [20-30)           1.1423611   0.4186513   3.1171262
6 months    Keneba       GAMBIA        >=30                 [20-30)           1.1443478   0.5555970   2.3569817
6 months    ZVITAMBO     ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO     ZIMBABWE      <20                  [20-30)           1.0673533   0.5693634   2.0009067
6 months    ZVITAMBO     ZIMBABWE      >=30                 [20-30)           1.3209008   0.7718201   2.2606030
24 months   JiVitA-3     BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   JiVitA-3     BANGLADESH    <20                  [20-30)           1.0166297   0.8038288   1.2857662
24 months   JiVitA-3     BANGLADESH    >=30                 [20-30)           1.2612360   0.8765736   1.8146977


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     [20-30)              NA                 0.0030708   -0.0167599    0.0229015
Birth       COHORTS      INDIA         [20-30)              NA                 0.0030435   -0.0014907    0.0075776
Birth       COHORTS      PHILIPPINES   [20-30)              NA                -0.0018395   -0.0077011    0.0040222
Birth       JiVitA-3     BANGLADESH    [20-30)              NA                 0.0021029   -0.0001440    0.0043497
Birth       Keneba       GAMBIA        [20-30)              NA                -0.0028751   -0.0171829    0.0114327
Birth       NIH-Crypto   BANGLADESH    [20-30)              NA                 0.0067766   -0.0069064    0.0204596
Birth       PROBIT       BELARUS       [20-30)              NA                -0.0037678   -0.0064837   -0.0010520
Birth       ZVITAMBO     ZIMBABWE      [20-30)              NA                -0.0005382   -0.0034031    0.0023267
6 months    COHORTS      INDIA         [20-30)              NA                 0.0018753   -0.0015709    0.0053214
6 months    COHORTS      PHILIPPINES   [20-30)              NA                 0.0035592   -0.0001903    0.0073087
6 months    JiVitA-3     BANGLADESH    [20-30)              NA                 0.0011684   -0.0009154    0.0032523
6 months    Keneba       GAMBIA        [20-30)              NA                 0.0011486   -0.0045680    0.0068652
6 months    ZVITAMBO     ZIMBABWE      [20-30)              NA                 0.0006043   -0.0008957    0.0021043
24 months   JiVitA-3     BANGLADESH    [20-30)              NA                 0.0011006   -0.0033798    0.0055811


### Parameter: PAF


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     [20-30)              NA                 0.0386921   -0.2464632    0.2586120
Birth       COHORTS      INDIA         [20-30)              NA                 0.0635375   -0.0356997    0.1532661
Birth       COHORTS      PHILIPPINES   [20-30)              NA                -0.0440708   -0.1941718    0.0871633
Birth       JiVitA-3     BANGLADESH    [20-30)              NA                 0.1084928   -0.0135709    0.2158564
Birth       Keneba       GAMBIA        [20-30)              NA                -0.0409216   -0.2657038    0.1439405
Birth       NIH-Crypto   BANGLADESH    [20-30)              NA                 0.1019371   -0.1272656    0.2845369
Birth       PROBIT       BELARUS       [20-30)              NA                -0.0566488   -0.0914911   -0.0229188
Birth       ZVITAMBO     ZIMBABWE      [20-30)              NA                -0.0088089   -0.0568034    0.0370059
6 months    COHORTS      INDIA         [20-30)              NA                 0.0604152   -0.0570087    0.1647943
6 months    COHORTS      PHILIPPINES   [20-30)              NA                 0.2751786   -0.0602189    0.5044739
6 months    JiVitA-3     BANGLADESH    [20-30)              NA                 0.0852392   -0.0781253    0.2238497
6 months    Keneba       GAMBIA        [20-30)              NA                 0.0702664   -0.3532073    0.3612179
6 months    ZVITAMBO     ZIMBABWE      [20-30)              NA                 0.0649389   -0.1102350    0.2124737
24 months   JiVitA-3     BANGLADESH    [20-30)              NA                 0.0282485   -0.0935747    0.1365007
