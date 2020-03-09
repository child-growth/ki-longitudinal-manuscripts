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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** birthlen

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        birthlen      ever_co   n_cell       n
------------  ---------------  -----------------------------  -----------  --------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm             0       15     106
0-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     106
0-24 months   CMC-V-BCS-2002   INDIA                          <48 cm              0       37     106
0-24 months   CMC-V-BCS-2002   INDIA                          <48 cm              1       13     106
0-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm          0       36     106
0-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm          1        4     106
0-24 months   CMIN             BANGLADESH                     >=50 cm             0        2      20
0-24 months   CMIN             BANGLADESH                     >=50 cm             1        0      20
0-24 months   CMIN             BANGLADESH                     <48 cm              0        7      20
0-24 months   CMIN             BANGLADESH                     <48 cm              1        3      20
0-24 months   CMIN             BANGLADESH                     [48-50) cm          0        7      20
0-24 months   CMIN             BANGLADESH                     [48-50) cm          1        1      20
0-24 months   COHORTS          GUATEMALA                      >=50 cm             0      400     833
0-24 months   COHORTS          GUATEMALA                      >=50 cm             1       29     833
0-24 months   COHORTS          GUATEMALA                      <48 cm              0      130     833
0-24 months   COHORTS          GUATEMALA                      <48 cm              1       26     833
0-24 months   COHORTS          GUATEMALA                      [48-50) cm          0      223     833
0-24 months   COHORTS          GUATEMALA                      [48-50) cm          1       25     833
0-24 months   COHORTS          INDIA                          >=50 cm             0     1396    6628
0-24 months   COHORTS          INDIA                          >=50 cm             1       28    6628
0-24 months   COHORTS          INDIA                          <48 cm              0     2334    6628
0-24 months   COHORTS          INDIA                          <48 cm              1      432    6628
0-24 months   COHORTS          INDIA                          [48-50) cm          0     2295    6628
0-24 months   COHORTS          INDIA                          [48-50) cm          1      143    6628
0-24 months   COHORTS          PHILIPPINES                    >=50 cm             0     1013    3037
0-24 months   COHORTS          PHILIPPINES                    >=50 cm             1      115    3037
0-24 months   COHORTS          PHILIPPINES                    <48 cm              0      525    3037
0-24 months   COHORTS          PHILIPPINES                    <48 cm              1      227    3037
0-24 months   COHORTS          PHILIPPINES                    [48-50) cm          0      940    3037
0-24 months   COHORTS          PHILIPPINES                    [48-50) cm          1      217    3037
0-24 months   CONTENT          PERU                           >=50 cm             0        1       2
0-24 months   CONTENT          PERU                           >=50 cm             1        0       2
0-24 months   CONTENT          PERU                           <48 cm              0        1       2
0-24 months   CONTENT          PERU                           <48 cm              1        0       2
0-24 months   CONTENT          PERU                           [48-50) cm          0        0       2
0-24 months   CONTENT          PERU                           [48-50) cm          1        0       2
0-24 months   EE               PAKISTAN                       >=50 cm             0       18     241
0-24 months   EE               PAKISTAN                       >=50 cm             1        6     241
0-24 months   EE               PAKISTAN                       <48 cm              0       67     241
0-24 months   EE               PAKISTAN                       <48 cm              1       96     241
0-24 months   EE               PAKISTAN                       [48-50) cm          0       40     241
0-24 months   EE               PAKISTAN                       [48-50) cm          1       14     241
0-24 months   GMS-Nepal        NEPAL                          >=50 cm             0      101     685
0-24 months   GMS-Nepal        NEPAL                          >=50 cm             1       14     685
0-24 months   GMS-Nepal        NEPAL                          <48 cm              0      223     685
0-24 months   GMS-Nepal        NEPAL                          <48 cm              1      139     685
0-24 months   GMS-Nepal        NEPAL                          [48-50) cm          0      160     685
0-24 months   GMS-Nepal        NEPAL                          [48-50) cm          1       48     685
0-24 months   IRC              INDIA                          >=50 cm             0      119     391
0-24 months   IRC              INDIA                          >=50 cm             1       23     391
0-24 months   IRC              INDIA                          <48 cm              0       76     391
0-24 months   IRC              INDIA                          <48 cm              1       35     391
0-24 months   IRC              INDIA                          [48-50) cm          0      123     391
0-24 months   IRC              INDIA                          [48-50) cm          1       15     391
0-24 months   JiVitA-3         BANGLADESH                     >=50 cm             0     1251   22190
0-24 months   JiVitA-3         BANGLADESH                     >=50 cm             1        8   22190
0-24 months   JiVitA-3         BANGLADESH                     <48 cm              0    13985   22190
0-24 months   JiVitA-3         BANGLADESH                     <48 cm              1     1859   22190
0-24 months   JiVitA-3         BANGLADESH                     [48-50) cm          0     4962   22190
0-24 months   JiVitA-3         BANGLADESH                     [48-50) cm          1      125   22190
0-24 months   JiVitA-4         BANGLADESH                     >=50 cm             0     1117    4483
0-24 months   JiVitA-4         BANGLADESH                     >=50 cm             1      115    4483
0-24 months   JiVitA-4         BANGLADESH                     <48 cm              0     1672    4483
0-24 months   JiVitA-4         BANGLADESH                     <48 cm              1      502    4483
0-24 months   JiVitA-4         BANGLADESH                     [48-50) cm          0      961    4483
0-24 months   JiVitA-4         BANGLADESH                     [48-50) cm          1      116    4483
0-24 months   Keneba           GAMBIA                         >=50 cm             0      678    1552
0-24 months   Keneba           GAMBIA                         >=50 cm             1       86    1552
0-24 months   Keneba           GAMBIA                         <48 cm              0      220    1552
0-24 months   Keneba           GAMBIA                         <48 cm              1       73    1552
0-24 months   Keneba           GAMBIA                         [48-50) cm          0      397    1552
0-24 months   Keneba           GAMBIA                         [48-50) cm          1       98    1552
0-24 months   MAL-ED           BANGLADESH                     >=50 cm             0       34     229
0-24 months   MAL-ED           BANGLADESH                     >=50 cm             1        5     229
0-24 months   MAL-ED           BANGLADESH                     <48 cm              0       88     229
0-24 months   MAL-ED           BANGLADESH                     <48 cm              1       23     229
0-24 months   MAL-ED           BANGLADESH                     [48-50) cm          0       70     229
0-24 months   MAL-ED           BANGLADESH                     [48-50) cm          1        9     229
0-24 months   MAL-ED           BRAZIL                         >=50 cm             0       30      65
0-24 months   MAL-ED           BRAZIL                         >=50 cm             1        0      65
0-24 months   MAL-ED           BRAZIL                         <48 cm              0       16      65
0-24 months   MAL-ED           BRAZIL                         <48 cm              1        1      65
0-24 months   MAL-ED           BRAZIL                         [48-50) cm          0       18      65
0-24 months   MAL-ED           BRAZIL                         [48-50) cm          1        0      65
0-24 months   MAL-ED           INDIA                          >=50 cm             0        9      47
0-24 months   MAL-ED           INDIA                          >=50 cm             1        0      47
0-24 months   MAL-ED           INDIA                          <48 cm              0       12      47
0-24 months   MAL-ED           INDIA                          <48 cm              1        8      47
0-24 months   MAL-ED           INDIA                          [48-50) cm          0       13      47
0-24 months   MAL-ED           INDIA                          [48-50) cm          1        5      47
0-24 months   MAL-ED           NEPAL                          >=50 cm             0        8      27
0-24 months   MAL-ED           NEPAL                          >=50 cm             1        0      27
0-24 months   MAL-ED           NEPAL                          <48 cm              0        9      27
0-24 months   MAL-ED           NEPAL                          <48 cm              1        3      27
0-24 months   MAL-ED           NEPAL                          [48-50) cm          0        6      27
0-24 months   MAL-ED           NEPAL                          [48-50) cm          1        1      27
0-24 months   MAL-ED           PERU                           >=50 cm             0       52     233
0-24 months   MAL-ED           PERU                           >=50 cm             1        0     233
0-24 months   MAL-ED           PERU                           <48 cm              0       80     233
0-24 months   MAL-ED           PERU                           <48 cm              1        8     233
0-24 months   MAL-ED           PERU                           [48-50) cm          0       91     233
0-24 months   MAL-ED           PERU                           [48-50) cm          1        2     233
0-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm             0       42     121
0-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm             1        1     121
0-24 months   MAL-ED           SOUTH AFRICA                   <48 cm              0       30     121
0-24 months   MAL-ED           SOUTH AFRICA                   <48 cm              1        2     121
0-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm          0       43     121
0-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm          1        3     121
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       31     124
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        1     124
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              0       33     124
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              1        8     124
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       48     124
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        3     124
0-24 months   NIH-Birth        BANGLADESH                     >=50 cm             0      127     603
0-24 months   NIH-Birth        BANGLADESH                     >=50 cm             1       12     603
0-24 months   NIH-Birth        BANGLADESH                     <48 cm              0      155     603
0-24 months   NIH-Birth        BANGLADESH                     <48 cm              1       81     603
0-24 months   NIH-Birth        BANGLADESH                     [48-50) cm          0      188     603
0-24 months   NIH-Birth        BANGLADESH                     [48-50) cm          1       40     603
0-24 months   NIH-Crypto       BANGLADESH                     >=50 cm             0      167     758
0-24 months   NIH-Crypto       BANGLADESH                     >=50 cm             1        1     758
0-24 months   NIH-Crypto       BANGLADESH                     <48 cm              0      245     758
0-24 months   NIH-Crypto       BANGLADESH                     <48 cm              1       47     758
0-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm          0      275     758
0-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm          1       23     758
0-24 months   PROBIT           BELARUS                        >=50 cm             0    15305   16897
0-24 months   PROBIT           BELARUS                        >=50 cm             1        6   16897
0-24 months   PROBIT           BELARUS                        <48 cm              0      189   16897
0-24 months   PROBIT           BELARUS                        <48 cm              1        2   16897
0-24 months   PROBIT           BELARUS                        [48-50) cm          0     1385   16897
0-24 months   PROBIT           BELARUS                        [48-50) cm          1       10   16897
0-24 months   PROVIDE          BANGLADESH                     >=50 cm             0      164     700
0-24 months   PROVIDE          BANGLADESH                     >=50 cm             1        5     700
0-24 months   PROVIDE          BANGLADESH                     <48 cm              0      190     700
0-24 months   PROVIDE          BANGLADESH                     <48 cm              1       58     700
0-24 months   PROVIDE          BANGLADESH                     [48-50) cm          0      256     700
0-24 months   PROVIDE          BANGLADESH                     [48-50) cm          1       27     700
0-24 months   ResPak           PAKISTAN                       >=50 cm             0       11      42
0-24 months   ResPak           PAKISTAN                       >=50 cm             1        1      42
0-24 months   ResPak           PAKISTAN                       <48 cm              0       12      42
0-24 months   ResPak           PAKISTAN                       <48 cm              1        4      42
0-24 months   ResPak           PAKISTAN                       [48-50) cm          0       14      42
0-24 months   ResPak           PAKISTAN                       [48-50) cm          1        0      42
0-24 months   SAS-CompFeed     INDIA                          >=50 cm             0      207    1500
0-24 months   SAS-CompFeed     INDIA                          >=50 cm             1       16    1500
0-24 months   SAS-CompFeed     INDIA                          <48 cm              0      544    1500
0-24 months   SAS-CompFeed     INDIA                          <48 cm              1      256    1500
0-24 months   SAS-CompFeed     INDIA                          [48-50) cm          0      401    1500
0-24 months   SAS-CompFeed     INDIA                          [48-50) cm          1       76    1500
0-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm             0     4035   13805
0-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm             1       75   13805
0-24 months   ZVITAMBO         ZIMBABWE                       <48 cm              0     4031   13805
0-24 months   ZVITAMBO         ZIMBABWE                       <48 cm              1      332   13805
0-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5158   13805
0-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm          1      174   13805
0-6 months    CMC-V-BCS-2002   INDIA                          >=50 cm             0       14     105
0-6 months    CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     105
0-6 months    CMC-V-BCS-2002   INDIA                          <48 cm              0       44     105
0-6 months    CMC-V-BCS-2002   INDIA                          <48 cm              1        6     105
0-6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm          0       39     105
0-6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm          1        1     105
0-6 months    CMIN             BANGLADESH                     >=50 cm             0        2      20
0-6 months    CMIN             BANGLADESH                     >=50 cm             1        0      20
0-6 months    CMIN             BANGLADESH                     <48 cm              0        9      20
0-6 months    CMIN             BANGLADESH                     <48 cm              1        1      20
0-6 months    CMIN             BANGLADESH                     [48-50) cm          0        8      20
0-6 months    CMIN             BANGLADESH                     [48-50) cm          1        0      20
0-6 months    COHORTS          GUATEMALA                      >=50 cm             0      420     824
0-6 months    COHORTS          GUATEMALA                      >=50 cm             1        5     824
0-6 months    COHORTS          GUATEMALA                      <48 cm              0      147     824
0-6 months    COHORTS          GUATEMALA                      <48 cm              1        8     824
0-6 months    COHORTS          GUATEMALA                      [48-50) cm          0      238     824
0-6 months    COHORTS          GUATEMALA                      [48-50) cm          1        6     824
0-6 months    COHORTS          INDIA                          >=50 cm             0     1417    6592
0-6 months    COHORTS          INDIA                          >=50 cm             1        2    6592
0-6 months    COHORTS          INDIA                          <48 cm              0     2569    6592
0-6 months    COHORTS          INDIA                          <48 cm              1      167    6592
0-6 months    COHORTS          INDIA                          [48-50) cm          0     2428    6592
0-6 months    COHORTS          INDIA                          [48-50) cm          1        9    6592
0-6 months    COHORTS          PHILIPPINES                    >=50 cm             0     1119    3036
0-6 months    COHORTS          PHILIPPINES                    >=50 cm             1        9    3036
0-6 months    COHORTS          PHILIPPINES                    <48 cm              0      712    3036
0-6 months    COHORTS          PHILIPPINES                    <48 cm              1       39    3036
0-6 months    COHORTS          PHILIPPINES                    [48-50) cm          0     1133    3036
0-6 months    COHORTS          PHILIPPINES                    [48-50) cm          1       24    3036
0-6 months    CONTENT          PERU                           >=50 cm             0        1       2
0-6 months    CONTENT          PERU                           >=50 cm             1        0       2
0-6 months    CONTENT          PERU                           <48 cm              0        1       2
0-6 months    CONTENT          PERU                           <48 cm              1        0       2
0-6 months    CONTENT          PERU                           [48-50) cm          0        0       2
0-6 months    CONTENT          PERU                           [48-50) cm          1        0       2
0-6 months    EE               PAKISTAN                       >=50 cm             0       24     241
0-6 months    EE               PAKISTAN                       >=50 cm             1        0     241
0-6 months    EE               PAKISTAN                       <48 cm              0      132     241
0-6 months    EE               PAKISTAN                       <48 cm              1       31     241
0-6 months    EE               PAKISTAN                       [48-50) cm          0       47     241
0-6 months    EE               PAKISTAN                       [48-50) cm          1        7     241
0-6 months    GMS-Nepal        NEPAL                          >=50 cm             0      113     685
0-6 months    GMS-Nepal        NEPAL                          >=50 cm             1        2     685
0-6 months    GMS-Nepal        NEPAL                          <48 cm              0      331     685
0-6 months    GMS-Nepal        NEPAL                          <48 cm              1       31     685
0-6 months    GMS-Nepal        NEPAL                          [48-50) cm          0      205     685
0-6 months    GMS-Nepal        NEPAL                          [48-50) cm          1        3     685
0-6 months    IRC              INDIA                          >=50 cm             0      137     390
0-6 months    IRC              INDIA                          >=50 cm             1        5     390
0-6 months    IRC              INDIA                          <48 cm              0       96     390
0-6 months    IRC              INDIA                          <48 cm              1       14     390
0-6 months    IRC              INDIA                          [48-50) cm          0      134     390
0-6 months    IRC              INDIA                          [48-50) cm          1        4     390
0-6 months    JiVitA-3         BANGLADESH                     >=50 cm             0     1259   22149
0-6 months    JiVitA-3         BANGLADESH                     >=50 cm             1        0   22149
0-6 months    JiVitA-3         BANGLADESH                     <48 cm              0    14970   22149
0-6 months    JiVitA-3         BANGLADESH                     <48 cm              1      833   22149
0-6 months    JiVitA-3         BANGLADESH                     [48-50) cm          0     5073   22149
0-6 months    JiVitA-3         BANGLADESH                     [48-50) cm          1       14   22149
0-6 months    JiVitA-4         BANGLADESH                     >=50 cm             0     1225    4448
0-6 months    JiVitA-4         BANGLADESH                     >=50 cm             1        6    4448
0-6 months    JiVitA-4         BANGLADESH                     <48 cm              0     2037    4448
0-6 months    JiVitA-4         BANGLADESH                     <48 cm              1      103    4448
0-6 months    JiVitA-4         BANGLADESH                     [48-50) cm          0     1064    4448
0-6 months    JiVitA-4         BANGLADESH                     [48-50) cm          1       13    4448
0-6 months    Keneba           GAMBIA                         >=50 cm             0      759    1551
0-6 months    Keneba           GAMBIA                         >=50 cm             1        5    1551
0-6 months    Keneba           GAMBIA                         <48 cm              0      271    1551
0-6 months    Keneba           GAMBIA                         <48 cm              1       21    1551
0-6 months    Keneba           GAMBIA                         [48-50) cm          0      480    1551
0-6 months    Keneba           GAMBIA                         [48-50) cm          1       15    1551
0-6 months    MAL-ED           BANGLADESH                     >=50 cm             0       39     229
0-6 months    MAL-ED           BANGLADESH                     >=50 cm             1        0     229
0-6 months    MAL-ED           BANGLADESH                     <48 cm              0      103     229
0-6 months    MAL-ED           BANGLADESH                     <48 cm              1        8     229
0-6 months    MAL-ED           BANGLADESH                     [48-50) cm          0       79     229
0-6 months    MAL-ED           BANGLADESH                     [48-50) cm          1        0     229
0-6 months    MAL-ED           BRAZIL                         >=50 cm             0       30      65
0-6 months    MAL-ED           BRAZIL                         >=50 cm             1        0      65
0-6 months    MAL-ED           BRAZIL                         <48 cm              0       17      65
0-6 months    MAL-ED           BRAZIL                         <48 cm              1        0      65
0-6 months    MAL-ED           BRAZIL                         [48-50) cm          0       18      65
0-6 months    MAL-ED           BRAZIL                         [48-50) cm          1        0      65
0-6 months    MAL-ED           INDIA                          >=50 cm             0        9      47
0-6 months    MAL-ED           INDIA                          >=50 cm             1        0      47
0-6 months    MAL-ED           INDIA                          <48 cm              0       18      47
0-6 months    MAL-ED           INDIA                          <48 cm              1        2      47
0-6 months    MAL-ED           INDIA                          [48-50) cm          0       18      47
0-6 months    MAL-ED           INDIA                          [48-50) cm          1        0      47
0-6 months    MAL-ED           NEPAL                          >=50 cm             0        8      27
0-6 months    MAL-ED           NEPAL                          >=50 cm             1        0      27
0-6 months    MAL-ED           NEPAL                          <48 cm              0       11      27
0-6 months    MAL-ED           NEPAL                          <48 cm              1        1      27
0-6 months    MAL-ED           NEPAL                          [48-50) cm          0        7      27
0-6 months    MAL-ED           NEPAL                          [48-50) cm          1        0      27
0-6 months    MAL-ED           PERU                           >=50 cm             0       52     233
0-6 months    MAL-ED           PERU                           >=50 cm             1        0     233
0-6 months    MAL-ED           PERU                           <48 cm              0       87     233
0-6 months    MAL-ED           PERU                           <48 cm              1        1     233
0-6 months    MAL-ED           PERU                           [48-50) cm          0       93     233
0-6 months    MAL-ED           PERU                           [48-50) cm          1        0     233
0-6 months    MAL-ED           SOUTH AFRICA                   >=50 cm             0       43     121
0-6 months    MAL-ED           SOUTH AFRICA                   >=50 cm             1        0     121
0-6 months    MAL-ED           SOUTH AFRICA                   <48 cm              0       31     121
0-6 months    MAL-ED           SOUTH AFRICA                   <48 cm              1        1     121
0-6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm          0       46     121
0-6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm          1        0     121
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       32     124
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     124
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              0       40     124
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              1        1     124
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       51     124
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     124
0-6 months    NIH-Birth        BANGLADESH                     >=50 cm             0      138     601
0-6 months    NIH-Birth        BANGLADESH                     >=50 cm             1        1     601
0-6 months    NIH-Birth        BANGLADESH                     <48 cm              0      195     601
0-6 months    NIH-Birth        BANGLADESH                     <48 cm              1       39     601
0-6 months    NIH-Birth        BANGLADESH                     [48-50) cm          0      224     601
0-6 months    NIH-Birth        BANGLADESH                     [48-50) cm          1        4     601
0-6 months    NIH-Crypto       BANGLADESH                     >=50 cm             0      168     758
0-6 months    NIH-Crypto       BANGLADESH                     >=50 cm             1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     <48 cm              0      275     758
0-6 months    NIH-Crypto       BANGLADESH                     <48 cm              1       17     758
0-6 months    NIH-Crypto       BANGLADESH                     [48-50) cm          0      298     758
0-6 months    NIH-Crypto       BANGLADESH                     [48-50) cm          1        0     758
0-6 months    PROBIT           BELARUS                        >=50 cm             0    15303   16892
0-6 months    PROBIT           BELARUS                        >=50 cm             1        4   16892
0-6 months    PROBIT           BELARUS                        <48 cm              0      190   16892
0-6 months    PROBIT           BELARUS                        <48 cm              1        1   16892
0-6 months    PROBIT           BELARUS                        [48-50) cm          0     1386   16892
0-6 months    PROBIT           BELARUS                        [48-50) cm          1        8   16892
0-6 months    PROVIDE          BANGLADESH                     >=50 cm             0      167     700
0-6 months    PROVIDE          BANGLADESH                     >=50 cm             1        2     700
0-6 months    PROVIDE          BANGLADESH                     <48 cm              0      224     700
0-6 months    PROVIDE          BANGLADESH                     <48 cm              1       24     700
0-6 months    PROVIDE          BANGLADESH                     [48-50) cm          0      279     700
0-6 months    PROVIDE          BANGLADESH                     [48-50) cm          1        4     700
0-6 months    ResPak           PAKISTAN                       >=50 cm             0       11      42
0-6 months    ResPak           PAKISTAN                       >=50 cm             1        1      42
0-6 months    ResPak           PAKISTAN                       <48 cm              0       14      42
0-6 months    ResPak           PAKISTAN                       <48 cm              1        2      42
0-6 months    ResPak           PAKISTAN                       [48-50) cm          0       14      42
0-6 months    ResPak           PAKISTAN                       [48-50) cm          1        0      42
0-6 months    SAS-CompFeed     INDIA                          >=50 cm             0      219    1493
0-6 months    SAS-CompFeed     INDIA                          >=50 cm             1        3    1493
0-6 months    SAS-CompFeed     INDIA                          <48 cm              0      706    1493
0-6 months    SAS-CompFeed     INDIA                          <48 cm              1       88    1493
0-6 months    SAS-CompFeed     INDIA                          [48-50) cm          0      462    1493
0-6 months    SAS-CompFeed     INDIA                          [48-50) cm          1       15    1493
0-6 months    ZVITAMBO         ZIMBABWE                       >=50 cm             0     4087   13725
0-6 months    ZVITAMBO         ZIMBABWE                       >=50 cm             1       15   13725
0-6 months    ZVITAMBO         ZIMBABWE                       <48 cm              0     4167   13725
0-6 months    ZVITAMBO         ZIMBABWE                       <48 cm              1      132   13725
0-6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5305   13725
0-6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm          1       19   13725
6-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm             0       15     106
6-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm             1        1     106
6-24 months   CMC-V-BCS-2002   INDIA                          <48 cm              0       41     106
6-24 months   CMC-V-BCS-2002   INDIA                          <48 cm              1        9     106
6-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm          0       37     106
6-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm          1        3     106
6-24 months   CMIN             BANGLADESH                     >=50 cm             0        0      12
6-24 months   CMIN             BANGLADESH                     >=50 cm             1        0      12
6-24 months   CMIN             BANGLADESH                     <48 cm              0        4      12
6-24 months   CMIN             BANGLADESH                     <48 cm              1        2      12
6-24 months   CMIN             BANGLADESH                     [48-50) cm          0        5      12
6-24 months   CMIN             BANGLADESH                     [48-50) cm          1        1      12
6-24 months   COHORTS          GUATEMALA                      >=50 cm             0      334     726
6-24 months   COHORTS          GUATEMALA                      >=50 cm             1       28     726
6-24 months   COHORTS          GUATEMALA                      <48 cm              0      120     726
6-24 months   COHORTS          GUATEMALA                      <48 cm              1       21     726
6-24 months   COHORTS          GUATEMALA                      [48-50) cm          0      203     726
6-24 months   COHORTS          GUATEMALA                      [48-50) cm          1       20     726
6-24 months   COHORTS          INDIA                          >=50 cm             0     1315    6166
6-24 months   COHORTS          INDIA                          >=50 cm             1       27    6166
6-24 months   COHORTS          INDIA                          <48 cm              0     2191    6166
6-24 months   COHORTS          INDIA                          <48 cm              1      352    6166
6-24 months   COHORTS          INDIA                          [48-50) cm          0     2141    6166
6-24 months   COHORTS          INDIA                          [48-50) cm          1      140    6166
6-24 months   COHORTS          PHILIPPINES                    >=50 cm             0      926    2801
6-24 months   COHORTS          PHILIPPINES                    >=50 cm             1      110    2801
6-24 months   COHORTS          PHILIPPINES                    <48 cm              0      487    2801
6-24 months   COHORTS          PHILIPPINES                    <48 cm              1      212    2801
6-24 months   COHORTS          PHILIPPINES                    [48-50) cm          0      853    2801
6-24 months   COHORTS          PHILIPPINES                    [48-50) cm          1      213    2801
6-24 months   CONTENT          PERU                           >=50 cm             0        1       2
6-24 months   CONTENT          PERU                           >=50 cm             1        0       2
6-24 months   CONTENT          PERU                           <48 cm              0        1       2
6-24 months   CONTENT          PERU                           <48 cm              1        0       2
6-24 months   CONTENT          PERU                           [48-50) cm          0        0       2
6-24 months   CONTENT          PERU                           [48-50) cm          1        0       2
6-24 months   EE               PAKISTAN                       >=50 cm             0       18     235
6-24 months   EE               PAKISTAN                       >=50 cm             1        6     235
6-24 months   EE               PAKISTAN                       <48 cm              0       71     235
6-24 months   EE               PAKISTAN                       <48 cm              1       87     235
6-24 months   EE               PAKISTAN                       [48-50) cm          0       40     235
6-24 months   EE               PAKISTAN                       [48-50) cm          1       13     235
6-24 months   GMS-Nepal        NEPAL                          >=50 cm             0       86     589
6-24 months   GMS-Nepal        NEPAL                          >=50 cm             1       14     589
6-24 months   GMS-Nepal        NEPAL                          <48 cm              0      181     589
6-24 months   GMS-Nepal        NEPAL                          <48 cm              1      130     589
6-24 months   GMS-Nepal        NEPAL                          [48-50) cm          0      131     589
6-24 months   GMS-Nepal        NEPAL                          [48-50) cm          1       47     589
6-24 months   IRC              INDIA                          >=50 cm             0      123     391
6-24 months   IRC              INDIA                          >=50 cm             1       19     391
6-24 months   IRC              INDIA                          <48 cm              0       81     391
6-24 months   IRC              INDIA                          <48 cm              1       30     391
6-24 months   IRC              INDIA                          [48-50) cm          0      124     391
6-24 months   IRC              INDIA                          [48-50) cm          1       14     391
6-24 months   JiVitA-3         BANGLADESH                     >=50 cm             0      840   14296
6-24 months   JiVitA-3         BANGLADESH                     >=50 cm             1        8   14296
6-24 months   JiVitA-3         BANGLADESH                     <48 cm              0     8927   14296
6-24 months   JiVitA-3         BANGLADESH                     <48 cm              1     1165   14296
6-24 months   JiVitA-3         BANGLADESH                     [48-50) cm          0     3245   14296
6-24 months   JiVitA-3         BANGLADESH                     [48-50) cm          1      111   14296
6-24 months   JiVitA-4         BANGLADESH                     >=50 cm             0     1113    4474
6-24 months   JiVitA-4         BANGLADESH                     >=50 cm             1      112    4474
6-24 months   JiVitA-4         BANGLADESH                     <48 cm              0     1730    4474
6-24 months   JiVitA-4         BANGLADESH                     <48 cm              1      442    4474
6-24 months   JiVitA-4         BANGLADESH                     [48-50) cm          0      971    4474
6-24 months   JiVitA-4         BANGLADESH                     [48-50) cm          1      106    4474
6-24 months   Keneba           GAMBIA                         >=50 cm             0      658    1487
6-24 months   Keneba           GAMBIA                         >=50 cm             1       85    1487
6-24 months   Keneba           GAMBIA                         <48 cm              0      206    1487
6-24 months   Keneba           GAMBIA                         <48 cm              1       62    1487
6-24 months   Keneba           GAMBIA                         [48-50) cm          0      381    1487
6-24 months   Keneba           GAMBIA                         [48-50) cm          1       95    1487
6-24 months   MAL-ED           BANGLADESH                     >=50 cm             0       34     211
6-24 months   MAL-ED           BANGLADESH                     >=50 cm             1        5     211
6-24 months   MAL-ED           BANGLADESH                     <48 cm              0       79     211
6-24 months   MAL-ED           BANGLADESH                     <48 cm              1       19     211
6-24 months   MAL-ED           BANGLADESH                     [48-50) cm          0       65     211
6-24 months   MAL-ED           BANGLADESH                     [48-50) cm          1        9     211
6-24 months   MAL-ED           BRAZIL                         >=50 cm             0       27      58
6-24 months   MAL-ED           BRAZIL                         >=50 cm             1        0      58
6-24 months   MAL-ED           BRAZIL                         <48 cm              0       14      58
6-24 months   MAL-ED           BRAZIL                         <48 cm              1        1      58
6-24 months   MAL-ED           BRAZIL                         [48-50) cm          0       16      58
6-24 months   MAL-ED           BRAZIL                         [48-50) cm          1        0      58
6-24 months   MAL-ED           INDIA                          >=50 cm             0        8      41
6-24 months   MAL-ED           INDIA                          >=50 cm             1        0      41
6-24 months   MAL-ED           INDIA                          <48 cm              0       10      41
6-24 months   MAL-ED           INDIA                          <48 cm              1        8      41
6-24 months   MAL-ED           INDIA                          [48-50) cm          0       10      41
6-24 months   MAL-ED           INDIA                          [48-50) cm          1        5      41
6-24 months   MAL-ED           NEPAL                          >=50 cm             0        8      26
6-24 months   MAL-ED           NEPAL                          >=50 cm             1        0      26
6-24 months   MAL-ED           NEPAL                          <48 cm              0        9      26
6-24 months   MAL-ED           NEPAL                          <48 cm              1        2      26
6-24 months   MAL-ED           NEPAL                          [48-50) cm          0        6      26
6-24 months   MAL-ED           NEPAL                          [48-50) cm          1        1      26
6-24 months   MAL-ED           PERU                           >=50 cm             0       48     213
6-24 months   MAL-ED           PERU                           >=50 cm             1        0     213
6-24 months   MAL-ED           PERU                           <48 cm              0       76     213
6-24 months   MAL-ED           PERU                           <48 cm              1        8     213
6-24 months   MAL-ED           PERU                           [48-50) cm          0       79     213
6-24 months   MAL-ED           PERU                           [48-50) cm          1        2     213
6-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm             0       34      97
6-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm             1        1      97
6-24 months   MAL-ED           SOUTH AFRICA                   <48 cm              0       21      97
6-24 months   MAL-ED           SOUTH AFRICA                   <48 cm              1        2      97
6-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm          0       36      97
6-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm          1        3      97
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       31     120
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        1     120
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              0       32     120
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm              1        7     120
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       46     120
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        3     120
6-24 months   NIH-Birth        BANGLADESH                     >=50 cm             0      109     522
6-24 months   NIH-Birth        BANGLADESH                     >=50 cm             1       12     522
6-24 months   NIH-Birth        BANGLADESH                     <48 cm              0      140     522
6-24 months   NIH-Birth        BANGLADESH                     <48 cm              1       62     522
6-24 months   NIH-Birth        BANGLADESH                     [48-50) cm          0      162     522
6-24 months   NIH-Birth        BANGLADESH                     [48-50) cm          1       37     522
6-24 months   NIH-Crypto       BANGLADESH                     >=50 cm             0      164     730
6-24 months   NIH-Crypto       BANGLADESH                     >=50 cm             1        1     730
6-24 months   NIH-Crypto       BANGLADESH                     <48 cm              0      241     730
6-24 months   NIH-Crypto       BANGLADESH                     <48 cm              1       39     730
6-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm          0      262     730
6-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm          1       23     730
6-24 months   PROBIT           BELARUS                        >=50 cm             0    15050   16598
6-24 months   PROBIT           BELARUS                        >=50 cm             1        2   16598
6-24 months   PROBIT           BELARUS                        <48 cm              0      178   16598
6-24 months   PROBIT           BELARUS                        <48 cm              1        1   16598
6-24 months   PROBIT           BELARUS                        [48-50) cm          0     1364   16598
6-24 months   PROBIT           BELARUS                        [48-50) cm          1        3   16598
6-24 months   PROVIDE          BANGLADESH                     >=50 cm             0      146     614
6-24 months   PROVIDE          BANGLADESH                     >=50 cm             1        3     614
6-24 months   PROVIDE          BANGLADESH                     <48 cm              0      173     614
6-24 months   PROVIDE          BANGLADESH                     <48 cm              1       47     614
6-24 months   PROVIDE          BANGLADESH                     [48-50) cm          0      220     614
6-24 months   PROVIDE          BANGLADESH                     [48-50) cm          1       25     614
6-24 months   ResPak           PAKISTAN                       >=50 cm             0       10      32
6-24 months   ResPak           PAKISTAN                       >=50 cm             1        1      32
6-24 months   ResPak           PAKISTAN                       <48 cm              0        9      32
6-24 months   ResPak           PAKISTAN                       <48 cm              1        3      32
6-24 months   ResPak           PAKISTAN                       [48-50) cm          0        9      32
6-24 months   ResPak           PAKISTAN                       [48-50) cm          1        0      32
6-24 months   SAS-CompFeed     INDIA                          >=50 cm             0      197    1376
6-24 months   SAS-CompFeed     INDIA                          >=50 cm             1       13    1376
6-24 months   SAS-CompFeed     INDIA                          <48 cm              0      498    1376
6-24 months   SAS-CompFeed     INDIA                          <48 cm              1      229    1376
6-24 months   SAS-CompFeed     INDIA                          [48-50) cm          0      370    1376
6-24 months   SAS-CompFeed     INDIA                          [48-50) cm          1       69    1376
6-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm             0     3009   10688
6-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm             1       62   10688
6-24 months   ZVITAMBO         ZIMBABWE                       <48 cm              0     3210   10688
6-24 months   ZVITAMBO         ZIMBABWE                       <48 cm              1      213   10688
6-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm          0     4034   10688
6-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm          1      160   10688


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN

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




# Results Detail

## Results Plots
![](/tmp/3e348b2d-accb-4676-a799-f1fd4d4b26a4/3d9ac5b4-ff2d-45a7-b214-8a6bb826c4f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3e348b2d-accb-4676-a799-f1fd4d4b26a4/3d9ac5b4-ff2d-45a7-b214-8a6bb826c4f6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3e348b2d-accb-4676-a799-f1fd4d4b26a4/3d9ac5b4-ff2d-45a7-b214-8a6bb826c4f6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3e348b2d-accb-4676-a799-f1fd4d4b26a4/3d9ac5b4-ff2d-45a7-b214-8a6bb826c4f6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        GUATEMALA     >=50 cm              NA                0.0653988   0.0415909   0.0892067
0-24 months   COHORTS        GUATEMALA     <48 cm               NA                0.1722853   0.1143951   0.2301755
0-24 months   COHORTS        GUATEMALA     [48-50) cm           NA                0.1051134   0.0674482   0.1427785
0-24 months   COHORTS        INDIA         >=50 cm              NA                0.0216134   0.0138230   0.0294038
0-24 months   COHORTS        INDIA         <48 cm               NA                0.1515610   0.1382763   0.1648457
0-24 months   COHORTS        INDIA         [48-50) cm           NA                0.0595530   0.0501814   0.0689247
0-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                0.1041343   0.0865789   0.1216897
0-24 months   COHORTS        PHILIPPINES   <48 cm               NA                0.2916023   0.2591009   0.3241038
0-24 months   COHORTS        PHILIPPINES   [48-50) cm           NA                0.1882777   0.1658447   0.2107106
0-24 months   EE             PAKISTAN      >=50 cm              NA                0.2500000   0.0764015   0.4235985
0-24 months   EE             PAKISTAN      <48 cm               NA                0.5889571   0.5132663   0.6646478
0-24 months   EE             PAKISTAN      [48-50) cm           NA                0.2592593   0.1421330   0.3763855
0-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                0.1133079   0.0535065   0.1731092
0-24 months   GMS-Nepal      NEPAL         <48 cm               NA                0.3903640   0.3400264   0.4407016
0-24 months   GMS-Nepal      NEPAL         [48-50) cm           NA                0.2247133   0.1670655   0.2823612
0-24 months   IRC            INDIA         >=50 cm              NA                0.1564079   0.0962893   0.2165264
0-24 months   IRC            INDIA         <48 cm               NA                0.3232590   0.2348202   0.4116979
0-24 months   IRC            INDIA         [48-50) cm           NA                0.1084282   0.0556664   0.1611900
0-24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                0.0063542   0.0022034   0.0105051
0-24 months   JiVitA-3       BANGLADESH    <48 cm               NA                0.1173315   0.1117118   0.1229512
0-24 months   JiVitA-3       BANGLADESH    [48-50) cm           NA                0.0245724   0.0202540   0.0288909
0-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                0.1003326   0.0801557   0.1205095
0-24 months   JiVitA-4       BANGLADESH    <48 cm               NA                0.2319494   0.2109791   0.2529196
0-24 months   JiVitA-4       BANGLADESH    [48-50) cm           NA                0.1040053   0.0829197   0.1250909
0-24 months   Keneba         GAMBIA        >=50 cm              NA                0.1090759   0.0868412   0.1313106
0-24 months   Keneba         GAMBIA        <48 cm               NA                0.2550643   0.2065727   0.3035560
0-24 months   Keneba         GAMBIA        [48-50) cm           NA                0.1992865   0.1640880   0.2344850
0-24 months   MAL-ED         BANGLADESH    >=50 cm              NA                0.1282051   0.0230511   0.2333592
0-24 months   MAL-ED         BANGLADESH    <48 cm               NA                0.2072072   0.1316425   0.2827719
0-24 months   MAL-ED         BANGLADESH    [48-50) cm           NA                0.1139241   0.0437094   0.1841388
0-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                0.0853141   0.0384415   0.1321867
0-24 months   NIH-Birth      BANGLADESH    <48 cm               NA                0.3456431   0.2846423   0.4066439
0-24 months   NIH-Birth      BANGLADESH    [48-50) cm           NA                0.1767794   0.1272929   0.2262660
0-24 months   PROVIDE        BANGLADESH    >=50 cm              NA                0.0295858   0.0040214   0.0551502
0-24 months   PROVIDE        BANGLADESH    <48 cm               NA                0.2338710   0.1811514   0.2865905
0-24 months   PROVIDE        BANGLADESH    [48-50) cm           NA                0.0954064   0.0611548   0.1296580
0-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                0.0748375   0.0403411   0.1093339
0-24 months   SAS-CompFeed   INDIA         <48 cm               NA                0.3106365   0.2546979   0.3665752
0-24 months   SAS-CompFeed   INDIA         [48-50) cm           NA                0.1637801   0.1259249   0.2016353
0-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0186860   0.0145084   0.0228635
0-24 months   ZVITAMBO       ZIMBABWE      <48 cm               NA                0.0767052   0.0687722   0.0846381
0-24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.0324605   0.0276402   0.0372809
0-6 months    COHORTS        GUATEMALA     >=50 cm              NA                0.0117647   0.0015073   0.0220221
0-6 months    COHORTS        GUATEMALA     <48 cm               NA                0.0516129   0.0167617   0.0864641
0-6 months    COHORTS        GUATEMALA     [48-50) cm           NA                0.0245902   0.0051459   0.0440344
0-6 months    COHORTS        PHILIPPINES   >=50 cm              NA                0.0079787   0.0027860   0.0131714
0-6 months    COHORTS        PHILIPPINES   <48 cm               NA                0.0519308   0.0360587   0.0678028
0-6 months    COHORTS        PHILIPPINES   [48-50) cm           NA                0.0207433   0.0125296   0.0289570
0-6 months    JiVitA-4       BANGLADESH    >=50 cm              NA                0.0048741   0.0004416   0.0093066
0-6 months    JiVitA-4       BANGLADESH    <48 cm               NA                0.0481308   0.0371331   0.0591286
0-6 months    JiVitA-4       BANGLADESH    [48-50) cm           NA                0.0120706   0.0054304   0.0187107
0-6 months    Keneba         GAMBIA        >=50 cm              NA                0.0065445   0.0008251   0.0122639
0-6 months    Keneba         GAMBIA        <48 cm               NA                0.0719178   0.0422758   0.1015599
0-6 months    Keneba         GAMBIA        [48-50) cm           NA                0.0303030   0.0151971   0.0454089
0-6 months    ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0036829   0.0018263   0.0055395
0-6 months    ZVITAMBO       ZIMBABWE      <48 cm               NA                0.0306351   0.0254753   0.0357950
0-6 months    ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.0035603   0.0019583   0.0051623
6-24 months   COHORTS        GUATEMALA     >=50 cm              NA                0.0688346   0.0435615   0.0941078
6-24 months   COHORTS        GUATEMALA     <48 cm               NA                0.1752907   0.1087219   0.2418595
6-24 months   COHORTS        GUATEMALA     [48-50) cm           NA                0.0964053   0.0559661   0.1368444
6-24 months   COHORTS        INDIA         >=50 cm              NA                0.0224420   0.0143026   0.0305813
6-24 months   COHORTS        INDIA         <48 cm               NA                0.1340065   0.1208845   0.1471285
6-24 months   COHORTS        INDIA         [48-50) cm           NA                0.0620456   0.0521815   0.0719096
6-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                0.1081790   0.0895575   0.1268005
6-24 months   COHORTS        PHILIPPINES   <48 cm               NA                0.2934434   0.2600430   0.3268439
6-24 months   COHORTS        PHILIPPINES   [48-50) cm           NA                0.2001987   0.1762353   0.2241621
6-24 months   EE             PAKISTAN      >=50 cm              NA                0.2500000   0.0763922   0.4236078
6-24 months   EE             PAKISTAN      <48 cm               NA                0.5506329   0.4729050   0.6283609
6-24 months   EE             PAKISTAN      [48-50) cm           NA                0.2452830   0.1292018   0.3613642
6-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                0.1361336   0.0676254   0.2046419
6-24 months   GMS-Nepal      NEPAL         <48 cm               NA                0.4213850   0.3663590   0.4764110
6-24 months   GMS-Nepal      NEPAL         [48-50) cm           NA                0.2603162   0.1946880   0.3259444
6-24 months   IRC            INDIA         >=50 cm              NA                0.1334904   0.0762467   0.1907340
6-24 months   IRC            INDIA         <48 cm               NA                0.2676397   0.1841313   0.3511482
6-24 months   IRC            INDIA         [48-50) cm           NA                0.0998638   0.0485254   0.1512021
6-24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                0.0094340   0.0032927   0.0155753
6-24 months   JiVitA-3       BANGLADESH    <48 cm               NA                0.1154380   0.1087317   0.1221442
6-24 months   JiVitA-3       BANGLADESH    [48-50) cm           NA                0.0330751   0.0270069   0.0391433
6-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                0.0975229   0.0776354   0.1174104
6-24 months   JiVitA-4       BANGLADESH    <48 cm               NA                0.2027693   0.1832135   0.2223251
6-24 months   JiVitA-4       BANGLADESH    [48-50) cm           NA                0.0959255   0.0755487   0.1163023
6-24 months   Keneba         GAMBIA        >=50 cm              NA                0.1093987   0.0868594   0.1319380
6-24 months   Keneba         GAMBIA        <48 cm               NA                0.2359349   0.1863787   0.2854911
6-24 months   Keneba         GAMBIA        [48-50) cm           NA                0.2015838   0.1657139   0.2374538
6-24 months   MAL-ED         BANGLADESH    >=50 cm              NA                0.1282051   0.0230314   0.2333788
6-24 months   MAL-ED         BANGLADESH    <48 cm               NA                0.1938776   0.1154207   0.2723344
6-24 months   MAL-ED         BANGLADESH    [48-50) cm           NA                0.1216216   0.0469750   0.1962682
6-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                0.1030938   0.0479598   0.1582279
6-24 months   NIH-Birth      BANGLADESH    <48 cm               NA                0.2974647   0.2343267   0.3606028
6-24 months   NIH-Birth      BANGLADESH    [48-50) cm           NA                0.1889514   0.1339368   0.2439659
6-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                0.0647296   0.0332912   0.0961679
6-24 months   SAS-CompFeed   INDIA         <48 cm               NA                0.3050174   0.2518463   0.3581885
6-24 months   SAS-CompFeed   INDIA         [48-50) cm           NA                0.1615600   0.1315643   0.1915557
6-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0198337   0.0148178   0.0248496
6-24 months   ZVITAMBO       ZIMBABWE      <48 cm               NA                0.0639501   0.0556034   0.0722968
6-24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.0386444   0.0326516   0.0446372


### Parameter: E(Y)


agecat        studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        GUATEMALA     NA                   NA                0.0960384   0.0760175   0.1160593
0-24 months   COHORTS        INDIA         NA                   NA                0.0909777   0.0840539   0.0979015
0-24 months   COHORTS        PHILIPPINES   NA                   NA                0.1840632   0.1702782   0.1978483
0-24 months   EE             PAKISTAN      NA                   NA                0.4813278   0.4181144   0.5445412
0-24 months   GMS-Nepal      NEPAL         NA                   NA                0.2934307   0.2593074   0.3275539
0-24 months   IRC            INDIA         NA                   NA                0.1867008   0.1480272   0.2253743
0-24 months   JiVitA-3       BANGLADESH    NA                   NA                0.0897702   0.0855711   0.0939692
0-24 months   JiVitA-4       BANGLADESH    NA                   NA                0.1635066   0.1508784   0.1761348
0-24 months   Keneba         GAMBIA        NA                   NA                0.1655928   0.1470936   0.1840919
0-24 months   MAL-ED         BANGLADESH    NA                   NA                0.1615721   0.1137975   0.2093466
0-24 months   NIH-Birth      BANGLADESH    NA                   NA                0.2205638   0.1874426   0.2536851
0-24 months   PROVIDE        BANGLADESH    NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   SAS-CompFeed   INDIA         NA                   NA                0.2320000   0.1911686   0.2728314
0-24 months   ZVITAMBO       ZIMBABWE      NA                   NA                0.0420862   0.0387367   0.0454357
0-6 months    COHORTS        GUATEMALA     NA                   NA                0.0230583   0.0128042   0.0333123
0-6 months    COHORTS        PHILIPPINES   NA                   NA                0.0237154   0.0183020   0.0291288
0-6 months    JiVitA-4       BANGLADESH    NA                   NA                0.0274281   0.0217023   0.0331538
0-6 months    Keneba         GAMBIA        NA                   NA                0.0264346   0.0184482   0.0344210
0-6 months    ZVITAMBO       ZIMBABWE      NA                   NA                0.0120947   0.0102659   0.0139235
6-24 months   COHORTS        GUATEMALA     NA                   NA                0.0950413   0.0736937   0.1163890
6-24 months   COHORTS        INDIA         NA                   NA                0.0841713   0.0772407   0.0911019
6-24 months   COHORTS        PHILIPPINES   NA                   NA                0.1910032   0.1764432   0.2055633
6-24 months   EE             PAKISTAN      NA                   NA                0.4510638   0.3873080   0.5148197
6-24 months   GMS-Nepal      NEPAL         NA                   NA                0.3242784   0.2864427   0.3621142
6-24 months   IRC            INDIA         NA                   NA                0.1611253   0.1246376   0.1976130
6-24 months   JiVitA-3       BANGLADESH    NA                   NA                0.0898153   0.0848110   0.0948197
6-24 months   JiVitA-4       BANGLADESH    NA                   NA                0.1475190   0.1356672   0.1593708
6-24 months   Keneba         GAMBIA        NA                   NA                0.1627438   0.1439757   0.1815119
6-24 months   MAL-ED         BANGLADESH    NA                   NA                0.1563981   0.1072708   0.2055254
6-24 months   NIH-Birth      BANGLADESH    NA                   NA                0.2126437   0.1775086   0.2477788
6-24 months   SAS-CompFeed   INDIA         NA                   NA                0.2260174   0.1899444   0.2620905
6-24 months   ZVITAMBO       ZIMBABWE      NA                   NA                0.0406999   0.0369536   0.0444461


### Parameter: RR


agecat        studyid        country       intervention_level   baseline_level      estimate    ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  -----------  ----------  ----------
0-24 months   COHORTS        GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   COHORTS        GUATEMALA     <48 cm               >=50 cm            2.6343803   1.6077827    4.316478
0-24 months   COHORTS        GUATEMALA     [48-50) cm           >=50 cm            1.6072678   0.9648834    2.677328
0-24 months   COHORTS        INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   COHORTS        INDIA         <48 cm               >=50 cm            7.0123631   4.8424071   10.154709
0-24 months   COHORTS        INDIA         [48-50) cm           >=50 cm            2.7553758   1.8615849    4.078297
0-24 months   COHORTS        PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   COHORTS        PHILIPPINES   <48 cm               >=50 cm            2.8002525   2.2899248    3.424311
0-24 months   COHORTS        PHILIPPINES   [48-50) cm           >=50 cm            1.8080276   1.4727495    2.219633
0-24 months   EE             PAKISTAN      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   EE             PAKISTAN      <48 cm               >=50 cm            2.3558282   1.1626544    4.773496
0-24 months   EE             PAKISTAN      [48-50) cm           >=50 cm            1.0370370   0.4529137    2.374505
0-24 months   GMS-Nepal      NEPAL         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   GMS-Nepal      NEPAL         <48 cm               >=50 cm            3.4451629   2.0018910    5.928968
0-24 months   GMS-Nepal      NEPAL         [48-50) cm           >=50 cm            1.9832105   1.1044081    3.561296
0-24 months   IRC            INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   IRC            INDIA         <48 cm               >=50 cm            2.0667699   1.2884169    3.315338
0-24 months   IRC            INDIA         [48-50) cm           >=50 cm            0.6932401   0.3729253    1.288681
0-24 months   JiVitA-3       BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   JiVitA-3       BANGLADESH    <48 cm               >=50 cm           18.4650420   9.5869347   35.564838
0-24 months   JiVitA-3       BANGLADESH    [48-50) cm           >=50 cm            3.8670877   1.9755936    7.569556
0-24 months   JiVitA-4       BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   JiVitA-4       BANGLADESH    <48 cm               >=50 cm            2.3118042   1.8567494    2.878385
0-24 months   JiVitA-4       BANGLADESH    [48-50) cm           >=50 cm            1.0366055   0.7780631    1.381059
0-24 months   Keneba         GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   Keneba         GAMBIA        <48 cm               >=50 cm            2.3384113   1.7712150    3.087241
0-24 months   Keneba         GAMBIA        [48-50) cm           >=50 cm            1.8270439   1.3960077    2.391168
0-24 months   MAL-ED         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   MAL-ED         BANGLADESH    <48 cm               >=50 cm            1.6162162   0.6586696    3.965805
0-24 months   MAL-ED         BANGLADESH    [48-50) cm           >=50 cm            0.8886076   0.3185236    2.479011
0-24 months   NIH-Birth      BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   NIH-Birth      BANGLADESH    <48 cm               >=50 cm            4.0514180   2.2735492    7.219544
0-24 months   NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm            2.0721010   1.1175635    3.841931
0-24 months   PROVIDE        BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   PROVIDE        BANGLADESH    <48 cm               >=50 cm            7.9048387   3.2364549   19.307074
0-24 months   PROVIDE        BANGLADESH    [48-50) cm           >=50 cm            3.2247350   1.2651132    8.219751
0-24 months   SAS-CompFeed   INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   SAS-CompFeed   INDIA         <48 cm               >=50 cm            4.1508139   2.5680982    6.708956
0-24 months   SAS-CompFeed   INDIA         [48-50) cm           >=50 cm            2.1884765   1.3991453    3.423111
0-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-24 months   ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm            4.1049600   3.2088408    5.251334
0-24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm            1.7371610   1.3283803    2.271735
0-6 months    COHORTS        GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    COHORTS        GUATEMALA     <48 cm               >=50 cm            4.3870968   1.4562810   13.216281
0-6 months    COHORTS        GUATEMALA     [48-50) cm           >=50 cm            2.0901639   0.6441639    6.782102
0-6 months    COHORTS        PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    COHORTS        PHILIPPINES   <48 cm               >=50 cm            6.5086551   3.1712363   13.358384
0-6 months    COHORTS        PHILIPPINES   [48-50) cm           >=50 cm            2.5998271   1.2136528    5.569222
0-6 months    JiVitA-4       BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    JiVitA-4       BANGLADESH    <48 cm               >=50 cm            9.8748437   3.8409666   25.387500
0-6 months    JiVitA-4       BANGLADESH    [48-50) cm           >=50 cm            2.4764777   0.9113068    6.729832
0-6 months    Keneba         GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    Keneba         GAMBIA        <48 cm               >=50 cm           10.9890411   4.1814154   28.879939
0-6 months    Keneba         GAMBIA        [48-50) cm           >=50 cm            4.6303030   1.6930209   12.663580
0-6 months    ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
0-6 months    ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm            8.3182289   4.8888321   14.153264
0-6 months    ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm            0.9667236   0.4918832    1.899952
6-24 months   COHORTS        GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   COHORTS        GUATEMALA     <48 cm               >=50 cm            2.5465477   1.5070175    4.303139
6-24 months   COHORTS        GUATEMALA     [48-50) cm           >=50 cm            1.4005339   0.8029555    2.442844
6-24 months   COHORTS        INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   COHORTS        INDIA         <48 cm               >=50 cm            5.9712400   4.1045229    8.686931
6-24 months   COHORTS        INDIA         [48-50) cm           >=50 cm            2.7647090   1.8631080    4.102615
6-24 months   COHORTS        PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   COHORTS        PHILIPPINES   <48 cm               >=50 cm            2.7125726   2.2093872    3.330358
6-24 months   COHORTS        PHILIPPINES   [48-50) cm           >=50 cm            1.8506241   1.5028117    2.278935
6-24 months   EE             PAKISTAN      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   EE             PAKISTAN      <48 cm               >=50 cm            2.2025316   1.0843431    4.473811
6-24 months   EE             PAKISTAN      [48-50) cm           >=50 cm            0.9811321   0.4234128    2.273479
6-24 months   GMS-Nepal      NEPAL         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   GMS-Nepal      NEPAL         <48 cm               >=50 cm            3.0953776   1.8413402    5.203472
6-24 months   GMS-Nepal      NEPAL         [48-50) cm           >=50 cm            1.9122108   1.0897880    3.355286
6-24 months   IRC            INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   IRC            INDIA         <48 cm               >=50 cm            2.0049364   1.1804272    3.405352
6-24 months   IRC            INDIA         [48-50) cm           >=50 cm            0.7480972   0.3832686    1.460202
6-24 months   JiVitA-3       BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   JiVitA-3       BANGLADESH    <48 cm               >=50 cm           12.2364249   6.3596188   23.543879
6-24 months   JiVitA-3       BANGLADESH    [48-50) cm           >=50 cm            3.5059595   1.8022114    6.820372
6-24 months   JiVitA-4       BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   JiVitA-4       BANGLADESH    <48 cm               >=50 cm            2.0791970   1.6640227    2.597957
6-24 months   JiVitA-4       BANGLADESH    [48-50) cm           >=50 cm            0.9836201   0.7294806    1.326298
6-24 months   Keneba         GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   Keneba         GAMBIA        <48 cm               >=50 cm            2.1566519   1.6092150    2.890321
6-24 months   Keneba         GAMBIA        [48-50) cm           >=50 cm            1.8426532   1.4047307    2.417097
6-24 months   MAL-ED         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   MAL-ED         BANGLADESH    <48 cm               >=50 cm            1.5122449   0.6058392    3.774739
6-24 months   MAL-ED         BANGLADESH    [48-50) cm           >=50 cm            0.9486486   0.3405280    2.642762
6-24 months   NIH-Birth      BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   NIH-Birth      BANGLADESH    <48 cm               >=50 cm            2.8853783   1.6221599    5.132298
6-24 months   NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm            1.8328094   0.9970170    3.369241
6-24 months   SAS-CompFeed   INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   SAS-CompFeed   INDIA         <48 cm               >=50 cm            4.7121802   2.7029293    8.215029
6-24 months   SAS-CompFeed   INDIA         [48-50) cm           >=50 cm            2.4959225   1.4536705    4.285448
6-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6-24 months   ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm            3.2243160   2.4259905    4.285348
6-24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm            1.9484220   1.4485386    2.620813


### Parameter: PAR


agecat        studyid        country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS        GUATEMALA     >=50 cm              NA                0.0306396    0.0110800   0.0501992
0-24 months   COHORTS        INDIA         >=50 cm              NA                0.0693643    0.0602002   0.0785284
0-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                0.0799289    0.0636597   0.0961981
0-24 months   EE             PAKISTAN      >=50 cm              NA                0.2313278    0.0636075   0.3990481
0-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                0.1801228    0.1206871   0.2395585
0-24 months   IRC            INDIA         >=50 cm              NA                0.0302929   -0.0196306   0.0802164
0-24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                0.0834159    0.0776731   0.0891588
0-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                0.0631740    0.0441280   0.0822200
0-24 months   Keneba         GAMBIA        >=50 cm              NA                0.0565169    0.0379935   0.0750402
0-24 months   MAL-ED         BANGLADESH    >=50 cm              NA                0.0333669   -0.0644774   0.1312113
0-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                0.1352498    0.0874809   0.1830186
0-24 months   PROVIDE        BANGLADESH    >=50 cm              NA                0.0989856    0.0681034   0.1298678
0-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                0.1571625    0.1117089   0.2026162
0-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0234002    0.0190909   0.0277095
0-6 months    COHORTS        GUATEMALA     >=50 cm              NA                0.0112935    0.0012027   0.0213844
0-6 months    COHORTS        PHILIPPINES   >=50 cm              NA                0.0157367    0.0097173   0.0217561
0-6 months    JiVitA-4       BANGLADESH    >=50 cm              NA                0.0225540    0.0161589   0.0289490
0-6 months    Keneba         GAMBIA        >=50 cm              NA                0.0198901    0.0118733   0.0279068
0-6 months    ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0084118    0.0062344   0.0105893
6-24 months   COHORTS        GUATEMALA     >=50 cm              NA                0.0262067    0.0062060   0.0462074
6-24 months   COHORTS        INDIA         >=50 cm              NA                0.0617293    0.0523998   0.0710587
6-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                0.0828242    0.0656153   0.1000331
6-24 months   EE             PAKISTAN      >=50 cm              NA                0.2010638    0.0335876   0.3685400
6-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                0.1881448    0.1208065   0.2554831
6-24 months   IRC            INDIA         >=50 cm              NA                0.0276349   -0.0200179   0.0752878
6-24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                0.0803814    0.0727907   0.0879720
6-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                0.0499961    0.0316221   0.0683701
6-24 months   Keneba         GAMBIA        >=50 cm              NA                0.0533451    0.0348670   0.0718232
6-24 months   MAL-ED         BANGLADESH    >=50 cm              NA                0.0281930   -0.0686879   0.1250739
6-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                0.1095498    0.0556209   0.1634787
6-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                0.1612879    0.1112485   0.2113273
6-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0208662    0.0158578   0.0258745


### Parameter: PAF


agecat        studyid        country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS        GUATEMALA     >=50 cm              NA                0.3190350    0.0919340   0.4893396
0-24 months   COHORTS        INDIA         >=50 cm              NA                0.7624318    0.6625491   0.8327501
0-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                0.4342471    0.3441316   0.5119809
0-24 months   EE             PAKISTAN      >=50 cm              NA                0.4806034   -0.0155165   0.7343492
0-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                0.6138514    0.3597046   0.7671219
0-24 months   IRC            INDIA         >=50 cm              NA                0.1622538   -0.1511750   0.3903458
0-24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                0.9292165    0.8640864   0.9631361
0-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                0.3863696    0.2621552   0.4896728
0-24 months   Keneba         GAMBIA        >=50 cm              NA                0.3413003    0.2243466   0.4406196
0-24 months   MAL-ED         BANGLADESH    >=50 cm              NA                0.2065142   -0.6975195   0.6290943
0-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                0.6132000    0.3492590   0.7700863
0-24 months   PROVIDE        BANGLADESH    >=50 cm              NA                0.7698882    0.4684627   0.9003806
0-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                0.6774246    0.4967046   0.7932528
0-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.5560072    0.4530774   0.6395658
0-6 months    COHORTS        GUATEMALA     >=50 cm              NA                0.4897833   -0.0767738   0.7582398
0-6 months    COHORTS        PHILIPPINES   >=50 cm              NA                0.6635638    0.3819918   0.8168482
0-6 months    JiVitA-4       BANGLADESH    >=50 cm              NA                0.8222956    0.5691586   0.9267042
0-6 months    Keneba         GAMBIA        >=50 cm              NA                0.7524263    0.4391351   0.8907174
0-6 months    ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.6954958    0.5076112   0.8116878
6-24 months   COHORTS        GUATEMALA     >=50 cm              NA                0.2757398    0.0404979   0.4533073
6-24 months   COHORTS        INDIA         >=50 cm              NA                0.7333770    0.6208902   0.8124876
6-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                0.4336272    0.3414604   0.5128947
6-24 months   EE             PAKISTAN      >=50 cm              NA                0.4457547   -0.0820923   0.7161168
6-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                0.5801952    0.3212545   0.7403503
6-24 months   IRC            INDIA         >=50 cm              NA                0.1715121   -0.1823610   0.4194733
6-24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                0.8949627    0.7990587   0.9450942
6-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                0.3389130    0.2045103   0.4506076
6-24 months   Keneba         GAMBIA        >=50 cm              NA                0.3277858    0.2086880   0.4289585
6-24 months   MAL-ED         BANGLADESH    >=50 cm              NA                0.1802642   -0.7414138   0.6141257
6-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                0.5151803    0.1998689   0.7062354
6-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                0.7136081    0.5156871   0.8306460
6-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.5126841    0.3839504   0.6145168
