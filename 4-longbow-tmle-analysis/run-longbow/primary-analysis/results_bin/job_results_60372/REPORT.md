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

agecat        studyid          country                        birthlen      wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  -----------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm                 0        3     88
0-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm                 1        3     88
0-24 months   CMC-V-BCS-2002   INDIA                          <48 cm                  0       19     88
0-24 months   CMC-V-BCS-2002   INDIA                          <48 cm                  1       27     88
0-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm              0        9     88
0-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm              1       27     88
0-24 months   CMIN             BANGLADESH                     >=50 cm                 0        1     12
0-24 months   CMIN             BANGLADESH                     >=50 cm                 1        0     12
0-24 months   CMIN             BANGLADESH                     <48 cm                  0        4     12
0-24 months   CMIN             BANGLADESH                     <48 cm                  1        3     12
0-24 months   CMIN             BANGLADESH                     [48-50) cm              0        0     12
0-24 months   CMIN             BANGLADESH                     [48-50) cm              1        4     12
0-24 months   COHORTS          GUATEMALA                      >=50 cm                 0       59    295
0-24 months   COHORTS          GUATEMALA                      >=50 cm                 1      118    295
0-24 months   COHORTS          GUATEMALA                      <48 cm                  0       33    295
0-24 months   COHORTS          GUATEMALA                      <48 cm                  1       11    295
0-24 months   COHORTS          GUATEMALA                      [48-50) cm              0       35    295
0-24 months   COHORTS          GUATEMALA                      [48-50) cm              1       39    295
0-24 months   COHORTS          INDIA                          >=50 cm                 0      338   2497
0-24 months   COHORTS          INDIA                          >=50 cm                 1      186   2497
0-24 months   COHORTS          INDIA                          <48 cm                  0      862   2497
0-24 months   COHORTS          INDIA                          <48 cm                  1      211   2497
0-24 months   COHORTS          INDIA                          [48-50) cm              0      653   2497
0-24 months   COHORTS          INDIA                          [48-50) cm              1      247   2497
0-24 months   COHORTS          PHILIPPINES                    >=50 cm                 0      190   1686
0-24 months   COHORTS          PHILIPPINES                    >=50 cm                 1      423   1686
0-24 months   COHORTS          PHILIPPINES                    <48 cm                  0      218   1686
0-24 months   COHORTS          PHILIPPINES                    <48 cm                  1      259   1686
0-24 months   COHORTS          PHILIPPINES                    [48-50) cm              0      255   1686
0-24 months   COHORTS          PHILIPPINES                    [48-50) cm              1      341   1686
0-24 months   EE               PAKISTAN                       >=50 cm                 0        8    220
0-24 months   EE               PAKISTAN                       >=50 cm                 1       14    220
0-24 months   EE               PAKISTAN                       <48 cm                  0       80    220
0-24 months   EE               PAKISTAN                       <48 cm                  1       77    220
0-24 months   EE               PAKISTAN                       [48-50) cm              0       18    220
0-24 months   EE               PAKISTAN                       [48-50) cm              1       23    220
0-24 months   GMS-Nepal        NEPAL                          >=50 cm                 0       34    641
0-24 months   GMS-Nepal        NEPAL                          >=50 cm                 1       63    641
0-24 months   GMS-Nepal        NEPAL                          <48 cm                  0      164    641
0-24 months   GMS-Nepal        NEPAL                          <48 cm                  1      180    641
0-24 months   GMS-Nepal        NEPAL                          [48-50) cm              0       96    641
0-24 months   GMS-Nepal        NEPAL                          [48-50) cm              1      104    641
0-24 months   IRC              INDIA                          >=50 cm                 0       62    387
0-24 months   IRC              INDIA                          >=50 cm                 1      100    387
0-24 months   IRC              INDIA                          <48 cm                  0       50    387
0-24 months   IRC              INDIA                          <48 cm                  1       57    387
0-24 months   IRC              INDIA                          [48-50) cm              0       47    387
0-24 months   IRC              INDIA                          [48-50) cm              1       71    387
0-24 months   JiVitA-3         BANGLADESH                     >=50 cm                 0      195   6353
0-24 months   JiVitA-3         BANGLADESH                     >=50 cm                 1      227   6353
0-24 months   JiVitA-3         BANGLADESH                     <48 cm                  0     2686   6353
0-24 months   JiVitA-3         BANGLADESH                     <48 cm                  1     1752   6353
0-24 months   JiVitA-3         BANGLADESH                     [48-50) cm              0      771   6353
0-24 months   JiVitA-3         BANGLADESH                     [48-50) cm              1      722   6353
0-24 months   JiVitA-4         BANGLADESH                     >=50 cm                 0      286   1770
0-24 months   JiVitA-4         BANGLADESH                     >=50 cm                 1      125   1770
0-24 months   JiVitA-4         BANGLADESH                     <48 cm                  0      715   1770
0-24 months   JiVitA-4         BANGLADESH                     <48 cm                  1      249   1770
0-24 months   JiVitA-4         BANGLADESH                     [48-50) cm              0      274   1770
0-24 months   JiVitA-4         BANGLADESH                     [48-50) cm              1      121   1770
0-24 months   Keneba           GAMBIA                         >=50 cm                 0      181   1225
0-24 months   Keneba           GAMBIA                         >=50 cm                 1      472   1225
0-24 months   Keneba           GAMBIA                         <48 cm                  0       92   1225
0-24 months   Keneba           GAMBIA                         <48 cm                  1      115   1225
0-24 months   Keneba           GAMBIA                         [48-50) cm              0      143   1225
0-24 months   Keneba           GAMBIA                         [48-50) cm              1      222   1225
0-24 months   MAL-ED           BANGLADESH                     >=50 cm                 0        6    113
0-24 months   MAL-ED           BANGLADESH                     >=50 cm                 1       12    113
0-24 months   MAL-ED           BANGLADESH                     <48 cm                  0       21    113
0-24 months   MAL-ED           BANGLADESH                     <48 cm                  1       39    113
0-24 months   MAL-ED           BANGLADESH                     [48-50) cm              0       14    113
0-24 months   MAL-ED           BANGLADESH                     [48-50) cm              1       21    113
0-24 months   MAL-ED           BRAZIL                         >=50 cm                 0        0      8
0-24 months   MAL-ED           BRAZIL                         >=50 cm                 1        1      8
0-24 months   MAL-ED           BRAZIL                         <48 cm                  0        1      8
0-24 months   MAL-ED           BRAZIL                         <48 cm                  1        3      8
0-24 months   MAL-ED           BRAZIL                         [48-50) cm              0        1      8
0-24 months   MAL-ED           BRAZIL                         [48-50) cm              1        2      8
0-24 months   MAL-ED           INDIA                          >=50 cm                 0        1     40
0-24 months   MAL-ED           INDIA                          >=50 cm                 1        4     40
0-24 months   MAL-ED           INDIA                          <48 cm                  0        8     40
0-24 months   MAL-ED           INDIA                          <48 cm                  1       12     40
0-24 months   MAL-ED           INDIA                          [48-50) cm              0        6     40
0-24 months   MAL-ED           INDIA                          [48-50) cm              1        9     40
0-24 months   MAL-ED           NEPAL                          >=50 cm                 0        1     13
0-24 months   MAL-ED           NEPAL                          >=50 cm                 1        2     13
0-24 months   MAL-ED           NEPAL                          <48 cm                  0        1     13
0-24 months   MAL-ED           NEPAL                          <48 cm                  1        6     13
0-24 months   MAL-ED           NEPAL                          [48-50) cm              0        0     13
0-24 months   MAL-ED           NEPAL                          [48-50) cm              1        3     13
0-24 months   MAL-ED           PERU                           >=50 cm                 0        0     32
0-24 months   MAL-ED           PERU                           >=50 cm                 1        6     32
0-24 months   MAL-ED           PERU                           <48 cm                  0        4     32
0-24 months   MAL-ED           PERU                           <48 cm                  1       13     32
0-24 months   MAL-ED           PERU                           [48-50) cm              0        1     32
0-24 months   MAL-ED           PERU                           [48-50) cm              1        8     32
0-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm                 0        2     37
0-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm                 1       11     37
0-24 months   MAL-ED           SOUTH AFRICA                   <48 cm                  0        2     37
0-24 months   MAL-ED           SOUTH AFRICA                   <48 cm                  1        5     37
0-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm              0        6     37
0-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm              1       11     37
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0        0     28
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        2     28
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                  0        2     28
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                  1       13     28
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0        2     28
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        9     28
0-24 months   NIH-Birth        BANGLADESH                     >=50 cm                 0       32    408
0-24 months   NIH-Birth        BANGLADESH                     >=50 cm                 1       53    408
0-24 months   NIH-Birth        BANGLADESH                     <48 cm                  0       92    408
0-24 months   NIH-Birth        BANGLADESH                     <48 cm                  1       81    408
0-24 months   NIH-Birth        BANGLADESH                     [48-50) cm              0       73    408
0-24 months   NIH-Birth        BANGLADESH                     [48-50) cm              1       77    408
0-24 months   NIH-Crypto       BANGLADESH                     >=50 cm                 0       14    310
0-24 months   NIH-Crypto       BANGLADESH                     >=50 cm                 1       53    310
0-24 months   NIH-Crypto       BANGLADESH                     <48 cm                  0       59    310
0-24 months   NIH-Crypto       BANGLADESH                     <48 cm                  1       62    310
0-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm              0       44    310
0-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm              1       78    310
0-24 months   PROBIT           BELARUS                        >=50 cm                 0      480   4408
0-24 months   PROBIT           BELARUS                        >=50 cm                 1     3683   4408
0-24 months   PROBIT           BELARUS                        <48 cm                  0        6   4408
0-24 months   PROBIT           BELARUS                        <48 cm                  1       13   4408
0-24 months   PROBIT           BELARUS                        [48-50) cm              0       40   4408
0-24 months   PROBIT           BELARUS                        [48-50) cm              1      186   4408
0-24 months   PROVIDE          BANGLADESH                     >=50 cm                 0       19    308
0-24 months   PROVIDE          BANGLADESH                     >=50 cm                 1       41    308
0-24 months   PROVIDE          BANGLADESH                     <48 cm                  0       63    308
0-24 months   PROVIDE          BANGLADESH                     <48 cm                  1       80    308
0-24 months   PROVIDE          BANGLADESH                     [48-50) cm              0       47    308
0-24 months   PROVIDE          BANGLADESH                     [48-50) cm              1       58    308
0-24 months   ResPak           PAKISTAN                       >=50 cm                 0        2     23
0-24 months   ResPak           PAKISTAN                       >=50 cm                 1        5     23
0-24 months   ResPak           PAKISTAN                       <48 cm                  0        5     23
0-24 months   ResPak           PAKISTAN                       <48 cm                  1        5     23
0-24 months   ResPak           PAKISTAN                       [48-50) cm              0        4     23
0-24 months   ResPak           PAKISTAN                       [48-50) cm              1        2     23
0-24 months   SAS-CompFeed     INDIA                          >=50 cm                 0       49    809
0-24 months   SAS-CompFeed     INDIA                          >=50 cm                 1       42    809
0-24 months   SAS-CompFeed     INDIA                          <48 cm                  0      309    809
0-24 months   SAS-CompFeed     INDIA                          <48 cm                  1      166    809
0-24 months   SAS-CompFeed     INDIA                          [48-50) cm              0      141    809
0-24 months   SAS-CompFeed     INDIA                          [48-50) cm              1      102    809
0-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm                 0      447   3595
0-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm                 1      879   3595
0-24 months   ZVITAMBO         ZIMBABWE                       <48 cm                  0      581   3595
0-24 months   ZVITAMBO         ZIMBABWE                       <48 cm                  1      377   3595
0-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm              0      607   3595
0-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm              1      704   3595
0-6 months    CMC-V-BCS-2002   INDIA                          >=50 cm                 0        3     63
0-6 months    CMC-V-BCS-2002   INDIA                          >=50 cm                 1        3     63
0-6 months    CMC-V-BCS-2002   INDIA                          <48 cm                  0       11     63
0-6 months    CMC-V-BCS-2002   INDIA                          <48 cm                  1       20     63
0-6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm              0        6     63
0-6 months    CMC-V-BCS-2002   INDIA                          [48-50) cm              1       20     63
0-6 months    CMIN             BANGLADESH                     >=50 cm                 0        1      5
0-6 months    CMIN             BANGLADESH                     >=50 cm                 1        0      5
0-6 months    CMIN             BANGLADESH                     <48 cm                  0        2      5
0-6 months    CMIN             BANGLADESH                     <48 cm                  1        2      5
0-6 months    CMIN             BANGLADESH                     [48-50) cm              0        0      5
0-6 months    CMIN             BANGLADESH                     [48-50) cm              1        0      5
0-6 months    COHORTS          GUATEMALA                      >=50 cm                 0       28    212
0-6 months    COHORTS          GUATEMALA                      >=50 cm                 1      114    212
0-6 months    COHORTS          GUATEMALA                      <48 cm                  0       11    212
0-6 months    COHORTS          GUATEMALA                      <48 cm                  1        9    212
0-6 months    COHORTS          GUATEMALA                      [48-50) cm              0       13    212
0-6 months    COHORTS          GUATEMALA                      [48-50) cm              1       37    212
0-6 months    COHORTS          INDIA                          >=50 cm                 0      230   1718
0-6 months    COHORTS          INDIA                          >=50 cm                 1      186   1718
0-6 months    COHORTS          INDIA                          <48 cm                  0      442   1718
0-6 months    COHORTS          INDIA                          <48 cm                  1      211   1718
0-6 months    COHORTS          INDIA                          [48-50) cm              0      402   1718
0-6 months    COHORTS          INDIA                          [48-50) cm              1      247   1718
0-6 months    COHORTS          PHILIPPINES                    >=50 cm                 0       82    751
0-6 months    COHORTS          PHILIPPINES                    >=50 cm                 1      276    751
0-6 months    COHORTS          PHILIPPINES                    <48 cm                  0       45    751
0-6 months    COHORTS          PHILIPPINES                    <48 cm                  1      109    751
0-6 months    COHORTS          PHILIPPINES                    [48-50) cm              0       71    751
0-6 months    COHORTS          PHILIPPINES                    [48-50) cm              1      168    751
0-6 months    EE               PAKISTAN                       >=50 cm                 0        4     84
0-6 months    EE               PAKISTAN                       >=50 cm                 1        9     84
0-6 months    EE               PAKISTAN                       <48 cm                  0       23     84
0-6 months    EE               PAKISTAN                       <48 cm                  1       28     84
0-6 months    EE               PAKISTAN                       [48-50) cm              0        9     84
0-6 months    EE               PAKISTAN                       [48-50) cm              1       11     84
0-6 months    GMS-Nepal        NEPAL                          >=50 cm                 0       18    263
0-6 months    GMS-Nepal        NEPAL                          >=50 cm                 1       31    263
0-6 months    GMS-Nepal        NEPAL                          <48 cm                  0       51    263
0-6 months    GMS-Nepal        NEPAL                          <48 cm                  1       72    263
0-6 months    GMS-Nepal        NEPAL                          [48-50) cm              0       35    263
0-6 months    GMS-Nepal        NEPAL                          [48-50) cm              1       56    263
0-6 months    IRC              INDIA                          >=50 cm                 0       38    236
0-6 months    IRC              INDIA                          >=50 cm                 1       76    236
0-6 months    IRC              INDIA                          <48 cm                  0       21    236
0-6 months    IRC              INDIA                          <48 cm                  1       31    236
0-6 months    IRC              INDIA                          [48-50) cm              0       26    236
0-6 months    IRC              INDIA                          [48-50) cm              1       44    236
0-6 months    JiVitA-3         BANGLADESH                     >=50 cm                 0       96   3961
0-6 months    JiVitA-3         BANGLADESH                     >=50 cm                 1      227   3961
0-6 months    JiVitA-3         BANGLADESH                     <48 cm                  0      824   3961
0-6 months    JiVitA-3         BANGLADESH                     <48 cm                  1     1752   3961
0-6 months    JiVitA-3         BANGLADESH                     [48-50) cm              0      340   3961
0-6 months    JiVitA-3         BANGLADESH                     [48-50) cm              1      722   3961
0-6 months    JiVitA-4         BANGLADESH                     >=50 cm                 0       41    504
0-6 months    JiVitA-4         BANGLADESH                     >=50 cm                 1       85    504
0-6 months    JiVitA-4         BANGLADESH                     <48 cm                  0      109    504
0-6 months    JiVitA-4         BANGLADESH                     <48 cm                  1      137    504
0-6 months    JiVitA-4         BANGLADESH                     [48-50) cm              0       45    504
0-6 months    JiVitA-4         BANGLADESH                     [48-50) cm              1       87    504
0-6 months    Keneba           GAMBIA                         >=50 cm                 0       43    563
0-6 months    Keneba           GAMBIA                         >=50 cm                 1      292    563
0-6 months    Keneba           GAMBIA                         <48 cm                  0       17    563
0-6 months    Keneba           GAMBIA                         <48 cm                  1       61    563
0-6 months    Keneba           GAMBIA                         [48-50) cm              0       38    563
0-6 months    Keneba           GAMBIA                         [48-50) cm              1      112    563
0-6 months    MAL-ED           BANGLADESH                     >=50 cm                 0        3     54
0-6 months    MAL-ED           BANGLADESH                     >=50 cm                 1        9     54
0-6 months    MAL-ED           BANGLADESH                     <48 cm                  0        6     54
0-6 months    MAL-ED           BANGLADESH                     <48 cm                  1       21     54
0-6 months    MAL-ED           BANGLADESH                     [48-50) cm              0        3     54
0-6 months    MAL-ED           BANGLADESH                     [48-50) cm              1       12     54
0-6 months    MAL-ED           BRAZIL                         >=50 cm                 0        0      3
0-6 months    MAL-ED           BRAZIL                         >=50 cm                 1        1      3
0-6 months    MAL-ED           BRAZIL                         <48 cm                  0        0      3
0-6 months    MAL-ED           BRAZIL                         <48 cm                  1        1      3
0-6 months    MAL-ED           BRAZIL                         [48-50) cm              0        0      3
0-6 months    MAL-ED           BRAZIL                         [48-50) cm              1        1      3
0-6 months    MAL-ED           INDIA                          >=50 cm                 0        1     14
0-6 months    MAL-ED           INDIA                          >=50 cm                 1        2     14
0-6 months    MAL-ED           INDIA                          <48 cm                  0        0     14
0-6 months    MAL-ED           INDIA                          <48 cm                  1        5     14
0-6 months    MAL-ED           INDIA                          [48-50) cm              0        2     14
0-6 months    MAL-ED           INDIA                          [48-50) cm              1        4     14
0-6 months    MAL-ED           NEPAL                          >=50 cm                 0        1      4
0-6 months    MAL-ED           NEPAL                          >=50 cm                 1        0      4
0-6 months    MAL-ED           NEPAL                          <48 cm                  0        0      4
0-6 months    MAL-ED           NEPAL                          <48 cm                  1        3      4
0-6 months    MAL-ED           NEPAL                          [48-50) cm              0        0      4
0-6 months    MAL-ED           NEPAL                          [48-50) cm              1        0      4
0-6 months    MAL-ED           PERU                           >=50 cm                 0        0     10
0-6 months    MAL-ED           PERU                           >=50 cm                 1        3     10
0-6 months    MAL-ED           PERU                           <48 cm                  0        0     10
0-6 months    MAL-ED           PERU                           <48 cm                  1        4     10
0-6 months    MAL-ED           PERU                           [48-50) cm              0        0     10
0-6 months    MAL-ED           PERU                           [48-50) cm              1        3     10
0-6 months    MAL-ED           SOUTH AFRICA                   >=50 cm                 0        2     21
0-6 months    MAL-ED           SOUTH AFRICA                   >=50 cm                 1        8     21
0-6 months    MAL-ED           SOUTH AFRICA                   <48 cm                  0        1     21
0-6 months    MAL-ED           SOUTH AFRICA                   <48 cm                  1        1     21
0-6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm              0        3     21
0-6 months    MAL-ED           SOUTH AFRICA                   [48-50) cm              1        6     21
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0        0      5
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        1      5
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                  0        0      5
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                  1        2      5
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0        0      5
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        2      5
0-6 months    NIH-Birth        BANGLADESH                     >=50 cm                 0       14    217
0-6 months    NIH-Birth        BANGLADESH                     >=50 cm                 1       40    217
0-6 months    NIH-Birth        BANGLADESH                     <48 cm                  0       27    217
0-6 months    NIH-Birth        BANGLADESH                     <48 cm                  1       57    217
0-6 months    NIH-Birth        BANGLADESH                     [48-50) cm              0       21    217
0-6 months    NIH-Birth        BANGLADESH                     [48-50) cm              1       58    217
0-6 months    NIH-Crypto       BANGLADESH                     >=50 cm                 0        3    197
0-6 months    NIH-Crypto       BANGLADESH                     >=50 cm                 1       48    197
0-6 months    NIH-Crypto       BANGLADESH                     <48 cm                  0        9    197
0-6 months    NIH-Crypto       BANGLADESH                     <48 cm                  1       58    197
0-6 months    NIH-Crypto       BANGLADESH                     [48-50) cm              0        9    197
0-6 months    NIH-Crypto       BANGLADESH                     [48-50) cm              1       70    197
0-6 months    PROBIT           BELARUS                        >=50 cm                 0      391   4267
0-6 months    PROBIT           BELARUS                        >=50 cm                 1     3651   4267
0-6 months    PROBIT           BELARUS                        <48 cm                  0        3   4267
0-6 months    PROBIT           BELARUS                        <48 cm                  1       12   4267
0-6 months    PROBIT           BELARUS                        [48-50) cm              0       29   4267
0-6 months    PROBIT           BELARUS                        [48-50) cm              1      181   4267
0-6 months    PROVIDE          BANGLADESH                     >=50 cm                 0        8    185
0-6 months    PROVIDE          BANGLADESH                     >=50 cm                 1       38    185
0-6 months    PROVIDE          BANGLADESH                     <48 cm                  0       20    185
0-6 months    PROVIDE          BANGLADESH                     <48 cm                  1       58    185
0-6 months    PROVIDE          BANGLADESH                     [48-50) cm              0       12    185
0-6 months    PROVIDE          BANGLADESH                     [48-50) cm              1       49    185
0-6 months    ResPak           PAKISTAN                       >=50 cm                 0        1     14
0-6 months    ResPak           PAKISTAN                       >=50 cm                 1        5     14
0-6 months    ResPak           PAKISTAN                       <48 cm                  0        2     14
0-6 months    ResPak           PAKISTAN                       <48 cm                  1        3     14
0-6 months    ResPak           PAKISTAN                       [48-50) cm              0        1     14
0-6 months    ResPak           PAKISTAN                       [48-50) cm              1        2     14
0-6 months    SAS-CompFeed     INDIA                          >=50 cm                 0       20    340
0-6 months    SAS-CompFeed     INDIA                          >=50 cm                 1       24    340
0-6 months    SAS-CompFeed     INDIA                          <48 cm                  0      102    340
0-6 months    SAS-CompFeed     INDIA                          <48 cm                  1       93    340
0-6 months    SAS-CompFeed     INDIA                          [48-50) cm              0       43    340
0-6 months    SAS-CompFeed     INDIA                          [48-50) cm              1       58    340
0-6 months    ZVITAMBO         ZIMBABWE                       >=50 cm                 0      228   2516
0-6 months    ZVITAMBO         ZIMBABWE                       >=50 cm                 1      864   2516
0-6 months    ZVITAMBO         ZIMBABWE                       <48 cm                  0      170   2516
0-6 months    ZVITAMBO         ZIMBABWE                       <48 cm                  1      349   2516
0-6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm              0      238   2516
0-6 months    ZVITAMBO         ZIMBABWE                       [48-50) cm              1      667   2516
6-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm                 0        0     25
6-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm                 1        0     25
6-24 months   CMC-V-BCS-2002   INDIA                          <48 cm                  0        8     25
6-24 months   CMC-V-BCS-2002   INDIA                          <48 cm                  1        7     25
6-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm              0        3     25
6-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm              1        7     25
6-24 months   CMIN             BANGLADESH                     >=50 cm                 0        0      7
6-24 months   CMIN             BANGLADESH                     >=50 cm                 1        0      7
6-24 months   CMIN             BANGLADESH                     <48 cm                  0        2      7
6-24 months   CMIN             BANGLADESH                     <48 cm                  1        1      7
6-24 months   CMIN             BANGLADESH                     [48-50) cm              0        0      7
6-24 months   CMIN             BANGLADESH                     [48-50) cm              1        4      7
6-24 months   COHORTS          GUATEMALA                      >=50 cm                 0       31     83
6-24 months   COHORTS          GUATEMALA                      >=50 cm                 1        4     83
6-24 months   COHORTS          GUATEMALA                      <48 cm                  0       22     83
6-24 months   COHORTS          GUATEMALA                      <48 cm                  1        2     83
6-24 months   COHORTS          GUATEMALA                      [48-50) cm              0       22     83
6-24 months   COHORTS          GUATEMALA                      [48-50) cm              1        2     83
6-24 months   COHORTS          INDIA                          >=50 cm                 0      108    779
6-24 months   COHORTS          INDIA                          >=50 cm                 1        0    779
6-24 months   COHORTS          INDIA                          <48 cm                  0      420    779
6-24 months   COHORTS          INDIA                          <48 cm                  1        0    779
6-24 months   COHORTS          INDIA                          [48-50) cm              0      251    779
6-24 months   COHORTS          INDIA                          [48-50) cm              1        0    779
6-24 months   COHORTS          PHILIPPINES                    >=50 cm                 0      108    935
6-24 months   COHORTS          PHILIPPINES                    >=50 cm                 1      147    935
6-24 months   COHORTS          PHILIPPINES                    <48 cm                  0      173    935
6-24 months   COHORTS          PHILIPPINES                    <48 cm                  1      150    935
6-24 months   COHORTS          PHILIPPINES                    [48-50) cm              0      184    935
6-24 months   COHORTS          PHILIPPINES                    [48-50) cm              1      173    935
6-24 months   EE               PAKISTAN                       >=50 cm                 0        4    136
6-24 months   EE               PAKISTAN                       >=50 cm                 1        5    136
6-24 months   EE               PAKISTAN                       <48 cm                  0       57    136
6-24 months   EE               PAKISTAN                       <48 cm                  1       49    136
6-24 months   EE               PAKISTAN                       [48-50) cm              0        9    136
6-24 months   EE               PAKISTAN                       [48-50) cm              1       12    136
6-24 months   GMS-Nepal        NEPAL                          >=50 cm                 0       16    378
6-24 months   GMS-Nepal        NEPAL                          >=50 cm                 1       32    378
6-24 months   GMS-Nepal        NEPAL                          <48 cm                  0      113    378
6-24 months   GMS-Nepal        NEPAL                          <48 cm                  1      108    378
6-24 months   GMS-Nepal        NEPAL                          [48-50) cm              0       61    378
6-24 months   GMS-Nepal        NEPAL                          [48-50) cm              1       48    378
6-24 months   IRC              INDIA                          >=50 cm                 0       24    151
6-24 months   IRC              INDIA                          >=50 cm                 1       24    151
6-24 months   IRC              INDIA                          <48 cm                  0       29    151
6-24 months   IRC              INDIA                          <48 cm                  1       26    151
6-24 months   IRC              INDIA                          [48-50) cm              0       21    151
6-24 months   IRC              INDIA                          [48-50) cm              1       27    151
6-24 months   JiVitA-3         BANGLADESH                     >=50 cm                 0       99   2392
6-24 months   JiVitA-3         BANGLADESH                     >=50 cm                 1        0   2392
6-24 months   JiVitA-3         BANGLADESH                     <48 cm                  0     1862   2392
6-24 months   JiVitA-3         BANGLADESH                     <48 cm                  1        0   2392
6-24 months   JiVitA-3         BANGLADESH                     [48-50) cm              0      431   2392
6-24 months   JiVitA-3         BANGLADESH                     [48-50) cm              1        0   2392
6-24 months   JiVitA-4         BANGLADESH                     >=50 cm                 0      245   1266
6-24 months   JiVitA-4         BANGLADESH                     >=50 cm                 1       40   1266
6-24 months   JiVitA-4         BANGLADESH                     <48 cm                  0      606   1266
6-24 months   JiVitA-4         BANGLADESH                     <48 cm                  1      112   1266
6-24 months   JiVitA-4         BANGLADESH                     [48-50) cm              0      229   1266
6-24 months   JiVitA-4         BANGLADESH                     [48-50) cm              1       34   1266
6-24 months   Keneba           GAMBIA                         >=50 cm                 0      138    662
6-24 months   Keneba           GAMBIA                         >=50 cm                 1      180    662
6-24 months   Keneba           GAMBIA                         <48 cm                  0       75    662
6-24 months   Keneba           GAMBIA                         <48 cm                  1       54    662
6-24 months   Keneba           GAMBIA                         [48-50) cm              0      105    662
6-24 months   Keneba           GAMBIA                         [48-50) cm              1      110    662
6-24 months   MAL-ED           BANGLADESH                     >=50 cm                 0        3     59
6-24 months   MAL-ED           BANGLADESH                     >=50 cm                 1        3     59
6-24 months   MAL-ED           BANGLADESH                     <48 cm                  0       15     59
6-24 months   MAL-ED           BANGLADESH                     <48 cm                  1       18     59
6-24 months   MAL-ED           BANGLADESH                     [48-50) cm              0       11     59
6-24 months   MAL-ED           BANGLADESH                     [48-50) cm              1        9     59
6-24 months   MAL-ED           BRAZIL                         >=50 cm                 0        0      5
6-24 months   MAL-ED           BRAZIL                         >=50 cm                 1        0      5
6-24 months   MAL-ED           BRAZIL                         <48 cm                  0        1      5
6-24 months   MAL-ED           BRAZIL                         <48 cm                  1        2      5
6-24 months   MAL-ED           BRAZIL                         [48-50) cm              0        1      5
6-24 months   MAL-ED           BRAZIL                         [48-50) cm              1        1      5
6-24 months   MAL-ED           INDIA                          >=50 cm                 0        0     26
6-24 months   MAL-ED           INDIA                          >=50 cm                 1        2     26
6-24 months   MAL-ED           INDIA                          <48 cm                  0        8     26
6-24 months   MAL-ED           INDIA                          <48 cm                  1        7     26
6-24 months   MAL-ED           INDIA                          [48-50) cm              0        4     26
6-24 months   MAL-ED           INDIA                          [48-50) cm              1        5     26
6-24 months   MAL-ED           NEPAL                          >=50 cm                 0        0      9
6-24 months   MAL-ED           NEPAL                          >=50 cm                 1        2      9
6-24 months   MAL-ED           NEPAL                          <48 cm                  0        1      9
6-24 months   MAL-ED           NEPAL                          <48 cm                  1        3      9
6-24 months   MAL-ED           NEPAL                          [48-50) cm              0        0      9
6-24 months   MAL-ED           NEPAL                          [48-50) cm              1        3      9
6-24 months   MAL-ED           PERU                           >=50 cm                 0        0     22
6-24 months   MAL-ED           PERU                           >=50 cm                 1        3     22
6-24 months   MAL-ED           PERU                           <48 cm                  0        4     22
6-24 months   MAL-ED           PERU                           <48 cm                  1        9     22
6-24 months   MAL-ED           PERU                           [48-50) cm              0        1     22
6-24 months   MAL-ED           PERU                           [48-50) cm              1        5     22
6-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm                 0        0     16
6-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm                 1        3     16
6-24 months   MAL-ED           SOUTH AFRICA                   <48 cm                  0        1     16
6-24 months   MAL-ED           SOUTH AFRICA                   <48 cm                  1        4     16
6-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm              0        3     16
6-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm              1        5     16
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                 0        0     23
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm                 1        1     23
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                  0        2     23
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm                  1       11     23
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm              0        2     23
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm              1        7     23
6-24 months   NIH-Birth        BANGLADESH                     >=50 cm                 0       18    191
6-24 months   NIH-Birth        BANGLADESH                     >=50 cm                 1       13    191
6-24 months   NIH-Birth        BANGLADESH                     <48 cm                  0       65    191
6-24 months   NIH-Birth        BANGLADESH                     <48 cm                  1       24    191
6-24 months   NIH-Birth        BANGLADESH                     [48-50) cm              0       52    191
6-24 months   NIH-Birth        BANGLADESH                     [48-50) cm              1       19    191
6-24 months   NIH-Crypto       BANGLADESH                     >=50 cm                 0       11    113
6-24 months   NIH-Crypto       BANGLADESH                     >=50 cm                 1        5    113
6-24 months   NIH-Crypto       BANGLADESH                     <48 cm                  0       50    113
6-24 months   NIH-Crypto       BANGLADESH                     <48 cm                  1        4    113
6-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm              0       35    113
6-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm              1        8    113
6-24 months   PROBIT           BELARUS                        >=50 cm                 0       89    141
6-24 months   PROBIT           BELARUS                        >=50 cm                 1       32    141
6-24 months   PROBIT           BELARUS                        <48 cm                  0        3    141
6-24 months   PROBIT           BELARUS                        <48 cm                  1        1    141
6-24 months   PROBIT           BELARUS                        [48-50) cm              0       11    141
6-24 months   PROBIT           BELARUS                        [48-50) cm              1        5    141
6-24 months   PROVIDE          BANGLADESH                     >=50 cm                 0       11    123
6-24 months   PROVIDE          BANGLADESH                     >=50 cm                 1        3    123
6-24 months   PROVIDE          BANGLADESH                     <48 cm                  0       43    123
6-24 months   PROVIDE          BANGLADESH                     <48 cm                  1       22    123
6-24 months   PROVIDE          BANGLADESH                     [48-50) cm              0       35    123
6-24 months   PROVIDE          BANGLADESH                     [48-50) cm              1        9    123
6-24 months   ResPak           PAKISTAN                       >=50 cm                 0        1      9
6-24 months   ResPak           PAKISTAN                       >=50 cm                 1        0      9
6-24 months   ResPak           PAKISTAN                       <48 cm                  0        3      9
6-24 months   ResPak           PAKISTAN                       <48 cm                  1        2      9
6-24 months   ResPak           PAKISTAN                       [48-50) cm              0        3      9
6-24 months   ResPak           PAKISTAN                       [48-50) cm              1        0      9
6-24 months   SAS-CompFeed     INDIA                          >=50 cm                 0       29    469
6-24 months   SAS-CompFeed     INDIA                          >=50 cm                 1       18    469
6-24 months   SAS-CompFeed     INDIA                          <48 cm                  0      207    469
6-24 months   SAS-CompFeed     INDIA                          <48 cm                  1       73    469
6-24 months   SAS-CompFeed     INDIA                          [48-50) cm              0       98    469
6-24 months   SAS-CompFeed     INDIA                          [48-50) cm              1       44    469
6-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm                 0      219   1079
6-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm                 1       15   1079
6-24 months   ZVITAMBO         ZIMBABWE                       <48 cm                  0      411   1079
6-24 months   ZVITAMBO         ZIMBABWE                       <48 cm                  1       28   1079
6-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm              0      369   1079
6-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm              1       37   1079


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
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
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
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
![](/tmp/654a8671-5a3a-4b02-b9e3-baf89ab87373/dd1c21ce-3c60-406a-9e58-bee0e750a6d3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/654a8671-5a3a-4b02-b9e3-baf89ab87373/dd1c21ce-3c60-406a-9e58-bee0e750a6d3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/654a8671-5a3a-4b02-b9e3-baf89ab87373/dd1c21ce-3c60-406a-9e58-bee0e750a6d3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/654a8671-5a3a-4b02-b9e3-baf89ab87373/dd1c21ce-3c60-406a-9e58-bee0e750a6d3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        GUATEMALA     >=50 cm              NA                0.6654114   0.5955353   0.7352874
0-24 months   COHORTS        GUATEMALA     <48 cm               NA                0.2566061   0.1221552   0.3910569
0-24 months   COHORTS        GUATEMALA     [48-50) cm           NA                0.5229871   0.4027103   0.6432639
0-24 months   COHORTS        INDIA         >=50 cm              NA                0.3518361   0.3095641   0.3941081
0-24 months   COHORTS        INDIA         <48 cm               NA                0.2003823   0.1766787   0.2240859
0-24 months   COHORTS        INDIA         [48-50) cm           NA                0.2758661   0.2464477   0.3052846
0-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                0.6900527   0.6514614   0.7286440
0-24 months   COHORTS        PHILIPPINES   <48 cm               NA                0.5472218   0.5019985   0.5924450
0-24 months   COHORTS        PHILIPPINES   [48-50) cm           NA                0.5733732   0.5309092   0.6158373
0-24 months   EE             PAKISTAN      >=50 cm              NA                0.6363636   0.4530706   0.8196567
0-24 months   EE             PAKISTAN      <48 cm               NA                0.4904459   0.4037290   0.5771627
0-24 months   EE             PAKISTAN      [48-50) cm           NA                0.5609756   0.4092507   0.7127005
0-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                0.6460906   0.5399658   0.7522155
0-24 months   GMS-Nepal      NEPAL         <48 cm               NA                0.5227916   0.4644760   0.5811072
0-24 months   GMS-Nepal      NEPAL         [48-50) cm           NA                0.5139296   0.4390308   0.5888283
0-24 months   IRC            INDIA         >=50 cm              NA                0.6102162   0.5305774   0.6898549
0-24 months   IRC            INDIA         <48 cm               NA                0.5130138   0.4108421   0.6151856
0-24 months   IRC            INDIA         [48-50) cm           NA                0.5990826   0.5046116   0.6935536
0-24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                0.5682713   0.5207400   0.6158027
0-24 months   JiVitA-3       BANGLADESH    <48 cm               NA                0.3949201   0.3805225   0.4093177
0-24 months   JiVitA-3       BANGLADESH    [48-50) cm           NA                0.4852126   0.4587675   0.5116578
0-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                0.3013187   0.2534698   0.3491675
0-24 months   JiVitA-4       BANGLADESH    <48 cm               NA                0.2605227   0.2324572   0.2885882
0-24 months   JiVitA-4       BANGLADESH    [48-50) cm           NA                0.3050249   0.2576683   0.3523814
0-24 months   Keneba         GAMBIA        >=50 cm              NA                0.7209228   0.6854926   0.7563530
0-24 months   Keneba         GAMBIA        <48 cm               NA                0.5501518   0.4743902   0.6259134
0-24 months   Keneba         GAMBIA        [48-50) cm           NA                0.6063434   0.5524010   0.6602857
0-24 months   MAL-ED         BANGLADESH    >=50 cm              NA                0.6666667   0.4286826   0.9046507
0-24 months   MAL-ED         BANGLADESH    <48 cm               NA                0.6500000   0.5293253   0.7706747
0-24 months   MAL-ED         BANGLADESH    [48-50) cm           NA                0.6000000   0.4226014   0.7773986
0-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                0.6261967   0.5097780   0.7426154
0-24 months   NIH-Birth      BANGLADESH    <48 cm               NA                0.4663153   0.3905207   0.5421098
0-24 months   NIH-Birth      BANGLADESH    [48-50) cm           NA                0.5094211   0.4227675   0.5960747
0-24 months   NIH-Crypto     BANGLADESH    >=50 cm              NA                0.7925964   0.6938256   0.8913672
0-24 months   NIH-Crypto     BANGLADESH    <48 cm               NA                0.5140101   0.4236293   0.6043908
0-24 months   NIH-Crypto     BANGLADESH    [48-50) cm           NA                0.6376497   0.5488394   0.7264600
0-24 months   PROBIT         BELARUS       >=50 cm              NA                0.8846985   0.8750944   0.8943026
0-24 months   PROBIT         BELARUS       <48 cm               NA                0.6842105   0.6474021   0.7210190
0-24 months   PROBIT         BELARUS       [48-50) cm           NA                0.8230088   0.7727497   0.8732680
0-24 months   PROVIDE        BANGLADESH    >=50 cm              NA                0.6742430   0.5486646   0.7998215
0-24 months   PROVIDE        BANGLADESH    <48 cm               NA                0.5586977   0.4776905   0.6397048
0-24 months   PROVIDE        BANGLADESH    [48-50) cm           NA                0.5502547   0.4472785   0.6532309
0-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                0.4475304   0.3297881   0.5652726
0-24 months   SAS-CompFeed   INDIA         <48 cm               NA                0.3540768   0.3101713   0.3979823
0-24 months   SAS-CompFeed   INDIA         [48-50) cm           NA                0.4136924   0.3475804   0.4798045
0-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.6628056   0.6370290   0.6885822
0-24 months   ZVITAMBO       ZIMBABWE      <48 cm               NA                0.3941960   0.3630617   0.4253302
0-24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.5387232   0.5118985   0.5655479
0-6 months    COHORTS        GUATEMALA     >=50 cm              NA                0.8028169   0.7377837   0.8678501
0-6 months    COHORTS        GUATEMALA     <48 cm               NA                0.4500000   0.2304135   0.6695865
0-6 months    COHORTS        GUATEMALA     [48-50) cm           NA                0.7400000   0.6175523   0.8624477
0-6 months    COHORTS        INDIA         >=50 cm              NA                0.4462381   0.3982413   0.4942349
0-6 months    COHORTS        INDIA         <48 cm               NA                0.3282716   0.2920177   0.3645255
0-6 months    COHORTS        INDIA         [48-50) cm           NA                0.3823982   0.3446807   0.4201156
0-6 months    COHORTS        PHILIPPINES   >=50 cm              NA                0.7683905   0.7242298   0.8125512
0-6 months    COHORTS        PHILIPPINES   <48 cm               NA                0.7028890   0.6298656   0.7759124
0-6 months    COHORTS        PHILIPPINES   [48-50) cm           NA                0.7025312   0.6452705   0.7597919
0-6 months    GMS-Nepal      NEPAL         >=50 cm              NA                0.6212728   0.4807397   0.7618058
0-6 months    GMS-Nepal      NEPAL         <48 cm               NA                0.5823810   0.4936256   0.6711363
0-6 months    GMS-Nepal      NEPAL         [48-50) cm           NA                0.6014551   0.5013891   0.7015211
0-6 months    IRC            INDIA         >=50 cm              NA                0.6571226   0.5683025   0.7459427
0-6 months    IRC            INDIA         <48 cm               NA                0.5970274   0.4476573   0.7463975
0-6 months    IRC            INDIA         [48-50) cm           NA                0.6471052   0.5285891   0.7656213
0-6 months    JiVitA-3       BANGLADESH    >=50 cm              NA                0.6997904   0.6489746   0.7506062
0-6 months    JiVitA-3       BANGLADESH    <48 cm               NA                0.6846214   0.6666268   0.7026161
0-6 months    JiVitA-3       BANGLADESH    [48-50) cm           NA                0.6716002   0.6423946   0.7008057
0-6 months    JiVitA-4       BANGLADESH    >=50 cm              NA                0.6711984   0.5884414   0.7539554
0-6 months    JiVitA-4       BANGLADESH    <48 cm               NA                0.5579952   0.4957252   0.6202652
0-6 months    JiVitA-4       BANGLADESH    [48-50) cm           NA                0.6588223   0.5781024   0.7395422
0-6 months    Keneba         GAMBIA        >=50 cm              NA                0.8718661   0.8360847   0.9076474
0-6 months    Keneba         GAMBIA        <48 cm               NA                0.7740041   0.6907520   0.8572561
0-6 months    Keneba         GAMBIA        [48-50) cm           NA                0.7445293   0.6803692   0.8086894
0-6 months    NIH-Birth      BANGLADESH    >=50 cm              NA                0.7263152   0.6080234   0.8446070
0-6 months    NIH-Birth      BANGLADESH    <48 cm               NA                0.6654643   0.5629425   0.7679862
0-6 months    NIH-Birth      BANGLADESH    [48-50) cm           NA                0.7340845   0.6362070   0.8319620
0-6 months    PROVIDE        BANGLADESH    >=50 cm              NA                0.8260870   0.7138220   0.9383519
0-6 months    PROVIDE        BANGLADESH    <48 cm               NA                0.7435897   0.6520652   0.8351143
0-6 months    PROVIDE        BANGLADESH    [48-50) cm           NA                0.8032787   0.7010346   0.9055228
0-6 months    SAS-CompFeed   INDIA         >=50 cm              NA                0.5349878   0.3779423   0.6920333
0-6 months    SAS-CompFeed   INDIA         <48 cm               NA                0.4807498   0.4105623   0.5509373
0-6 months    SAS-CompFeed   INDIA         [48-50) cm           NA                0.5678675   0.4674788   0.6682562
0-6 months    ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.7917935   0.7677628   0.8158241
0-6 months    ZVITAMBO       ZIMBABWE      <48 cm               NA                0.6752107   0.6346410   0.7157805
0-6 months    ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.7379147   0.7092556   0.7665737
6-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                0.5728442   0.5066792   0.6390092
6-24 months   COHORTS        PHILIPPINES   <48 cm               NA                0.4755172   0.4195335   0.5315009
6-24 months   COHORTS        PHILIPPINES   [48-50) cm           NA                0.4825040   0.4270174   0.5379906
6-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                0.6552287   0.5212333   0.7892241
6-24 months   GMS-Nepal      NEPAL         <48 cm               NA                0.4889257   0.4179028   0.5599485
6-24 months   GMS-Nepal      NEPAL         [48-50) cm           NA                0.4222433   0.3151443   0.5293422
6-24 months   IRC            INDIA         >=50 cm              NA                0.4679526   0.3043988   0.6315063
6-24 months   IRC            INDIA         <48 cm               NA                0.4474830   0.3134070   0.5815591
6-24 months   IRC            INDIA         [48-50) cm           NA                0.5482798   0.3963015   0.7002580
6-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                0.1368705   0.0968376   0.1769035
6-24 months   JiVitA-4       BANGLADESH    <48 cm               NA                0.1553069   0.1287202   0.1818935
6-24 months   JiVitA-4       BANGLADESH    [48-50) cm           NA                0.1297021   0.0888050   0.1705992
6-24 months   Keneba         GAMBIA        >=50 cm              NA                0.5549246   0.4950183   0.6148310
6-24 months   Keneba         GAMBIA        <48 cm               NA                0.3944373   0.3006993   0.4881752
6-24 months   Keneba         GAMBIA        [48-50) cm           NA                0.5074383   0.4312334   0.5836432
6-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                0.4089539   0.2031401   0.6147678
6-24 months   NIH-Birth      BANGLADESH    <48 cm               NA                0.2671041   0.1753372   0.3588710
6-24 months   NIH-Birth      BANGLADESH    [48-50) cm           NA                0.2646355   0.1621710   0.3670999
6-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                0.3777399   0.2316360   0.5238438
6-24 months   SAS-CompFeed   INDIA         <48 cm               NA                0.2671703   0.2143710   0.3199696
6-24 months   SAS-CompFeed   INDIA         [48-50) cm           NA                0.3139797   0.2360762   0.3918832
6-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                0.0664393   0.0336639   0.0992146
6-24 months   ZVITAMBO       ZIMBABWE      <48 cm               NA                0.0632559   0.0401713   0.0863406
6-24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           NA                0.0899473   0.0624616   0.1174331


### Parameter: E(Y)


agecat        studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        GUATEMALA     NA                   NA                0.5694915   0.5120418   0.6269413
0-24 months   COHORTS        INDIA         NA                   NA                0.2579095   0.2406335   0.2751855
0-24 months   COHORTS        PHILIPPINES   NA                   NA                0.6067616   0.5822457   0.6312775
0-24 months   EE             PAKISTAN      NA                   NA                0.5181818   0.4466550   0.5897087
0-24 months   GMS-Nepal      NEPAL         NA                   NA                0.5413417   0.4990070   0.5836763
0-24 months   IRC            INDIA         NA                   NA                0.5891473   0.5364145   0.6418800
0-24 months   JiVitA-3       BANGLADESH    NA                   NA                0.4251535   0.4129986   0.4373083
0-24 months   JiVitA-4       BANGLADESH    NA                   NA                0.2796610   0.2580570   0.3012650
0-24 months   Keneba         GAMBIA        NA                   NA                0.6604082   0.6324757   0.6883406
0-24 months   MAL-ED         BANGLADESH    NA                   NA                0.6371681   0.5446961   0.7296402
0-24 months   NIH-Birth      BANGLADESH    NA                   NA                0.5171569   0.4657250   0.5685888
0-24 months   NIH-Crypto     BANGLADESH    NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROBIT         BELARUS       NA                   NA                0.8806715   0.8711794   0.8901636
0-24 months   PROVIDE        BANGLADESH    NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   SAS-CompFeed   INDIA         NA                   NA                0.3831891   0.3479331   0.4184451
0-24 months   ZVITAMBO       ZIMBABWE      NA                   NA                0.5452017   0.5287719   0.5616314
0-6 months    COHORTS        GUATEMALA     NA                   NA                0.7547170   0.6968087   0.8126253
0-6 months    COHORTS        INDIA         NA                   NA                0.3748545   0.3519572   0.3977518
0-6 months    COHORTS        PHILIPPINES   NA                   NA                0.7363515   0.7047428   0.7679603
0-6 months    GMS-Nepal      NEPAL         NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    IRC            INDIA         NA                   NA                0.6398305   0.5770134   0.7026476
0-6 months    JiVitA-3       BANGLADESH    NA                   NA                0.6818985   0.6673935   0.6964035
0-6 months    JiVitA-4       BANGLADESH    NA                   NA                0.6130952   0.5705324   0.6556580
0-6 months    Keneba         GAMBIA        NA                   NA                0.8259325   0.7956783   0.8561867
0-6 months    NIH-Birth      BANGLADESH    NA                   NA                0.7142857   0.6541352   0.7744362
0-6 months    PROVIDE        BANGLADESH    NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    SAS-CompFeed   INDIA         NA                   NA                0.5147059   0.4610948   0.5683169
0-6 months    ZVITAMBO       ZIMBABWE      NA                   NA                0.7472178   0.7302477   0.7641880
6-24 months   COHORTS        PHILIPPINES   NA                   NA                0.5026738   0.4688037   0.5365439
6-24 months   GMS-Nepal      NEPAL         NA                   NA                0.4973545   0.4426760   0.5520330
6-24 months   IRC            INDIA         NA                   NA                0.5099338   0.4248374   0.5950302
6-24 months   JiVitA-4       BANGLADESH    NA                   NA                0.1469194   0.1276367   0.1662021
6-24 months   Keneba         GAMBIA        NA                   NA                0.5196375   0.4788178   0.5604571
6-24 months   NIH-Birth      BANGLADESH    NA                   NA                0.2931937   0.2273732   0.3590142
6-24 months   SAS-CompFeed   INDIA         NA                   NA                0.2878465   0.2457514   0.3299415
6-24 months   ZVITAMBO       ZIMBABWE      NA                   NA                0.0741427   0.0585455   0.0897399


### Parameter: RR


agecat        studyid        country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS        GUATEMALA     <48 cm               >=50 cm           0.3856352   0.2258836   0.6583679
0-24 months   COHORTS        GUATEMALA     [48-50) cm           >=50 cm           0.7859606   0.6101058   1.0125031
0-24 months   COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS        INDIA         <48 cm               >=50 cm           0.5695331   0.4812732   0.6739787
0-24 months   COHORTS        INDIA         [48-50) cm           >=50 cm           0.7840757   0.6678589   0.9205158
0-24 months   COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   COHORTS        PHILIPPINES   <48 cm               >=50 cm           0.7930145   0.7177742   0.8761418
0-24 months   COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           0.8309123   0.7573850   0.9115776
0-24 months   EE             PAKISTAN      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   EE             PAKISTAN      <48 cm               >=50 cm           0.7707006   0.5499261   1.0801077
0-24 months   EE             PAKISTAN      [48-50) cm           >=50 cm           0.8815331   0.5935933   1.3091465
0-24 months   GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal      NEPAL         <48 cm               >=50 cm           0.8091614   0.6636125   0.9866333
0-24 months   GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           0.7954450   0.6386622   0.9907159
0-24 months   IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   IRC            INDIA         <48 cm               >=50 cm           0.8407084   0.6626992   1.0665330
0-24 months   IRC            INDIA         [48-50) cm           >=50 cm           0.9817547   0.8001030   1.2046477
0-24 months   JiVitA-3       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3       BANGLADESH    <48 cm               >=50 cm           0.6949499   0.6343620   0.7613245
0-24 months   JiVitA-3       BANGLADESH    [48-50) cm           >=50 cm           0.8538397   0.7727464   0.9434431
0-24 months   JiVitA-4       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4       BANGLADESH    <48 cm               >=50 cm           0.8646086   0.7136633   1.0474800
0-24 months   JiVitA-4       BANGLADESH    [48-50) cm           >=50 cm           1.0122999   0.8106621   1.2640914
0-24 months   Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   Keneba         GAMBIA        <48 cm               >=50 cm           0.7631216   0.6594560   0.8830834
0-24 months   Keneba         GAMBIA        [48-50) cm           >=50 cm           0.8410656   0.7596870   0.9311614
0-24 months   MAL-ED         BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         BANGLADESH    <48 cm               >=50 cm           0.9750000   0.6519879   1.4580409
0-24 months   MAL-ED         BANGLADESH    [48-50) cm           >=50 cm           0.9000000   0.5660784   1.4308972
0-24 months   NIH-Birth      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth      BANGLADESH    <48 cm               >=50 cm           0.7446786   0.5815602   0.9535491
0-24 months   NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm           0.8135161   0.6321911   1.0468489
0-24 months   NIH-Crypto     BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto     BANGLADESH    <48 cm               >=50 cm           0.6485143   0.5223602   0.8051356
0-24 months   NIH-Crypto     BANGLADESH    [48-50) cm           >=50 cm           0.8045075   0.6671263   0.9701795
0-24 months   PROBIT         BELARUS       >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   PROBIT         BELARUS       <48 cm               >=50 cm           0.7733827   0.7320821   0.8170133
0-24 months   PROBIT         BELARUS       [48-50) cm           >=50 cm           0.9302704   0.8743235   0.9897973
0-24 months   PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE        BANGLADESH    <48 cm               >=50 cm           0.8286295   0.6539662   1.0499425
0-24 months   PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.8161074   0.6261145   1.0637531
0-24 months   SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.7911793   0.5916566   1.0579864
0-24 months   SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.9243896   0.6796154   1.2573233
0-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           0.5947385   0.5446196   0.6494696
0-24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           0.8127922   0.7630301   0.8657995
0-6 months    COHORTS        GUATEMALA     >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS        GUATEMALA     <48 cm               >=50 cm           0.5605263   0.3418008   0.9192189
0-6 months    COHORTS        GUATEMALA     [48-50) cm           >=50 cm           0.9217544   0.7666608   1.1082230
0-6 months    COHORTS        INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS        INDIA         <48 cm               >=50 cm           0.7356423   0.6304429   0.8583958
0-6 months    COHORTS        INDIA         [48-50) cm           >=50 cm           0.8569375   0.7406703   0.9914559
0-6 months    COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    COHORTS        PHILIPPINES   <48 cm               >=50 cm           0.9147549   0.8122644   1.0301777
0-6 months    COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           0.9142894   0.8273759   1.0103329
0-6 months    GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal      NEPAL         <48 cm               >=50 cm           0.9373998   0.7136926   1.2312281
0-6 months    GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           0.9681015   0.7309947   1.2821168
0-6 months    IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    IRC            INDIA         <48 cm               >=50 cm           0.9085480   0.6836511   1.2074280
0-6 months    IRC            INDIA         [48-50) cm           >=50 cm           0.9847556   0.7839451   1.2370045
0-6 months    JiVitA-3       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3       BANGLADESH    <48 cm               >=50 cm           0.9783236   0.9056536   1.0568246
0-6 months    JiVitA-3       BANGLADESH    [48-50) cm           >=50 cm           0.9597162   0.8818852   1.0444162
0-6 months    JiVitA-4       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4       BANGLADESH    <48 cm               >=50 cm           0.8313416   0.7038182   0.9819708
0-6 months    JiVitA-4       BANGLADESH    [48-50) cm           >=50 cm           0.9815612   0.8249318   1.1679297
0-6 months    Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    Keneba         GAMBIA        <48 cm               >=50 cm           0.8877557   0.7915730   0.9956254
0-6 months    Keneba         GAMBIA        [48-50) cm           >=50 cm           0.8539491   0.7764561   0.9391762
0-6 months    NIH-Birth      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth      BANGLADESH    <48 cm               >=50 cm           0.9162198   0.7319396   1.1468960
0-6 months    NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm           1.0106969   0.8183052   1.2483217
0-6 months    PROVIDE        BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE        BANGLADESH    <48 cm               >=50 cm           0.9001350   0.7493386   1.0812774
0-6 months    PROVIDE        BANGLADESH    [48-50) cm           >=50 cm           0.9723900   0.8071896   1.1714004
0-6 months    SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.8986182   0.6473778   1.2473624
0-6 months    SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           1.0614588   0.7535478   1.4951869
0-6 months    ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           0.8527612   0.7972466   0.9121415
0-6 months    ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           0.9319535   0.8870907   0.9790852
6-24 months   COHORTS        PHILIPPINES   >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   COHORTS        PHILIPPINES   <48 cm               >=50 cm           0.8300987   0.7037807   0.9790889
6-24 months   COHORTS        PHILIPPINES   [48-50) cm           >=50 cm           0.8422953   0.7155221   0.9915296
6-24 months   GMS-Nepal      NEPAL         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal      NEPAL         <48 cm               >=50 cm           0.7461908   0.5809050   0.9585058
6-24 months   GMS-Nepal      NEPAL         [48-50) cm           >=50 cm           0.6444212   0.4653435   0.8924131
6-24 months   IRC            INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   IRC            INDIA         <48 cm               >=50 cm           0.9562572   0.6036869   1.5147387
6-24 months   IRC            INDIA         [48-50) cm           >=50 cm           1.1716567   0.7461624   1.8397864
6-24 months   JiVitA-4       BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4       BANGLADESH    <48 cm               >=50 cm           1.1346992   0.8081931   1.5931120
6-24 months   JiVitA-4       BANGLADESH    [48-50) cm           >=50 cm           0.9476259   0.6167979   1.4558980
6-24 months   Keneba         GAMBIA        >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   Keneba         GAMBIA        <48 cm               >=50 cm           0.7107943   0.5482159   0.9215868
6-24 months   Keneba         GAMBIA        [48-50) cm           >=50 cm           0.9144274   0.7597438   1.1006046
6-24 months   NIH-Birth      BANGLADESH    >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth      BANGLADESH    <48 cm               >=50 cm           0.6531400   0.3549007   1.2020033
6-24 months   NIH-Birth      BANGLADESH    [48-50) cm           >=50 cm           0.6471033   0.3429742   1.2209160
6-24 months   SAS-CompFeed   INDIA         >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed   INDIA         <48 cm               >=50 cm           0.7072865   0.4584895   1.0910918
6-24 months   SAS-CompFeed   INDIA         [48-50) cm           >=50 cm           0.8312061   0.5255032   1.3147467
6-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              >=50 cm           1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO       ZIMBABWE      <48 cm               >=50 cm           0.9520868   0.5153945   1.7587873
6-24 months   ZVITAMBO       ZIMBABWE      [48-50) cm           >=50 cm           1.3538284   0.7576606   2.4190929


### Parameter: PAR


agecat        studyid        country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS        GUATEMALA     >=50 cm              NA                -0.0959198   -0.1437631   -0.0480765
0-24 months   COHORTS        INDIA         >=50 cm              NA                -0.0939266   -0.1304920   -0.0573612
0-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                -0.0832911   -0.1148153   -0.0517670
0-24 months   EE             PAKISTAN      >=50 cm              NA                -0.1181818   -0.2958163    0.0594526
0-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                -0.1047490   -0.2029220   -0.0065760
0-24 months   IRC            INDIA         >=50 cm              NA                -0.0210689   -0.0826579    0.0405201
0-24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                -0.1431179   -0.1891775   -0.0970582
0-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                -0.0216577   -0.0627021    0.0193868
0-24 months   Keneba         GAMBIA        >=50 cm              NA                -0.0605146   -0.0869671   -0.0340622
0-24 months   MAL-ED         BANGLADESH    >=50 cm              NA                -0.0294985   -0.2465936    0.1875965
0-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                -0.1090398   -0.2119846   -0.0060951
0-24 months   NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.1700157   -0.2617151   -0.0783163
0-24 months   PROBIT         BELARUS       >=50 cm              NA                -0.0040270   -0.0068724   -0.0011816
0-24 months   PROVIDE        BANGLADESH    >=50 cm              NA                -0.0930742   -0.2065320    0.0203836
0-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                -0.0643413   -0.1739705    0.0452880
0-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                -0.1176039   -0.1385363   -0.0966715
0-6 months    COHORTS        GUATEMALA     >=50 cm              NA                -0.0480999   -0.0918402   -0.0043596
0-6 months    COHORTS        INDIA         >=50 cm              NA                -0.0713836   -0.1129578   -0.0298094
0-6 months    COHORTS        PHILIPPINES   >=50 cm              NA                -0.0320389   -0.0653080    0.0012301
0-6 months    GMS-Nepal      NEPAL         >=50 cm              NA                -0.0167100   -0.1436349    0.1102149
0-6 months    IRC            INDIA         >=50 cm              NA                -0.0172921   -0.0845501    0.0499659
0-6 months    JiVitA-3       BANGLADESH    >=50 cm              NA                -0.0178919   -0.0668531    0.0310693
0-6 months    JiVitA-4       BANGLADESH    >=50 cm              NA                -0.0581031   -0.1307226    0.0145163
0-6 months    Keneba         GAMBIA        >=50 cm              NA                -0.0459336   -0.0714283   -0.0204388
0-6 months    NIH-Birth      BANGLADESH    >=50 cm              NA                -0.0120295   -0.1163740    0.0923150
0-6 months    PROVIDE        BANGLADESH    >=50 cm              NA                -0.0423032   -0.1410844    0.0564780
0-6 months    SAS-CompFeed   INDIA         >=50 cm              NA                -0.0202819   -0.1666986    0.1261347
0-6 months    ZVITAMBO       ZIMBABWE      >=50 cm              NA                -0.0445757   -0.0636851   -0.0254662
6-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                -0.0701704   -0.1269218   -0.0134190
6-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                -0.1578742   -0.2864704   -0.0292780
6-24 months   IRC            INDIA         >=50 cm              NA                 0.0419812   -0.0901774    0.1741398
6-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                 0.0100489   -0.0252761    0.0453739
6-24 months   Keneba         GAMBIA        >=50 cm              NA                -0.0352872   -0.0792698    0.0086954
6-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                -0.1157602   -0.2985979    0.0670775
6-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                -0.0898934   -0.2267891    0.0470023
6-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.0077035   -0.0218449    0.0372518


### Parameter: PAF


agecat        studyid        country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS        GUATEMALA     >=50 cm              NA                -0.1684307   -0.2596425   -0.0838236
0-24 months   COHORTS        INDIA         >=50 cm              NA                -0.3641844   -0.5126718   -0.2302730
0-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                -0.1372716   -0.1911333   -0.0858455
0-24 months   EE             PAKISTAN      >=50 cm              NA                -0.2280702   -0.6304066    0.0749814
0-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                -0.1934988   -0.3904414   -0.0244513
0-24 months   IRC            INDIA         >=50 cm              NA                -0.0357616   -0.1459388    0.0638225
0-24 months   JiVitA-3       BANGLADESH    >=50 cm              NA                -0.3366264   -0.4500301   -0.2320917
0-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                -0.0774426   -0.2342786    0.0594648
0-24 months   Keneba         GAMBIA        >=50 cm              NA                -0.0916322   -0.1332291   -0.0515622
0-24 months   MAL-ED         BANGLADESH    >=50 cm              NA                -0.0462963   -0.4489074    0.2444404
0-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                -0.2108448   -0.4277774   -0.0268723
0-24 months   NIH-Crypto     BANGLADESH    >=50 cm              NA                -0.2730823   -0.4355219   -0.1290238
0-24 months   PROBIT         BELARUS       >=50 cm              NA                -0.0045727   -0.0078146   -0.0013412
0-24 months   PROVIDE        BANGLADESH    >=50 cm              NA                -0.1601500   -0.3739400    0.0203735
0-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                -0.1679099   -0.4910898    0.0852237
0-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                -0.2157072   -0.2556959   -0.1769920
0-6 months    COHORTS        GUATEMALA     >=50 cm              NA                -0.0637324   -0.1245591   -0.0061958
0-6 months    COHORTS        INDIA         >=50 cm              NA                -0.1904302   -0.3069956   -0.0842608
0-6 months    COHORTS        PHILIPPINES   >=50 cm              NA                -0.0435104   -0.0898681    0.0008755
0-6 months    GMS-Nepal      NEPAL         >=50 cm              NA                -0.0276398   -0.2605719    0.1622504
0-6 months    IRC            INDIA         >=50 cm              NA                -0.0270261   -0.1379512    0.0730863
0-6 months    JiVitA-3       BANGLADESH    >=50 cm              NA                -0.0262383   -0.1006241    0.0431200
0-6 months    JiVitA-4       BANGLADESH    >=50 cm              NA                -0.0947702   -0.2203458    0.0178835
0-6 months    Keneba         GAMBIA        >=50 cm              NA                -0.0556142   -0.0873914   -0.0247656
0-6 months    NIH-Birth      BANGLADESH    >=50 cm              NA                -0.0168413   -0.1740128    0.1192888
0-6 months    PROVIDE        BANGLADESH    >=50 cm              NA                -0.0539730   -0.1881476    0.0650496
0-6 months    SAS-CompFeed   INDIA         >=50 cm              NA                -0.0394049   -0.3665245    0.2094086
0-6 months    ZVITAMBO       ZIMBABWE      >=50 cm              NA                -0.0596555   -0.0857388   -0.0341988
6-24 months   COHORTS        PHILIPPINES   >=50 cm              NA                -0.1395943   -0.2586804   -0.0317752
6-24 months   GMS-Nepal      NEPAL         >=50 cm              NA                -0.3174279   -0.6106459   -0.0775902
6-24 months   IRC            INDIA         >=50 cm              NA                 0.0823268   -0.2192741    0.3093234
6-24 months   JiVitA-4       BANGLADESH    >=50 cm              NA                 0.0683973   -0.2059899    0.2803559
6-24 months   Keneba         GAMBIA        >=50 cm              NA                -0.0679073   -0.1561938    0.0136377
6-24 months   NIH-Birth      BANGLADESH    >=50 cm              NA                -0.3948250   -1.1644523    0.1011413
6-24 months   SAS-CompFeed   INDIA         >=50 cm              NA                -0.3122963   -0.8838883    0.0858685
6-24 months   ZVITAMBO       ZIMBABWE      >=50 cm              NA                 0.1039006   -0.3973693    0.4253530
