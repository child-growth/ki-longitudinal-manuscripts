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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        meducyrs    ever_swasted   n_cell       n
------------  ---------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          High                   0      122     373
0-24 months   CMC-V-BCS-2002   INDIA                          High                   1       36     373
0-24 months   CMC-V-BCS-2002   INDIA                          Low                    0       78     373
0-24 months   CMC-V-BCS-2002   INDIA                          Low                    1       28     373
0-24 months   CMC-V-BCS-2002   INDIA                          Medium                 0       81     373
0-24 months   CMC-V-BCS-2002   INDIA                          Medium                 1       28     373
0-24 months   COHORTS          GUATEMALA                      High                   0      259    1322
0-24 months   COHORTS          GUATEMALA                      High                   1       21    1322
0-24 months   COHORTS          GUATEMALA                      Low                    0      589    1322
0-24 months   COHORTS          GUATEMALA                      Low                    1       38    1322
0-24 months   COHORTS          GUATEMALA                      Medium                 0      380    1322
0-24 months   COHORTS          GUATEMALA                      Medium                 1       35    1322
0-24 months   COHORTS          INDIA                          High                   0      749    5844
0-24 months   COHORTS          INDIA                          High                   1       44    5844
0-24 months   COHORTS          INDIA                          Low                    0     1679    5844
0-24 months   COHORTS          INDIA                          Low                    1      272    5844
0-24 months   COHORTS          INDIA                          Medium                 0     2814    5844
0-24 months   COHORTS          INDIA                          Medium                 1      286    5844
0-24 months   COHORTS          PHILIPPINES                    High                   0     1034    3045
0-24 months   COHORTS          PHILIPPINES                    High                   1      134    3045
0-24 months   COHORTS          PHILIPPINES                    Low                    0      783    3045
0-24 months   COHORTS          PHILIPPINES                    Low                    1      118    3045
0-24 months   COHORTS          PHILIPPINES                    Medium                 0      846    3045
0-24 months   COHORTS          PHILIPPINES                    Medium                 1      130    3045
0-24 months   EE               PAKISTAN                       High                   0       14     377
0-24 months   EE               PAKISTAN                       High                   1        1     377
0-24 months   EE               PAKISTAN                       Low                    0      256     377
0-24 months   EE               PAKISTAN                       Low                    1       73     377
0-24 months   EE               PAKISTAN                       Medium                 0       28     377
0-24 months   EE               PAKISTAN                       Medium                 1        5     377
0-24 months   GMS-Nepal        NEPAL                          High                   0       68     683
0-24 months   GMS-Nepal        NEPAL                          High                   1       16     683
0-24 months   GMS-Nepal        NEPAL                          Low                    0      348     683
0-24 months   GMS-Nepal        NEPAL                          Low                    1      132     683
0-24 months   GMS-Nepal        NEPAL                          Medium                 0       90     683
0-24 months   GMS-Nepal        NEPAL                          Medium                 1       29     683
0-24 months   Guatemala BSC    GUATEMALA                      High                   0      118     282
0-24 months   Guatemala BSC    GUATEMALA                      High                   1        0     282
0-24 months   Guatemala BSC    GUATEMALA                      Low                    0       74     282
0-24 months   Guatemala BSC    GUATEMALA                      Low                    1        2     282
0-24 months   Guatemala BSC    GUATEMALA                      Medium                 0       87     282
0-24 months   Guatemala BSC    GUATEMALA                      Medium                 1        1     282
0-24 months   IRC              INDIA                          High                   0       84     410
0-24 months   IRC              INDIA                          High                   1       40     410
0-24 months   IRC              INDIA                          Low                    0       93     410
0-24 months   IRC              INDIA                          Low                    1       54     410
0-24 months   IRC              INDIA                          Medium                 0       93     410
0-24 months   IRC              INDIA                          Medium                 1       46     410
0-24 months   JiVitA-3         BANGLADESH                     High                   0     8485   26922
0-24 months   JiVitA-3         BANGLADESH                     High                   1      499   26922
0-24 months   JiVitA-3         BANGLADESH                     Low                    0     9072   26922
0-24 months   JiVitA-3         BANGLADESH                     Low                    1      662   26922
0-24 months   JiVitA-3         BANGLADESH                     Medium                 0     7721   26922
0-24 months   JiVitA-3         BANGLADESH                     Medium                 1      483   26922
0-24 months   JiVitA-4         BANGLADESH                     High                   0     1819    5420
0-24 months   JiVitA-4         BANGLADESH                     High                   1       82    5420
0-24 months   JiVitA-4         BANGLADESH                     Low                    0     1648    5420
0-24 months   JiVitA-4         BANGLADESH                     Low                    1      138    5420
0-24 months   JiVitA-4         BANGLADESH                     Medium                 0     1611    5420
0-24 months   JiVitA-4         BANGLADESH                     Medium                 1      122    5420
0-24 months   LCNI-5           MALAWI                         High                   0      297     814
0-24 months   LCNI-5           MALAWI                         High                   1        1     814
0-24 months   LCNI-5           MALAWI                         Low                    0      258     814
0-24 months   LCNI-5           MALAWI                         Low                    1        3     814
0-24 months   LCNI-5           MALAWI                         Medium                 0      251     814
0-24 months   LCNI-5           MALAWI                         Medium                 1        4     814
0-24 months   MAL-ED           BANGLADESH                     High                   0       74     213
0-24 months   MAL-ED           BANGLADESH                     High                   1        4     213
0-24 months   MAL-ED           BANGLADESH                     Low                    0       63     213
0-24 months   MAL-ED           BANGLADESH                     Low                    1        7     213
0-24 months   MAL-ED           BANGLADESH                     Medium                 0       61     213
0-24 months   MAL-ED           BANGLADESH                     Medium                 1        4     213
0-24 months   MAL-ED           BRAZIL                         High                   0       77     232
0-24 months   MAL-ED           BRAZIL                         High                   1        2     232
0-24 months   MAL-ED           BRAZIL                         Low                    0       62     232
0-24 months   MAL-ED           BRAZIL                         Low                    1        1     232
0-24 months   MAL-ED           BRAZIL                         Medium                 0       89     232
0-24 months   MAL-ED           BRAZIL                         Medium                 1        1     232
0-24 months   MAL-ED           INDIA                          High                   0       57     220
0-24 months   MAL-ED           INDIA                          High                   1        6     220
0-24 months   MAL-ED           INDIA                          Low                    0       68     220
0-24 months   MAL-ED           INDIA                          Low                    1        8     220
0-24 months   MAL-ED           INDIA                          Medium                 0       73     220
0-24 months   MAL-ED           INDIA                          Medium                 1        8     220
0-24 months   MAL-ED           NEPAL                          High                   0       52     225
0-24 months   MAL-ED           NEPAL                          High                   1        1     225
0-24 months   MAL-ED           NEPAL                          Low                    0       93     225
0-24 months   MAL-ED           NEPAL                          Low                    1        3     225
0-24 months   MAL-ED           NEPAL                          Medium                 0       73     225
0-24 months   MAL-ED           NEPAL                          Medium                 1        3     225
0-24 months   MAL-ED           PERU                           High                   0       90     301
0-24 months   MAL-ED           PERU                           High                   1        0     301
0-24 months   MAL-ED           PERU                           Low                    0      101     301
0-24 months   MAL-ED           PERU                           Low                    1        3     301
0-24 months   MAL-ED           PERU                           Medium                 0      106     301
0-24 months   MAL-ED           PERU                           Medium                 1        1     301
0-24 months   MAL-ED           SOUTH AFRICA                   High                   0       92     312
0-24 months   MAL-ED           SOUTH AFRICA                   High                   1        3     312
0-24 months   MAL-ED           SOUTH AFRICA                   Low                    0      138     312
0-24 months   MAL-ED           SOUTH AFRICA                   Low                    1       10     312
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                 0       66     312
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                 1        3     312
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0       10     216
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1        1     216
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0       62     216
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1        2     216
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0      136     216
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1        5     216
0-24 months   NIH-Birth        BANGLADESH                     High                   0      159     624
0-24 months   NIH-Birth        BANGLADESH                     High                   1       19     624
0-24 months   NIH-Birth        BANGLADESH                     Low                    0      180     624
0-24 months   NIH-Birth        BANGLADESH                     Low                    1       48     624
0-24 months   NIH-Birth        BANGLADESH                     Medium                 0      186     624
0-24 months   NIH-Birth        BANGLADESH                     Medium                 1       32     624
0-24 months   NIH-Crypto       BANGLADESH                     High                   0      239     758
0-24 months   NIH-Crypto       BANGLADESH                     High                   1       15     758
0-24 months   NIH-Crypto       BANGLADESH                     Low                    0      217     758
0-24 months   NIH-Crypto       BANGLADESH                     Low                    1       25     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium                 0      236     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium                 1       26     758
0-24 months   PROBIT           BELARUS                        High                   0     2643   16898
0-24 months   PROBIT           BELARUS                        High                   1      198   16898
0-24 months   PROBIT           BELARUS                        Low                    0     5593   16898
0-24 months   PROBIT           BELARUS                        Low                    1      507   16898
0-24 months   PROBIT           BELARUS                        Medium                 0     7337   16898
0-24 months   PROBIT           BELARUS                        Medium                 1      620   16898
0-24 months   PROVIDE          BANGLADESH                     High                   0      225     700
0-24 months   PROVIDE          BANGLADESH                     High                   1       10     700
0-24 months   PROVIDE          BANGLADESH                     Low                    0      198     700
0-24 months   PROVIDE          BANGLADESH                     Low                    1       16     700
0-24 months   PROVIDE          BANGLADESH                     Medium                 0      235     700
0-24 months   PROVIDE          BANGLADESH                     Medium                 1       16     700
0-24 months   SAS-CompFeed     INDIA                          High                   0      297    1513
0-24 months   SAS-CompFeed     INDIA                          High                   1       25    1513
0-24 months   SAS-CompFeed     INDIA                          Low                    0      549    1513
0-24 months   SAS-CompFeed     INDIA                          Low                    1      133    1513
0-24 months   SAS-CompFeed     INDIA                          Medium                 0      444    1513
0-24 months   SAS-CompFeed     INDIA                          Medium                 1       65    1513
0-24 months   SAS-FoodSuppl    INDIA                          High                   0       40     418
0-24 months   SAS-FoodSuppl    INDIA                          High                   1        1     418
0-24 months   SAS-FoodSuppl    INDIA                          Low                    0      270     418
0-24 months   SAS-FoodSuppl    INDIA                          Low                    1       62     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium                 0       37     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium                 1        8     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      580    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       41    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       75    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1        7    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1573    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      110    2386
0-24 months   ZVITAMBO         ZIMBABWE                       High                   0     6865   13926
0-24 months   ZVITAMBO         ZIMBABWE                       High                   1      690   13926
0-24 months   ZVITAMBO         ZIMBABWE                       Low                    0     2645   13926
0-24 months   ZVITAMBO         ZIMBABWE                       Low                    1      281   13926
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                 0     3131   13926
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                 1      314   13926
0-6 months    CMC-V-BCS-2002   INDIA                          High                   0      131     368
0-6 months    CMC-V-BCS-2002   INDIA                          High                   1       26     368
0-6 months    CMC-V-BCS-2002   INDIA                          Low                    0       81     368
0-6 months    CMC-V-BCS-2002   INDIA                          Low                    1       23     368
0-6 months    CMC-V-BCS-2002   INDIA                          Medium                 0       89     368
0-6 months    CMC-V-BCS-2002   INDIA                          Medium                 1       18     368
0-6 months    COHORTS          GUATEMALA                      High                   0      202    1051
0-6 months    COHORTS          GUATEMALA                      High                   1       13    1051
0-6 months    COHORTS          GUATEMALA                      Low                    0      484    1051
0-6 months    COHORTS          GUATEMALA                      Low                    1       21    1051
0-6 months    COHORTS          GUATEMALA                      Medium                 0      301    1051
0-6 months    COHORTS          GUATEMALA                      Medium                 1       30    1051
0-6 months    COHORTS          INDIA                          High                   0      711    5626
0-6 months    COHORTS          INDIA                          High                   1       39    5626
0-6 months    COHORTS          INDIA                          Low                    0     1730    5626
0-6 months    COHORTS          INDIA                          Low                    1      163    5626
0-6 months    COHORTS          INDIA                          Medium                 0     2781    5626
0-6 months    COHORTS          INDIA                          Medium                 1      202    5626
0-6 months    COHORTS          PHILIPPINES                    High                   0     1075    3044
0-6 months    COHORTS          PHILIPPINES                    High                   1       93    3044
0-6 months    COHORTS          PHILIPPINES                    Low                    0      846    3044
0-6 months    COHORTS          PHILIPPINES                    Low                    1       54    3044
0-6 months    COHORTS          PHILIPPINES                    Medium                 0      912    3044
0-6 months    COHORTS          PHILIPPINES                    Medium                 1       64    3044
0-6 months    EE               PAKISTAN                       High                   0       15     377
0-6 months    EE               PAKISTAN                       High                   1        0     377
0-6 months    EE               PAKISTAN                       Low                    0      295     377
0-6 months    EE               PAKISTAN                       Low                    1       34     377
0-6 months    EE               PAKISTAN                       Medium                 0       31     377
0-6 months    EE               PAKISTAN                       Medium                 1        2     377
0-6 months    GMS-Nepal        NEPAL                          High                   0       73     683
0-6 months    GMS-Nepal        NEPAL                          High                   1       11     683
0-6 months    GMS-Nepal        NEPAL                          Low                    0      427     683
0-6 months    GMS-Nepal        NEPAL                          Low                    1       53     683
0-6 months    GMS-Nepal        NEPAL                          Medium                 0      104     683
0-6 months    GMS-Nepal        NEPAL                          Medium                 1       15     683
0-6 months    Guatemala BSC    GUATEMALA                      High                   0      112     265
0-6 months    Guatemala BSC    GUATEMALA                      High                   1        0     265
0-6 months    Guatemala BSC    GUATEMALA                      Low                    0       74     265
0-6 months    Guatemala BSC    GUATEMALA                      Low                    1        0     265
0-6 months    Guatemala BSC    GUATEMALA                      Medium                 0       78     265
0-6 months    Guatemala BSC    GUATEMALA                      Medium                 1        1     265
0-6 months    IRC              INDIA                          High                   0       88     410
0-6 months    IRC              INDIA                          High                   1       36     410
0-6 months    IRC              INDIA                          Low                    0       96     410
0-6 months    IRC              INDIA                          Low                    1       51     410
0-6 months    IRC              INDIA                          Medium                 0      100     410
0-6 months    IRC              INDIA                          Medium                 1       39     410
0-6 months    JiVitA-3         BANGLADESH                     High                   0     8592   26825
0-6 months    JiVitA-3         BANGLADESH                     High                   1      353   26825
0-6 months    JiVitA-3         BANGLADESH                     Low                    0     9254   26825
0-6 months    JiVitA-3         BANGLADESH                     Low                    1      446   26825
0-6 months    JiVitA-3         BANGLADESH                     Medium                 0     7868   26825
0-6 months    JiVitA-3         BANGLADESH                     Medium                 1      312   26825
0-6 months    JiVitA-4         BANGLADESH                     High                   0     1746    5077
0-6 months    JiVitA-4         BANGLADESH                     High                   1       36    5077
0-6 months    JiVitA-4         BANGLADESH                     Low                    0     1629    5077
0-6 months    JiVitA-4         BANGLADESH                     Low                    1       37    5077
0-6 months    JiVitA-4         BANGLADESH                     Medium                 0     1591    5077
0-6 months    JiVitA-4         BANGLADESH                     Medium                 1       38    5077
0-6 months    LCNI-5           MALAWI                         High                   0       87     267
0-6 months    LCNI-5           MALAWI                         High                   1        0     267
0-6 months    LCNI-5           MALAWI                         Low                    0       92     267
0-6 months    LCNI-5           MALAWI                         Low                    1        0     267
0-6 months    LCNI-5           MALAWI                         Medium                 0       88     267
0-6 months    LCNI-5           MALAWI                         Medium                 1        0     267
0-6 months    MAL-ED           BANGLADESH                     High                   0       76     213
0-6 months    MAL-ED           BANGLADESH                     High                   1        2     213
0-6 months    MAL-ED           BANGLADESH                     Low                    0       64     213
0-6 months    MAL-ED           BANGLADESH                     Low                    1        6     213
0-6 months    MAL-ED           BANGLADESH                     Medium                 0       61     213
0-6 months    MAL-ED           BANGLADESH                     Medium                 1        4     213
0-6 months    MAL-ED           BRAZIL                         High                   0       77     232
0-6 months    MAL-ED           BRAZIL                         High                   1        2     232
0-6 months    MAL-ED           BRAZIL                         Low                    0       62     232
0-6 months    MAL-ED           BRAZIL                         Low                    1        1     232
0-6 months    MAL-ED           BRAZIL                         Medium                 0       90     232
0-6 months    MAL-ED           BRAZIL                         Medium                 1        0     232
0-6 months    MAL-ED           INDIA                          High                   0       59     220
0-6 months    MAL-ED           INDIA                          High                   1        4     220
0-6 months    MAL-ED           INDIA                          Low                    0       68     220
0-6 months    MAL-ED           INDIA                          Low                    1        8     220
0-6 months    MAL-ED           INDIA                          Medium                 0       74     220
0-6 months    MAL-ED           INDIA                          Medium                 1        7     220
0-6 months    MAL-ED           NEPAL                          High                   0       52     225
0-6 months    MAL-ED           NEPAL                          High                   1        1     225
0-6 months    MAL-ED           NEPAL                          Low                    0       94     225
0-6 months    MAL-ED           NEPAL                          Low                    1        2     225
0-6 months    MAL-ED           NEPAL                          Medium                 0       73     225
0-6 months    MAL-ED           NEPAL                          Medium                 1        3     225
0-6 months    MAL-ED           PERU                           High                   0       90     301
0-6 months    MAL-ED           PERU                           High                   1        0     301
0-6 months    MAL-ED           PERU                           Low                    0      103     301
0-6 months    MAL-ED           PERU                           Low                    1        1     301
0-6 months    MAL-ED           PERU                           Medium                 0      107     301
0-6 months    MAL-ED           PERU                           Medium                 1        0     301
0-6 months    MAL-ED           SOUTH AFRICA                   High                   0       95     312
0-6 months    MAL-ED           SOUTH AFRICA                   High                   1        0     312
0-6 months    MAL-ED           SOUTH AFRICA                   Low                    0      144     312
0-6 months    MAL-ED           SOUTH AFRICA                   Low                    1        4     312
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                 0       67     312
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                 1        2     312
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0       11     216
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1        0     216
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0       64     216
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1        0     216
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0      138     216
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1        3     216
0-6 months    NIH-Birth        BANGLADESH                     High                   0      164     622
0-6 months    NIH-Birth        BANGLADESH                     High                   1       13     622
0-6 months    NIH-Birth        BANGLADESH                     Low                    0      205     622
0-6 months    NIH-Birth        BANGLADESH                     Low                    1       23     622
0-6 months    NIH-Birth        BANGLADESH                     Medium                 0      197     622
0-6 months    NIH-Birth        BANGLADESH                     Medium                 1       20     622
0-6 months    NIH-Crypto       BANGLADESH                     High                   0      240     758
0-6 months    NIH-Crypto       BANGLADESH                     High                   1       14     758
0-6 months    NIH-Crypto       BANGLADESH                     Low                    0      225     758
0-6 months    NIH-Crypto       BANGLADESH                     Low                    1       17     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium                 0      243     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium                 1       19     758
0-6 months    PROBIT           BELARUS                        High                   0     2643   16895
0-6 months    PROBIT           BELARUS                        High                   1      198   16895
0-6 months    PROBIT           BELARUS                        Low                    0     5598   16895
0-6 months    PROBIT           BELARUS                        Low                    1      500   16895
0-6 months    PROBIT           BELARUS                        Medium                 0     7341   16895
0-6 months    PROBIT           BELARUS                        Medium                 1      615   16895
0-6 months    PROVIDE          BANGLADESH                     High                   0      227     700
0-6 months    PROVIDE          BANGLADESH                     High                   1        8     700
0-6 months    PROVIDE          BANGLADESH                     Low                    0      207     700
0-6 months    PROVIDE          BANGLADESH                     Low                    1        7     700
0-6 months    PROVIDE          BANGLADESH                     Medium                 0      237     700
0-6 months    PROVIDE          BANGLADESH                     Medium                 1       14     700
0-6 months    SAS-CompFeed     INDIA                          High                   0      308    1505
0-6 months    SAS-CompFeed     INDIA                          High                   1       14    1505
0-6 months    SAS-CompFeed     INDIA                          Low                    0      623    1505
0-6 months    SAS-CompFeed     INDIA                          Low                    1       56    1505
0-6 months    SAS-CompFeed     INDIA                          Medium                 0      474    1505
0-6 months    SAS-CompFeed     INDIA                          Medium                 1       30    1505
0-6 months    SAS-FoodSuppl    INDIA                          High                   0       40     418
0-6 months    SAS-FoodSuppl    INDIA                          High                   1        1     418
0-6 months    SAS-FoodSuppl    INDIA                          Low                    0      315     418
0-6 months    SAS-FoodSuppl    INDIA                          Low                    1       17     418
0-6 months    SAS-FoodSuppl    INDIA                          Medium                 0       43     418
0-6 months    SAS-FoodSuppl    INDIA                          Medium                 1        2     418
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      597    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       24    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       80    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1        2    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1630    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       53    2386
0-6 months    ZVITAMBO         ZIMBABWE                       High                   0     6972   13833
0-6 months    ZVITAMBO         ZIMBABWE                       High                   1      535   13833
0-6 months    ZVITAMBO         ZIMBABWE                       Low                    0     2716   13833
0-6 months    ZVITAMBO         ZIMBABWE                       Low                    1      191   13833
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                 0     3193   13833
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                 1      226   13833
6-24 months   CMC-V-BCS-2002   INDIA                          High                   0      147     373
6-24 months   CMC-V-BCS-2002   INDIA                          High                   1       11     373
6-24 months   CMC-V-BCS-2002   INDIA                          Low                    0      100     373
6-24 months   CMC-V-BCS-2002   INDIA                          Low                    1        6     373
6-24 months   CMC-V-BCS-2002   INDIA                          Medium                 0       96     373
6-24 months   CMC-V-BCS-2002   INDIA                          Medium                 1       13     373
6-24 months   COHORTS          GUATEMALA                      High                   0      234    1198
6-24 months   COHORTS          GUATEMALA                      High                   1        8    1198
6-24 months   COHORTS          GUATEMALA                      Low                    0      552    1198
6-24 months   COHORTS          GUATEMALA                      Low                    1       17    1198
6-24 months   COHORTS          GUATEMALA                      Medium                 0      382    1198
6-24 months   COHORTS          GUATEMALA                      Medium                 1        5    1198
6-24 months   COHORTS          INDIA                          High                   0      745    5479
6-24 months   COHORTS          INDIA                          High                   1        5    5479
6-24 months   COHORTS          INDIA                          Low                    0     1682    5479
6-24 months   COHORTS          INDIA                          Low                    1      114    5479
6-24 months   COHORTS          INDIA                          Medium                 0     2848    5479
6-24 months   COHORTS          INDIA                          Medium                 1       85    5479
6-24 months   COHORTS          PHILIPPINES                    High                   0     1009    2809
6-24 months   COHORTS          PHILIPPINES                    High                   1       45    2809
6-24 months   COHORTS          PHILIPPINES                    Low                    0      775    2809
6-24 months   COHORTS          PHILIPPINES                    Low                    1       72    2809
6-24 months   COHORTS          PHILIPPINES                    Medium                 0      837    2809
6-24 months   COHORTS          PHILIPPINES                    Medium                 1       71    2809
6-24 months   EE               PAKISTAN                       High                   0       14     371
6-24 months   EE               PAKISTAN                       High                   1        1     371
6-24 months   EE               PAKISTAN                       Low                    0      277     371
6-24 months   EE               PAKISTAN                       Low                    1       46     371
6-24 months   EE               PAKISTAN                       Medium                 0       30     371
6-24 months   EE               PAKISTAN                       Medium                 1        3     371
6-24 months   GMS-Nepal        NEPAL                          High                   0       64     587
6-24 months   GMS-Nepal        NEPAL                          High                   1        7     587
6-24 months   GMS-Nepal        NEPAL                          Low                    0      324     587
6-24 months   GMS-Nepal        NEPAL                          Low                    1       90     587
6-24 months   GMS-Nepal        NEPAL                          Medium                 0       87     587
6-24 months   GMS-Nepal        NEPAL                          Medium                 1       15     587
6-24 months   Guatemala BSC    GUATEMALA                      High                   0      111     266
6-24 months   Guatemala BSC    GUATEMALA                      High                   1        0     266
6-24 months   Guatemala BSC    GUATEMALA                      Low                    0       69     266
6-24 months   Guatemala BSC    GUATEMALA                      Low                    1        2     266
6-24 months   Guatemala BSC    GUATEMALA                      Medium                 0       84     266
6-24 months   Guatemala BSC    GUATEMALA                      Medium                 1        0     266
6-24 months   IRC              INDIA                          High                   0      119     410
6-24 months   IRC              INDIA                          High                   1        5     410
6-24 months   IRC              INDIA                          Low                    0      139     410
6-24 months   IRC              INDIA                          Low                    1        8     410
6-24 months   IRC              INDIA                          Medium                 0      126     410
6-24 months   IRC              INDIA                          Medium                 1       13     410
6-24 months   JiVitA-3         BANGLADESH                     High                   0     5941   17280
6-24 months   JiVitA-3         BANGLADESH                     High                   1      153   17280
6-24 months   JiVitA-3         BANGLADESH                     Low                    0     5574   17280
6-24 months   JiVitA-3         BANGLADESH                     Low                    1      222   17280
6-24 months   JiVitA-3         BANGLADESH                     Medium                 0     5213   17280
6-24 months   JiVitA-3         BANGLADESH                     Medium                 1      177   17280
6-24 months   JiVitA-4         BANGLADESH                     High                   0     1850    5416
6-24 months   JiVitA-4         BANGLADESH                     High                   1       48    5416
6-24 months   JiVitA-4         BANGLADESH                     Low                    0     1683    5416
6-24 months   JiVitA-4         BANGLADESH                     Low                    1      103    5416
6-24 months   JiVitA-4         BANGLADESH                     Medium                 0     1645    5416
6-24 months   JiVitA-4         BANGLADESH                     Medium                 1       87    5416
6-24 months   LCNI-5           MALAWI                         High                   0      292     803
6-24 months   LCNI-5           MALAWI                         High                   1        1     803
6-24 months   LCNI-5           MALAWI                         Low                    0      256     803
6-24 months   LCNI-5           MALAWI                         Low                    1        3     803
6-24 months   LCNI-5           MALAWI                         Medium                 0      247     803
6-24 months   LCNI-5           MALAWI                         Medium                 1        4     803
6-24 months   MAL-ED           BANGLADESH                     High                   0       69     195
6-24 months   MAL-ED           BANGLADESH                     High                   1        2     195
6-24 months   MAL-ED           BANGLADESH                     Low                    0       64     195
6-24 months   MAL-ED           BANGLADESH                     Low                    1        1     195
6-24 months   MAL-ED           BANGLADESH                     Medium                 0       59     195
6-24 months   MAL-ED           BANGLADESH                     Medium                 1        0     195
6-24 months   MAL-ED           BRAZIL                         High                   0       71     206
6-24 months   MAL-ED           BRAZIL                         High                   1        0     206
6-24 months   MAL-ED           BRAZIL                         Low                    0       55     206
6-24 months   MAL-ED           BRAZIL                         Low                    1        0     206
6-24 months   MAL-ED           BRAZIL                         Medium                 0       79     206
6-24 months   MAL-ED           BRAZIL                         Medium                 1        1     206
6-24 months   MAL-ED           INDIA                          High                   0       56     207
6-24 months   MAL-ED           INDIA                          High                   1        2     207
6-24 months   MAL-ED           INDIA                          Low                    0       72     207
6-24 months   MAL-ED           INDIA                          Low                    1        0     207
6-24 months   MAL-ED           INDIA                          Medium                 0       76     207
6-24 months   MAL-ED           INDIA                          Medium                 1        1     207
6-24 months   MAL-ED           NEPAL                          High                   0       52     220
6-24 months   MAL-ED           NEPAL                          High                   1        0     220
6-24 months   MAL-ED           NEPAL                          Low                    0       92     220
6-24 months   MAL-ED           NEPAL                          Low                    1        1     220
6-24 months   MAL-ED           NEPAL                          Medium                 0       75     220
6-24 months   MAL-ED           NEPAL                          Medium                 1        0     220
6-24 months   MAL-ED           PERU                           High                   0       81     269
6-24 months   MAL-ED           PERU                           High                   1        0     269
6-24 months   MAL-ED           PERU                           Low                    0       91     269
6-24 months   MAL-ED           PERU                           Low                    1        2     269
6-24 months   MAL-ED           PERU                           Medium                 0       94     269
6-24 months   MAL-ED           PERU                           Medium                 1        1     269
6-24 months   MAL-ED           SOUTH AFRICA                   High                   0       71     259
6-24 months   MAL-ED           SOUTH AFRICA                   High                   1        3     259
6-24 months   MAL-ED           SOUTH AFRICA                   Low                    0      123     259
6-24 months   MAL-ED           SOUTH AFRICA                   Low                    1        6     259
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                 0       55     259
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                 1        1     259
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0        8     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1        1     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0       60     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1        2     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0      129     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1        2     202
6-24 months   NIH-Birth        BANGLADESH                     High                   0      151     542
6-24 months   NIH-Birth        BANGLADESH                     High                   1        6     542
6-24 months   NIH-Birth        BANGLADESH                     Low                    0      169     542
6-24 months   NIH-Birth        BANGLADESH                     Low                    1       28     542
6-24 months   NIH-Birth        BANGLADESH                     Medium                 0      174     542
6-24 months   NIH-Birth        BANGLADESH                     Medium                 1       14     542
6-24 months   NIH-Crypto       BANGLADESH                     High                   0      245     730
6-24 months   NIH-Crypto       BANGLADESH                     High                   1        1     730
6-24 months   NIH-Crypto       BANGLADESH                     Low                    0      223     730
6-24 months   NIH-Crypto       BANGLADESH                     Low                    1       11     730
6-24 months   NIH-Crypto       BANGLADESH                     Medium                 0      242     730
6-24 months   NIH-Crypto       BANGLADESH                     Medium                 1        8     730
6-24 months   PROBIT           BELARUS                        High                   0     2775   16598
6-24 months   PROBIT           BELARUS                        High                   1        0   16598
6-24 months   PROBIT           BELARUS                        Low                    0     5965   16598
6-24 months   PROBIT           BELARUS                        Low                    1        7   16598
6-24 months   PROBIT           BELARUS                        Medium                 0     7846   16598
6-24 months   PROBIT           BELARUS                        Medium                 1        5   16598
6-24 months   PROVIDE          BANGLADESH                     High                   0      209     615
6-24 months   PROVIDE          BANGLADESH                     High                   1        2     615
6-24 months   PROVIDE          BANGLADESH                     Low                    0      176     615
6-24 months   PROVIDE          BANGLADESH                     Low                    1        9     615
6-24 months   PROVIDE          BANGLADESH                     Medium                 0      217     615
6-24 months   PROVIDE          BANGLADESH                     Medium                 1        2     615
6-24 months   SAS-CompFeed     INDIA                          High                   0      291    1389
6-24 months   SAS-CompFeed     INDIA                          High                   1       11    1389
6-24 months   SAS-CompFeed     INDIA                          Low                    0      530    1389
6-24 months   SAS-CompFeed     INDIA                          Low                    1       84    1389
6-24 months   SAS-CompFeed     INDIA                          Medium                 0      434    1389
6-24 months   SAS-CompFeed     INDIA                          Medium                 1       39    1389
6-24 months   SAS-FoodSuppl    INDIA                          High                   0       40     402
6-24 months   SAS-FoodSuppl    INDIA                          High                   1        0     402
6-24 months   SAS-FoodSuppl    INDIA                          Low                    0      275     402
6-24 months   SAS-FoodSuppl    INDIA                          Low                    1       45     402
6-24 months   SAS-FoodSuppl    INDIA                          Medium                 0       36     402
6-24 months   SAS-FoodSuppl    INDIA                          Medium                 1        6     402
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      497    2011
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       17    2011
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       67    2011
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1        5    2011
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1364    2011
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       61    2011
6-24 months   ZVITAMBO         ZIMBABWE                       High                   0     5661   10800
6-24 months   ZVITAMBO         ZIMBABWE                       High                   1      164   10800
6-24 months   ZVITAMBO         ZIMBABWE                       Low                    0     2184   10800
6-24 months   ZVITAMBO         ZIMBABWE                       Low                    1       94   10800
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                 0     2599   10800
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                 1       98   10800


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/40edcd47-d098-448d-b548-1d50f98baf8c/8aee1091-f896-4c8f-a685-45f88d1307dd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/40edcd47-d098-448d-b548-1d50f98baf8c/8aee1091-f896-4c8f-a685-45f88d1307dd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/40edcd47-d098-448d-b548-1d50f98baf8c/8aee1091-f896-4c8f-a685-45f88d1307dd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/40edcd47-d098-448d-b548-1d50f98baf8c/8aee1091-f896-4c8f-a685-45f88d1307dd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.2390491   0.1734764   0.3046218
0-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.2513253   0.1680539   0.3345966
0-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.2525559   0.1690863   0.3360255
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.0735504   0.0429328   0.1041680
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.0614567   0.0419016   0.0810119
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.0827495   0.0554506   0.1100483
0-24 months   COHORTS          INDIA                          High                 NA                0.0500021   0.0336528   0.0663514
0-24 months   COHORTS          INDIA                          Low                  NA                0.1299073   0.1144205   0.1453941
0-24 months   COHORTS          INDIA                          Medium               NA                0.0924015   0.0819590   0.1028439
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.1281126   0.1039700   0.1522551
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.1309732   0.1066934   0.1552529
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.1242603   0.1021186   0.1464020
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.1794446   0.0934661   0.2654231
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.2704624   0.2301770   0.3107479
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.2278010   0.1471435   0.3084586
0-24 months   IRC              INDIA                          High                 NA                0.3313939   0.2546066   0.4081812
0-24 months   IRC              INDIA                          Low                  NA                0.3654645   0.2930281   0.4379009
0-24 months   IRC              INDIA                          Medium               NA                0.3224479   0.2467449   0.3981508
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.0558481   0.0487911   0.0629051
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.0541014   0.0486130   0.0595898
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.0579111   0.0516091   0.0642132
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.0415144   0.0260627   0.0569661
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.0758217   0.0605733   0.0910700
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.0700094   0.0557437   0.0842751
0-24 months   MAL-ED           INDIA                          High                 NA                0.0952381   0.0225874   0.1678888
0-24 months   MAL-ED           INDIA                          Low                  NA                0.1052632   0.0361093   0.1744170
0-24 months   MAL-ED           INDIA                          Medium               NA                0.0987654   0.0336452   0.1638857
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                0.1075790   0.0622164   0.1529415
0-24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.2119573   0.1588411   0.2650735
0-24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.1473430   0.1000613   0.1946247
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.0582113   0.0293458   0.0870768
0-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1048668   0.0660946   0.1436390
0-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.0989981   0.0628124   0.1351839
0-24 months   PROBIT           BELARUS                        High                 NA                0.0773441   0.0451047   0.1095835
0-24 months   PROBIT           BELARUS                        Low                  NA                0.0786371   0.0467672   0.1105069
0-24 months   PROBIT           BELARUS                        Medium               NA                0.0765548   0.0435580   0.1095517
0-24 months   PROVIDE          BANGLADESH                     High                 NA                0.0394301   0.0153085   0.0635517
0-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.0704716   0.0362593   0.1046840
0-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.0706721   0.0361425   0.1052016
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.0926022   0.0574760   0.1277284
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.1740260   0.1377939   0.2102581
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.1285982   0.0807221   0.1764743
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0660225   0.0464878   0.0855573
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0853659   0.0248738   0.1458579
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0653595   0.0535488   0.0771701
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0862298   0.0802657   0.0921939
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0964051   0.0873237   0.1054865
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0973801   0.0884996   0.1062606
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                0.1832094   0.1230896   0.2433291
0-6 months    CMC-V-BCS-2002   INDIA                          Low                  NA                0.2114929   0.1320335   0.2909522
0-6 months    CMC-V-BCS-2002   INDIA                          Medium               NA                0.1540182   0.0856753   0.2223611
0-6 months    COHORTS          GUATEMALA                      High                 NA                0.0626528   0.0314506   0.0938549
0-6 months    COHORTS          GUATEMALA                      Low                  NA                0.0434445   0.0261248   0.0607642
0-6 months    COHORTS          GUATEMALA                      Medium               NA                0.0863500   0.0552995   0.1174004
0-6 months    COHORTS          INDIA                          High                 NA                0.0487627   0.0331623   0.0643631
0-6 months    COHORTS          INDIA                          Low                  NA                0.0857779   0.0729924   0.0985634
0-6 months    COHORTS          INDIA                          Medium               NA                0.0676712   0.0585519   0.0767906
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.0746913   0.0593568   0.0900257
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.0701274   0.0515020   0.0887528
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.0631568   0.0467669   0.0795466
0-6 months    GMS-Nepal        NEPAL                          High                 NA                0.1334686   0.0599753   0.2069620
0-6 months    GMS-Nepal        NEPAL                          Low                  NA                0.1099259   0.0818692   0.1379825
0-6 months    GMS-Nepal        NEPAL                          Medium               NA                0.1258708   0.0652661   0.1864756
0-6 months    IRC              INDIA                          High                 NA                0.2947590   0.2161064   0.3734116
0-6 months    IRC              INDIA                          Low                  NA                0.3479483   0.2711470   0.4247497
0-6 months    IRC              INDIA                          Medium               NA                0.2740710   0.2002864   0.3478557
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                0.0416357   0.0360991   0.0471723
0-6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.0369660   0.0322460   0.0416861
0-6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.0391237   0.0335244   0.0447230
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                0.0175545   0.0098089   0.0253001
0-6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.0223016   0.0089583   0.0356448
0-6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.0225420   0.0138692   0.0312148
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                0.0741859   0.0351808   0.1131909
0-6 months    NIH-Birth        BANGLADESH                     Low                  NA                0.1003134   0.0611399   0.1394869
0-6 months    NIH-Birth        BANGLADESH                     Medium               NA                0.0909889   0.0524012   0.1295766
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.0545306   0.0262369   0.0828242
0-6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.0719378   0.0392681   0.1046075
0-6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.0724022   0.0410357   0.1037687
0-6 months    PROBIT           BELARUS                        High                 NA                0.0767265   0.0457556   0.1076975
0-6 months    PROBIT           BELARUS                        Low                  NA                0.0781835   0.0460290   0.1103380
0-6 months    PROBIT           BELARUS                        Medium               NA                0.0760695   0.0431006   0.1090384
0-6 months    PROVIDE          BANGLADESH                     High                 NA                0.0340426   0.0108411   0.0572440
0-6 months    PROVIDE          BANGLADESH                     Low                  NA                0.0327103   0.0088612   0.0565594
0-6 months    PROVIDE          BANGLADESH                     Medium               NA                0.0557769   0.0273659   0.0841879
0-6 months    SAS-CompFeed     INDIA                          High                 NA                0.0374781   0.0194491   0.0555071
0-6 months    SAS-CompFeed     INDIA                          Low                  NA                0.0814501   0.0527516   0.1101486
0-6 months    SAS-CompFeed     INDIA                          Medium               NA                0.0649343   0.0292718   0.1005967
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.0651482   0.0604759   0.0698204
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.0728834   0.0660121   0.0797546
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.0736212   0.0669747   0.0802677
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.0696203   0.0298828   0.1093577
6-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.0566038   0.0125536   0.1006540
6-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.1192661   0.0583406   0.1801915
6-24 months   COHORTS          GUATEMALA                      High                 NA                0.0330579   0.0105228   0.0555929
6-24 months   COHORTS          GUATEMALA                      Low                  NA                0.0298770   0.0158826   0.0438714
6-24 months   COHORTS          GUATEMALA                      Medium               NA                0.0129199   0.0016640   0.0241758
6-24 months   COHORTS          INDIA                          High                 NA                0.0066667   0.0008422   0.0124912
6-24 months   COHORTS          INDIA                          Low                  NA                0.0634744   0.0521974   0.0747514
6-24 months   COHORTS          INDIA                          Medium               NA                0.0289806   0.0229090   0.0350521
6-24 months   COHORTS          PHILIPPINES                    High                 NA                0.0483019   0.0348906   0.0617131
6-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.0790216   0.0603727   0.0976705
6-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.0723565   0.0551064   0.0896065
6-24 months   GMS-Nepal        NEPAL                          High                 NA                0.0985915   0.0291899   0.1679932
6-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.2173913   0.1776253   0.2571573
6-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.1470588   0.0782691   0.2158485
6-24 months   IRC              INDIA                          High                 NA                0.0403226   0.0056565   0.0749886
6-24 months   IRC              INDIA                          Low                  NA                0.0544218   0.0177058   0.0911377
6-24 months   IRC              INDIA                          Medium               NA                0.0935252   0.0450619   0.1419885
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.0280353   0.0199637   0.0361070
6-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.0279584   0.0233445   0.0325724
6-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.0304105   0.0251893   0.0356316
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.0234580   0.0116800   0.0352361
6-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.0564579   0.0434524   0.0694634
6-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.0523767   0.0390107   0.0657426
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                0.0382166   0.0081998   0.0682333
6-24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.1421320   0.0933261   0.1909379
6-24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.0744681   0.0369059   0.1120303
6-24 months   SAS-CompFeed     INDIA                          High                 NA                0.0339302   0.0117025   0.0561579
6-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.1321763   0.0994027   0.1649498
6-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.0824715   0.0470559   0.1178871
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0330739   0.0176102   0.0485377
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0694444   0.0107118   0.1281771
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0428070   0.0322945   0.0533195
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0281578   0.0236082   0.0327073
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0363431   0.0277720   0.0449141
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0381043   0.0297379   0.0464708


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2466488   0.2028447   0.2904529
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0711044   0.0572455   0.0849633
0-24 months   COHORTS          INDIA                          NA                   NA                0.1030116   0.0952175   0.1108057
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2591508   0.2262659   0.2920357
0-24 months   IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0610653   0.0575838   0.0645468
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0630996   0.0561390   0.0700602
0-24 months   MAL-ED           INDIA                          NA                   NA                0.1000000   0.0602674   0.1397326
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1586538   0.1299648   0.1873429
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0784116   0.0458146   0.1110087
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.1473893   0.1184132   0.1763654
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0662196   0.0562399   0.0761994
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0922734   0.0874665   0.0970804
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.1820652   0.1425842   0.2215462
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.0608944   0.0464300   0.0753587
0-6 months    COHORTS          INDIA                          NA                   NA                0.0718095   0.0650627   0.0785562
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.1156662   0.0916631   0.1396693
0-6 months    IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0414166   0.0384340   0.0443992
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0218633   0.0173413   0.0263853
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0777153   0.0450748   0.1103558
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0414286   0.0266555   0.0562017
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0664452   0.0425975   0.0902929
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0688209   0.0646022   0.0730397
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.0804290   0.0527929   0.1080650
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0250417   0.0161900   0.0338934
6-24 months   COHORTS          INDIA                          NA                   NA                0.0372331   0.0322193   0.0422468
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1908007   0.1589868   0.2226146
6-24 months   IRC              INDIA                          NA                   NA                0.0634146   0.0397960   0.0870333
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0319444   0.0290509   0.0348380
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0439439   0.0381166   0.0497712
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.0885609   0.0646203   0.1125014
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0412730   0.0325768   0.0499692
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0329630   0.0295956   0.0363303


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   CMC-V-BCS-2002   INDIA                          Low                  High              1.0513542   0.6846748    1.614410
0-24 months   CMC-V-BCS-2002   INDIA                          Medium               High              1.0565022   0.6895933    1.618631
0-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
0-24 months   COHORTS          GUATEMALA                      Low                  High              0.8355729   0.4949809    1.410523
0-24 months   COHORTS          GUATEMALA                      Medium               High              1.1250717   0.6616586    1.913050
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   COHORTS          INDIA                          Low                  High              2.5980368   1.8341077    3.680152
0-24 months   COHORTS          INDIA                          Medium               High              1.8479515   1.3073937    2.612010
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              1.0223288   0.7896330    1.323597
0-24 months   COHORTS          PHILIPPINES                    Medium               High              0.9699307   0.7534770    1.248566
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              1.5072197   0.9121982    2.490370
0-24 months   GMS-Nepal        NEPAL                          Medium               High              1.2694784   0.6999913    2.302279
0-24 months   IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   IRC              INDIA                          Low                  High              1.1028098   0.8232534    1.477297
0-24 months   IRC              INDIA                          Medium               High              0.9730047   0.7065301    1.339983
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              0.9687238   0.8277748    1.133673
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0369393   0.8829742    1.217752
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.8263948   1.2102086    2.756317
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.6863878   1.0975507    2.591137
0-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   MAL-ED           INDIA                          Low                  High              1.1052632   0.4038751    3.024714
0-24 months   MAL-ED           INDIA                          Medium               High              1.0370370   0.3783556    2.842421
0-24 months   NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   NIH-Birth        BANGLADESH                     Low                  High              1.9702485   1.2055538    3.219997
0-24 months   NIH-Birth        BANGLADESH                     Medium               High              1.3696262   0.8055428    2.328710
0-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.8014858   0.9706430    3.343506
0-24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.7006690   0.9183792    3.149325
0-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000    1.000000
0-24 months   PROBIT           BELARUS                        Low                  High              1.0167168   0.9120204    1.133432
0-24 months   PROBIT           BELARUS                        Medium               High              0.9897952   0.8427455    1.162503
0-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   PROVIDE          BANGLADESH                     Low                  High              1.7872554   0.8180834    3.904592
0-24 months   PROVIDE          BANGLADESH                     Medium               High              1.7923384   0.8187376    3.923695
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              1.8792853   1.4688455    2.404414
0-24 months   SAS-CompFeed     INDIA                          Medium               High              1.3887163   0.8954710    2.153652
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2929804   0.5999184    2.786709
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.9899570   0.6999193    1.400183
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.1180024   1.0081282    1.239852
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.1293097   1.0206824    1.249498
0-6 months    CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          Low                  High              1.1543780   0.7024327    1.897105
0-6 months    CMC-V-BCS-2002   INDIA                          Medium               High              0.8406676   0.4874571    1.449814
0-6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
0-6 months    COHORTS          GUATEMALA                      Low                  High              0.6934171   0.3686541    1.304278
0-6 months    COHORTS          GUATEMALA                      Medium               High              1.3782313   0.7473334    2.541732
0-6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    COHORTS          INDIA                          Low                  High              1.7590890   1.2358689    2.503821
0-6 months    COHORTS          INDIA                          Medium               High              1.3877667   0.9806635    1.963871
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              0.9388977   0.6713473    1.313074
0-6 months    COHORTS          PHILIPPINES                    Medium               High              0.8455710   0.6078335    1.176293
0-6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    GMS-Nepal        NEPAL                          Low                  High              0.8236080   0.4489397    1.510960
0-6 months    GMS-Nepal        NEPAL                          Medium               High              0.9430743   0.4537881    1.959922
0-6 months    IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    IRC              INDIA                          Low                  High              1.1804503   0.8377124    1.663415
0-6 months    IRC              INDIA                          Medium               High              0.9298139   0.6391787    1.352601
0-6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    JiVitA-3         BANGLADESH                     Low                  High              0.8878444   0.7439308    1.059598
0-6 months    JiVitA-3         BANGLADESH                     Medium               High              0.9396664   0.7817088    1.129542
0-6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    JiVitA-4         BANGLADESH                     Low                  High              1.2704189   0.5989677    2.694576
0-6 months    JiVitA-4         BANGLADESH                     Medium               High              1.2841141   0.7091459    2.325261
0-6 months    NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    NIH-Birth        BANGLADESH                     Low                  High              1.3521907   0.7021489    2.604034
0-6 months    NIH-Birth        BANGLADESH                     Medium               High              1.2264993   0.6238864    2.411177
0-6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    NIH-Crypto       BANGLADESH                     Low                  High              1.3192200   0.6622444    2.627944
0-6 months    NIH-Crypto       BANGLADESH                     Medium               High              1.3277364   0.6759480    2.608017
0-6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000    1.000000
0-6 months    PROBIT           BELARUS                        Low                  High              1.0189890   0.9111664    1.139571
0-6 months    PROBIT           BELARUS                        Medium               High              0.9914362   0.8386354    1.172078
0-6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    PROVIDE          BANGLADESH                     Low                  High              0.9608645   0.3541751    2.606791
0-6 months    PROVIDE          BANGLADESH                     Medium               High              1.6384462   0.6996975    3.836667
0-6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    SAS-CompFeed     INDIA                          Low                  High              2.1732714   1.3557857    3.483669
0-6 months    SAS-CompFeed     INDIA                          Medium               High              1.7325923   1.0990549    2.731325
0-6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  High              1.1187325   1.0205183    1.226399
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               High              1.1300581   1.0345993    1.234325
6-24 months   CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   CMC-V-BCS-2002   INDIA                          Low                  High              0.8130360   0.3097233    2.134252
6-24 months   CMC-V-BCS-2002   INDIA                          Medium               High              1.7130942   0.7963737    3.685069
6-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
6-24 months   COHORTS          GUATEMALA                      Low                  High              0.9037786   0.3952360    2.066653
6-24 months   COHORTS          GUATEMALA                      Medium               High              0.3908269   0.1292899    1.181420
6-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   COHORTS          INDIA                          Low                  High              9.5211581   3.9038373   23.221371
6-24 months   COHORTS          INDIA                          Medium               High              4.3470849   1.7701456   10.675476
6-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
6-24 months   COHORTS          PHILIPPINES                    Low                  High              1.6359952   1.1367913    2.354417
6-24 months   COHORTS          PHILIPPINES                    Medium               High              1.4980057   1.0392685    2.159231
6-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   GMS-Nepal        NEPAL                          Low                  High              2.2049689   1.0654565    4.563197
6-24 months   GMS-Nepal        NEPAL                          Medium               High              1.4915966   0.6406116    3.473026
6-24 months   IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   IRC              INDIA                          Low                  High              1.3496599   0.4524960    4.025631
6-24 months   IRC              INDIA                          Medium               High              2.3194245   0.8500256    6.328904
6-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   JiVitA-3         BANGLADESH                     Low                  High              0.9972576   0.7168525    1.387346
6-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0847198   0.7708915    1.526307
6-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   JiVitA-4         BANGLADESH                     Low                  High              2.4067608   1.3918551    4.161710
6-24 months   JiVitA-4         BANGLADESH                     Medium               High              2.2327815   1.2663270    3.936829
6-24 months   NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   NIH-Birth        BANGLADESH                     Low                  High              3.7191201   1.5781718    8.764480
6-24 months   NIH-Birth        BANGLADESH                     Medium               High              1.9485816   0.7661679    4.955794
6-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   SAS-CompFeed     INDIA                          Low                  High              3.8955369   2.1187622    7.162299
6-24 months   SAS-CompFeed     INDIA                          Medium               High              2.4306230   1.1616551    5.085785
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              2.0996732   0.7988343    5.518826
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2942828   0.7632538    2.194772
6-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.2906940   0.9700647    1.717299
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.3532446   1.0305273    1.777023


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0075997   -0.0430737   0.0582731
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0024460   -0.0297633   0.0248713
0-24 months   COHORTS          INDIA                          High                 NA                 0.0530095    0.0366842   0.0693349
0-24 months   COHORTS          PHILIPPINES                    High                 NA                -0.0026610   -0.0239317   0.0186097
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0797062   -0.0032633   0.1626757
0-24 months   IRC              INDIA                          High                 NA                 0.0100695   -0.0525067   0.0726457
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0052172   -0.0012391   0.0116735
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0215852    0.0073331   0.0358374
0-24 months   MAL-ED           INDIA                          High                 NA                 0.0047619   -0.0571564   0.0666802
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0510749    0.0096929   0.0924568
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0288600    0.0028639   0.0548560
0-24 months   PROBIT           BELARUS                        High                 NA                 0.0010675   -0.0090673   0.0112024
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0205699   -0.0012358   0.0423756
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0547871    0.0224632   0.0871109
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0001971   -0.0166125   0.0170066
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0060437    0.0021833   0.0099040
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.0011441   -0.0475488   0.0452606
0-6 months    COHORTS          GUATEMALA                      High                 NA                -0.0017584   -0.0295323   0.0260156
0-6 months    COHORTS          INDIA                          High                 NA                 0.0230468    0.0080486   0.0380449
0-6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0053746   -0.0172200   0.0064709
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0178025   -0.0861781   0.0505732
0-6 months    IRC              INDIA                          High                 NA                 0.0125581   -0.0531375   0.0782537
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0002191   -0.0051624   0.0047242
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0043088   -0.0029764   0.0115941
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                 0.0158463   -0.0184300   0.0501226
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0114325   -0.0126689   0.0355339
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0009888   -0.0094581   0.0114356
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.0073860   -0.0124915   0.0272636
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0289671    0.0105758   0.0473584
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0036728    0.0013562   0.0059893
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0108087   -0.0208939   0.0425113
6-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0080161   -0.0275357   0.0115035
6-24 months   COHORTS          INDIA                          High                 NA                 0.0305664    0.0235113   0.0376215
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0186259    0.0065161   0.0307357
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0922091    0.0239190   0.1604993
6-24 months   IRC              INDIA                          High                 NA                 0.0230921   -0.0090432   0.0552273
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0039091   -0.0038138   0.0116321
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0204858    0.0098657   0.0311060
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0503443    0.0194871   0.0812016
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0625421    0.0394497   0.0856345
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0081991   -0.0056758   0.0220739
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0048052    0.0012394   0.0083711


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0308119   -0.1978403   0.2158173
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0344002   -0.4997440   0.2865558
0-24 months   COHORTS          INDIA                          High                 NA                 0.5145975    0.3333304   0.6465782
0-24 months   COHORTS          PHILIPPINES                    High                 NA                -0.0212114   -0.2057040   0.1350508
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.3075669   -0.0967314   0.5628249
0-24 months   IRC              INDIA                          High                 NA                 0.0294892   -0.1721565   0.1964458
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0854360   -0.0262843   0.1849946
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.3420818    0.0715921   0.5337649
0-24 months   MAL-ED           INDIA                          High                 NA                 0.0476190   -0.8241477   0.5027653
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.3219265    0.0115394   0.5348487
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.3314522   -0.0319665   0.5668889
0-24 months   PROBIT           BELARUS                        High                 NA                 0.0136144   -0.1233966   0.1339154
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.3428319   -0.1201347   0.6144483
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.3717168    0.1283742   0.5471224
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0029760   -0.2861107   0.2270830
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0654974    0.0227998   0.1063293
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.0062842   -0.2964011   0.2189085
0-6 months    COHORTS          GUATEMALA                      High                 NA                -0.0288757   -0.6029960   0.3396208
0-6 months    COHORTS          INDIA                          High                 NA                 0.3209434    0.0789375   0.4993631
0-6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0775364   -0.2623305   0.0802055
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.1539125   -0.9250257   0.3083136
0-6 months    IRC              INDIA                          High                 NA                 0.0408636   -0.1985435   0.2324495
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0052911   -0.1320607   0.1072827
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.1970798   -0.2069821   0.4658738
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                 0.1760072   -0.3047007   0.4796015
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.1733167   -0.2828438   0.4672732
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0127228   -0.1294626   0.1370088
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.1782832   -0.4663291   0.5395178
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.4359547    0.1831366   0.6105260
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0533672    0.0191676   0.0863744
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.1343882   -0.3612271   0.4495527
6-24 months   COHORTS          GUATEMALA                      High                 NA                -0.3201102   -1.3687346   0.2642946
6-24 months   COHORTS          INDIA                          High                 NA                 0.8209477    0.5757824   0.9244262
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.2782983    0.0789976   0.4344713
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.4832746   -0.0191883   0.7380218
6-24 months   IRC              INDIA                          High                 NA                 0.3641439   -0.3738866   0.7057159
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.1223725   -0.1553677   0.3333464
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.4661818    0.1544109   0.6630020
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.5684713    0.1027881   0.7924493
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.6482909    0.3742772   0.8023098
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1986545   -0.2153224   0.4716180
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.1457758    0.0316539   0.2464481
