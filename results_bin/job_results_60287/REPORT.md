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

**Intervention Variable:** birthwt

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

agecat      studyid          country                        birthwt                       wasted   n_cell       n
----------  ---------------  -----------------------------  ---------------------------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight         0       71      86
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight         1        5      86
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                    0        4      86
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                    1        6      86
Birth       CMIN             BANGLADESH                     Normal or high birthweight         0       13      19
Birth       CMIN             BANGLADESH                     Normal or high birthweight         1        1      19
Birth       CMIN             BANGLADESH                     Low birthweight                    0        2      19
Birth       CMIN             BANGLADESH                     Low birthweight                    1        3      19
Birth       COHORTS          GUATEMALA                      Normal or high birthweight         0      540     756
Birth       COHORTS          GUATEMALA                      Normal or high birthweight         1      162     756
Birth       COHORTS          GUATEMALA                      Low birthweight                    0       24     756
Birth       COHORTS          GUATEMALA                      Low birthweight                    1       30     756
Birth       COHORTS          INDIA                          Normal or high birthweight         0     4632    6193
Birth       COHORTS          INDIA                          Normal or high birthweight         1      546    6193
Birth       COHORTS          INDIA                          Low birthweight                    0      465    6193
Birth       COHORTS          INDIA                          Low birthweight                    1      550    6193
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight         0     2371    2899
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight         1      317    2899
Birth       COHORTS          PHILIPPINES                    Low birthweight                    0       77    2899
Birth       COHORTS          PHILIPPINES                    Low birthweight                    1      134    2899
Birth       CONTENT          PERU                           Normal or high birthweight         0        2       2
Birth       CONTENT          PERU                           Normal or high birthweight         1        0       2
Birth       CONTENT          PERU                           Low birthweight                    0        0       2
Birth       CONTENT          PERU                           Low birthweight                    1        0       2
Birth       EE               PAKISTAN                       Normal or high birthweight         0      127     177
Birth       EE               PAKISTAN                       Normal or high birthweight         1       11     177
Birth       EE               PAKISTAN                       Low birthweight                    0       28     177
Birth       EE               PAKISTAN                       Low birthweight                    1       11     177
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight         0      423     641
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight         1       49     641
Birth       GMS-Nepal        NEPAL                          Low birthweight                    0       86     641
Birth       GMS-Nepal        NEPAL                          Low birthweight                    1       83     641
Birth       IRC              INDIA                          Normal or high birthweight         0      234     343
Birth       IRC              INDIA                          Normal or high birthweight         1       62     343
Birth       IRC              INDIA                          Low birthweight                    0       17     343
Birth       IRC              INDIA                          Low birthweight                    1       30     343
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight         0    12126   18014
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight         1      461   18014
Birth       JiVitA-3         BANGLADESH                     Low birthweight                    0     3915   18014
Birth       JiVitA-3         BANGLADESH                     Low birthweight                    1     1512   18014
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight         0     1691    2396
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight         1       67    2396
Birth       JiVitA-4         BANGLADESH                     Low birthweight                    0      466    2396
Birth       JiVitA-4         BANGLADESH                     Low birthweight                    1      172    2396
Birth       Keneba           GAMBIA                         Normal or high birthweight         0     1015    1465
Birth       Keneba           GAMBIA                         Normal or high birthweight         1      258    1465
Birth       Keneba           GAMBIA                         Low birthweight                    0       87    1465
Birth       Keneba           GAMBIA                         Low birthweight                    1      105    1465
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight         0      157     215
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight         1       20     215
Birth       MAL-ED           BANGLADESH                     Low birthweight                    0       22     215
Birth       MAL-ED           BANGLADESH                     Low birthweight                    1       16     215
Birth       MAL-ED           BRAZIL                         Normal or high birthweight         0       59      62
Birth       MAL-ED           BRAZIL                         Normal or high birthweight         1        1      62
Birth       MAL-ED           BRAZIL                         Low birthweight                    0        1      62
Birth       MAL-ED           BRAZIL                         Low birthweight                    1        1      62
Birth       MAL-ED           INDIA                          Normal or high birthweight         0       36      45
Birth       MAL-ED           INDIA                          Normal or high birthweight         1        2      45
Birth       MAL-ED           INDIA                          Low birthweight                    0        4      45
Birth       MAL-ED           INDIA                          Low birthweight                    1        3      45
Birth       MAL-ED           NEPAL                          Normal or high birthweight         0       24      26
Birth       MAL-ED           NEPAL                          Normal or high birthweight         1        0      26
Birth       MAL-ED           NEPAL                          Low birthweight                    0        0      26
Birth       MAL-ED           NEPAL                          Low birthweight                    1        2      26
Birth       MAL-ED           PERU                           Normal or high birthweight         0      213     228
Birth       MAL-ED           PERU                           Normal or high birthweight         1        5     228
Birth       MAL-ED           PERU                           Low birthweight                    0       10     228
Birth       MAL-ED           PERU                           Low birthweight                    1        0     228
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight         0      104     120
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight         1       11     120
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                    0        4     120
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                    1        1     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0      113     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0        1     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    1        1     115
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight         0      347     575
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight         1       74     575
Birth       NIH-Birth        BANGLADESH                     Low birthweight                    0       60     575
Birth       NIH-Birth        BANGLADESH                     Low birthweight                    1       94     575
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight         0      471     707
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight         1       83     707
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                    0       64     707
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                    1       89     707
Birth       PROBIT           BELARUS                        Normal or high birthweight         0    10911   13817
Birth       PROBIT           BELARUS                        Normal or high birthweight         1     2906   13817
Birth       PROBIT           BELARUS                        Low birthweight                    0        0   13817
Birth       PROBIT           BELARUS                        Low birthweight                    1        0   13817
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight         0      351     532
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight         1       50     532
Birth       PROVIDE          BANGLADESH                     Low birthweight                    0       64     532
Birth       PROVIDE          BANGLADESH                     Low birthweight                    1       67     532
Birth       ResPak           PAKISTAN                       Normal or high birthweight         0       32      38
Birth       ResPak           PAKISTAN                       Normal or high birthweight         1        2      38
Birth       ResPak           PAKISTAN                       Low birthweight                    0        2      38
Birth       ResPak           PAKISTAN                       Low birthweight                    1        2      38
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight         0      861    1103
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight         1       33    1103
Birth       SAS-CompFeed     INDIA                          Low birthweight                    0      124    1103
Birth       SAS-CompFeed     INDIA                          Low birthweight                    1       85    1103
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight         0    10392   12917
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight         1     1222   12917
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                    0      464   12917
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                    1      839   12917
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight         0      283     360
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight         1       34     360
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                    0       33     360
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                    1       10     360
6 months    CMIN             BANGLADESH                     Normal or high birthweight         0        8      12
6 months    CMIN             BANGLADESH                     Normal or high birthweight         1        1      12
6 months    CMIN             BANGLADESH                     Low birthweight                    0        3      12
6 months    CMIN             BANGLADESH                     Low birthweight                    1        0      12
6 months    COHORTS          GUATEMALA                      Normal or high birthweight         0      682     774
6 months    COHORTS          GUATEMALA                      Normal or high birthweight         1       22     774
6 months    COHORTS          GUATEMALA                      Low birthweight                    0       67     774
6 months    COHORTS          GUATEMALA                      Low birthweight                    1        3     774
6 months    COHORTS          INDIA                          Normal or high birthweight         0     4503    6252
6 months    COHORTS          INDIA                          Normal or high birthweight         1      497    6252
6 months    COHORTS          INDIA                          Low birthweight                    0      947    6252
6 months    COHORTS          INDIA                          Low birthweight                    1      305    6252
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight         0     2282    2664
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight         1      134    2664
6 months    COHORTS          PHILIPPINES                    Low birthweight                    0      224    2664
6 months    COHORTS          PHILIPPINES                    Low birthweight                    1       24    2664
6 months    CONTENT          PERU                           Normal or high birthweight         0        2       2
6 months    CONTENT          PERU                           Normal or high birthweight         1        0       2
6 months    CONTENT          PERU                           Low birthweight                    0        0       2
6 months    CONTENT          PERU                           Low birthweight                    1        0       2
6 months    EE               PAKISTAN                       Normal or high birthweight         0      215     374
6 months    EE               PAKISTAN                       Normal or high birthweight         1       28     374
6 months    EE               PAKISTAN                       Low birthweight                    0      112     374
6 months    EE               PAKISTAN                       Low birthweight                    1       19     374
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight         0      375     563
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight         1       22     563
6 months    GMS-Nepal        NEPAL                          Low birthweight                    0      137     563
6 months    GMS-Nepal        NEPAL                          Low birthweight                    1       29     563
6 months    IRC              INDIA                          Normal or high birthweight         0      294     402
6 months    IRC              INDIA                          Normal or high birthweight         1       40     402
6 months    IRC              INDIA                          Low birthweight                    0       55     402
6 months    IRC              INDIA                          Low birthweight                    1       13     402
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight         0     7829   14105
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight         1      509   14105
6 months    JiVitA-3         BANGLADESH                     Low birthweight                    0     5063   14105
6 months    JiVitA-3         BANGLADESH                     Low birthweight                    1      704   14105
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight         0     2869    4045
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight         1      136    4045
6 months    JiVitA-4         BANGLADESH                     Low birthweight                    0      959    4045
6 months    JiVitA-4         BANGLADESH                     Low birthweight                    1       81    4045
6 months    Keneba           GAMBIA                         Normal or high birthweight         0     1084    1334
6 months    Keneba           GAMBIA                         Normal or high birthweight         1       62    1334
6 months    Keneba           GAMBIA                         Low birthweight                    0      176    1334
6 months    Keneba           GAMBIA                         Low birthweight                    1       12    1334
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight         0      182     238
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight         1        6     238
6 months    MAL-ED           BANGLADESH                     Low birthweight                    0       48     238
6 months    MAL-ED           BANGLADESH                     Low birthweight                    1        2     238
6 months    MAL-ED           BRAZIL                         Normal or high birthweight         0      198     209
6 months    MAL-ED           BRAZIL                         Normal or high birthweight         1        1     209
6 months    MAL-ED           BRAZIL                         Low birthweight                    0       10     209
6 months    MAL-ED           BRAZIL                         Low birthweight                    1        0     209
6 months    MAL-ED           INDIA                          Normal or high birthweight         0      177     227
6 months    MAL-ED           INDIA                          Normal or high birthweight         1       16     227
6 months    MAL-ED           INDIA                          Low birthweight                    0       31     227
6 months    MAL-ED           INDIA                          Low birthweight                    1        3     227
6 months    MAL-ED           NEPAL                          Normal or high birthweight         0      207     229
6 months    MAL-ED           NEPAL                          Normal or high birthweight         1        3     229
6 months    MAL-ED           NEPAL                          Low birthweight                    0       19     229
6 months    MAL-ED           NEPAL                          Low birthweight                    1        0     229
6 months    MAL-ED           PERU                           Normal or high birthweight         0      254     270
6 months    MAL-ED           PERU                           Normal or high birthweight         1        0     270
6 months    MAL-ED           PERU                           Low birthweight                    0       16     270
6 months    MAL-ED           PERU                           Low birthweight                    1        0     270
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight         0      232     253
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight         1        6     253
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                    0       14     253
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                    1        1     253
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0      177     186
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        0     186
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0        9     186
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    1        0     186
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight         0      349     518
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight         1       18     518
6 months    NIH-Birth        BANGLADESH                     Low birthweight                    0      134     518
6 months    NIH-Birth        BANGLADESH                     Low birthweight                    1       17     518
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight         0      534     715
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight         1       11     715
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                    0      160     715
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                    1       10     715
6 months    PROBIT           BELARUS                        Normal or high birthweight         0    15649   15757
6 months    PROBIT           BELARUS                        Normal or high birthweight         1      108   15757
6 months    PROBIT           BELARUS                        Low birthweight                    0        0   15757
6 months    PROBIT           BELARUS                        Low birthweight                    1        0   15757
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight         0      450     603
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight         1       10     603
6 months    PROVIDE          BANGLADESH                     Low birthweight                    0      128     603
6 months    PROVIDE          BANGLADESH                     Low birthweight                    1       15     603
6 months    ResPak           PAKISTAN                       Normal or high birthweight         0       27      34
6 months    ResPak           PAKISTAN                       Normal or high birthweight         1        2      34
6 months    ResPak           PAKISTAN                       Low birthweight                    0        5      34
6 months    ResPak           PAKISTAN                       Low birthweight                    1        0      34
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight         0      893    1324
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight         1      108    1324
6 months    SAS-CompFeed     INDIA                          Low birthweight                    0      267    1324
6 months    SAS-CompFeed     INDIA                          Low birthweight                    1       56    1324
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0     1861    2010
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1       82    2010
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       63    2010
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    1        4    2010
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight         0     7188    8473
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight         1      217    8473
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                    0     1021    8473
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                    1       47    8473
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight         0      306     364
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight         1       15     364
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                    0       36     364
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                    1        7     364
24 months   CMIN             BANGLADESH                     Normal or high birthweight         0        8      11
24 months   CMIN             BANGLADESH                     Normal or high birthweight         1        0      11
24 months   CMIN             BANGLADESH                     Low birthweight                    0        3      11
24 months   CMIN             BANGLADESH                     Low birthweight                    1        0      11
24 months   COHORTS          GUATEMALA                      Normal or high birthweight         0      578     657
24 months   COHORTS          GUATEMALA                      Normal or high birthweight         1       17     657
24 months   COHORTS          GUATEMALA                      Low birthweight                    0       53     657
24 months   COHORTS          GUATEMALA                      Low birthweight                    1        9     657
24 months   COHORTS          INDIA                          Normal or high birthweight         0     3617    4821
24 months   COHORTS          INDIA                          Normal or high birthweight         1      294    4821
24 months   COHORTS          INDIA                          Low birthweight                    0      766    4821
24 months   COHORTS          INDIA                          Low birthweight                    1      144    4821
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight         0     2063    2410
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight         1      132    2410
24 months   COHORTS          PHILIPPINES                    Low birthweight                    0      183    2410
24 months   COHORTS          PHILIPPINES                    Low birthweight                    1       32    2410
24 months   CONTENT          PERU                           Normal or high birthweight         0        2       2
24 months   CONTENT          PERU                           Normal or high birthweight         1        0       2
24 months   CONTENT          PERU                           Low birthweight                    0        0       2
24 months   CONTENT          PERU                           Low birthweight                    1        0       2
24 months   EE               PAKISTAN                       Normal or high birthweight         0       86     168
24 months   EE               PAKISTAN                       Normal or high birthweight         1       15     168
24 months   EE               PAKISTAN                       Low birthweight                    0       52     168
24 months   EE               PAKISTAN                       Low birthweight                    1       15     168
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight         0      302     486
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight         1       53     486
24 months   GMS-Nepal        NEPAL                          Low birthweight                    0       94     486
24 months   GMS-Nepal        NEPAL                          Low birthweight                    1       37     486
24 months   IRC              INDIA                          Normal or high birthweight         0      315     403
24 months   IRC              INDIA                          Normal or high birthweight         1       20     403
24 months   IRC              INDIA                          Low birthweight                    0       57     403
24 months   IRC              INDIA                          Low birthweight                    1       11     403
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight         0     3549    7282
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight         1      676    7282
24 months   JiVitA-3         BANGLADESH                     Low birthweight                    0     2144    7282
24 months   JiVitA-3         BANGLADESH                     Low birthweight                    1      913    7282
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight         0     2444    3997
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight         1      500    3997
24 months   JiVitA-4         BANGLADESH                     Low birthweight                    0      744    3997
24 months   JiVitA-4         BANGLADESH                     Low birthweight                    1      309    3997
24 months   Keneba           GAMBIA                         Normal or high birthweight         0      819    1057
24 months   Keneba           GAMBIA                         Normal or high birthweight         1       86    1057
24 months   Keneba           GAMBIA                         Low birthweight                    0      126    1057
24 months   Keneba           GAMBIA                         Low birthweight                    1       26    1057
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight         0      149     210
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight         1       16     210
24 months   MAL-ED           BANGLADESH                     Low birthweight                    0       41     210
24 months   MAL-ED           BANGLADESH                     Low birthweight                    1        4     210
24 months   MAL-ED           BRAZIL                         Normal or high birthweight         0      158     169
24 months   MAL-ED           BRAZIL                         Normal or high birthweight         1        3     169
24 months   MAL-ED           BRAZIL                         Low birthweight                    0        8     169
24 months   MAL-ED           BRAZIL                         Low birthweight                    1        0     169
24 months   MAL-ED           INDIA                          Normal or high birthweight         0      169     218
24 months   MAL-ED           INDIA                          Normal or high birthweight         1       16     218
24 months   MAL-ED           INDIA                          Low birthweight                    0       24     218
24 months   MAL-ED           INDIA                          Low birthweight                    1        9     218
24 months   MAL-ED           NEPAL                          Normal or high birthweight         0      200     221
24 months   MAL-ED           NEPAL                          Normal or high birthweight         1        3     221
24 months   MAL-ED           NEPAL                          Low birthweight                    0       18     221
24 months   MAL-ED           NEPAL                          Low birthweight                    1        0     221
24 months   MAL-ED           PERU                           Normal or high birthweight         0      185     199
24 months   MAL-ED           PERU                           Normal or high birthweight         1        2     199
24 months   MAL-ED           PERU                           Low birthweight                    0       10     199
24 months   MAL-ED           PERU                           Low birthweight                    1        2     199
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight         0      223     237
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight         1        1     237
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                    0       13     237
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                    1        0     237
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0      150     162
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        4     162
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0        8     162
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    1        0     162
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight         0      262     413
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight         1       24     413
24 months   NIH-Birth        BANGLADESH                     Low birthweight                    0       98     413
24 months   NIH-Birth        BANGLADESH                     Low birthweight                    1       29     413
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight         0      361     514
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight         1       27     514
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                    0      108     514
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                    1       18     514
24 months   PROBIT           BELARUS                        Normal or high birthweight         0     3938    3970
24 months   PROBIT           BELARUS                        Normal or high birthweight         1       32    3970
24 months   PROBIT           BELARUS                        Low birthweight                    0        0    3970
24 months   PROBIT           BELARUS                        Low birthweight                    1        0    3970
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight         0      407     579
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight         1       33     579
24 months   PROVIDE          BANGLADESH                     Low birthweight                    0      110     579
24 months   PROVIDE          BANGLADESH                     Low birthweight                    1       29     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0        6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    1        0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight         0      278     431
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight         1       59     431
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                    0       74     431
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                    1       20     431


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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




# Results Detail

## Results Plots
![](/tmp/cf9bd4ee-66ed-41c8-ac77-c7377d0d322e/27183b73-8300-4d01-9d08-1d315d215cc0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cf9bd4ee-66ed-41c8-ac77-c7377d0d322e/27183b73-8300-4d01-9d08-1d315d215cc0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cf9bd4ee-66ed-41c8-ac77-c7377d0d322e/27183b73-8300-4d01-9d08-1d315d215cc0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cf9bd4ee-66ed-41c8-ac77-c7377d0d322e/27183b73-8300-4d01-9d08-1d315d215cc0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country       intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA     Normal or high birthweight   NA                0.2302529   0.1990653   0.2614405
Birth       COHORTS          GUATEMALA     Low birthweight              NA                0.5944651   0.4659522   0.7229779
Birth       COHORTS          INDIA         Normal or high birthweight   NA                0.1060711   0.0976640   0.1144782
Birth       COHORTS          INDIA         Low birthweight              NA                0.5401384   0.5091615   0.5711153
Birth       COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.1181582   0.1059429   0.1303736
Birth       COHORTS          PHILIPPINES   Low birthweight              NA                0.6378997   0.5729599   0.7028395
Birth       EE               PAKISTAN      Normal or high birthweight   NA                0.0789309   0.0336533   0.1242084
Birth       EE               PAKISTAN      Low birthweight              NA                0.2257646   0.1005413   0.3509879
Birth       GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.1042658   0.0763690   0.1321627
Birth       GMS-Nepal        NEPAL         Low birthweight              NA                0.4912492   0.4140788   0.5684196
Birth       IRC              INDIA         Normal or high birthweight   NA                0.2091485   0.1626807   0.2556163
Birth       IRC              INDIA         Low birthweight              NA                0.6272885   0.4865205   0.7680566
Birth       JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0366879   0.0330687   0.0403070
Birth       JiVitA-3         BANGLADESH    Low birthweight              NA                0.2771939   0.2639759   0.2904119
Birth       JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0377444   0.0251708   0.0503180
Birth       JiVitA-4         BANGLADESH    Low birthweight              NA                0.2737151   0.2309923   0.3164380
Birth       Keneba           GAMBIA        Normal or high birthweight   NA                0.2034723   0.1813264   0.2256181
Birth       Keneba           GAMBIA        Low birthweight              NA                0.5403869   0.4695117   0.6112622
Birth       MAL-ED           BANGLADESH    Normal or high birthweight   NA                0.1132119   0.0663504   0.1600734
Birth       MAL-ED           BANGLADESH    Low birthweight              NA                0.4559365   0.2897677   0.6221052
Birth       NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.1756201   0.1391720   0.2120681
Birth       NIH-Birth        BANGLADESH    Low birthweight              NA                0.5783565   0.5024313   0.6542816
Birth       NIH-Crypto       BANGLADESH    Normal or high birthweight   NA                0.1499230   0.1201626   0.1796834
Birth       NIH-Crypto       BANGLADESH    Low birthweight              NA                0.5818420   0.5001851   0.6634989
Birth       PROVIDE          BANGLADESH    Normal or high birthweight   NA                0.1279794   0.0951967   0.1607621
Birth       PROVIDE          BANGLADESH    Low birthweight              NA                0.5037203   0.4123612   0.5950795
Birth       SAS-CompFeed     INDIA         Normal or high birthweight   NA                0.0371445   0.0215508   0.0527381
Birth       SAS-CompFeed     INDIA         Low birthweight              NA                0.3777103   0.3069024   0.4485182
Birth       ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.1054750   0.0998899   0.1110601
Birth       ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.6376675   0.6114973   0.6638377
6 months    CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1068327   0.0727101   0.1409554
6 months    CMC-V-BCS-2002   INDIA         Low birthweight              NA                0.2212783   0.0904934   0.3520631
6 months    COHORTS          INDIA         Normal or high birthweight   NA                0.0997659   0.0914360   0.1080959
6 months    COHORTS          INDIA         Low birthweight              NA                0.2411687   0.2170981   0.2652392
6 months    COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0552878   0.0461666   0.0644090
6 months    COHORTS          PHILIPPINES   Low birthweight              NA                0.0978905   0.0614269   0.1343541
6 months    EE               PAKISTAN      Normal or high birthweight   NA                0.1127059   0.0724545   0.1529573
6 months    EE               PAKISTAN      Low birthweight              NA                0.1794404   0.1146795   0.2442012
6 months    GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0543172   0.0318200   0.0768145
6 months    GMS-Nepal        NEPAL         Low birthweight              NA                0.1749040   0.1171510   0.2326570
6 months    IRC              INDIA         Normal or high birthweight   NA                0.1199755   0.0850756   0.1548754
6 months    IRC              INDIA         Low birthweight              NA                0.1926098   0.0986330   0.2865865
6 months    JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0604640   0.0548761   0.0660520
6 months    JiVitA-3         BANGLADESH    Low birthweight              NA                0.1237272   0.1133709   0.1340835
6 months    JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0455151   0.0343112   0.0567191
6 months    JiVitA-4         BANGLADESH    Low birthweight              NA                0.0754112   0.0580199   0.0928026
6 months    Keneba           GAMBIA        Normal or high birthweight   NA                0.0542978   0.0411407   0.0674548
6 months    Keneba           GAMBIA        Low birthweight              NA                0.0640386   0.0277712   0.1003060
6 months    NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0488304   0.0267356   0.0709252
6 months    NIH-Birth        BANGLADESH    Low birthweight              NA                0.1187429   0.0688913   0.1685945
6 months    NIH-Crypto       BANGLADESH    Normal or high birthweight   NA                0.0200130   0.0082309   0.0317950
6 months    NIH-Crypto       BANGLADESH    Low birthweight              NA                0.0598202   0.0240145   0.0956259
6 months    PROVIDE          BANGLADESH    Normal or high birthweight   NA                0.0222830   0.0086639   0.0359021
6 months    PROVIDE          BANGLADESH    Low birthweight              NA                0.1041259   0.0519293   0.1563225
6 months    SAS-CompFeed     INDIA         Normal or high birthweight   NA                0.1074029   0.0773231   0.1374827
6 months    SAS-CompFeed     INDIA         Low birthweight              NA                0.1763690   0.1384321   0.2143059
6 months    ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0292942   0.0254525   0.0331359
6 months    ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.0445921   0.0323037   0.0568806
24 months   CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0467290   0.0236086   0.0698493
24 months   CMC-V-BCS-2002   INDIA         Low birthweight              NA                0.1627907   0.0522956   0.2732858
24 months   COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0285714   0.0151749   0.0419679
24 months   COHORTS          GUATEMALA     Low birthweight              NA                0.1451613   0.0574106   0.2329120
24 months   COHORTS          INDIA         Normal or high birthweight   NA                0.0757711   0.0674770   0.0840653
24 months   COHORTS          INDIA         Low birthweight              NA                0.1556764   0.1318022   0.1795506
24 months   COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0604500   0.0504815   0.0704185
24 months   COHORTS          PHILIPPINES   Low birthweight              NA                0.1431872   0.0959408   0.1904337
24 months   EE               PAKISTAN      Normal or high birthweight   NA                0.1492646   0.0795507   0.2189786
24 months   EE               PAKISTAN      Low birthweight              NA                0.2293559   0.1278163   0.3308956
24 months   GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.1485452   0.1110322   0.1860582
24 months   GMS-Nepal        NEPAL         Low birthweight              NA                0.2819314   0.2016043   0.3622586
24 months   IRC              INDIA         Normal or high birthweight   NA                0.0599191   0.0344933   0.0853449
24 months   IRC              INDIA         Low birthweight              NA                0.1775853   0.0896386   0.2655319
24 months   JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.1582075   0.1455609   0.1708541
24 months   JiVitA-3         BANGLADESH    Low birthweight              NA                0.3054756   0.2878631   0.3230880
24 months   JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.1698275   0.1531605   0.1864946
24 months   JiVitA-4         BANGLADESH    Low birthweight              NA                0.2907993   0.2585760   0.3230227
24 months   Keneba           GAMBIA        Normal or high birthweight   NA                0.0957759   0.0765891   0.1149628
24 months   Keneba           GAMBIA        Low birthweight              NA                0.1634983   0.1038406   0.2231561
24 months   MAL-ED           INDIA         Normal or high birthweight   NA                0.0864865   0.0458896   0.1270833
24 months   MAL-ED           INDIA         Low birthweight              NA                0.2727273   0.1204264   0.4250282
24 months   NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0837660   0.0515040   0.1160279
24 months   NIH-Birth        BANGLADESH    Low birthweight              NA                0.2258495   0.1517830   0.2999160
24 months   NIH-Crypto       BANGLADESH    Normal or high birthweight   NA                0.0690593   0.0436649   0.0944536
24 months   NIH-Crypto       BANGLADESH    Low birthweight              NA                0.1367958   0.0748084   0.1987832
24 months   PROVIDE          BANGLADESH    Normal or high birthweight   NA                0.0757181   0.0509888   0.1004474
24 months   PROVIDE          BANGLADESH    Low birthweight              NA                0.2067490   0.1382158   0.2752822
24 months   ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.1747726   0.1341866   0.2153586
24 months   ZVITAMBO         ZIMBABWE      Low birthweight              NA                0.2031045   0.1193493   0.2868597


### Parameter: E(Y)


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA     NA                   NA                0.2539683   0.2229196   0.2850169
Birth       COHORTS          INDIA         NA                   NA                0.1769740   0.1674681   0.1864799
Birth       COHORTS          PHILIPPINES   NA                   NA                0.1555709   0.1423748   0.1687670
Birth       EE               PAKISTAN      NA                   NA                0.1242938   0.0755526   0.1730349
Birth       GMS-Nepal        NEPAL         NA                   NA                0.2059282   0.1745993   0.2372572
Birth       IRC              INDIA         NA                   NA                0.2682216   0.2212677   0.3151755
Birth       JiVitA-3         BANGLADESH    NA                   NA                0.1095259   0.1044047   0.1146471
Birth       JiVitA-4         BANGLADESH    NA                   NA                0.0997496   0.0843744   0.1151247
Birth       Keneba           GAMBIA        NA                   NA                0.2477816   0.2256667   0.2698964
Birth       MAL-ED           BANGLADESH    NA                   NA                0.1674419   0.1174176   0.2174661
Birth       NIH-Birth        BANGLADESH    NA                   NA                0.2921739   0.2549711   0.3293768
Birth       NIH-Crypto       BANGLADESH    NA                   NA                0.2432815   0.2116319   0.2749310
Birth       PROVIDE          BANGLADESH    NA                   NA                0.2199248   0.1846953   0.2551543
Birth       SAS-CompFeed     INDIA         NA                   NA                0.1069810   0.0760961   0.1378659
Birth       ZVITAMBO         ZIMBABWE      NA                   NA                0.1595572   0.1532418   0.1658725
6 months    CMC-V-BCS-2002   INDIA         NA                   NA                0.1222222   0.0883403   0.1561042
6 months    COHORTS          INDIA         NA                   NA                0.1282790   0.1199892   0.1365687
6 months    COHORTS          PHILIPPINES   NA                   NA                0.0593093   0.0503382   0.0682804
6 months    EE               PAKISTAN      NA                   NA                0.1256684   0.0920293   0.1593076
6 months    GMS-Nepal        NEPAL         NA                   NA                0.0905861   0.0668565   0.1143158
6 months    IRC              INDIA         NA                   NA                0.1318408   0.0987276   0.1649539
6 months    JiVitA-3         BANGLADESH    NA                   NA                0.0859979   0.0808738   0.0911219
6 months    JiVitA-4         BANGLADESH    NA                   NA                0.0536465   0.0439582   0.0633347
6 months    Keneba           GAMBIA        NA                   NA                0.0554723   0.0431843   0.0677602
6 months    NIH-Birth        BANGLADESH    NA                   NA                0.0675676   0.0459314   0.0892038
6 months    NIH-Crypto       BANGLADESH    NA                   NA                0.0293706   0.0169860   0.0417552
6 months    PROVIDE          BANGLADESH    NA                   NA                0.0414594   0.0255348   0.0573839
6 months    SAS-CompFeed     INDIA         NA                   NA                0.1238671   0.0990601   0.1486741
6 months    ZVITAMBO         ZIMBABWE      NA                   NA                0.0311578   0.0274581   0.0348575
24 months   CMC-V-BCS-2002   INDIA         NA                   NA                0.0604396   0.0359254   0.0849538
24 months   COHORTS          GUATEMALA     NA                   NA                0.0395738   0.0246551   0.0544926
24 months   COHORTS          INDIA         NA                   NA                0.0908525   0.0827390   0.0989661
24 months   COHORTS          PHILIPPINES   NA                   NA                0.0680498   0.0579935   0.0781061
24 months   EE               PAKISTAN      NA                   NA                0.1785714   0.1204842   0.2366587
24 months   GMS-Nepal        NEPAL         NA                   NA                0.1851852   0.1506144   0.2197560
24 months   IRC              INDIA         NA                   NA                0.0769231   0.0508746   0.1029716
24 months   JiVitA-3         BANGLADESH    NA                   NA                0.2182093   0.2074424   0.2289762
24 months   JiVitA-4         BANGLADESH    NA                   NA                0.2024018   0.1878193   0.2169843
24 months   Keneba           GAMBIA        NA                   NA                0.1059603   0.0873965   0.1245240
24 months   MAL-ED           INDIA         NA                   NA                0.1146789   0.0722843   0.1570735
24 months   NIH-Birth        BANGLADESH    NA                   NA                0.1283293   0.0960341   0.1606245
24 months   NIH-Crypto       BANGLADESH    NA                   NA                0.0875486   0.0630907   0.1120065
24 months   PROVIDE          BANGLADESH    NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ZVITAMBO         ZIMBABWE      NA                   NA                0.1832947   0.1467250   0.2198644


### Parameter: RR


agecat      studyid          country       intervention_level           baseline_level                 estimate    ci_lower    ci_upper
----------  ---------------  ------------  ---------------------------  ---------------------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       COHORTS          GUATEMALA     Low birthweight              Normal or high birthweight     2.581792   2.0019000    3.329661
Birth       COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       COHORTS          INDIA         Low birthweight              Normal or high birthweight     5.092228   4.6173554    5.615940
Birth       COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight     5.398691   4.6701730    6.240852
Birth       EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       EE               PAKISTAN      Low birthweight              Normal or high birthweight     2.860283   1.2837839    6.372738
Birth       GMS-Nepal        NEPAL         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       GMS-Nepal        NEPAL         Low birthweight              Normal or high birthweight     4.711506   3.4522795    6.430039
Birth       IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       IRC              INDIA         Low birthweight              Normal or high birthweight     2.999250   2.1864170    4.114265
Birth       JiVitA-3         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       JiVitA-3         BANGLADESH    Low birthweight              Normal or high birthweight     7.555465   6.7742966    8.426713
Birth       JiVitA-4         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       JiVitA-4         BANGLADESH    Low birthweight              Normal or high birthweight     7.251807   5.0384417   10.437493
Birth       Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       Keneba           GAMBIA        Low birthweight              Normal or high birthweight     2.655826   2.2397197    3.149238
Birth       MAL-ED           BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       MAL-ED           BANGLADESH    Low birthweight              Normal or high birthweight     4.027284   2.3197444    6.991724
Birth       NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       NIH-Birth        BANGLADESH    Low birthweight              Normal or high birthweight     3.293225   2.5764593    4.209394
Birth       NIH-Crypto       BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       NIH-Crypto       BANGLADESH    Low birthweight              Normal or high birthweight     3.880939   3.0420088    4.951230
Birth       PROVIDE          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       PROVIDE          BANGLADESH    Low birthweight              Normal or high birthweight     3.935950   2.8771725    5.384349
Birth       SAS-CompFeed     INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       SAS-CompFeed     INDIA         Low birthweight              Normal or high birthweight    10.168681   6.3834822   16.198382
Birth       ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight     6.045673   5.6541270    6.464333
6 months    CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    CMC-V-BCS-2002   INDIA         Low birthweight              Normal or high birthweight     2.071259   1.0577075    4.056048
6 months    COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    COHORTS          INDIA         Low birthweight              Normal or high birthweight     2.417345   2.1226883    2.752904
6 months    COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight     1.770561   1.1782231    2.660690
6 months    EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    EE               PAKISTAN      Low birthweight              Normal or high birthweight     1.592112   0.9552941    2.653444
6 months    GMS-Nepal        NEPAL         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    GMS-Nepal        NEPAL         Low birthweight              Normal or high birthweight     3.220047   1.8906912    5.484081
6 months    IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    IRC              INDIA         Low birthweight              Normal or high birthweight     1.605409   0.9094922    2.833821
6 months    JiVitA-3         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    JiVitA-3         BANGLADESH    Low birthweight              Normal or high birthweight     2.046294   1.8034077    2.321894
6 months    JiVitA-4         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    JiVitA-4         BANGLADESH    Low birthweight              Normal or high birthweight     1.656839   1.1813589    2.323694
6 months    Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    Keneba           GAMBIA        Low birthweight              Normal or high birthweight     1.179397   0.6368192    2.184258
6 months    NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    NIH-Birth        BANGLADESH    Low birthweight              Normal or high birthweight     2.431742   1.3113131    4.509504
6 months    NIH-Crypto       BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    NIH-Crypto       BANGLADESH    Low birthweight              Normal or high birthweight     2.989070   1.2919415    6.915589
6 months    PROVIDE          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    PROVIDE          BANGLADESH    Low birthweight              Normal or high birthweight     4.672882   2.1187796   10.305849
6 months    SAS-CompFeed     INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    SAS-CompFeed     INDIA         Low birthweight              Normal or high birthweight     1.642125   1.1832520    2.278951
6 months    ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight     1.522217   1.1218817    2.065410
24 months   CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   CMC-V-BCS-2002   INDIA         Low birthweight              Normal or high birthweight     3.483721   1.5040379    8.069153
24 months   COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   COHORTS          GUATEMALA     Low birthweight              Normal or high birthweight     5.080645   2.3641232   10.918617
24 months   COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   COHORTS          INDIA         Low birthweight              Normal or high birthweight     2.054561   1.7028957    2.478849
24 months   COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   COHORTS          PHILIPPINES   Low birthweight              Normal or high birthweight     2.368689   1.6385902    3.424093
24 months   EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   EE               PAKISTAN      Low birthweight              Normal or high birthweight     1.536572   0.8059946    2.929367
24 months   GMS-Nepal        NEPAL         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   GMS-Nepal        NEPAL         Low birthweight              Normal or high birthweight     1.897951   1.2953906    2.780796
24 months   IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   IRC              INDIA         Low birthweight              Normal or high birthweight     2.963751   1.5433357    5.691449
24 months   JiVitA-3         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   JiVitA-3         BANGLADESH    Low birthweight              Normal or high birthweight     1.930854   1.7525712    2.127272
24 months   JiVitA-4         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   JiVitA-4         BANGLADESH    Low birthweight              Normal or high birthweight     1.712322   1.4714749    1.992590
24 months   Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   Keneba           GAMBIA        Low birthweight              Normal or high birthweight     1.707092   1.1279965    2.583486
24 months   MAL-ED           INDIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   MAL-ED           INDIA         Low birthweight              Normal or high birthweight     3.153409   1.5203970    6.540390
24 months   NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   NIH-Birth        BANGLADESH    Low birthweight              Normal or high birthweight     2.696196   1.6201138    4.487014
24 months   NIH-Crypto       BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   NIH-Crypto       BANGLADESH    Low birthweight              Normal or high birthweight     1.980847   1.1047359    3.551758
24 months   PROVIDE          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   PROVIDE          BANGLADESH    Low birthweight              Normal or high birthweight     2.730509   1.7139782    4.349928
24 months   ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ZVITAMBO         ZIMBABWE      Low birthweight              Normal or high birthweight     1.162107   0.7252678    1.862062


### Parameter: PAR


agecat      studyid          country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0237154    0.0122764   0.0351543
Birth       COHORTS          INDIA         Normal or high birthweight   NA                0.0709029    0.0643167   0.0774891
Birth       COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0374127    0.0305718   0.0442535
Birth       EE               PAKISTAN      Normal or high birthweight   NA                0.0453629    0.0097846   0.0809412
Birth       GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.1016624    0.0765651   0.1267597
Birth       IRC              INDIA         Normal or high birthweight   NA                0.0590731    0.0336243   0.0845219
Birth       JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0728381    0.0683147   0.0773614
Birth       JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0620052    0.0492768   0.0747335
Birth       Keneba           GAMBIA        Normal or high birthweight   NA                0.0443093    0.0329942   0.0556244
Birth       MAL-ED           BANGLADESH    Normal or high birthweight   NA                0.0542300    0.0213058   0.0871541
Birth       NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.1165538    0.0886838   0.1444239
Birth       NIH-Crypto       BANGLADESH    Normal or high birthweight   NA                0.0933585    0.0708832   0.1158337
Birth       PROVIDE          BANGLADESH    Normal or high birthweight   NA                0.0919454    0.0651560   0.1187349
Birth       SAS-CompFeed     INDIA         Normal or high birthweight   NA                0.0698365    0.0462633   0.0934097
Birth       ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0540822    0.0502190   0.0579453
6 months    CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0153895   -0.0008626   0.0316415
6 months    COHORTS          INDIA         Normal or high birthweight   NA                0.0285130    0.0232593   0.0337668
6 months    COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0040215    0.0004564   0.0075866
6 months    EE               PAKISTAN      Normal or high birthweight   NA                0.0129625   -0.0130098   0.0389349
6 months    GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0362689    0.0173281   0.0552097
6 months    IRC              INDIA         Normal or high birthweight   NA                0.0118653   -0.0052559   0.0289865
6 months    JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0255338    0.0208858   0.0301819
6 months    JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0081314    0.0027713   0.0134914
6 months    Keneba           GAMBIA        Normal or high birthweight   NA                0.0011745   -0.0041248   0.0064738
6 months    NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0187372    0.0024811   0.0349933
6 months    NIH-Crypto       BANGLADESH    Normal or high birthweight   NA                0.0093576    0.0004315   0.0182838
6 months    PROVIDE          BANGLADESH    Normal or high birthweight   NA                0.0191764    0.0064332   0.0319195
6 months    SAS-CompFeed     INDIA         Normal or high birthweight   NA                0.0164642    0.0045712   0.0283571
6 months    ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0018636    0.0002372   0.0034900
24 months   CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0137106   -0.0001707   0.0275919
24 months   COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0110024    0.0022289   0.0197759
24 months   COHORTS          INDIA         Normal or high birthweight   NA                0.0150814    0.0102863   0.0198765
24 months   COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0075998    0.0031739   0.0120257
24 months   EE               PAKISTAN      Normal or high birthweight   NA                0.0293068   -0.0198497   0.0784633
24 months   GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.0366400    0.0124351   0.0608449
24 months   IRC              INDIA         Normal or high birthweight   NA                0.0170040    0.0011208   0.0328871
24 months   JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0600018    0.0509298   0.0690737
24 months   JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0325743    0.0227416   0.0424070
24 months   Keneba           GAMBIA        Normal or high birthweight   NA                0.0101843    0.0010581   0.0193105
24 months   MAL-ED           INDIA         Normal or high birthweight   NA                0.0281924    0.0027333   0.0536515
24 months   NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0445633    0.0189485   0.0701782
24 months   NIH-Crypto       BANGLADESH    Normal or high birthweight   NA                0.0184894    0.0019729   0.0350059
24 months   PROVIDE          BANGLADESH    Normal or high birthweight   NA                0.0313631    0.0134164   0.0493097
24 months   ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0085221   -0.0115216   0.0285657


### Parameter: PAF


agecat      studyid          country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0933792    0.0477472   0.1368245
Birth       COHORTS          INDIA         Normal or high birthweight   NA                0.4006401    0.3674842   0.4320581
Birth       COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.2404863    0.1989285   0.2798882
Birth       EE               PAKISTAN      Normal or high birthweight   NA                0.3649654    0.0517624   0.5747174
Birth       GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.4936787    0.3783512   0.5876108
Birth       IRC              INDIA         Normal or high birthweight   NA                0.2202398    0.1231877   0.3065495
Birth       JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.6650303    0.6353171   0.6923226
Birth       JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.6216084    0.5042445   0.7111878
Birth       Keneba           GAMBIA        Normal or high birthweight   NA                0.1788240    0.1332041   0.2220430
Birth       MAL-ED           BANGLADESH    Normal or high birthweight   NA                0.3238733    0.1192224   0.4809731
Birth       NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.3989194    0.3038522   0.4810040
Birth       NIH-Crypto       BANGLADESH    Normal or high birthweight   NA                0.3837467    0.2941372   0.4619803
Birth       PROVIDE          BANGLADESH    Normal or high birthweight   NA                0.4180767    0.2993083   0.5167137
Birth       SAS-CompFeed     INDIA         Normal or high birthweight   NA                0.6527936    0.5250189   0.7461957
Birth       ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.3389515    0.3173509   0.3598687
6 months    CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1259139   -0.0138553   0.2464146
6 months    COHORTS          INDIA         Normal or high birthweight   NA                0.2222736    0.1822942   0.2602983
6 months    COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0678052    0.0064949   0.1253320
6 months    EE               PAKISTAN      Normal or high birthweight   NA                0.1031487   -0.1278967   0.2868654
6 months    GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.4003805    0.1828913   0.5599807
6 months    IRC              INDIA         Normal or high birthweight   NA                0.0899972   -0.0479030   0.2097503
6 months    JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.2969124    0.2443835   0.3457896
6 months    JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.1515730    0.0405463   0.2497519
6 months    Keneba           GAMBIA        Normal or high birthweight   NA                0.0211729   -0.0790654   0.1120997
6 months    NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.2773104    0.0124075   0.4711581
6 months    NIH-Crypto       BANGLADESH    Normal or high birthweight   NA                0.3186056   -0.0201190   0.5448587
6 months    PROVIDE          BANGLADESH    Normal or high birthweight   NA                0.4625337    0.1394251   0.6643290
6 months    SAS-CompFeed     INDIA         Normal or high birthweight   NA                0.1329179    0.0203099   0.2325825
6 months    ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0598118    0.0066100   0.1101643
24 months   CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.2268479   -0.0176306   0.4125922
24 months   COHORTS          GUATEMALA     Normal or high birthweight   NA                0.2780220    0.0514908   0.4504510
24 months   COHORTS          INDIA         Normal or high birthweight   NA                0.1659987    0.1133909   0.2154850
24 months   COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.1116798    0.0462335   0.1726352
24 months   EE               PAKISTAN      Normal or high birthweight   NA                0.1641180   -0.1569838   0.3961033
24 months   GMS-Nepal        NEPAL         Normal or high birthweight   NA                0.1978560    0.0595004   0.3158584
24 months   IRC              INDIA         Normal or high birthweight   NA                0.2210517    0.0008232   0.3927396
24 months   JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.2749734    0.2326579   0.3149555
24 months   JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.1609387    0.1108098   0.2082415
24 months   Keneba           GAMBIA        Normal or high birthweight   NA                0.0961146    0.0072160   0.1770528
24 months   MAL-ED           INDIA         Normal or high birthweight   NA                0.2458378    0.0083077   0.4264748
24 months   NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.3472576    0.1356365   0.5070678
24 months   NIH-Crypto       BANGLADESH    Normal or high birthweight   NA                0.2111897    0.0074599   0.3731018
24 months   PROVIDE          BANGLADESH    Normal or high birthweight   NA                0.2928906    0.1196697   0.4320272
24 months   ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0464937   -0.0691648   0.1496407
