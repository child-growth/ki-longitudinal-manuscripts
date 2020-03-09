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

**Outcome Variable:** wasted

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

agecat      studyid          country                        mage       wasted   n_cell       n
----------  ---------------  -----------------------------  --------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          [20-30)         0       66      86
Birth       CMC-V-BCS-2002   INDIA                          [20-30)         1        9      86
Birth       CMC-V-BCS-2002   INDIA                          <20             0        5      86
Birth       CMC-V-BCS-2002   INDIA                          <20             1        2      86
Birth       CMC-V-BCS-2002   INDIA                          >=30            0        4      86
Birth       CMC-V-BCS-2002   INDIA                          >=30            1        0      86
Birth       COHORTS          GUATEMALA                      [20-30)         0      277     756
Birth       COHORTS          GUATEMALA                      [20-30)         1       90     756
Birth       COHORTS          GUATEMALA                      <20             0       68     756
Birth       COHORTS          GUATEMALA                      <20             1       33     756
Birth       COHORTS          GUATEMALA                      >=30            0      219     756
Birth       COHORTS          GUATEMALA                      >=30            1       69     756
Birth       COHORTS          INDIA                          [20-30)         0     2472    4405
Birth       COHORTS          INDIA                          [20-30)         1      493    4405
Birth       COHORTS          INDIA                          <20             0      264    4405
Birth       COHORTS          INDIA                          <20             1       73    4405
Birth       COHORTS          INDIA                          >=30            0      905    4405
Birth       COHORTS          INDIA                          >=30            1      198    4405
Birth       COHORTS          PHILIPPINES                    [20-30)         0     1466    2899
Birth       COHORTS          PHILIPPINES                    [20-30)         1      278    2899
Birth       COHORTS          PHILIPPINES                    <20             0      281    2899
Birth       COHORTS          PHILIPPINES                    <20             1       73    2899
Birth       COHORTS          PHILIPPINES                    >=30            0      701    2899
Birth       COHORTS          PHILIPPINES                    >=30            1      100    2899
Birth       EE               PAKISTAN                       [20-30)         0       62     177
Birth       EE               PAKISTAN                       [20-30)         1        6     177
Birth       EE               PAKISTAN                       <20             0        0     177
Birth       EE               PAKISTAN                       <20             1        1     177
Birth       EE               PAKISTAN                       >=30            0       93     177
Birth       EE               PAKISTAN                       >=30            1       15     177
Birth       GMS-Nepal        NEPAL                          [20-30)         0      340     641
Birth       GMS-Nepal        NEPAL                          [20-30)         1       81     641
Birth       GMS-Nepal        NEPAL                          <20             0       88     641
Birth       GMS-Nepal        NEPAL                          <20             1       37     641
Birth       GMS-Nepal        NEPAL                          >=30            0       81     641
Birth       GMS-Nepal        NEPAL                          >=30            1       14     641
Birth       IRC              INDIA                          [20-30)         0      210     343
Birth       IRC              INDIA                          [20-30)         1       79     343
Birth       IRC              INDIA                          <20             0       20     343
Birth       IRC              INDIA                          <20             1        8     343
Birth       IRC              INDIA                          >=30            0       21     343
Birth       IRC              INDIA                          >=30            1        5     343
Birth       JiVitA-3         BANGLADESH                     [20-30)         0     8120   18006
Birth       JiVitA-3         BANGLADESH                     [20-30)         1      908   18006
Birth       JiVitA-3         BANGLADESH                     <20             0     6411   18006
Birth       JiVitA-3         BANGLADESH                     <20             1      840   18006
Birth       JiVitA-3         BANGLADESH                     >=30            0     1503   18006
Birth       JiVitA-3         BANGLADESH                     >=30            1      224   18006
Birth       Keneba           GAMBIA                         [20-30)         0      505    1466
Birth       Keneba           GAMBIA                         [20-30)         1      165    1466
Birth       Keneba           GAMBIA                         <20             0      159    1466
Birth       Keneba           GAMBIA                         <20             1       65    1466
Birth       Keneba           GAMBIA                         >=30            0      438    1466
Birth       Keneba           GAMBIA                         >=30            1      134    1466
Birth       MAL-ED           BANGLADESH                     [20-30)         0      128     215
Birth       MAL-ED           BANGLADESH                     [20-30)         1       20     215
Birth       MAL-ED           BANGLADESH                     <20             0       20     215
Birth       MAL-ED           BANGLADESH                     <20             1        8     215
Birth       MAL-ED           BANGLADESH                     >=30            0       31     215
Birth       MAL-ED           BANGLADESH                     >=30            1        8     215
Birth       MAL-ED           BRAZIL                         [20-30)         0       37      62
Birth       MAL-ED           BRAZIL                         [20-30)         1        2      62
Birth       MAL-ED           BRAZIL                         <20             0        8      62
Birth       MAL-ED           BRAZIL                         <20             1        0      62
Birth       MAL-ED           BRAZIL                         >=30            0       15      62
Birth       MAL-ED           BRAZIL                         >=30            1        0      62
Birth       MAL-ED           INDIA                          [20-30)         0       32      45
Birth       MAL-ED           INDIA                          [20-30)         1        4      45
Birth       MAL-ED           INDIA                          <20             0        7      45
Birth       MAL-ED           INDIA                          <20             1        0      45
Birth       MAL-ED           INDIA                          >=30            0        1      45
Birth       MAL-ED           INDIA                          >=30            1        1      45
Birth       MAL-ED           NEPAL                          [20-30)         0       20      26
Birth       MAL-ED           NEPAL                          [20-30)         1        1      26
Birth       MAL-ED           NEPAL                          <20             0        0      26
Birth       MAL-ED           NEPAL                          <20             1        0      26
Birth       MAL-ED           NEPAL                          >=30            0        4      26
Birth       MAL-ED           NEPAL                          >=30            1        1      26
Birth       MAL-ED           PERU                           [20-30)         0      110     228
Birth       MAL-ED           PERU                           [20-30)         1        3     228
Birth       MAL-ED           PERU                           <20             0       61     228
Birth       MAL-ED           PERU                           <20             1        2     228
Birth       MAL-ED           PERU                           >=30            0       52     228
Birth       MAL-ED           PERU                           >=30            1        0     228
Birth       MAL-ED           SOUTH AFRICA                   [20-30)         0       59     120
Birth       MAL-ED           SOUTH AFRICA                   [20-30)         1        6     120
Birth       MAL-ED           SOUTH AFRICA                   <20             0       19     120
Birth       MAL-ED           SOUTH AFRICA                   <20             1        3     120
Birth       MAL-ED           SOUTH AFRICA                   >=30            0       30     120
Birth       MAL-ED           SOUTH AFRICA                   >=30            1        3     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)         0       66     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)         1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             0        7     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30            0       41     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30            1        1     115
Birth       NIH-Birth        BANGLADESH                     [20-30)         0      260     573
Birth       NIH-Birth        BANGLADESH                     [20-30)         1      125     573
Birth       NIH-Birth        BANGLADESH                     <20             0       47     573
Birth       NIH-Birth        BANGLADESH                     <20             1       20     573
Birth       NIH-Birth        BANGLADESH                     >=30            0       98     573
Birth       NIH-Birth        BANGLADESH                     >=30            1       23     573
Birth       NIH-Crypto       BANGLADESH                     [20-30)         0      358     707
Birth       NIH-Crypto       BANGLADESH                     [20-30)         1      111     707
Birth       NIH-Crypto       BANGLADESH                     <20             0       89     707
Birth       NIH-Crypto       BANGLADESH                     <20             1       35     707
Birth       NIH-Crypto       BANGLADESH                     >=30            0       88     707
Birth       NIH-Crypto       BANGLADESH                     >=30            1       26     707
Birth       PROBIT           BELARUS                        [20-30)         0     7778   13817
Birth       PROBIT           BELARUS                        [20-30)         1     2111   13817
Birth       PROBIT           BELARUS                        <20             0     1099   13817
Birth       PROBIT           BELARUS                        <20             1      303   13817
Birth       PROBIT           BELARUS                        >=30            0     2034   13817
Birth       PROBIT           BELARUS                        >=30            1      492   13817
Birth       PROVIDE          BANGLADESH                     [20-30)         0      289     532
Birth       PROVIDE          BANGLADESH                     [20-30)         1       77     532
Birth       PROVIDE          BANGLADESH                     <20             0       52     532
Birth       PROVIDE          BANGLADESH                     <20             1       15     532
Birth       PROVIDE          BANGLADESH                     >=30            0       74     532
Birth       PROVIDE          BANGLADESH                     >=30            1       25     532
Birth       SAS-CompFeed     INDIA                          [20-30)         0      754    1103
Birth       SAS-CompFeed     INDIA                          [20-30)         1       87    1103
Birth       SAS-CompFeed     INDIA                          <20             0      122    1103
Birth       SAS-CompFeed     INDIA                          <20             1       16    1103
Birth       SAS-CompFeed     INDIA                          >=30            0      109    1103
Birth       SAS-CompFeed     INDIA                          >=30            1       15    1103
Birth       ZVITAMBO         ZIMBABWE                       [20-30)         0     7314   12881
Birth       ZVITAMBO         ZIMBABWE                       [20-30)         1     1366   12881
Birth       ZVITAMBO         ZIMBABWE                       <20             0     1649   12881
Birth       ZVITAMBO         ZIMBABWE                       <20             1      381   12881
Birth       ZVITAMBO         ZIMBABWE                       >=30            0     1866   12881
Birth       ZVITAMBO         ZIMBABWE                       >=30            1      305   12881
6 months    CMC-V-BCS-2002   INDIA                          [20-30)         0      251     368
6 months    CMC-V-BCS-2002   INDIA                          [20-30)         1       41     368
6 months    CMC-V-BCS-2002   INDIA                          <20             0       31     368
6 months    CMC-V-BCS-2002   INDIA                          <20             1        2     368
6 months    CMC-V-BCS-2002   INDIA                          >=30            0       40     368
6 months    CMC-V-BCS-2002   INDIA                          >=30            1        3     368
6 months    COHORTS          GUATEMALA                      [20-30)         0      454     963
6 months    COHORTS          GUATEMALA                      [20-30)         1       17     963
6 months    COHORTS          GUATEMALA                      <20             0      116     963
6 months    COHORTS          GUATEMALA                      <20             1        2     963
6 months    COHORTS          GUATEMALA                      >=30            0      361     963
6 months    COHORTS          GUATEMALA                      >=30            1       13     963
6 months    COHORTS          INDIA                          [20-30)         0     2910    4897
6 months    COHORTS          INDIA                          [20-30)         1      416    4897
6 months    COHORTS          INDIA                          <20             0      311    4897
6 months    COHORTS          INDIA                          <20             1       60    4897
6 months    COHORTS          INDIA                          >=30            0     1029    4897
6 months    COHORTS          INDIA                          >=30            1      171    4897
6 months    COHORTS          PHILIPPINES                    [20-30)         0     1510    2706
6 months    COHORTS          PHILIPPINES                    [20-30)         1       90    2706
6 months    COHORTS          PHILIPPINES                    <20             0      311    2706
6 months    COHORTS          PHILIPPINES                    <20             1       20    2706
6 months    COHORTS          PHILIPPINES                    >=30            0      724    2706
6 months    COHORTS          PHILIPPINES                    >=30            1       51    2706
6 months    EE               PAKISTAN                       [20-30)         0      145     372
6 months    EE               PAKISTAN                       [20-30)         1       14     372
6 months    EE               PAKISTAN                       <20             0        1     372
6 months    EE               PAKISTAN                       <20             1        0     372
6 months    EE               PAKISTAN                       >=30            0      179     372
6 months    EE               PAKISTAN                       >=30            1       33     372
6 months    GMS-Nepal        NEPAL                          [20-30)         0      342     564
6 months    GMS-Nepal        NEPAL                          [20-30)         1       29     564
6 months    GMS-Nepal        NEPAL                          <20             0       97     564
6 months    GMS-Nepal        NEPAL                          <20             1       11     564
6 months    GMS-Nepal        NEPAL                          >=30            0       74     564
6 months    GMS-Nepal        NEPAL                          >=30            1       11     564
6 months    Guatemala BSC    GUATEMALA                      [20-30)         0      171     276
6 months    Guatemala BSC    GUATEMALA                      [20-30)         1        0     276
6 months    Guatemala BSC    GUATEMALA                      <20             0       45     276
6 months    Guatemala BSC    GUATEMALA                      <20             1        1     276
6 months    Guatemala BSC    GUATEMALA                      >=30            0       57     276
6 months    Guatemala BSC    GUATEMALA                      >=30            1        2     276
6 months    IRC              INDIA                          [20-30)         0      299     408
6 months    IRC              INDIA                          [20-30)         1       43     408
6 months    IRC              INDIA                          <20             0       32     408
6 months    IRC              INDIA                          <20             1        5     408
6 months    IRC              INDIA                          >=30            0       23     408
6 months    IRC              INDIA                          >=30            1        6     408
6 months    JiVitA-3         BANGLADESH                     [20-30)         0     7026   16779
6 months    JiVitA-3         BANGLADESH                     [20-30)         1      630   16779
6 months    JiVitA-3         BANGLADESH                     <20             0     7232   16779
6 months    JiVitA-3         BANGLADESH                     <20             1      672   16779
6 months    JiVitA-3         BANGLADESH                     >=30            0     1100   16779
6 months    JiVitA-3         BANGLADESH                     >=30            1      119   16779
6 months    Keneba           GAMBIA                         [20-30)         0      943    2080
6 months    Keneba           GAMBIA                         [20-30)         1       44    2080
6 months    Keneba           GAMBIA                         <20             0      274    2080
6 months    Keneba           GAMBIA                         <20             1       14    2080
6 months    Keneba           GAMBIA                         >=30            0      743    2080
6 months    Keneba           GAMBIA                         >=30            1       62    2080
6 months    LCNI-5           MALAWI                         [20-30)         0      358     669
6 months    LCNI-5           MALAWI                         [20-30)         1        6     669
6 months    LCNI-5           MALAWI                         <20             0      107     669
6 months    LCNI-5           MALAWI                         <20             1        0     669
6 months    LCNI-5           MALAWI                         >=30            0      192     669
6 months    LCNI-5           MALAWI                         >=30            1        6     669
6 months    MAL-ED           BANGLADESH                     [20-30)         0      160     241
6 months    MAL-ED           BANGLADESH                     [20-30)         1        5     241
6 months    MAL-ED           BANGLADESH                     <20             0       33     241
6 months    MAL-ED           BANGLADESH                     <20             1        2     241
6 months    MAL-ED           BANGLADESH                     >=30            0       40     241
6 months    MAL-ED           BANGLADESH                     >=30            1        1     241
6 months    MAL-ED           BRAZIL                         [20-30)         0      125     209
6 months    MAL-ED           BRAZIL                         [20-30)         1        0     209
6 months    MAL-ED           BRAZIL                         <20             0       37     209
6 months    MAL-ED           BRAZIL                         <20             1        0     209
6 months    MAL-ED           BRAZIL                         >=30            0       46     209
6 months    MAL-ED           BRAZIL                         >=30            1        1     209
6 months    MAL-ED           INDIA                          [20-30)         0      161     234
6 months    MAL-ED           INDIA                          [20-30)         1       18     234
6 months    MAL-ED           INDIA                          <20             0       33     234
6 months    MAL-ED           INDIA                          <20             1        1     234
6 months    MAL-ED           INDIA                          >=30            0       21     234
6 months    MAL-ED           INDIA                          >=30            1        0     234
6 months    MAL-ED           NEPAL                          [20-30)         0      181     236
6 months    MAL-ED           NEPAL                          [20-30)         1        4     236
6 months    MAL-ED           NEPAL                          <20             0        5     236
6 months    MAL-ED           NEPAL                          <20             1        0     236
6 months    MAL-ED           NEPAL                          >=30            0       46     236
6 months    MAL-ED           NEPAL                          >=30            1        0     236
6 months    MAL-ED           PERU                           [20-30)         0      136     273
6 months    MAL-ED           PERU                           [20-30)         1        0     273
6 months    MAL-ED           PERU                           <20             0       76     273
6 months    MAL-ED           PERU                           <20             1        0     273
6 months    MAL-ED           PERU                           >=30            0       61     273
6 months    MAL-ED           PERU                           >=30            1        0     273
6 months    MAL-ED           SOUTH AFRICA                   [20-30)         0      115     254
6 months    MAL-ED           SOUTH AFRICA                   [20-30)         1        3     254
6 months    MAL-ED           SOUTH AFRICA                   <20             0       40     254
6 months    MAL-ED           SOUTH AFRICA                   <20             1        2     254
6 months    MAL-ED           SOUTH AFRICA                   >=30            0       92     254
6 months    MAL-ED           SOUTH AFRICA                   >=30            1        2     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)         0      127     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)         1        1     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             0       15     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30            0      104     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30            1        0     247
6 months    NIH-Birth        BANGLADESH                     [20-30)         0      334     535
6 months    NIH-Birth        BANGLADESH                     [20-30)         1       23     535
6 months    NIH-Birth        BANGLADESH                     <20             0       58     535
6 months    NIH-Birth        BANGLADESH                     <20             1        3     535
6 months    NIH-Birth        BANGLADESH                     >=30            0      108     535
6 months    NIH-Birth        BANGLADESH                     >=30            1        9     535
6 months    NIH-Crypto       BANGLADESH                     [20-30)         0      450     715
6 months    NIH-Crypto       BANGLADESH                     [20-30)         1       12     715
6 months    NIH-Crypto       BANGLADESH                     <20             0      128     715
6 months    NIH-Crypto       BANGLADESH                     <20             1        3     715
6 months    NIH-Crypto       BANGLADESH                     >=30            0      116     715
6 months    NIH-Crypto       BANGLADESH                     >=30            1        6     715
6 months    PROBIT           BELARUS                        [20-30)         0    11233   15757
6 months    PROBIT           BELARUS                        [20-30)         1       81   15757
6 months    PROBIT           BELARUS                        <20             0     1610   15757
6 months    PROBIT           BELARUS                        <20             1        9   15757
6 months    PROBIT           BELARUS                        >=30            0     2806   15757
6 months    PROBIT           BELARUS                        >=30            1       18   15757
6 months    PROVIDE          BANGLADESH                     [20-30)         0      406     603
6 months    PROVIDE          BANGLADESH                     [20-30)         1       18     603
6 months    PROVIDE          BANGLADESH                     <20             0       64     603
6 months    PROVIDE          BANGLADESH                     <20             1        2     603
6 months    PROVIDE          BANGLADESH                     >=30            0      108     603
6 months    PROVIDE          BANGLADESH                     >=30            1        5     603
6 months    SAS-CompFeed     INDIA                          [20-30)         0      885    1334
6 months    SAS-CompFeed     INDIA                          [20-30)         1      130    1334
6 months    SAS-CompFeed     INDIA                          <20             0      158    1334
6 months    SAS-CompFeed     INDIA                          <20             1       13    1334
6 months    SAS-CompFeed     INDIA                          >=30            0      125    1334
6 months    SAS-CompFeed     INDIA                          >=30            1       23    1334
6 months    SAS-FoodSuppl    INDIA                          [20-30)         0      220     380
6 months    SAS-FoodSuppl    INDIA                          [20-30)         1       40     380
6 months    SAS-FoodSuppl    INDIA                          <20             0       32     380
6 months    SAS-FoodSuppl    INDIA                          <20             1        4     380
6 months    SAS-FoodSuppl    INDIA                          >=30            0       59     380
6 months    SAS-FoodSuppl    INDIA                          >=30            1       25     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         0     1266    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         1       51    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             0      140    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1        6    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            0      518    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            1       30    2011
6 months    ZVITAMBO         ZIMBABWE                       [20-30)         0     5461    8489
6 months    ZVITAMBO         ZIMBABWE                       [20-30)         1      170    8489
6 months    ZVITAMBO         ZIMBABWE                       <20             0     1259    8489
6 months    ZVITAMBO         ZIMBABWE                       <20             1       33    8489
6 months    ZVITAMBO         ZIMBABWE                       >=30            0     1504    8489
6 months    ZVITAMBO         ZIMBABWE                       >=30            1       62    8489
24 months   CMC-V-BCS-2002   INDIA                          [20-30)         0      276     372
24 months   CMC-V-BCS-2002   INDIA                          [20-30)         1       20     372
24 months   CMC-V-BCS-2002   INDIA                          <20             0       33     372
24 months   CMC-V-BCS-2002   INDIA                          <20             1        1     372
24 months   CMC-V-BCS-2002   INDIA                          >=30            0       40     372
24 months   CMC-V-BCS-2002   INDIA                          >=30            1        2     372
24 months   COHORTS          GUATEMALA                      [20-30)         0      507    1076
24 months   COHORTS          GUATEMALA                      [20-30)         1       25    1076
24 months   COHORTS          GUATEMALA                      <20             0      145    1076
24 months   COHORTS          GUATEMALA                      <20             1        9    1076
24 months   COHORTS          GUATEMALA                      >=30            0      374    1076
24 months   COHORTS          GUATEMALA                      >=30            1       16    1076
24 months   COHORTS          INDIA                          [20-30)         0     2212    3665
24 months   COHORTS          INDIA                          [20-30)         1      234    3665
24 months   COHORTS          INDIA                          <20             0      226    3665
24 months   COHORTS          INDIA                          <20             1       20    3665
24 months   COHORTS          INDIA                          >=30            0      876    3665
24 months   COHORTS          INDIA                          >=30            1       97    3665
24 months   COHORTS          PHILIPPINES                    [20-30)         0     1367    2449
24 months   COHORTS          PHILIPPINES                    [20-30)         1       94    2449
24 months   COHORTS          PHILIPPINES                    <20             0      272    2449
24 months   COHORTS          PHILIPPINES                    <20             1       21    2449
24 months   COHORTS          PHILIPPINES                    >=30            0      643    2449
24 months   COHORTS          PHILIPPINES                    >=30            1       52    2449
24 months   EE               PAKISTAN                       [20-30)         0       55     168
24 months   EE               PAKISTAN                       [20-30)         1       11     168
24 months   EE               PAKISTAN                       <20             0        1     168
24 months   EE               PAKISTAN                       <20             1        0     168
24 months   EE               PAKISTAN                       >=30            0       82     168
24 months   EE               PAKISTAN                       >=30            1       19     168
24 months   GMS-Nepal        NEPAL                          [20-30)         0      260     487
24 months   GMS-Nepal        NEPAL                          [20-30)         1       57     487
24 months   GMS-Nepal        NEPAL                          <20             0       73     487
24 months   GMS-Nepal        NEPAL                          <20             1       21     487
24 months   GMS-Nepal        NEPAL                          >=30            0       63     487
24 months   GMS-Nepal        NEPAL                          >=30            1       13     487
24 months   IRC              INDIA                          [20-30)         0      318     409
24 months   IRC              INDIA                          [20-30)         1       25     409
24 months   IRC              INDIA                          <20             0       36     409
24 months   IRC              INDIA                          <20             1        1     409
24 months   IRC              INDIA                          >=30            0       24     409
24 months   IRC              INDIA                          >=30            1        5     409
24 months   JiVitA-3         BANGLADESH                     [20-30)         0     3198    8598
24 months   JiVitA-3         BANGLADESH                     [20-30)         1      843    8598
24 months   JiVitA-3         BANGLADESH                     <20             0     2983    8598
24 months   JiVitA-3         BANGLADESH                     <20             1      862    8598
24 months   JiVitA-3         BANGLADESH                     >=30            0      541    8598
24 months   JiVitA-3         BANGLADESH                     >=30            1      171    8598
24 months   Keneba           GAMBIA                         [20-30)         0      706    1715
24 months   Keneba           GAMBIA                         [20-30)         1       85    1715
24 months   Keneba           GAMBIA                         <20             0      196    1715
24 months   Keneba           GAMBIA                         <20             1       21    1715
24 months   Keneba           GAMBIA                         >=30            0      625    1715
24 months   Keneba           GAMBIA                         >=30            1       82    1715
24 months   LCNI-5           MALAWI                         [20-30)         0      237     461
24 months   LCNI-5           MALAWI                         [20-30)         1        4     461
24 months   LCNI-5           MALAWI                         <20             0       75     461
24 months   LCNI-5           MALAWI                         <20             1        3     461
24 months   LCNI-5           MALAWI                         >=30            0      141     461
24 months   LCNI-5           MALAWI                         >=30            1        1     461
24 months   MAL-ED           BANGLADESH                     [20-30)         0      133     212
24 months   MAL-ED           BANGLADESH                     [20-30)         1       13     212
24 months   MAL-ED           BANGLADESH                     <20             0       24     212
24 months   MAL-ED           BANGLADESH                     <20             1        5     212
24 months   MAL-ED           BANGLADESH                     >=30            0       34     212
24 months   MAL-ED           BANGLADESH                     >=30            1        3     212
24 months   MAL-ED           BRAZIL                         [20-30)         0      101     169
24 months   MAL-ED           BRAZIL                         [20-30)         1        1     169
24 months   MAL-ED           BRAZIL                         <20             0       27     169
24 months   MAL-ED           BRAZIL                         <20             1        0     169
24 months   MAL-ED           BRAZIL                         >=30            0       38     169
24 months   MAL-ED           BRAZIL                         >=30            1        2     169
24 months   MAL-ED           INDIA                          [20-30)         0      148     225
24 months   MAL-ED           INDIA                          [20-30)         1       24     225
24 months   MAL-ED           INDIA                          <20             0       30     225
24 months   MAL-ED           INDIA                          <20             1        3     225
24 months   MAL-ED           INDIA                          >=30            0       20     225
24 months   MAL-ED           INDIA                          >=30            1        0     225
24 months   MAL-ED           NEPAL                          [20-30)         0      175     228
24 months   MAL-ED           NEPAL                          [20-30)         1        4     228
24 months   MAL-ED           NEPAL                          <20             0        4     228
24 months   MAL-ED           NEPAL                          <20             1        0     228
24 months   MAL-ED           NEPAL                          >=30            0       44     228
24 months   MAL-ED           NEPAL                          >=30            1        1     228
24 months   MAL-ED           PERU                           [20-30)         0       97     201
24 months   MAL-ED           PERU                           [20-30)         1        1     201
24 months   MAL-ED           PERU                           <20             0       52     201
24 months   MAL-ED           PERU                           <20             1        3     201
24 months   MAL-ED           PERU                           >=30            0       48     201
24 months   MAL-ED           PERU                           >=30            1        0     201
24 months   MAL-ED           SOUTH AFRICA                   [20-30)         0      106     238
24 months   MAL-ED           SOUTH AFRICA                   [20-30)         1        0     238
24 months   MAL-ED           SOUTH AFRICA                   <20             0       39     238
24 months   MAL-ED           SOUTH AFRICA                   <20             1        0     238
24 months   MAL-ED           SOUTH AFRICA                   >=30            0       92     238
24 months   MAL-ED           SOUTH AFRICA                   >=30            1        1     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)         0      110     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)         1        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             0        9     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30            0       91     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30            1        1     214
24 months   NIH-Birth        BANGLADESH                     [20-30)         0      252     426
24 months   NIH-Birth        BANGLADESH                     [20-30)         1       36     426
24 months   NIH-Birth        BANGLADESH                     <20             0       41     426
24 months   NIH-Birth        BANGLADESH                     <20             1        3     426
24 months   NIH-Birth        BANGLADESH                     >=30            0       80     426
24 months   NIH-Birth        BANGLADESH                     >=30            1       14     426
24 months   NIH-Crypto       BANGLADESH                     [20-30)         0      302     514
24 months   NIH-Crypto       BANGLADESH                     [20-30)         1       32     514
24 months   NIH-Crypto       BANGLADESH                     <20             0       94     514
24 months   NIH-Crypto       BANGLADESH                     <20             1        7     514
24 months   NIH-Crypto       BANGLADESH                     >=30            0       73     514
24 months   NIH-Crypto       BANGLADESH                     >=30            1        6     514
24 months   PROBIT           BELARUS                        [20-30)         0     2820    3970
24 months   PROBIT           BELARUS                        [20-30)         1       25    3970
24 months   PROBIT           BELARUS                        <20             0      363    3970
24 months   PROBIT           BELARUS                        <20             1        2    3970
24 months   PROBIT           BELARUS                        >=30            0      755    3970
24 months   PROBIT           BELARUS                        >=30            1        5    3970
24 months   PROVIDE          BANGLADESH                     [20-30)         0      369     579
24 months   PROVIDE          BANGLADESH                     [20-30)         1       40     579
24 months   PROVIDE          BANGLADESH                     <20             0       53     579
24 months   PROVIDE          BANGLADESH                     <20             1       11     579
24 months   PROVIDE          BANGLADESH                     >=30            0       95     579
24 months   PROVIDE          BANGLADESH                     >=30            1       11     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            1        0       6
24 months   ZVITAMBO         ZIMBABWE                       [20-30)         0      218     432
24 months   ZVITAMBO         ZIMBABWE                       [20-30)         1       58     432
24 months   ZVITAMBO         ZIMBABWE                       <20             0       61     432
24 months   ZVITAMBO         ZIMBABWE                       <20             1        8     432
24 months   ZVITAMBO         ZIMBABWE                       >=30            0       74     432
24 months   ZVITAMBO         ZIMBABWE                       >=30            1       13     432


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
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/68ac7517-1201-4ad9-93a2-3f045c89f1d9/d9dc2d92-a007-424d-ae38-4f087a21a6f8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/68ac7517-1201-4ad9-93a2-3f045c89f1d9/d9dc2d92-a007-424d-ae38-4f087a21a6f8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/68ac7517-1201-4ad9-93a2-3f045c89f1d9/d9dc2d92-a007-424d-ae38-4f087a21a6f8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/68ac7517-1201-4ad9-93a2-3f045c89f1d9/d9dc2d92-a007-424d-ae38-4f087a21a6f8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                0.2463138   0.2010116   0.2916161
Birth       COHORTS          GUATEMALA                      <20                  NA                0.3222075   0.2200922   0.4243228
Birth       COHORTS          GUATEMALA                      >=30                 NA                0.2443042   0.1929073   0.2957011
Birth       COHORTS          INDIA                          [20-30)              NA                0.1672471   0.1536323   0.1808619
Birth       COHORTS          INDIA                          <20                  NA                0.2007255   0.1583779   0.2430732
Birth       COHORTS          INDIA                          >=30                 NA                0.1748433   0.1515989   0.1980877
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                0.1594884   0.1420203   0.1769565
Birth       COHORTS          PHILIPPINES                    <20                  NA                0.1964341   0.1528886   0.2399795
Birth       COHORTS          PHILIPPINES                    >=30                 NA                0.1283681   0.1047339   0.1520023
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                0.1914626   0.1536830   0.2292423
Birth       GMS-Nepal        NEPAL                          <20                  NA                0.2917888   0.2083797   0.3751979
Birth       GMS-Nepal        NEPAL                          >=30                 NA                0.1587632   0.0742748   0.2432516
Birth       IRC              INDIA                          [20-30)              NA                0.2733564   0.2218977   0.3248151
Birth       IRC              INDIA                          <20                  NA                0.2857143   0.1181409   0.4532877
Birth       IRC              INDIA                          >=30                 NA                0.1923077   0.0405968   0.3440186
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                0.0991554   0.0921256   0.1061852
Birth       JiVitA-3         BANGLADESH                     <20                  NA                0.1166998   0.1079622   0.1254374
Birth       JiVitA-3         BANGLADESH                     >=30                 NA                0.1357563   0.1166307   0.1548819
Birth       Keneba           GAMBIA                         [20-30)              NA                0.2426598   0.2092476   0.2760720
Birth       Keneba           GAMBIA                         <20                  NA                0.3152392   0.2480409   0.3824375
Birth       Keneba           GAMBIA                         >=30                 NA                0.2394659   0.2037434   0.2751885
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                0.1351351   0.0799289   0.1903413
Birth       MAL-ED           BANGLADESH                     <20                  NA                0.2857143   0.1179949   0.4534337
Birth       MAL-ED           BANGLADESH                     >=30                 NA                0.2051282   0.0781032   0.3321533
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                0.3271373   0.2803453   0.3739294
Birth       NIH-Birth        BANGLADESH                     <20                  NA                0.2934413   0.1821525   0.4047301
Birth       NIH-Birth        BANGLADESH                     >=30                 NA                0.1949570   0.1242900   0.2656240
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                0.2380180   0.1994660   0.2765701
Birth       NIH-Crypto       BANGLADESH                     <20                  NA                0.2689923   0.1881519   0.3498328
Birth       NIH-Crypto       BANGLADESH                     >=30                 NA                0.2361007   0.1571249   0.3150765
Birth       PROBIT           BELARUS                        [20-30)              NA                0.2128479   0.1449674   0.2807283
Birth       PROBIT           BELARUS                        <20                  NA                0.2124981   0.1451623   0.2798338
Birth       PROBIT           BELARUS                        >=30                 NA                0.2005184   0.1374321   0.2636048
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                0.2113733   0.1695778   0.2531688
Birth       PROVIDE          BANGLADESH                     <20                  NA                0.2134690   0.1139304   0.3130076
Birth       PROVIDE          BANGLADESH                     >=30                 NA                0.2593931   0.1725232   0.3462631
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                0.1031852   0.0783387   0.1280318
Birth       SAS-CompFeed     INDIA                          <20                  NA                0.1126284   0.0563850   0.1688717
Birth       SAS-CompFeed     INDIA                          >=30                 NA                0.1189596   0.0584794   0.1794398
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1553211   0.1474687   0.1631736
Birth       ZVITAMBO         ZIMBABWE                       <20                  NA                0.1818576   0.1634969   0.2002183
Birth       ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1502492   0.1321807   0.1683177
6 months    COHORTS          INDIA                          [20-30)              NA                0.1286296   0.1169227   0.1403364
6 months    COHORTS          INDIA                          <20                  NA                0.1638888   0.1220407   0.2057368
6 months    COHORTS          INDIA                          >=30                 NA                0.1298226   0.1106804   0.1489648
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                0.0570054   0.0455923   0.0684184
6 months    COHORTS          PHILIPPINES                    <20                  NA                0.0569158   0.0325367   0.0812950
6 months    COHORTS          PHILIPPINES                    >=30                 NA                0.0612609   0.0446115   0.0779104
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                0.0773100   0.0499660   0.1046539
6 months    GMS-Nepal        NEPAL                          <20                  NA                0.1112413   0.0497517   0.1727309
6 months    GMS-Nepal        NEPAL                          >=30                 NA                0.0972325   0.0436621   0.1508029
6 months    IRC              INDIA                          [20-30)              NA                0.1257310   0.0905497   0.1609123
6 months    IRC              INDIA                          <20                  NA                0.1351351   0.0248446   0.2454257
6 months    IRC              INDIA                          >=30                 NA                0.2068966   0.0592839   0.3545092
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                0.0818259   0.0751350   0.0885167
6 months    JiVitA-3         BANGLADESH                     <20                  NA                0.0859080   0.0786876   0.0931284
6 months    JiVitA-3         BANGLADESH                     >=30                 NA                0.0906460   0.0754441   0.1058478
6 months    Keneba           GAMBIA                         [20-30)              NA                0.0449460   0.0319961   0.0578960
6 months    Keneba           GAMBIA                         <20                  NA                0.0366525   0.0150103   0.0582947
6 months    Keneba           GAMBIA                         >=30                 NA                0.0761519   0.0575725   0.0947313
6 months    PROBIT           BELARUS                        [20-30)              NA                0.0071593   0.0052820   0.0090365
6 months    PROBIT           BELARUS                        <20                  NA                0.0055590   0.0011739   0.0099440
6 months    PROBIT           BELARUS                        >=30                 NA                0.0063739   0.0027361   0.0100118
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                0.1285052   0.0975313   0.1594791
6 months    SAS-CompFeed     INDIA                          <20                  NA                0.0720846   0.0339172   0.1102520
6 months    SAS-CompFeed     INDIA                          >=30                 NA                0.1478792   0.0956202   0.2001383
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0387244   0.0283017   0.0491471
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0410959   0.0088877   0.0733041
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0547445   0.0356938   0.0737952
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0302848   0.0256825   0.0348870
6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                0.0261200   0.0156852   0.0365548
6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0457130   0.0332654   0.0581606
24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.0469925   0.0290014   0.0649835
24 months   COHORTS          GUATEMALA                      <20                  NA                0.0584416   0.0213757   0.0955074
24 months   COHORTS          GUATEMALA                      >=30                 NA                0.0410256   0.0213310   0.0607203
24 months   COHORTS          INDIA                          [20-30)              NA                0.1032318   0.0909193   0.1155444
24 months   COHORTS          INDIA                          <20                  NA                0.0759255   0.0411638   0.1106871
24 months   COHORTS          INDIA                          >=30                 NA                0.0840423   0.0667327   0.1013519
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.0638080   0.0512944   0.0763215
24 months   COHORTS          PHILIPPINES                    <20                  NA                0.0647147   0.0364435   0.0929860
24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.0733818   0.0539942   0.0927694
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.1781744   0.1357910   0.2205578
24 months   GMS-Nepal        NEPAL                          <20                  NA                0.2271665   0.1374474   0.3168855
24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.1815804   0.0831384   0.2800223
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.2104126   0.1966606   0.2241647
24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.2240963   0.2083157   0.2398769
24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.2477185   0.2115022   0.2839348
24 months   Keneba           GAMBIA                         [20-30)              NA                0.1080236   0.0858180   0.1302293
24 months   Keneba           GAMBIA                         <20                  NA                0.1020645   0.0593211   0.1448080
24 months   Keneba           GAMBIA                         >=30                 NA                0.1158200   0.0920213   0.1396186
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.0958084   0.0642126   0.1274042
24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.0693069   0.0197275   0.1188864
24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.0759494   0.0174748   0.1344240
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.0985401   0.0696717   0.1274085
24 months   PROVIDE          BANGLADESH                     <20                  NA                0.1771466   0.0820419   0.2722513
24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.1075649   0.0489280   0.1662017
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2101449   0.1620244   0.2582654
24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.1159420   0.0403132   0.1915709
24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1494253   0.0744255   0.2244251


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.2539683   0.2229196   0.2850169
Birth       COHORTS          INDIA                          NA                   NA                0.1734393   0.1622569   0.1846217
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.2059282   0.1745993   0.2372572
Birth       IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1095190   0.1043958   0.1146423
Birth       Keneba           GAMBIA                         NA                   NA                0.2482947   0.2261720   0.2704173
Birth       MAL-ED           BANGLADESH                     NA                   NA                0.1674419   0.1174176   0.2174661
Birth       NIH-Birth        BANGLADESH                     NA                   NA                0.2931937   0.2558878   0.3304996
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.2432815   0.2116319   0.2749310
Birth       PROBIT           BELARUS                        NA                   NA                0.2103206   0.1450833   0.2755580
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.1069810   0.0760961   0.1378659
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1593044   0.1529843   0.1656245
6 months    COHORTS          INDIA                          NA                   NA                0.1321217   0.1226366   0.1416069
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0904255   0.0667359   0.1141152
6 months    IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0846892   0.0798858   0.0894926
6 months    Keneba           GAMBIA                         NA                   NA                0.0576923   0.0476698   0.0677148
6 months    PROBIT           BELARUS                        NA                   NA                0.0068541   0.0051915   0.0085167
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.1244378   0.0992652   0.1496104
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432621   0.0343680   0.0521561
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0312169   0.0275173   0.0349165
24 months   COHORTS          GUATEMALA                      NA                   NA                0.0464684   0.0338852   0.0590516
24 months   COHORTS          INDIA                          NA                   NA                0.0957708   0.0862423   0.1052993
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1868583   0.1522030   0.2215136
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2181903   0.2083363   0.2280442
24 months   Keneba           GAMBIA                         NA                   NA                0.1096210   0.0948307   0.1244113
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1828704   0.1463759   0.2193648


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       COHORTS          GUATEMALA                      <20                  [20-30)           1.3081177   0.9068083   1.8870270
Birth       COHORTS          GUATEMALA                      >=30                 [20-30)           0.9918413   0.7498646   1.3119023
Birth       COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       COHORTS          INDIA                          <20                  [20-30)           1.2001733   0.9572657   1.5047189
Birth       COHORTS          INDIA                          >=30                 [20-30)           1.0454190   0.8945579   1.2217219
Birth       COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES                    <20                  [20-30)           1.2316510   0.9618580   1.5771186
Birth       COHORTS          PHILIPPINES                    >=30                 [20-30)           0.8048741   0.6496349   0.9972099
Birth       GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL                          <20                  [20-30)           1.5239987   1.0765402   2.1574409
Birth       GMS-Nepal        NEPAL                          >=30                 [20-30)           0.8292125   0.4701600   1.4624670
Birth       IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA                          <20                  [20-30)           1.0452080   0.5645305   1.9351651
Birth       IRC              INDIA                          >=30                 [20-30)           0.7035054   0.3126330   1.5830697
Birth       JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     <20                  [20-30)           1.1769385   1.0641606   1.3016684
Birth       JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.3691266   1.1723430   1.5989413
Birth       Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       Keneba           GAMBIA                         <20                  [20-30)           1.2990995   1.0079552   1.6743397
Birth       Keneba           GAMBIA                         >=30                 [20-30)           0.9868381   0.8054554   1.2090669
Birth       MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       MAL-ED           BANGLADESH                     <20                  [20-30)           2.1142857   1.0341049   4.3227760
Birth       MAL-ED           BANGLADESH                     >=30                 [20-30)           1.5179487   0.7228866   3.1874546
Birth       NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       NIH-Birth        BANGLADESH                     <20                  [20-30)           0.8969974   0.5985428   1.3442718
Birth       NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.5959484   0.4036321   0.8798968
Birth       NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.1301342   0.8035791   1.5893936
Birth       NIH-Crypto       BANGLADESH                     >=30                 [20-30)           0.9919446   0.6845326   1.4374101
Birth       PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       PROBIT           BELARUS                        <20                  [20-30)           0.9983567   0.8557439   1.1647364
Birth       PROBIT           BELARUS                        >=30                 [20-30)           0.9420740   0.8246012   1.0762821
Birth       PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     <20                  [20-30)           1.0099147   0.6092914   1.6739571
Birth       PROVIDE          BANGLADESH                     >=30                 [20-30)           1.2271802   0.8323610   1.8092767
Birth       SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed     INDIA                          <20                  [20-30)           1.0915165   0.7830524   1.5214922
Birth       SAS-CompFeed     INDIA                          >=30                 [20-30)           1.1528746   0.8224362   1.6160764
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1708493   1.0459046   1.3107201
Birth       ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9673457   0.8490750   1.1020907
6 months    COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    COHORTS          INDIA                          <20                  [20-30)           1.2741141   0.9714906   1.6710063
6 months    COHORTS          INDIA                          >=30                 [20-30)           1.0092747   0.8488714   1.1999879
6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           0.9984292   0.6222688   1.6019779
6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0746522   0.7667202   1.5062566
6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL                          <20                  [20-30)           1.4388999   0.7458880   2.7757959
6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           1.2576967   0.6530134   2.4223103
6 months    IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          <20                  [20-30)           1.0747957   0.4535482   2.5469971
6 months    IRC              INDIA                          >=30                 [20-30)           1.6455493   0.7646819   3.5411231
6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)           1.0498876   0.9377909   1.1753835
6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.1077908   0.9192629   1.3349831
6 months    Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    Keneba           GAMBIA                         <20                  [20-30)           0.8154778   0.4225358   1.5738405
6 months    Keneba           GAMBIA                         >=30                 [20-30)           1.6942968   1.1644353   2.4652651
6 months    PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    PROBIT           BELARUS                        <20                  [20-30)           0.7764738   0.3349122   1.8002078
6 months    PROBIT           BELARUS                        >=30                 [20-30)           0.8903053   0.5089318   1.5574651
6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed     INDIA                          <20                  [20-30)           0.5609470   0.3039111   1.0353735
6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           1.1507646   0.7656671   1.7295494
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.0612409   0.4633734   2.4305072
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.4136969   0.9105335   2.1949097
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.8624802   0.5625126   1.3224097
6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.5094395   1.1052754   2.0613936
24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA                      <20                  [20-30)           1.2436364   0.5928628   2.6087508
24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           0.8730256   0.4724528   1.6132273
24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   COHORTS          INDIA                          <20                  [20-30)           0.7354850   0.4584491   1.1799308
24 months   COHORTS          INDIA                          >=30                 [20-30)           0.8141125   0.6424346   1.0316677
24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.0142107   0.6284722   1.6367046
24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1500411   0.8278560   1.5976141
24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           1.2749668   0.8037126   2.0225394
24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0191159   0.5637369   1.8423441
24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           1.0650325   0.9695217   1.1699524
24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.1772987   1.0053317   1.3786816
24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   Keneba           GAMBIA                         <20                  [20-30)           0.9448354   0.5928178   1.5058826
24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.0721726   0.8018442   1.4336377
24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           0.7233911   0.3290579   1.5902815
24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           0.7927215   0.3430583   1.8317802
24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           1.7977112   0.9747168   3.3155945
24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           1.0915848   0.5875301   2.0280790
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.5517241   0.2763654   1.1014385
24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.7110583   0.4095527   1.2345268


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                 0.0076544   -0.0257335    0.0410423
Birth       COHORTS          INDIA                          [20-30)              NA                 0.0061922   -0.0019964    0.0143807
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                -0.0039175   -0.0149470    0.0071119
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                 0.0144656   -0.0088127    0.0377439
Birth       IRC              INDIA                          [20-30)              NA                -0.0051348   -0.0248945    0.0146249
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0103636    0.0053824    0.0153449
Birth       Keneba           GAMBIA                         [20-30)              NA                 0.0056349   -0.0192957    0.0305655
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                 0.0323067   -0.0044929    0.0691063
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0339436   -0.0591838   -0.0087034
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0052634   -0.0174394    0.0279663
Birth       PROBIT           BELARUS                        [20-30)              NA                -0.0025272   -0.0094621    0.0044076
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                 0.0085515   -0.0154036    0.0325066
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                 0.0037957   -0.0045469    0.0121384
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0039833   -0.0007963    0.0087628
6 months    COHORTS          INDIA                          [20-30)              NA                 0.0034921   -0.0036559    0.0106402
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0024920   -0.0051115    0.0100956
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0131156   -0.0050702    0.0313014
6 months    IRC              INDIA                          [20-30)              NA                 0.0066219   -0.0090812    0.0223251
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0028633   -0.0021311    0.0078577
6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0127463    0.0022698    0.0232228
6 months    PROBIT           BELARUS                        [20-30)              NA                -0.0003052   -0.0010941    0.0004838
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0040674   -0.0162266    0.0080917
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0045377   -0.0022040    0.0112794
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0009321   -0.0019031    0.0037673
24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0005241   -0.0132499    0.0122017
24 months   COHORTS          INDIA                          [20-30)              NA                -0.0074610   -0.0146999   -0.0002221
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0043831   -0.0039044    0.0126707
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0086839   -0.0172449    0.0346127
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0077776   -0.0027182    0.0182734
24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0015974   -0.0149333    0.0181280
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0082597   -0.0255539    0.0090344
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0085411   -0.0086755    0.0257577
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0272746   -0.0535163   -0.0010329


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                 0.0301393   -0.1106575    0.1530874
Birth       COHORTS          INDIA                          [20-30)              NA                 0.0357022   -0.0126553    0.0817505
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                -0.0251816   -0.0985480    0.0432849
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                 0.0702458   -0.0497294    0.1765089
Birth       IRC              INDIA                          [20-30)              NA                -0.0191440   -0.0955205    0.0519078
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0946287    0.0479072    0.1390575
Birth       Keneba           GAMBIA                         [20-30)              NA                 0.0226943   -0.0830857    0.1181432
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                 0.1929429   -0.0529073    0.3813880
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                -0.1157719   -0.2052706   -0.0329190
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0216351   -0.0762598    0.1106257
Birth       PROBIT           BELARUS                        [20-30)              NA                -0.0120161   -0.0444401    0.0194012
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                 0.0388838   -0.0763703    0.1417968
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                 0.0354805   -0.0373305    0.1031807
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0250043   -0.0054626    0.0545480
6 months    COHORTS          INDIA                          [20-30)              NA                 0.0264312   -0.0291779    0.0790356
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0418849   -0.0946302    0.1613748
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.1450428   -0.0781693    0.3220435
6 months    IRC              INDIA                          [20-30)              NA                 0.0500325   -0.0758153    0.1611587
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0338095   -0.0268959    0.0909263
6 months    Keneba           GAMBIA                         [20-30)              NA                 0.2209353    0.0211588    0.3799384
6 months    PROBIT           BELARUS                        [20-30)              NA                -0.0445245   -0.1661452    0.0644120
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0326865   -0.1332902    0.0589866
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.1048883   -0.0636953    0.2467534
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0298590   -0.0653256    0.1165390
24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0112782   -0.3257854    0.2286206
24 months   COHORTS          INDIA                          [20-30)              NA                -0.0779048   -0.1561232   -0.0049783
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0642774   -0.0651520    0.1779795
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0464732   -0.1027764    0.1755233
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0356461   -0.0135575    0.0824612
24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0145718   -0.1483963    0.1544131
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0943446   -0.3091652    0.0852260
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0797628   -0.0946840    0.2264100
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.1491469   -0.3002840   -0.0155771
