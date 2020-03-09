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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        mage       wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  --------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              0       98    324
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              1      153    324
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  0        8    324
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  1       27    324
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 0       14    324
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 1       24    324
0-24 months   COHORTS          GUATEMALA                      [20-30)              0      104    380
0-24 months   COHORTS          GUATEMALA                      [20-30)              1       79    380
0-24 months   COHORTS          GUATEMALA                      <20                  0       24    380
0-24 months   COHORTS          GUATEMALA                      <20                  1       28    380
0-24 months   COHORTS          GUATEMALA                      >=30                 0       84    380
0-24 months   COHORTS          GUATEMALA                      >=30                 1       61    380
0-24 months   COHORTS          INDIA                          [20-30)              0      936   1940
0-24 months   COHORTS          INDIA                          [20-30)              1      302   1940
0-24 months   COHORTS          INDIA                          <20                  0      136   1940
0-24 months   COHORTS          INDIA                          <20                  1       34   1940
0-24 months   COHORTS          INDIA                          >=30                 0      411   1940
0-24 months   COHORTS          INDIA                          >=30                 1      121   1940
0-24 months   COHORTS          PHILIPPINES                    [20-30)              0      379   1689
0-24 months   COHORTS          PHILIPPINES                    [20-30)              1      575   1689
0-24 months   COHORTS          PHILIPPINES                    <20                  0       98   1689
0-24 months   COHORTS          PHILIPPINES                    <20                  1      152   1689
0-24 months   COHORTS          PHILIPPINES                    >=30                 0      187   1689
0-24 months   COHORTS          PHILIPPINES                    >=30                 1      298   1689
0-24 months   EE               PAKISTAN                       [20-30)              0       63    320
0-24 months   EE               PAKISTAN                       [20-30)              1       61    320
0-24 months   EE               PAKISTAN                       <20                  0        0    320
0-24 months   EE               PAKISTAN                       <20                  1        1    320
0-24 months   EE               PAKISTAN                       >=30                 0       95    320
0-24 months   EE               PAKISTAN                       >=30                 1      100    320
0-24 months   GMS-Nepal        NEPAL                          [20-30)              0      180    643
0-24 months   GMS-Nepal        NEPAL                          [20-30)              1      236    643
0-24 months   GMS-Nepal        NEPAL                          <20                  0       62    643
0-24 months   GMS-Nepal        NEPAL                          <20                  1       64    643
0-24 months   GMS-Nepal        NEPAL                          >=30                 0       54    643
0-24 months   GMS-Nepal        NEPAL                          >=30                 1       47    643
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              0        9     37
0-24 months   Guatemala BSC    GUATEMALA                      [20-30)              1       11     37
0-24 months   Guatemala BSC    GUATEMALA                      <20                  0        6     37
0-24 months   Guatemala BSC    GUATEMALA                      <20                  1        3     37
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 0        5     37
0-24 months   Guatemala BSC    GUATEMALA                      >=30                 1        3     37
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              0      365    782
0-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              1       20    782
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  0       96    782
0-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  1        3    782
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 0      287    782
0-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 1       11    782
0-24 months   IRC              INDIA                          [20-30)              0      132    395
0-24 months   IRC              INDIA                          [20-30)              1      203    395
0-24 months   IRC              INDIA                          <20                  0       14    395
0-24 months   IRC              INDIA                          <20                  1       16    395
0-24 months   IRC              INDIA                          >=30                 0       16    395
0-24 months   IRC              INDIA                          >=30                 1       14    395
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              0     1995   7570
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              1     1433   7570
0-24 months   JiVitA-3         BANGLADESH                     <20                  0     1980   7570
0-24 months   JiVitA-3         BANGLADESH                     <20                  1     1435   7570
0-24 months   JiVitA-3         BANGLADESH                     >=30                 0      399   7570
0-24 months   JiVitA-3         BANGLADESH                     >=30                 1      328   7570
0-24 months   Keneba           GAMBIA                         [20-30)              0      296   1820
0-24 months   Keneba           GAMBIA                         [20-30)              1      520   1820
0-24 months   Keneba           GAMBIA                         <20                  0       73   1820
0-24 months   Keneba           GAMBIA                         <20                  1      155   1820
0-24 months   Keneba           GAMBIA                         >=30                 0      336   1820
0-24 months   Keneba           GAMBIA                         >=30                 1      440   1820
0-24 months   LCNI-5           MALAWI                         [20-30)              0       25     63
0-24 months   LCNI-5           MALAWI                         [20-30)              1        6     63
0-24 months   LCNI-5           MALAWI                         <20                  0       10     63
0-24 months   LCNI-5           MALAWI                         <20                  1        3     63
0-24 months   LCNI-5           MALAWI                         >=30                 0       17     63
0-24 months   LCNI-5           MALAWI                         >=30                 1        2     63
0-24 months   MAL-ED           BANGLADESH                     [20-30)              0       24    124
0-24 months   MAL-ED           BANGLADESH                     [20-30)              1       46    124
0-24 months   MAL-ED           BANGLADESH                     <20                  0        8    124
0-24 months   MAL-ED           BANGLADESH                     <20                  1       18    124
0-24 months   MAL-ED           BANGLADESH                     >=30                 0       12    124
0-24 months   MAL-ED           BANGLADESH                     >=30                 1       16    124
0-24 months   MAL-ED           BRAZIL                         [20-30)              0        3     24
0-24 months   MAL-ED           BRAZIL                         [20-30)              1       11     24
0-24 months   MAL-ED           BRAZIL                         <20                  0        0     24
0-24 months   MAL-ED           BRAZIL                         <20                  1        4     24
0-24 months   MAL-ED           BRAZIL                         >=30                 0        3     24
0-24 months   MAL-ED           BRAZIL                         >=30                 1        3     24
0-24 months   MAL-ED           INDIA                          [20-30)              0       59    180
0-24 months   MAL-ED           INDIA                          [20-30)              1       87    180
0-24 months   MAL-ED           INDIA                          <20                  0       11    180
0-24 months   MAL-ED           INDIA                          <20                  1       17    180
0-24 months   MAL-ED           INDIA                          >=30                 0        1    180
0-24 months   MAL-ED           INDIA                          >=30                 1        5    180
0-24 months   MAL-ED           NEPAL                          [20-30)              0       18     98
0-24 months   MAL-ED           NEPAL                          [20-30)              1       63     98
0-24 months   MAL-ED           NEPAL                          <20                  0        1     98
0-24 months   MAL-ED           NEPAL                          <20                  1        2     98
0-24 months   MAL-ED           NEPAL                          >=30                 0        1     98
0-24 months   MAL-ED           NEPAL                          >=30                 1       13     98
0-24 months   MAL-ED           PERU                           [20-30)              0        3     35
0-24 months   MAL-ED           PERU                           [20-30)              1       15     35
0-24 months   MAL-ED           PERU                           <20                  0        2     35
0-24 months   MAL-ED           PERU                           <20                  1        9     35
0-24 months   MAL-ED           PERU                           >=30                 0        1     35
0-24 months   MAL-ED           PERU                           >=30                 1        5     35
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              0       12     87
0-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              1       34     87
0-24 months   MAL-ED           SOUTH AFRICA                   <20                  0        2     87
0-24 months   MAL-ED           SOUTH AFRICA                   <20                  1       14     87
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                 0        4     87
0-24 months   MAL-ED           SOUTH AFRICA                   >=30                 1       21     87
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              0        5     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              1       16     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  0        1     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  1        2     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 0        3     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 1       24     51
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              0      133    419
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              1      154    419
0-24 months   NIH-Birth        BANGLADESH                     <20                  0       16    419
0-24 months   NIH-Birth        BANGLADESH                     <20                  1       19    419
0-24 months   NIH-Birth        BANGLADESH                     >=30                 0       52    419
0-24 months   NIH-Birth        BANGLADESH                     >=30                 1       45    419
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              0       72    310
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              1      126    310
0-24 months   NIH-Crypto       BANGLADESH                     <20                  0       25    310
0-24 months   NIH-Crypto       BANGLADESH                     <20                  1       36    310
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 0       20    310
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 1       31    310
0-24 months   PROBIT           BELARUS                        [20-30)              0      383   4408
0-24 months   PROBIT           BELARUS                        [20-30)              1     2826   4408
0-24 months   PROBIT           BELARUS                        <20                  0       44   4408
0-24 months   PROBIT           BELARUS                        <20                  1      407   4408
0-24 months   PROBIT           BELARUS                        >=30                 0       99   4408
0-24 months   PROBIT           BELARUS                        >=30                 1      649   4408
0-24 months   PROVIDE          BANGLADESH                     [20-30)              0       85    308
0-24 months   PROVIDE          BANGLADESH                     [20-30)              1      120    308
0-24 months   PROVIDE          BANGLADESH                     <20                  0       20    308
0-24 months   PROVIDE          BANGLADESH                     <20                  1       26    308
0-24 months   PROVIDE          BANGLADESH                     >=30                 0       24    308
0-24 months   PROVIDE          BANGLADESH                     >=30                 1       33    308
0-24 months   SAS-CompFeed     INDIA                          [20-30)              0      390    814
0-24 months   SAS-CompFeed     INDIA                          [20-30)              1      230    814
0-24 months   SAS-CompFeed     INDIA                          <20                  0       52    814
0-24 months   SAS-CompFeed     INDIA                          <20                  1       38    814
0-24 months   SAS-CompFeed     INDIA                          >=30                 0       62    814
0-24 months   SAS-CompFeed     INDIA                          >=30                 1       42    814
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              0      145    234
0-24 months   SAS-FoodSuppl    INDIA                          [20-30)              1        8    234
0-24 months   SAS-FoodSuppl    INDIA                          <20                  0       17    234
0-24 months   SAS-FoodSuppl    INDIA                          <20                  1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 0       59    234
0-24 months   SAS-FoodSuppl    INDIA                          >=30                 1        5    234
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0      165    710
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      297    710
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0       19    710
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       29    710
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0       81    710
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1      119    710
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              0     1085   3603
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              1     1306   3603
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  0      284   3603
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  1      334   3603
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 0      276   3603
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 1      318   3603
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              0       56    201
0-6 months    CMC-V-BCS-2002   INDIA                          [20-30)              1      105    201
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  0        4    201
0-6 months    CMC-V-BCS-2002   INDIA                          <20                  1       16    201
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 0        6    201
0-6 months    CMC-V-BCS-2002   INDIA                          >=30                 1       14    201
0-6 months    COHORTS          GUATEMALA                      [20-30)              0       24    214
0-6 months    COHORTS          GUATEMALA                      [20-30)              1       75    214
0-6 months    COHORTS          GUATEMALA                      <20                  0        9    214
0-6 months    COHORTS          GUATEMALA                      <20                  1       27    214
0-6 months    COHORTS          GUATEMALA                      >=30                 0       21    214
0-6 months    COHORTS          GUATEMALA                      >=30                 1       58    214
0-6 months    COHORTS          INDIA                          [20-30)              0      523   1276
0-6 months    COHORTS          INDIA                          [20-30)              1      302   1276
0-6 months    COHORTS          INDIA                          <20                  0       78   1276
0-6 months    COHORTS          INDIA                          <20                  1       34   1276
0-6 months    COHORTS          INDIA                          >=30                 0      218   1276
0-6 months    COHORTS          INDIA                          >=30                 1      121   1276
0-6 months    COHORTS          PHILIPPINES                    [20-30)              0      121    752
0-6 months    COHORTS          PHILIPPINES                    [20-30)              1      317    752
0-6 months    COHORTS          PHILIPPINES                    <20                  0       26    752
0-6 months    COHORTS          PHILIPPINES                    <20                  1       81    752
0-6 months    COHORTS          PHILIPPINES                    >=30                 0       51    752
0-6 months    COHORTS          PHILIPPINES                    >=30                 1      156    752
0-6 months    EE               PAKISTAN                       [20-30)              0       19    127
0-6 months    EE               PAKISTAN                       [20-30)              1       24    127
0-6 months    EE               PAKISTAN                       <20                  0        0    127
0-6 months    EE               PAKISTAN                       <20                  1        1    127
0-6 months    EE               PAKISTAN                       >=30                 0       36    127
0-6 months    EE               PAKISTAN                       >=30                 1       47    127
0-6 months    GMS-Nepal        NEPAL                          [20-30)              0       59    263
0-6 months    GMS-Nepal        NEPAL                          [20-30)              1      107    263
0-6 months    GMS-Nepal        NEPAL                          <20                  0       26    263
0-6 months    GMS-Nepal        NEPAL                          <20                  1       34    263
0-6 months    GMS-Nepal        NEPAL                          >=30                 0       19    263
0-6 months    GMS-Nepal        NEPAL                          >=30                 1       18    263
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              0        1      9
0-6 months    Guatemala BSC    GUATEMALA                      [20-30)              1        0      9
0-6 months    Guatemala BSC    GUATEMALA                      <20                  0        2      9
0-6 months    Guatemala BSC    GUATEMALA                      <20                  1        1      9
0-6 months    Guatemala BSC    GUATEMALA                      >=30                 0        2      9
0-6 months    Guatemala BSC    GUATEMALA                      >=30                 1        3      9
0-6 months    IRC              INDIA                          [20-30)              0       70    240
0-6 months    IRC              INDIA                          [20-30)              1      131    240
0-6 months    IRC              INDIA                          <20                  0        9    240
0-6 months    IRC              INDIA                          <20                  1       11    240
0-6 months    IRC              INDIA                          >=30                 0        8    240
0-6 months    IRC              INDIA                          >=30                 1       11    240
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              0      747   4733
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              1     1433   4733
0-6 months    JiVitA-3         BANGLADESH                     <20                  0      621   4733
0-6 months    JiVitA-3         BANGLADESH                     <20                  1     1435   4733
0-6 months    JiVitA-3         BANGLADESH                     >=30                 0      169   4733
0-6 months    JiVitA-3         BANGLADESH                     >=30                 1      328   4733
0-6 months    Keneba           GAMBIA                         [20-30)              0       61    722
0-6 months    Keneba           GAMBIA                         [20-30)              1      251    722
0-6 months    Keneba           GAMBIA                         <20                  0       20    722
0-6 months    Keneba           GAMBIA                         <20                  1       91    722
0-6 months    Keneba           GAMBIA                         >=30                 0       83    722
0-6 months    Keneba           GAMBIA                         >=30                 1      216    722
0-6 months    LCNI-5           MALAWI                         [20-30)              0        1      3
0-6 months    LCNI-5           MALAWI                         [20-30)              1        0      3
0-6 months    LCNI-5           MALAWI                         <20                  0        0      3
0-6 months    LCNI-5           MALAWI                         <20                  1        0      3
0-6 months    LCNI-5           MALAWI                         >=30                 0        2      3
0-6 months    LCNI-5           MALAWI                         >=30                 1        0      3
0-6 months    MAL-ED           BANGLADESH                     [20-30)              0        8     63
0-6 months    MAL-ED           BANGLADESH                     [20-30)              1       26     63
0-6 months    MAL-ED           BANGLADESH                     <20                  0        3     63
0-6 months    MAL-ED           BANGLADESH                     <20                  1       13     63
0-6 months    MAL-ED           BANGLADESH                     >=30                 0        2     63
0-6 months    MAL-ED           BANGLADESH                     >=30                 1       11     63
0-6 months    MAL-ED           BRAZIL                         [20-30)              0        0     15
0-6 months    MAL-ED           BRAZIL                         [20-30)              1        8     15
0-6 months    MAL-ED           BRAZIL                         <20                  0        0     15
0-6 months    MAL-ED           BRAZIL                         <20                  1        3     15
0-6 months    MAL-ED           BRAZIL                         >=30                 0        1     15
0-6 months    MAL-ED           BRAZIL                         >=30                 1        3     15
0-6 months    MAL-ED           INDIA                          [20-30)              0       23     85
0-6 months    MAL-ED           INDIA                          [20-30)              1       45     85
0-6 months    MAL-ED           INDIA                          <20                  0        3     85
0-6 months    MAL-ED           INDIA                          <20                  1       10     85
0-6 months    MAL-ED           INDIA                          >=30                 0        1     85
0-6 months    MAL-ED           INDIA                          >=30                 1        3     85
0-6 months    MAL-ED           NEPAL                          [20-30)              0        8     48
0-6 months    MAL-ED           NEPAL                          [20-30)              1       30     48
0-6 months    MAL-ED           NEPAL                          <20                  0        1     48
0-6 months    MAL-ED           NEPAL                          <20                  1        1     48
0-6 months    MAL-ED           NEPAL                          >=30                 0        0     48
0-6 months    MAL-ED           NEPAL                          >=30                 1        8     48
0-6 months    MAL-ED           PERU                           [20-30)              0        0     11
0-6 months    MAL-ED           PERU                           [20-30)              1        5     11
0-6 months    MAL-ED           PERU                           <20                  0        0     11
0-6 months    MAL-ED           PERU                           <20                  1        3     11
0-6 months    MAL-ED           PERU                           >=30                 0        0     11
0-6 months    MAL-ED           PERU                           >=30                 1        3     11
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              0        7     36
0-6 months    MAL-ED           SOUTH AFRICA                   [20-30)              1       12     36
0-6 months    MAL-ED           SOUTH AFRICA                   <20                  0        1     36
0-6 months    MAL-ED           SOUTH AFRICA                   <20                  1        7     36
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                 0        1     36
0-6 months    MAL-ED           SOUTH AFRICA                   >=30                 1        8     36
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              0        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              1        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  1        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 1       12     14
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              0       44    223
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              1      114    223
0-6 months    NIH-Birth        BANGLADESH                     <20                  0        5    223
0-6 months    NIH-Birth        BANGLADESH                     <20                  1       16    223
0-6 months    NIH-Birth        BANGLADESH                     >=30                 0       15    223
0-6 months    NIH-Birth        BANGLADESH                     >=30                 1       29    223
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              0       12    197
0-6 months    NIH-Crypto       BANGLADESH                     [20-30)              1      115    197
0-6 months    NIH-Crypto       BANGLADESH                     <20                  0        4    197
0-6 months    NIH-Crypto       BANGLADESH                     <20                  1       34    197
0-6 months    NIH-Crypto       BANGLADESH                     >=30                 0        5    197
0-6 months    NIH-Crypto       BANGLADESH                     >=30                 1       27    197
0-6 months    PROBIT           BELARUS                        [20-30)              0      298   4267
0-6 months    PROBIT           BELARUS                        [20-30)              1     2800   4267
0-6 months    PROBIT           BELARUS                        <20                  0       37   4267
0-6 months    PROBIT           BELARUS                        <20                  1      399   4267
0-6 months    PROBIT           BELARUS                        >=30                 0       88   4267
0-6 months    PROBIT           BELARUS                        >=30                 1      645   4267
0-6 months    PROVIDE          BANGLADESH                     [20-30)              0       29    185
0-6 months    PROVIDE          BANGLADESH                     [20-30)              1       98    185
0-6 months    PROVIDE          BANGLADESH                     <20                  0        4    185
0-6 months    PROVIDE          BANGLADESH                     <20                  1       19    185
0-6 months    PROVIDE          BANGLADESH                     >=30                 0        7    185
0-6 months    PROVIDE          BANGLADESH                     >=30                 1       28    185
0-6 months    SAS-CompFeed     INDIA                          [20-30)              0      128    341
0-6 months    SAS-CompFeed     INDIA                          [20-30)              1      137    341
0-6 months    SAS-CompFeed     INDIA                          <20                  0       14    341
0-6 months    SAS-CompFeed     INDIA                          <20                  1       17    341
0-6 months    SAS-CompFeed     INDIA                          >=30                 0       24    341
0-6 months    SAS-CompFeed     INDIA                          >=30                 1       21    341
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              0       47     78
0-6 months    SAS-FoodSuppl    INDIA                          [20-30)              1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          <20                  0        7     78
0-6 months    SAS-FoodSuppl    INDIA                          <20                  1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          >=30                 0       24     78
0-6 months    SAS-FoodSuppl    INDIA                          >=30                 1        0     78
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0       60    339
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      163    339
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0        7    339
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       19    339
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0       34    339
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       56    339
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              0      416   2509
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              1     1252   2509
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  0      124   2509
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  1      320   2509
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 0       91   2509
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 1      306   2509
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              0       42    123
6-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              1       48    123
6-24 months   CMC-V-BCS-2002   INDIA                          <20                  0        4    123
6-24 months   CMC-V-BCS-2002   INDIA                          <20                  1       11    123
6-24 months   CMC-V-BCS-2002   INDIA                          >=30                 0        8    123
6-24 months   CMC-V-BCS-2002   INDIA                          >=30                 1       10    123
6-24 months   COHORTS          GUATEMALA                      [20-30)              0       80    166
6-24 months   COHORTS          GUATEMALA                      [20-30)              1        4    166
6-24 months   COHORTS          GUATEMALA                      <20                  0       15    166
6-24 months   COHORTS          GUATEMALA                      <20                  1        1    166
6-24 months   COHORTS          GUATEMALA                      >=30                 0       63    166
6-24 months   COHORTS          GUATEMALA                      >=30                 1        3    166
6-24 months   COHORTS          INDIA                          [20-30)              0      413    664
6-24 months   COHORTS          INDIA                          [20-30)              1        0    664
6-24 months   COHORTS          INDIA                          <20                  0       58    664
6-24 months   COHORTS          INDIA                          <20                  1        0    664
6-24 months   COHORTS          INDIA                          >=30                 0      193    664
6-24 months   COHORTS          INDIA                          >=30                 1        0    664
6-24 months   COHORTS          PHILIPPINES                    [20-30)              0      258    937
6-24 months   COHORTS          PHILIPPINES                    [20-30)              1      258    937
6-24 months   COHORTS          PHILIPPINES                    <20                  0       72    937
6-24 months   COHORTS          PHILIPPINES                    <20                  1       71    937
6-24 months   COHORTS          PHILIPPINES                    >=30                 0      136    937
6-24 months   COHORTS          PHILIPPINES                    >=30                 1      142    937
6-24 months   EE               PAKISTAN                       [20-30)              0       44    193
6-24 months   EE               PAKISTAN                       [20-30)              1       37    193
6-24 months   EE               PAKISTAN                       <20                  0        0    193
6-24 months   EE               PAKISTAN                       <20                  1        0    193
6-24 months   EE               PAKISTAN                       >=30                 0       59    193
6-24 months   EE               PAKISTAN                       >=30                 1       53    193
6-24 months   GMS-Nepal        NEPAL                          [20-30)              0      121    380
6-24 months   GMS-Nepal        NEPAL                          [20-30)              1      129    380
6-24 months   GMS-Nepal        NEPAL                          <20                  0       36    380
6-24 months   GMS-Nepal        NEPAL                          <20                  1       30    380
6-24 months   GMS-Nepal        NEPAL                          >=30                 0       35    380
6-24 months   GMS-Nepal        NEPAL                          >=30                 1       29    380
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)              0        8     28
6-24 months   Guatemala BSC    GUATEMALA                      [20-30)              1       11     28
6-24 months   Guatemala BSC    GUATEMALA                      <20                  0        4     28
6-24 months   Guatemala BSC    GUATEMALA                      <20                  1        2     28
6-24 months   Guatemala BSC    GUATEMALA                      >=30                 0        3     28
6-24 months   Guatemala BSC    GUATEMALA                      >=30                 1        0     28
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              0      365    782
6-24 months   iLiNS-Zinc       BURKINA FASO                   [20-30)              1       20    782
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  0       96    782
6-24 months   iLiNS-Zinc       BURKINA FASO                   <20                  1        3    782
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 0      287    782
6-24 months   iLiNS-Zinc       BURKINA FASO                   >=30                 1       11    782
6-24 months   IRC              INDIA                          [20-30)              0       62    155
6-24 months   IRC              INDIA                          [20-30)              1       72    155
6-24 months   IRC              INDIA                          <20                  0        5    155
6-24 months   IRC              INDIA                          <20                  1        5    155
6-24 months   IRC              INDIA                          >=30                 0        8    155
6-24 months   IRC              INDIA                          >=30                 1        3    155
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              0     1248   2837
6-24 months   JiVitA-3         BANGLADESH                     [20-30)              1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     <20                  0     1359   2837
6-24 months   JiVitA-3         BANGLADESH                     <20                  1        0   2837
6-24 months   JiVitA-3         BANGLADESH                     >=30                 0      230   2837
6-24 months   JiVitA-3         BANGLADESH                     >=30                 1        0   2837
6-24 months   Keneba           GAMBIA                         [20-30)              0      235   1098
6-24 months   Keneba           GAMBIA                         [20-30)              1      269   1098
6-24 months   Keneba           GAMBIA                         <20                  0       53   1098
6-24 months   Keneba           GAMBIA                         <20                  1       64   1098
6-24 months   Keneba           GAMBIA                         >=30                 0      253   1098
6-24 months   Keneba           GAMBIA                         >=30                 1      224   1098
6-24 months   LCNI-5           MALAWI                         [20-30)              0       24     60
6-24 months   LCNI-5           MALAWI                         [20-30)              1        6     60
6-24 months   LCNI-5           MALAWI                         <20                  0       10     60
6-24 months   LCNI-5           MALAWI                         <20                  1        3     60
6-24 months   LCNI-5           MALAWI                         >=30                 0       15     60
6-24 months   LCNI-5           MALAWI                         >=30                 1        2     60
6-24 months   MAL-ED           BANGLADESH                     [20-30)              0       16     61
6-24 months   MAL-ED           BANGLADESH                     [20-30)              1       20     61
6-24 months   MAL-ED           BANGLADESH                     <20                  0        5     61
6-24 months   MAL-ED           BANGLADESH                     <20                  1        5     61
6-24 months   MAL-ED           BANGLADESH                     >=30                 0       10     61
6-24 months   MAL-ED           BANGLADESH                     >=30                 1        5     61
6-24 months   MAL-ED           BRAZIL                         [20-30)              0        3      9
6-24 months   MAL-ED           BRAZIL                         [20-30)              1        3      9
6-24 months   MAL-ED           BRAZIL                         <20                  0        0      9
6-24 months   MAL-ED           BRAZIL                         <20                  1        1      9
6-24 months   MAL-ED           BRAZIL                         >=30                 0        2      9
6-24 months   MAL-ED           BRAZIL                         >=30                 1        0      9
6-24 months   MAL-ED           INDIA                          [20-30)              0       36     95
6-24 months   MAL-ED           INDIA                          [20-30)              1       42     95
6-24 months   MAL-ED           INDIA                          <20                  0        8     95
6-24 months   MAL-ED           INDIA                          <20                  1        7     95
6-24 months   MAL-ED           INDIA                          >=30                 0        0     95
6-24 months   MAL-ED           INDIA                          >=30                 1        2     95
6-24 months   MAL-ED           NEPAL                          [20-30)              0       10     50
6-24 months   MAL-ED           NEPAL                          [20-30)              1       33     50
6-24 months   MAL-ED           NEPAL                          <20                  0        0     50
6-24 months   MAL-ED           NEPAL                          <20                  1        1     50
6-24 months   MAL-ED           NEPAL                          >=30                 0        1     50
6-24 months   MAL-ED           NEPAL                          >=30                 1        5     50
6-24 months   MAL-ED           PERU                           [20-30)              0        3     24
6-24 months   MAL-ED           PERU                           [20-30)              1       10     24
6-24 months   MAL-ED           PERU                           <20                  0        2     24
6-24 months   MAL-ED           PERU                           <20                  1        6     24
6-24 months   MAL-ED           PERU                           >=30                 0        1     24
6-24 months   MAL-ED           PERU                           >=30                 1        2     24
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              0        5     51
6-24 months   MAL-ED           SOUTH AFRICA                   [20-30)              1       22     51
6-24 months   MAL-ED           SOUTH AFRICA                   <20                  0        1     51
6-24 months   MAL-ED           SOUTH AFRICA                   <20                  1        7     51
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                 0        3     51
6-24 months   MAL-ED           SOUTH AFRICA                   >=30                 1       13     51
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              0        4     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              1       16     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  0        1     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  1        1     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 0        3     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 1       12     37
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              0       89    196
6-24 months   NIH-Birth        BANGLADESH                     [20-30)              1       40    196
6-24 months   NIH-Birth        BANGLADESH                     <20                  0       11    196
6-24 months   NIH-Birth        BANGLADESH                     <20                  1        3    196
6-24 months   NIH-Birth        BANGLADESH                     >=30                 0       37    196
6-24 months   NIH-Birth        BANGLADESH                     >=30                 1       16    196
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              0       60    113
6-24 months   NIH-Crypto       BANGLADESH                     [20-30)              1       11    113
6-24 months   NIH-Crypto       BANGLADESH                     <20                  0       21    113
6-24 months   NIH-Crypto       BANGLADESH                     <20                  1        2    113
6-24 months   NIH-Crypto       BANGLADESH                     >=30                 0       15    113
6-24 months   NIH-Crypto       BANGLADESH                     >=30                 1        4    113
6-24 months   PROBIT           BELARUS                        [20-30)              0       85    141
6-24 months   PROBIT           BELARUS                        [20-30)              1       26    141
6-24 months   PROBIT           BELARUS                        <20                  0        7    141
6-24 months   PROBIT           BELARUS                        <20                  1        8    141
6-24 months   PROBIT           BELARUS                        >=30                 0       11    141
6-24 months   PROBIT           BELARUS                        >=30                 1        4    141
6-24 months   PROVIDE          BANGLADESH                     [20-30)              0       56    123
6-24 months   PROVIDE          BANGLADESH                     [20-30)              1       22    123
6-24 months   PROVIDE          BANGLADESH                     <20                  0       16    123
6-24 months   PROVIDE          BANGLADESH                     <20                  1        7    123
6-24 months   PROVIDE          BANGLADESH                     >=30                 0       17    123
6-24 months   PROVIDE          BANGLADESH                     >=30                 1        5    123
6-24 months   SAS-CompFeed     INDIA                          [20-30)              0      262    473
6-24 months   SAS-CompFeed     INDIA                          [20-30)              1       93    473
6-24 months   SAS-CompFeed     INDIA                          <20                  0       38    473
6-24 months   SAS-CompFeed     INDIA                          <20                  1       21    473
6-24 months   SAS-CompFeed     INDIA                          >=30                 0       38    473
6-24 months   SAS-CompFeed     INDIA                          >=30                 1       21    473
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              0       98    156
6-24 months   SAS-FoodSuppl    INDIA                          [20-30)              1        8    156
6-24 months   SAS-FoodSuppl    INDIA                          <20                  0       10    156
6-24 months   SAS-FoodSuppl    INDIA                          <20                  1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          >=30                 0       35    156
6-24 months   SAS-FoodSuppl    INDIA                          >=30                 1        5    156
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0      105    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      134    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0       12    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       10    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0       47    371
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       63    371
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              0      669   1094
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              1       54   1094
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  0      160   1094
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  1       14   1094
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 0      185   1094
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 1       12   1094


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/6b4b0647-9efa-471e-8f0b-90d752fef49f/f0725275-c341-40a1-bfb2-7eddca1f4e20/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6b4b0647-9efa-471e-8f0b-90d752fef49f/f0725275-c341-40a1-bfb2-7eddca1f4e20/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6b4b0647-9efa-471e-8f0b-90d752fef49f/f0725275-c341-40a1-bfb2-7eddca1f4e20/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6b4b0647-9efa-471e-8f0b-90d752fef49f/f0725275-c341-40a1-bfb2-7eddca1f4e20/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.6095618   0.5440036   0.6751199
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                0.7714286   0.6337889   0.9090682
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6315789   0.4824082   0.7807497
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.4294307   0.3562965   0.5025648
0-24 months   COHORTS          GUATEMALA                      <20                  NA                0.5150781   0.3641829   0.6659734
0-24 months   COHORTS          GUATEMALA                      >=30                 NA                0.4169785   0.3332573   0.5006998
0-24 months   COHORTS          INDIA                          [20-30)              NA                0.2403202   0.2159476   0.2646928
0-24 months   COHORTS          INDIA                          <20                  NA                0.2033618   0.1417250   0.2649986
0-24 months   COHORTS          INDIA                          >=30                 NA                0.2435215   0.2065181   0.2805250
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.5987091   0.5647036   0.6327146
0-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.6107418   0.5470037   0.6744799
0-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.6287816   0.5826232   0.6749401
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.5664420   0.5151130   0.6177710
0-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.4992479   0.3830591   0.6154366
0-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.4501825   0.3551816   0.5451834
0-24 months   IRC              INDIA                          [20-30)              NA                0.6040079   0.5469527   0.6610631
0-24 months   IRC              INDIA                          <20                  NA                0.4871962   0.2837427   0.6906497
0-24 months   IRC              INDIA                          >=30                 NA                0.4384235   0.2715381   0.6053089
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.4170017   0.3996685   0.4343348
0-24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.4224163   0.4049360   0.4398967
0-24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.4749605   0.4349299   0.5149912
0-24 months   Keneba           GAMBIA                         [20-30)              NA                0.6379067   0.5998744   0.6759391
0-24 months   Keneba           GAMBIA                         <20                  NA                0.6586361   0.5911899   0.7260823
0-24 months   Keneba           GAMBIA                         >=30                 NA                0.5562895   0.5195093   0.5930697
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.6571429   0.5406898   0.7735959
0-24 months   MAL-ED           BANGLADESH                     <20                  NA                0.6923077   0.5029558   0.8816596
0-24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.5714286   0.4018241   0.7410330
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.5348979   0.4731723   0.5966234
0-24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.5150200   0.3360886   0.6939515
0-24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.4454619   0.3423990   0.5485247
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.6342186   0.5648921   0.7035451
0-24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.6030905   0.4862459   0.7199351
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.5965821   0.4612990   0.7318653
0-24 months   PROBIT           BELARUS                        [20-30)              NA                0.8805608   0.8694646   0.8916570
0-24 months   PROBIT           BELARUS                        <20                  NA                0.9012563   0.8723222   0.9301905
0-24 months   PROBIT           BELARUS                        >=30                 NA                0.8640710   0.8390439   0.8890981
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.5866058   0.5172836   0.6559279
0-24 months   PROVIDE          BANGLADESH                     <20                  NA                0.5545113   0.3870738   0.7219489
0-24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.5907638   0.4551040   0.7264236
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.3702597   0.3302812   0.4102382
0-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.4336381   0.3256731   0.5416030
0-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.4054133   0.3030070   0.5078195
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.6428588   0.5964041   0.6893136
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.6132194   0.4462248   0.7802141
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5962060   0.5263588   0.6660532
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.5408509   0.5205249   0.5611770
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.5666999   0.5243384   0.6090615
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.5246049   0.4817080   0.5675017
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                0.7575758   0.6738976   0.8412539
0-6 months    COHORTS          GUATEMALA                      <20                  NA                0.7500000   0.6075529   0.8924471
0-6 months    COHORTS          GUATEMALA                      >=30                 NA                0.7341772   0.6360731   0.8322813
0-6 months    COHORTS          INDIA                          [20-30)              NA                0.3674963   0.3342539   0.4007388
0-6 months    COHORTS          INDIA                          <20                  NA                0.3113520   0.2235446   0.3991593
0-6 months    COHORTS          INDIA                          >=30                 NA                0.3631494   0.3097853   0.4165135
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                0.7252719   0.6827925   0.7677514
0-6 months    COHORTS          PHILIPPINES                    <20                  NA                0.7503687   0.6655788   0.8351585
0-6 months    COHORTS          PHILIPPINES                    >=30                 NA                0.7563083   0.6967919   0.8158247
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                0.6418174   0.5676769   0.7159578
0-6 months    GMS-Nepal        NEPAL                          <20                  NA                0.5598835   0.4248926   0.6948745
0-6 months    GMS-Nepal        NEPAL                          >=30                 NA                0.4602392   0.2570272   0.6634513
0-6 months    IRC              INDIA                          [20-30)              NA                0.6517413   0.5839855   0.7194971
0-6 months    IRC              INDIA                          <20                  NA                0.5500000   0.3148186   0.7851814
0-6 months    IRC              INDIA                          >=30                 NA                0.5789474   0.3725273   0.7853674
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                0.6578675   0.6370141   0.6787209
0-6 months    JiVitA-3         BANGLADESH                     <20                  NA                0.6943022   0.6729662   0.7156383
0-6 months    JiVitA-3         BANGLADESH                     >=30                 NA                0.6874792   0.6443802   0.7305782
0-6 months    Keneba           GAMBIA                         [20-30)              NA                0.8019711   0.7564136   0.8475286
0-6 months    Keneba           GAMBIA                         <20                  NA                0.8520342   0.7895143   0.9145542
0-6 months    Keneba           GAMBIA                         >=30                 NA                0.7182377   0.6647096   0.7717658
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                0.7215190   0.6511513   0.7918867
0-6 months    NIH-Birth        BANGLADESH                     <20                  NA                0.7619048   0.5927535   0.9310560
0-6 months    NIH-Birth        BANGLADESH                     >=30                 NA                0.6590909   0.5180822   0.8000996
0-6 months    PROBIT           BELARUS                        [20-30)              NA                0.9029283   0.8924396   0.9134170
0-6 months    PROBIT           BELARUS                        <20                  NA                0.9197192   0.8931780   0.9462605
0-6 months    PROBIT           BELARUS                        >=30                 NA                0.8794876   0.8554763   0.9034989
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                0.5170891   0.4563802   0.5777980
0-6 months    SAS-CompFeed     INDIA                          <20                  NA                0.5227905   0.3372190   0.7083620
0-6 months    SAS-CompFeed     INDIA                          >=30                 NA                0.4461008   0.2976330   0.5945687
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.7309417   0.6719457   0.7899377
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.7307692   0.5576592   0.9038792
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.6222222   0.5204880   0.7239564
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.7504587   0.7301206   0.7707968
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                0.7566699   0.7181485   0.7951913
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                0.7327222   0.6936023   0.7718422
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.4978819   0.4518389   0.5439249
6-24 months   COHORTS          PHILIPPINES                    <20                  NA                0.5039636   0.4143734   0.5935537
6-24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.5142510   0.4514249   0.5770771
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.5172800   0.4515249   0.5830351
6-24 months   GMS-Nepal        NEPAL                          <20                  NA                0.4367748   0.2791980   0.5943517
6-24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.4669063   0.3410442   0.5927685
6-24 months   Keneba           GAMBIA                         [20-30)              NA                0.5305589   0.4827589   0.5783589
6-24 months   Keneba           GAMBIA                         <20                  NA                0.4801585   0.3812043   0.5791127
6-24 months   Keneba           GAMBIA                         >=30                 NA                0.4641779   0.4165388   0.5118170
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.5555556   0.3812212   0.7298899
6-24 months   MAL-ED           BANGLADESH                     <20                  NA                0.5000000   0.1284515   0.8715485
6-24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.3333333   0.1484634   0.5182032
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.2820513   0.1804061   0.3836964
6-24 months   PROVIDE          BANGLADESH                     <20                  NA                0.3043478   0.1179134   0.4907823
6-24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.2272727   0.0303695   0.4241760
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                0.2631765   0.2163500   0.3100030
6-24 months   SAS-CompFeed     INDIA                          <20                  NA                0.3878702   0.2631361   0.5126042
6-24 months   SAS-CompFeed     INDIA                          >=30                 NA                0.3902413   0.2613115   0.5191711
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.5582211   0.4921983   0.6242438
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.4369293   0.2140823   0.6597763
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5777052   0.4805969   0.6748136
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0749010   0.0562623   0.0935397
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.0834176   0.0415751   0.1252600
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0622380   0.0269072   0.0975688


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4421053   0.3904403   0.4937702
0-24 months   COHORTS          INDIA                          NA                   NA                0.2355670   0.2165976   0.2545364
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5396579   0.4973524   0.5819633
0-24 months   IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4221929   0.4110723   0.4333134
0-24 months   Keneba           GAMBIA                         NA                   NA                0.6126374   0.5884768   0.6367979
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.6451613   0.5593015   0.7310211
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5202864   0.4695109   0.5710618
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROBIT           BELARUS                        NA                   NA                0.8806715   0.8711794   0.8901636
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6267606   0.5890263   0.6644948
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.5434360   0.5270156   0.5598565
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.7476636   0.6894668   0.8058603
0-6 months    COHORTS          INDIA                          NA                   NA                0.3581505   0.3318331   0.3844678
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.6752588   0.6619177   0.6885999
0-6 months    Keneba           GAMBIA                         NA                   NA                0.7728532   0.7426787   0.8030276
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    PROBIT           BELARUS                        NA                   NA                0.9008671   0.8918443   0.9098900
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7020649   0.6526590   0.7514708
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.7485054   0.7315407   0.7654701
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4947368   0.4401559   0.5493178
6-24 months   Keneba           GAMBIA                         NA                   NA                0.5072860   0.4757518   0.5388202
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4918033   0.3610932   0.6225134
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5579515   0.5056058   0.6102972
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0731261   0.0577817   0.0884705


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.2655462   1.0275196   1.5587122
0-24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.0361197   0.7992780   1.3431423
0-24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      <20                  [20-30)           1.1994442   0.8546165   1.6834058
0-24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           0.9710032   0.7457676   1.2642641
0-24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          <20                  [20-30)           0.8462120   0.6146018   1.1651036
0-24 months   COHORTS          INDIA                          >=30                 [20-30)           1.0133212   0.8443898   1.2160495
0-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.0200977   0.9058460   1.1487595
0-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0502289   0.9572597   1.1522273
0-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           0.8813750   0.6864190   1.1317022
0-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           0.7947548   0.6315411   1.0001489
0-24 months   IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          <20                  [20-30)           0.8066057   0.5261103   1.2366471
0-24 months   IRC              INDIA                          >=30                 [20-30)           0.7258573   0.4899728   1.0753020
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           1.0129848   0.9552932   1.0741605
0-24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.1389895   1.0368474   1.2511940
0-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         <20                  [20-30)           1.0324959   0.9172113   1.1622708
0-24 months   Keneba           GAMBIA                         >=30                 [20-30)           0.8720547   0.7980042   0.9529766
0-24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           1.0535117   0.7605022   1.4594131
0-24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           0.8695652   0.6151686   1.2291649
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           0.9628381   0.6680721   1.3876603
0-24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.8327980   0.6435310   1.0777296
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           0.9509190   0.7608239   1.1885101
0-24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           0.9406570   0.7310151   1.2104203
0-24 months   PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        <20                  [20-30)           1.0235027   0.9888253   1.0593963
0-24 months   PROBIT           BELARUS                        >=30                 [20-30)           0.9812736   0.9507713   1.0127544
0-24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           0.9452879   0.6836947   1.3069712
0-24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           1.0070883   0.7777090   1.3041213
0-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           1.1711728   0.8931010   1.5358237
0-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           1.0949430   0.8317788   1.4413690
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9538944   0.7194766   1.2646895
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9274291   0.8080947   1.0643862
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0477932   0.9642281   1.1386004
0-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9699620   0.8871797   1.0604687
0-6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      <20                  [20-30)           0.9900000   0.7947221   1.2332612
0-6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           0.9691139   0.8148596   1.1525688
0-6 months    COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          <20                  [20-30)           0.8472246   0.6300726   1.1392174
0-6 months    COHORTS          INDIA                          >=30                 [20-30)           0.9881714   0.8314967   1.1743676
0-6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           1.0346032   0.9109423   1.1750511
0-6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0427927   0.9453295   1.1503045
0-6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          <20                  [20-30)           0.8723409   0.6673666   1.1402708
0-6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           0.7170875   0.4541748   1.1321953
0-6 months    IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          <20                  [20-30)           0.8438931   0.5434659   1.3103962
0-6 months    IRC              INDIA                          >=30                 [20-30)           0.8883086   0.6127210   1.2878490
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)           1.0553831   1.0098120   1.1030107
0-6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.0450116   0.9741434   1.1210355
0-6 months    Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         <20                  [20-30)           1.0624251   0.9686245   1.1653093
0-6 months    Keneba           GAMBIA                         >=30                 [20-30)           0.8955905   0.8154028   0.9836639
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     <20                  [20-30)           1.0559733   0.8285939   1.3457492
0-6 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9134769   0.7220780   1.1556092
0-6 months    PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        <20                  [20-30)           1.0185960   0.9874060   1.0507713
0-6 months    PROBIT           BELARUS                        >=30                 [20-30)           0.9740392   0.9455770   1.0033582
0-6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          <20                  [20-30)           1.0110260   0.6954611   1.4697780
0-6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           0.8627156   0.6062471   1.2276813
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9997640   0.7784126   1.2840595
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.8512611   0.7093703   1.0215334
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0082765   0.9534405   1.0662663
0-6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9763658   0.9216440   1.0343366
6-24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.0122151   0.8284402   1.2367571
6-24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0328775   0.8863281   1.2036580
6-24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           0.8443683   0.5758040   1.2381952
6-24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           0.9026182   0.6697812   1.2163966
6-24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         <20                  [20-30)           0.9050051   0.7227267   1.1332557
6-24 months   Keneba           GAMBIA                         >=30                 [20-30)           0.8748848   0.7636149   1.0023684
6-24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           0.9000000   0.4015934   2.0169656
6-24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           0.6000000   0.3172102   1.1348940
6-24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           1.0790514   0.5301386   2.1963159
6-24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           0.8057851   0.3153819   2.0587410
6-24 months   SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          <20                  [20-30)           1.4738023   1.0208095   2.1278144
6-24 months   SAS-CompFeed     INDIA                          >=30                 [20-30)           1.4828120   1.0181986   2.1594327
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.7827173   0.4633464   1.3222211
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0349040   0.8427371   1.2708902
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1137043   0.6363459   1.9491558
6-24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.8309367   0.4470619   1.5444298


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0200679   -0.0081753   0.0483111
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0126746   -0.0411496   0.0664988
0-24 months   COHORTS          INDIA                          [20-30)              NA                -0.0047532   -0.0189602   0.0094538
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0081588   -0.0138341   0.0301517
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0267842   -0.0597441   0.0061757
0-24 months   IRC              INDIA                          [20-30)              NA                -0.0141344   -0.0353235   0.0070546
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0051912   -0.0079478   0.0183302
0-24 months   Keneba           GAMBIA                         [20-30)              NA                -0.0252694   -0.0533082   0.0027695
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.0119816   -0.0869654   0.0630023
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0146115   -0.0487618   0.0195389
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0116380   -0.0522366   0.0289607
0-24 months   PROBIT           BELARUS                        [20-30)              NA                 0.0001107   -0.0058170   0.0060385
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0054369   -0.0471723   0.0362984
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0105757   -0.0090342   0.0301856
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0160983   -0.0441119   0.0119154
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0025851   -0.0093790   0.0145492
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                -0.0099122   -0.0724377   0.0526132
0-6 months    COHORTS          INDIA                          [20-30)              NA                -0.0093459   -0.0292662   0.0105745
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0114302   -0.0156245   0.0384848
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                -0.0372546   -0.0847538   0.0102445
0-6 months    IRC              INDIA                          [20-30)              NA                -0.0142413   -0.0424320   0.0139495
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0173913    0.0018394   0.0329433
0-6 months    Keneba           GAMBIA                         [20-30)              NA                -0.0291179   -0.0654204   0.0071846
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0085145   -0.0467921   0.0297631
0-6 months    PROBIT           BELARUS                        [20-30)              NA                -0.0020612   -0.0077805   0.0036581
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0038926   -0.0326263   0.0248410
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0288768   -0.0655418   0.0077881
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0019533   -0.0130440   0.0091373
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0047862   -0.0261359   0.0357083
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0225432   -0.0645099   0.0194236
6-24 months   Keneba           GAMBIA                         [20-30)              NA                -0.0232729   -0.0586488   0.0121030
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.0637523   -0.1721469   0.0446423
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0056285   -0.0676577   0.0564006
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0222357   -0.0030564   0.0475279
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0002696   -0.0398841   0.0393449
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0017748   -0.0129152   0.0093655


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0318725   -0.0144597   0.0760887
0-24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0286687   -0.1009388   0.1430183
0-24 months   COHORTS          INDIA                          [20-30)              NA                -0.0201776   -0.0822253   0.0383127
0-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0134442   -0.0235116   0.0490656
0-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0496318   -0.1130059   0.0101338
0-24 months   IRC              INDIA                          [20-30)              NA                -0.0239618   -0.0605020   0.0113194
0-24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0122958   -0.0193270   0.0429376
0-24 months   Keneba           GAMBIA                         [20-30)              NA                -0.0412468   -0.0879692   0.0034691
0-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.0185714   -0.1415944   0.0911941
0-24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0280835   -0.0958674   0.0355076
0-24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0186931   -0.0859672   0.0444135
0-24 months   PROBIT           BELARUS                        [20-30)              NA                 0.0001257   -0.0066279   0.0068340
0-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0093552   -0.0838200   0.0599935
0-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0277697   -0.0251452   0.0779533
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0256849   -0.0714356   0.0181123
0-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0047569   -0.0175046   0.0265314
0-6 months    COHORTS          GUATEMALA                      [20-30)              NA                -0.0132576   -0.1004856   0.0670564
0-6 months    COHORTS          INDIA                          [20-30)              NA                -0.0260948   -0.0832546   0.0280489
0-6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0155154   -0.0219390   0.0515970
0-6 months    GMS-Nepal        NEPAL                          [20-30)              NA                -0.0616224   -0.1437862   0.0146391
0-6 months    IRC              INDIA                          [20-30)              NA                -0.0223393   -0.0676463   0.0210451
0-6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0257550    0.0024250   0.0485395
0-6 months    Keneba           GAMBIA                         [20-30)              NA                -0.0376759   -0.0858586   0.0083689
0-6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0119417   -0.0670961   0.0403619
0-6 months    PROBIT           BELARUS                        [20-30)              NA                -0.0022880   -0.0086578   0.0040416
0-6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0075850   -0.0651669   0.0468841
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0411313   -0.0950270   0.0101118
0-6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0026097   -0.0175364   0.0120981
6-24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0095216   -0.0539546   0.0691748
6-24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0455660   -0.1345834   0.0364673
6-24 months   Keneba           GAMBIA                         [20-30)              NA                -0.0458773   -0.1179994   0.0215922
6-24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.1296296   -0.3739720   0.0712597
6-24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0203620   -0.2715476   0.1812036
6-24 months   SAS-CompFeed     INDIA                          [20-30)              NA                 0.0779074   -0.0147684   0.1621195
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0004832   -0.0740624   0.0680555
6-24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0242710   -0.1888368   0.1175146
