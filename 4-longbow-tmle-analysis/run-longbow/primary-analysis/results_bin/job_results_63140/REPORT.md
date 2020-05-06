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

**Intervention Variable:** enwast

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

agecat      studyid          country                        enwast    sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0                0       75      87  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          0                1        0      87  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                0       11      87  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                1        1      87  sstunted         
Birth       CMIN             BANGLADESH                     0                0       15      19  sstunted         
Birth       CMIN             BANGLADESH                     0                1        0      19  sstunted         
Birth       CMIN             BANGLADESH                     1                0        4      19  sstunted         
Birth       CMIN             BANGLADESH                     1                1        0      19  sstunted         
Birth       COHORTS          GUATEMALA                      0                0      564     762  sstunted         
Birth       COHORTS          GUATEMALA                      0                1        0     762  sstunted         
Birth       COHORTS          GUATEMALA                      1                0      198     762  sstunted         
Birth       COHORTS          GUATEMALA                      1                1        0     762  sstunted         
Birth       COHORTS          INDIA                          0                0     5097    6231  sstunted         
Birth       COHORTS          INDIA                          0                1        0    6231  sstunted         
Birth       COHORTS          INDIA                          1                0     1134    6231  sstunted         
Birth       COHORTS          INDIA                          1                1        0    6231  sstunted         
Birth       COHORTS          PHILIPPINES                    0                0     2448    2910  sstunted         
Birth       COHORTS          PHILIPPINES                    0                1        0    2910  sstunted         
Birth       COHORTS          PHILIPPINES                    1                0      462    2910  sstunted         
Birth       COHORTS          PHILIPPINES                    1                1        0    2910  sstunted         
Birth       CONTENT          PERU                           0                0        2       2  sstunted         
Birth       CONTENT          PERU                           0                1        0       2  sstunted         
Birth       CONTENT          PERU                           1                0        0       2  sstunted         
Birth       CONTENT          PERU                           1                1        0       2  sstunted         
Birth       EE               PAKISTAN                       0                0      154     180  sstunted         
Birth       EE               PAKISTAN                       0                1        1     180  sstunted         
Birth       EE               PAKISTAN                       1                0       25     180  sstunted         
Birth       EE               PAKISTAN                       1                1        0     180  sstunted         
Birth       GMS-Nepal        NEPAL                          0                0      509     645  sstunted         
Birth       GMS-Nepal        NEPAL                          0                1        0     645  sstunted         
Birth       GMS-Nepal        NEPAL                          1                0      136     645  sstunted         
Birth       GMS-Nepal        NEPAL                          1                1        0     645  sstunted         
Birth       IRC              INDIA                          0                0      251     364  sstunted         
Birth       IRC              INDIA                          0                1        0     364  sstunted         
Birth       IRC              INDIA                          1                0      113     364  sstunted         
Birth       IRC              INDIA                          1                1        0     364  sstunted         
Birth       JiVitA-3         BANGLADESH                     0                0    16036   18062  sstunted         
Birth       JiVitA-3         BANGLADESH                     0                1        5   18062  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                0     2019   18062  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                1        2   18062  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                0     2156    2399  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                1        1    2399  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                0      242    2399  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                1        0    2399  sstunted         
Birth       Keneba           GAMBIA                         0                0     1102    1488  sstunted         
Birth       Keneba           GAMBIA                         0                1        0    1488  sstunted         
Birth       Keneba           GAMBIA                         1                0      386    1488  sstunted         
Birth       Keneba           GAMBIA                         1                1        0    1488  sstunted         
Birth       MAL-ED           BANGLADESH                     0                0      178     215  sstunted         
Birth       MAL-ED           BANGLADESH                     0                1        1     215  sstunted         
Birth       MAL-ED           BANGLADESH                     1                0       36     215  sstunted         
Birth       MAL-ED           BANGLADESH                     1                1        0     215  sstunted         
Birth       MAL-ED           BRAZIL                         0                0       59      62  sstunted         
Birth       MAL-ED           BRAZIL                         0                1        1      62  sstunted         
Birth       MAL-ED           BRAZIL                         1                0        2      62  sstunted         
Birth       MAL-ED           BRAZIL                         1                1        0      62  sstunted         
Birth       MAL-ED           INDIA                          0                0       40      45  sstunted         
Birth       MAL-ED           INDIA                          0                1        0      45  sstunted         
Birth       MAL-ED           INDIA                          1                0        5      45  sstunted         
Birth       MAL-ED           INDIA                          1                1        0      45  sstunted         
Birth       MAL-ED           NEPAL                          0                0       24      26  sstunted         
Birth       MAL-ED           NEPAL                          0                1        0      26  sstunted         
Birth       MAL-ED           NEPAL                          1                0        2      26  sstunted         
Birth       MAL-ED           NEPAL                          1                1        0      26  sstunted         
Birth       MAL-ED           PERU                           0                0      222     228  sstunted         
Birth       MAL-ED           PERU                           0                1        1     228  sstunted         
Birth       MAL-ED           PERU                           1                0        5     228  sstunted         
Birth       MAL-ED           PERU                           1                1        0     228  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                0      108     121  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                1        0     121  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                0       13     121  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                1        0     121  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      114     115  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        0     115  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        1     115  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     115  sstunted         
Birth       NIH-Birth        BANGLADESH                     0                0      407     580  sstunted         
Birth       NIH-Birth        BANGLADESH                     0                1        0     580  sstunted         
Birth       NIH-Birth        BANGLADESH                     1                0      173     580  sstunted         
Birth       NIH-Birth        BANGLADESH                     1                1        0     580  sstunted         
Birth       NIH-Crypto       BANGLADESH                     0                0      532     713  sstunted         
Birth       NIH-Crypto       BANGLADESH                     0                1        3     713  sstunted         
Birth       NIH-Crypto       BANGLADESH                     1                0      178     713  sstunted         
Birth       NIH-Crypto       BANGLADESH                     1                1        0     713  sstunted         
Birth       PROBIT           BELARUS                        0                0    10909   13886  sstunted         
Birth       PROBIT           BELARUS                        0                1        0   13886  sstunted         
Birth       PROBIT           BELARUS                        1                0     2977   13886  sstunted         
Birth       PROBIT           BELARUS                        1                1        0   13886  sstunted         
Birth       PROVIDE          BANGLADESH                     0                0      414     532  sstunted         
Birth       PROVIDE          BANGLADESH                     0                1        1     532  sstunted         
Birth       PROVIDE          BANGLADESH                     1                0      117     532  sstunted         
Birth       PROVIDE          BANGLADESH                     1                1        0     532  sstunted         
Birth       ResPak           PAKISTAN                       0                0       33      38  sstunted         
Birth       ResPak           PAKISTAN                       0                1        1      38  sstunted         
Birth       ResPak           PAKISTAN                       1                0        4      38  sstunted         
Birth       ResPak           PAKISTAN                       1                1        0      38  sstunted         
Birth       SAS-CompFeed     INDIA                          0                0      983    1105  sstunted         
Birth       SAS-CompFeed     INDIA                          0                1        2    1105  sstunted         
Birth       SAS-CompFeed     INDIA                          1                0      120    1105  sstunted         
Birth       SAS-CompFeed     INDIA                          1                1        0    1105  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       0                0    10856   13092  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       0                1        0   13092  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       1                0     2236   13092  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       1                1        0   13092  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                0      245     363  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                1       27     363  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                0       76     363  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                1       15     363  sstunted         
6 months    CMIN             BANGLADESH                     0                0      200     232  sstunted         
6 months    CMIN             BANGLADESH                     0                1       18     232  sstunted         
6 months    CMIN             BANGLADESH                     1                0       11     232  sstunted         
6 months    CMIN             BANGLADESH                     1                1        3     232  sstunted         
6 months    COHORTS          GUATEMALA                      0                0      628     901  sstunted         
6 months    COHORTS          GUATEMALA                      0                1       97     901  sstunted         
6 months    COHORTS          GUATEMALA                      1                0      164     901  sstunted         
6 months    COHORTS          GUATEMALA                      1                1       12     901  sstunted         
6 months    COHORTS          INDIA                          0                0     5205    6508  sstunted         
6 months    COHORTS          INDIA                          0                1      159    6508  sstunted         
6 months    COHORTS          INDIA                          1                0     1089    6508  sstunted         
6 months    COHORTS          INDIA                          1                1       55    6508  sstunted         
6 months    COHORTS          PHILIPPINES                    0                0     2099    2593  sstunted         
6 months    COHORTS          PHILIPPINES                    0                1       92    2593  sstunted         
6 months    COHORTS          PHILIPPINES                    1                0      385    2593  sstunted         
6 months    COHORTS          PHILIPPINES                    1                1       17    2593  sstunted         
6 months    CONTENT          PERU                           0                0      213     215  sstunted         
6 months    CONTENT          PERU                           0                1        1     215  sstunted         
6 months    CONTENT          PERU                           1                0        1     215  sstunted         
6 months    CONTENT          PERU                           1                1        0     215  sstunted         
6 months    EE               PAKISTAN                       0                0      227     292  sstunted         
6 months    EE               PAKISTAN                       0                1       28     292  sstunted         
6 months    EE               PAKISTAN                       1                0       32     292  sstunted         
6 months    EE               PAKISTAN                       1                1        5     292  sstunted         
6 months    GMS-Nepal        NEPAL                          0                0      410     528  sstunted         
6 months    GMS-Nepal        NEPAL                          0                1       11     528  sstunted         
6 months    GMS-Nepal        NEPAL                          1                0      105     528  sstunted         
6 months    GMS-Nepal        NEPAL                          1                1        2     528  sstunted         
6 months    Guatemala BSC    GUATEMALA                      0                0      270     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      0                1       23     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      1                0        2     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      1                1        4     299  sstunted         
6 months    IRC              INDIA                          0                0      255     382  sstunted         
6 months    IRC              INDIA                          0                1       13     382  sstunted         
6 months    IRC              INDIA                          1                0      105     382  sstunted         
6 months    IRC              INDIA                          1                1        9     382  sstunted         
6 months    JiVitA-3         BANGLADESH                     0                0    12374   14244  sstunted         
6 months    JiVitA-3         BANGLADESH                     0                1      350   14244  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                0     1456   14244  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                1       64   14244  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                0     3861    4410  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                1      149    4410  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                0      375    4410  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                1       25    4410  sstunted         
6 months    Keneba           GAMBIA                         0                0     1597    2029  sstunted         
6 months    Keneba           GAMBIA                         0                1       44    2029  sstunted         
6 months    Keneba           GAMBIA                         1                0      367    2029  sstunted         
6 months    Keneba           GAMBIA                         1                1       21    2029  sstunted         
6 months    LCNI-5           MALAWI                         0                0      759     839  sstunted         
6 months    LCNI-5           MALAWI                         0                1       66     839  sstunted         
6 months    LCNI-5           MALAWI                         1                0        9     839  sstunted         
6 months    LCNI-5           MALAWI                         1                1        5     839  sstunted         
6 months    MAL-ED           BANGLADESH                     0                0      183     229  sstunted         
6 months    MAL-ED           BANGLADESH                     0                1        5     229  sstunted         
6 months    MAL-ED           BANGLADESH                     1                0       40     229  sstunted         
6 months    MAL-ED           BANGLADESH                     1                1        1     229  sstunted         
6 months    MAL-ED           BRAZIL                         0                0      192     199  sstunted         
6 months    MAL-ED           BRAZIL                         0                1        0     199  sstunted         
6 months    MAL-ED           BRAZIL                         1                0        7     199  sstunted         
6 months    MAL-ED           BRAZIL                         1                1        0     199  sstunted         
6 months    MAL-ED           INDIA                          0                0      185     232  sstunted         
6 months    MAL-ED           INDIA                          0                1        4     232  sstunted         
6 months    MAL-ED           INDIA                          1                0       40     232  sstunted         
6 months    MAL-ED           INDIA                          1                1        3     232  sstunted         
6 months    MAL-ED           NEPAL                          0                0      201     232  sstunted         
6 months    MAL-ED           NEPAL                          0                1        0     232  sstunted         
6 months    MAL-ED           NEPAL                          1                0       31     232  sstunted         
6 months    MAL-ED           NEPAL                          1                1        0     232  sstunted         
6 months    MAL-ED           PERU                           0                0      252     266  sstunted         
6 months    MAL-ED           PERU                           0                1        9     266  sstunted         
6 months    MAL-ED           PERU                           1                0        5     266  sstunted         
6 months    MAL-ED           PERU                           1                1        0     266  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                0      231     253  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                1        4     253  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                0       17     253  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                1        1     253  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      223     238  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1       12     238  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        3     238  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     238  sstunted         
6 months    NIH-Birth        BANGLADESH                     0                0      354     514  sstunted         
6 months    NIH-Birth        BANGLADESH                     0                1       14     514  sstunted         
6 months    NIH-Birth        BANGLADESH                     1                0      135     514  sstunted         
6 months    NIH-Birth        BANGLADESH                     1                1       11     514  sstunted         
6 months    NIH-Crypto       BANGLADESH                     0                0      506     694  sstunted         
6 months    NIH-Crypto       BANGLADESH                     0                1       11     694  sstunted         
6 months    NIH-Crypto       BANGLADESH                     1                0      170     694  sstunted         
6 months    NIH-Crypto       BANGLADESH                     1                1        7     694  sstunted         
6 months    PROBIT           BELARUS                        0                0    12547   15753  sstunted         
6 months    PROBIT           BELARUS                        0                1      142   15753  sstunted         
6 months    PROBIT           BELARUS                        1                0     3031   15753  sstunted         
6 months    PROBIT           BELARUS                        1                1       33   15753  sstunted         
6 months    PROVIDE          BANGLADESH                     0                0      467     597  sstunted         
6 months    PROVIDE          BANGLADESH                     0                1        5     597  sstunted         
6 months    PROVIDE          BANGLADESH                     1                0      119     597  sstunted         
6 months    PROVIDE          BANGLADESH                     1                1        6     597  sstunted         
6 months    ResPak           PAKISTAN                       0                0      152     228  sstunted         
6 months    ResPak           PAKISTAN                       0                1       33     228  sstunted         
6 months    ResPak           PAKISTAN                       1                0       31     228  sstunted         
6 months    ResPak           PAKISTAN                       1                1       12     228  sstunted         
6 months    SAS-CompFeed     INDIA                          0                0     1004    1213  sstunted         
6 months    SAS-CompFeed     INDIA                          0                1       70    1213  sstunted         
6 months    SAS-CompFeed     INDIA                          1                0      121    1213  sstunted         
6 months    SAS-CompFeed     INDIA                          1                1       18    1213  sstunted         
6 months    SAS-FoodSuppl    INDIA                          0                0      272     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          0                1       39     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          1                0       54     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          1                1       15     380  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1883    2020  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       18    2020  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      119    2020  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0    2020  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       0                0     6710    8174  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       0                1      194    8174  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       1                0     1186    8174  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       1                1       84    8174  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                0      183     364  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                1       89     364  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                0       59     364  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                1       33     364  sstunted         
24 months   CMIN             BANGLADESH                     0                0      159     232  sstunted         
24 months   CMIN             BANGLADESH                     0                1       58     232  sstunted         
24 months   CMIN             BANGLADESH                     1                0       10     232  sstunted         
24 months   CMIN             BANGLADESH                     1                1        5     232  sstunted         
24 months   COHORTS          GUATEMALA                      0                0      439    1027  sstunted         
24 months   COHORTS          GUATEMALA                      0                1      435    1027  sstunted         
24 months   COHORTS          GUATEMALA                      1                0       85    1027  sstunted         
24 months   COHORTS          GUATEMALA                      1                1       68    1027  sstunted         
24 months   COHORTS          INDIA                          0                0     3359    5070  sstunted         
24 months   COHORTS          INDIA                          0                1      893    5070  sstunted         
24 months   COHORTS          INDIA                          1                0      629    5070  sstunted         
24 months   COHORTS          INDIA                          1                1      189    5070  sstunted         
24 months   COHORTS          PHILIPPINES                    0                0     1421    2347  sstunted         
24 months   COHORTS          PHILIPPINES                    0                1      568    2347  sstunted         
24 months   COHORTS          PHILIPPINES                    1                0      269    2347  sstunted         
24 months   COHORTS          PHILIPPINES                    1                1       89    2347  sstunted         
24 months   CONTENT          PERU                           0                0      162     164  sstunted         
24 months   CONTENT          PERU                           0                1        1     164  sstunted         
24 months   CONTENT          PERU                           1                0        1     164  sstunted         
24 months   CONTENT          PERU                           1                1        0     164  sstunted         
24 months   EE               PAKISTAN                       0                0       81     137  sstunted         
24 months   EE               PAKISTAN                       0                1       34     137  sstunted         
24 months   EE               PAKISTAN                       1                0       14     137  sstunted         
24 months   EE               PAKISTAN                       1                1        8     137  sstunted         
24 months   GMS-Nepal        NEPAL                          0                0      332     455  sstunted         
24 months   GMS-Nepal        NEPAL                          0                1       33     455  sstunted         
24 months   GMS-Nepal        NEPAL                          1                0       81     455  sstunted         
24 months   GMS-Nepal        NEPAL                          1                1        9     455  sstunted         
24 months   IRC              INDIA                          0                0      247     383  sstunted         
24 months   IRC              INDIA                          0                1       22     383  sstunted         
24 months   IRC              INDIA                          1                0      101     383  sstunted         
24 months   IRC              INDIA                          1                1       13     383  sstunted         
24 months   JiVitA-3         BANGLADESH                     0                0     5677    7242  sstunted         
24 months   JiVitA-3         BANGLADESH                     0                1      745    7242  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                0      728    7242  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                1       92    7242  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                0     3627    4315  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                1      316    4315  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                0      331    4315  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                1       41    4315  sstunted         
24 months   Keneba           GAMBIA                         0                0     1256    1677  sstunted         
24 months   Keneba           GAMBIA                         0                1       98    1677  sstunted         
24 months   Keneba           GAMBIA                         1                0      289    1677  sstunted         
24 months   Keneba           GAMBIA                         1                1       34    1677  sstunted         
24 months   LCNI-5           MALAWI                         0                0      502     579  sstunted         
24 months   LCNI-5           MALAWI                         0                1       67     579  sstunted         
24 months   LCNI-5           MALAWI                         1                0        7     579  sstunted         
24 months   LCNI-5           MALAWI                         1                1        3     579  sstunted         
24 months   MAL-ED           BANGLADESH                     0                0      146     201  sstunted         
24 months   MAL-ED           BANGLADESH                     0                1       18     201  sstunted         
24 months   MAL-ED           BANGLADESH                     1                0       32     201  sstunted         
24 months   MAL-ED           BANGLADESH                     1                1        5     201  sstunted         
24 months   MAL-ED           BRAZIL                         0                0      153     160  sstunted         
24 months   MAL-ED           BRAZIL                         0                1        1     160  sstunted         
24 months   MAL-ED           BRAZIL                         1                0        6     160  sstunted         
24 months   MAL-ED           BRAZIL                         1                1        0     160  sstunted         
24 months   MAL-ED           INDIA                          0                0      157     223  sstunted         
24 months   MAL-ED           INDIA                          0                1       23     223  sstunted         
24 months   MAL-ED           INDIA                          1                0       37     223  sstunted         
24 months   MAL-ED           INDIA                          1                1        6     223  sstunted         
24 months   MAL-ED           NEPAL                          0                0      189     225  sstunted         
24 months   MAL-ED           NEPAL                          0                1        6     225  sstunted         
24 months   MAL-ED           NEPAL                          1                0       29     225  sstunted         
24 months   MAL-ED           NEPAL                          1                1        1     225  sstunted         
24 months   MAL-ED           PERU                           0                0      179     197  sstunted         
24 months   MAL-ED           PERU                           0                1       14     197  sstunted         
24 months   MAL-ED           PERU                           1                0        4     197  sstunted         
24 months   MAL-ED           PERU                           1                1        0     197  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                0      197     237  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                1       24     237  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                0       13     237  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                1        3     237  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      138     205  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1       64     205  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        2     205  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        1     205  sstunted         
24 months   NIH-Birth        BANGLADESH                     0                0      235     409  sstunted         
24 months   NIH-Birth        BANGLADESH                     0                1       58     409  sstunted         
24 months   NIH-Birth        BANGLADESH                     1                0       92     409  sstunted         
24 months   NIH-Birth        BANGLADESH                     1                1       24     409  sstunted         
24 months   NIH-Crypto       BANGLADESH                     0                0      342     500  sstunted         
24 months   NIH-Crypto       BANGLADESH                     0                1       22     500  sstunted         
24 months   NIH-Crypto       BANGLADESH                     1                0      127     500  sstunted         
24 months   NIH-Crypto       BANGLADESH                     1                1        9     500  sstunted         
24 months   PROBIT           BELARUS                        0                0     3070    4032  sstunted         
24 months   PROBIT           BELARUS                        0                1       48    4032  sstunted         
24 months   PROBIT           BELARUS                        1                0      898    4032  sstunted         
24 months   PROBIT           BELARUS                        1                1       16    4032  sstunted         
24 months   PROVIDE          BANGLADESH                     0                0      411     570  sstunted         
24 months   PROVIDE          BANGLADESH                     0                1       41     570  sstunted         
24 months   PROVIDE          BANGLADESH                     1                0      110     570  sstunted         
24 months   PROVIDE          BANGLADESH                     1                1        8     570  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        4       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       0                0     1224    1505  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       0                1      122    1505  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       1                0      140    1505  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       1                1       19    1505  sstunted         


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
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
