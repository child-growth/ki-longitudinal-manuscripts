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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/c1974c03-3528-4010-9063-fb890ea09fbf/983b7544-7a0e-45cb-b3a0-96acad16792e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c1974c03-3528-4010-9063-fb890ea09fbf/983b7544-7a0e-45cb-b3a0-96acad16792e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c1974c03-3528-4010-9063-fb890ea09fbf/983b7544-7a0e-45cb-b3a0-96acad16792e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c1974c03-3528-4010-9063-fb890ea09fbf/983b7544-7a0e-45cb-b3a0-96acad16792e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.2278481   0.1623579   0.2933383
0-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.2641509   0.1801085   0.3481934
0-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.2568807   0.1747487   0.3390128
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.0750000   0.0441372   0.1058628
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.0606061   0.0419225   0.0792897
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.0843373   0.0575909   0.1110838
0-24 months   COHORTS          INDIA                          High                 NA                0.0554855   0.0395508   0.0714202
0-24 months   COHORTS          INDIA                          Low                  NA                0.1394157   0.1240444   0.1547869
0-24 months   COHORTS          INDIA                          Medium               NA                0.0922581   0.0820701   0.1024460
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.1147260   0.0964464   0.1330057
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.1309656   0.1089336   0.1529976
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.1331967   0.1118760   0.1545174
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.1904762   0.1064409   0.2745115
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.2750000   0.2350257   0.3149743
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.2436975   0.1665066   0.3208884
0-24 months   IRC              INDIA                          High                 NA                0.3225806   0.2402018   0.4049594
0-24 months   IRC              INDIA                          Low                  NA                0.3673469   0.2893207   0.4453732
0-24 months   IRC              INDIA                          Medium               NA                0.3309353   0.2526146   0.4092560
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.0555432   0.0502675   0.0608189
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.0680090   0.0623369   0.0736812
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.0588737   0.0531892   0.0645583
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.0431352   0.0320517   0.0542187
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.0772676   0.0640980   0.0904373
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.0703982   0.0572100   0.0835863
0-24 months   MAL-ED           INDIA                          High                 NA                0.0952381   0.0225874   0.1678888
0-24 months   MAL-ED           INDIA                          Low                  NA                0.1052632   0.0361093   0.1744170
0-24 months   MAL-ED           INDIA                          Medium               NA                0.0987654   0.0336452   0.1638857
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                0.1067416   0.0613431   0.1521401
0-24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.2105263   0.1575660   0.2634867
0-24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.1467890   0.0997733   0.1938047
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.0590551   0.0300464   0.0880639
0-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1033058   0.0649340   0.1416775
0-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.0992366   0.0630102   0.1354631
0-24 months   PROBIT           BELARUS                        High                 NA                0.0696938   0.0394426   0.0999450
0-24 months   PROBIT           BELARUS                        Low                  NA                0.0831148   0.0437379   0.1224916
0-24 months   PROBIT           BELARUS                        Medium               NA                0.0779188   0.0462834   0.1095543
0-24 months   PROVIDE          BANGLADESH                     High                 NA                0.0425532   0.0167277   0.0683786
0-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.0747664   0.0395024   0.1100303
0-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.0637450   0.0335008   0.0939892
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.0776398   0.0519187   0.1033608
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.1950147   0.1641915   0.2258379
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.1277014   0.0829171   0.1724857
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0660225   0.0464878   0.0855573
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0853659   0.0248738   0.1458579
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0653595   0.0535488   0.0771701
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0913302   0.0848341   0.0978264
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0960355   0.0853593   0.1067118
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0911466   0.0815352   0.1007580
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                0.1656051   0.1073798   0.2238304
0-6 months    CMC-V-BCS-2002   INDIA                          Low                  NA                0.2211538   0.1412817   0.3010260
0-6 months    CMC-V-BCS-2002   INDIA                          Medium               NA                0.1682243   0.0972511   0.2391975
0-6 months    COHORTS          GUATEMALA                      High                 NA                0.0604651   0.0285905   0.0923397
0-6 months    COHORTS          GUATEMALA                      Low                  NA                0.0415842   0.0241641   0.0590042
0-6 months    COHORTS          GUATEMALA                      Medium               NA                0.0906344   0.0596918   0.1215770
0-6 months    COHORTS          INDIA                          High                 NA                0.0520000   0.0361086   0.0678914
0-6 months    COHORTS          INDIA                          Low                  NA                0.0861067   0.0734687   0.0987447
0-6 months    COHORTS          INDIA                          Medium               NA                0.0677171   0.0586996   0.0767345
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.0796233   0.0640958   0.0951508
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.0600000   0.0444819   0.0755181
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.0655738   0.0500416   0.0811059
0-6 months    GMS-Nepal        NEPAL                          High                 NA                0.1309524   0.0587577   0.2031470
0-6 months    GMS-Nepal        NEPAL                          Low                  NA                0.1104167   0.0823587   0.1384746
0-6 months    GMS-Nepal        NEPAL                          Medium               NA                0.1260504   0.0663733   0.1857276
0-6 months    IRC              INDIA                          High                 NA                0.2903226   0.2103321   0.3703131
0-6 months    IRC              INDIA                          Low                  NA                0.3469388   0.2698976   0.4239800
0-6 months    IRC              INDIA                          Medium               NA                0.2805755   0.2057950   0.3553561
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                0.0394634   0.0349405   0.0439863
0-6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.0459794   0.0410034   0.0509554
0-6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.0381418   0.0333889   0.0428947
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                0.0202020   0.0124076   0.0279965
0-6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.0222089   0.0137398   0.0306780
0-6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.0233272   0.0152953   0.0313590
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                0.0734463   0.0349844   0.1119083
0-6 months    NIH-Birth        BANGLADESH                     Low                  NA                0.1008772   0.0617538   0.1400005
0-6 months    NIH-Birth        BANGLADESH                     Medium               NA                0.0921659   0.0536486   0.1306832
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.0551181   0.0270344   0.0832018
0-6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.0702479   0.0380278   0.1024681
0-6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.0725191   0.0410950   0.1039432
0-6 months    PROBIT           BELARUS                        High                 NA                0.0696938   0.0394399   0.0999476
0-6 months    PROBIT           BELARUS                        Low                  NA                0.0819941   0.0423173   0.1216709
0-6 months    PROBIT           BELARUS                        Medium               NA                0.0773002   0.0458314   0.1087689
0-6 months    PROVIDE          BANGLADESH                     High                 NA                0.0340426   0.0108411   0.0572440
0-6 months    PROVIDE          BANGLADESH                     Low                  NA                0.0327103   0.0088612   0.0565594
0-6 months    PROVIDE          BANGLADESH                     Medium               NA                0.0557769   0.0273659   0.0841879
0-6 months    SAS-CompFeed     INDIA                          High                 NA                0.0434783   0.0223407   0.0646158
0-6 months    SAS-CompFeed     INDIA                          Low                  NA                0.0824742   0.0574826   0.1074658
0-6 months    SAS-CompFeed     INDIA                          Medium               NA                0.0595238   0.0274338   0.0916139
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.0712668   0.0654469   0.0770868
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.0657035   0.0566965   0.0747104
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.0661012   0.0577727   0.0744297
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.0696203   0.0298828   0.1093577
6-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.0566038   0.0125536   0.1006540
6-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.1192661   0.0583406   0.1801915
6-24 months   COHORTS          GUATEMALA                      High                 NA                0.0330579   0.0105228   0.0555929
6-24 months   COHORTS          GUATEMALA                      Low                  NA                0.0298770   0.0158826   0.0438714
6-24 months   COHORTS          GUATEMALA                      Medium               NA                0.0129199   0.0016640   0.0241758
6-24 months   COHORTS          INDIA                          High                 NA                0.0066667   0.0008422   0.0124912
6-24 months   COHORTS          INDIA                          Low                  NA                0.0634744   0.0521974   0.0747514
6-24 months   COHORTS          INDIA                          Medium               NA                0.0289806   0.0229090   0.0350521
6-24 months   COHORTS          PHILIPPINES                    High                 NA                0.0426945   0.0304873   0.0549017
6-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.0850059   0.0662206   0.1037912
6-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.0781938   0.0607280   0.0956596
6-24 months   GMS-Nepal        NEPAL                          High                 NA                0.0985915   0.0291899   0.1679932
6-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.2173913   0.1776253   0.2571573
6-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.1470588   0.0782691   0.2158485
6-24 months   IRC              INDIA                          High                 NA                0.0403226   0.0056565   0.0749886
6-24 months   IRC              INDIA                          Low                  NA                0.0544218   0.0177058   0.0911377
6-24 months   IRC              INDIA                          Medium               NA                0.0935252   0.0450619   0.1419885
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.0251067   0.0209051   0.0293083
6-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.0383023   0.0331963   0.0434082
6-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.0328386   0.0276170   0.0380602
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.0252898   0.0162300   0.0343495
6-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.0576708   0.0465620   0.0687796
6-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.0502309   0.0394061   0.0610558
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                0.0382166   0.0081998   0.0682333
6-24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.1421320   0.0933261   0.1909379
6-24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.0744681   0.0369059   0.1120303
6-24 months   SAS-CompFeed     INDIA                          High                 NA                0.0364238   0.0143194   0.0585283
6-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.1368078   0.1076889   0.1659268
6-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.0824524   0.0519962   0.1129087
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0330739   0.0176102   0.0485377
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0694444   0.0107118   0.1281771
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0428070   0.0322945   0.0533195
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0281545   0.0239064   0.0324026
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0412643   0.0330960   0.0494325
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0363367   0.0292741   0.0433992


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
0-24 months   CMC-V-BCS-2002   INDIA                          Low                  High              1.1593291   0.7550840    1.779993
0-24 months   CMC-V-BCS-2002   INDIA                          Medium               High              1.1274210   0.7334471    1.733019
0-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
0-24 months   COHORTS          GUATEMALA                      Low                  High              0.8080808   0.4832294    1.351314
0-24 months   COHORTS          GUATEMALA                      Medium               High              1.1244980   0.6688519    1.890547
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   COHORTS          INDIA                          Low                  High              2.5126509   1.8472819    3.417678
0-24 months   COHORTS          INDIA                          Medium               High              1.6627419   1.2223589    2.261783
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              1.1415508   0.9054548    1.439209
0-24 months   COHORTS          PHILIPPINES                    Medium               High              1.1609983   0.9262863    1.455184
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              1.4437500   0.9073098    2.297356
0-24 months   GMS-Nepal        NEPAL                          Medium               High              1.2794118   0.7432558    2.202330
0-24 months   IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   IRC              INDIA                          Low                  High              1.1387755   0.8169244    1.587429
0-24 months   IRC              INDIA                          Medium               High              1.0258993   0.7242592    1.453167
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.2244353   1.0824104    1.385096
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0599629   0.9289848    1.209408
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.7912900   1.3142663    2.441453
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.6320352   1.1795166    2.258162
0-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   MAL-ED           INDIA                          Low                  High              1.1052632   0.4038751    3.024714
0-24 months   MAL-ED           INDIA                          Medium               High              1.0370370   0.3783556    2.842421
0-24 months   NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   NIH-Birth        BANGLADESH                     Low                  High              1.9722992   1.2032910    3.232771
0-24 months   NIH-Birth        BANGLADESH                     Medium               High              1.3751811   0.8074757    2.342019
0-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.7493113   0.9449556    3.238343
0-24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.6804071   0.9112190    3.098891
0-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000    1.000000
0-24 months   PROBIT           BELARUS                        Low                  High              1.1925708   0.9145757    1.555065
0-24 months   PROBIT           BELARUS                        Medium               High              1.1180169   0.8725144    1.432597
0-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   PROVIDE          BANGLADESH                     Low                  High              1.7570093   0.8146380    3.789513
0-24 months   PROVIDE          BANGLADESH                     Medium               High              1.4980080   0.6933570    3.236468
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              2.5117889   1.7373183    3.631507
0-24 months   SAS-CompFeed     INDIA                          Medium               High              1.6447937   1.1046742    2.448999
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2929804   0.5999184    2.786709
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.9899570   0.6999193    1.400183
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.0515196   0.9215110    1.199870
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              0.9979891   0.8787901    1.133356
0-6 months    CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          Low                  High              1.3354290   0.8067150    2.210658
0-6 months    CMC-V-BCS-2002   INDIA                          Medium               High              1.0158160   0.5865479    1.759246
0-6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
0-6 months    COHORTS          GUATEMALA                      Low                  High              0.6877380   0.3507496    1.348494
0-6 months    COHORTS          GUATEMALA                      Medium               High              1.4989542   0.7998883    2.808972
0-6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    COHORTS          INDIA                          Low                  High              1.6558982   1.1797734    2.324174
0-6 months    COHORTS          INDIA                          Medium               High              1.3022512   0.9330828    1.817479
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              0.7535484   0.5450500    1.041804
0-6 months    COHORTS          PHILIPPINES                    Medium               High              0.8235501   0.6059578    1.119277
0-6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    GMS-Nepal        NEPAL                          Low                  High              0.8431818   0.4594975    1.547246
0-6 months    GMS-Nepal        NEPAL                          Medium               High              0.9625668   0.4654067    1.990807
0-6 months    IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    IRC              INDIA                          Low                  High              1.1950113   0.8388582    1.702376
0-6 months    IRC              INDIA                          Medium               High              0.9664269   0.6586991    1.417917
0-6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    JiVitA-3         BANGLADESH                     Low                  High              1.1651149   0.9990890    1.358731
0-6 months    JiVitA-3         BANGLADESH                     Medium               High              0.9665113   0.8217222    1.136813
0-6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    JiVitA-4         BANGLADESH                     Low                  High              1.0993397   0.6318466    1.912724
0-6 months    JiVitA-4         BANGLADESH                     Medium               High              1.1546961   0.6835672    1.950537
0-6 months    NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    NIH-Birth        BANGLADESH                     Low                  High              1.3734818   0.7158382    2.635305
0-6 months    NIH-Birth        BANGLADESH                     Medium               High              1.2548742   0.6421367    2.452296
0-6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    NIH-Crypto       BANGLADESH                     Low                  High              1.2744982   0.6421081    2.529708
0-6 months    NIH-Crypto       BANGLADESH                     Medium               High              1.3157034   0.6740234    2.568272
0-6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000    1.000000
0-6 months    PROBIT           BELARUS                        Low                  High              1.1764911   0.8993466    1.539041
0-6 months    PROBIT           BELARUS                        Medium               High              1.1091400   0.8641098    1.423652
0-6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    PROVIDE          BANGLADESH                     Low                  High              0.9608645   0.3541751    2.606791
0-6 months    PROVIDE          BANGLADESH                     Medium               High              1.6384462   0.6996975    3.836667
0-6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    SAS-CompFeed     INDIA                          Low                  High              1.8969072   1.1820958    3.043964
0-6 months    SAS-CompFeed     INDIA                          Medium               High              1.3690476   0.8796837    2.130642
0-6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  High              0.9219364   0.7859634    1.081433
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               High              0.9275172   0.7982038    1.077780
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
6-24 months   COHORTS          PHILIPPINES                    Low                  High              1.9910272   1.3871955    2.857700
6-24 months   COHORTS          PHILIPPINES                    Medium               High              1.8314733   1.2741703    2.632532
6-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   GMS-Nepal        NEPAL                          Low                  High              2.2049689   1.0654565    4.563197
6-24 months   GMS-Nepal        NEPAL                          Medium               High              1.4915966   0.6406116    3.473026
6-24 months   IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   IRC              INDIA                          Low                  High              1.3496599   0.4524960    4.025631
6-24 months   IRC              INDIA                          Medium               High              2.3194245   0.8500256    6.328904
6-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.5255822   1.2363139    1.882532
6-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.3079632   1.0399900    1.644985
6-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   JiVitA-4         BANGLADESH                     Low                  High              2.2803985   1.5088832    3.446401
6-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.9862154   1.3064685    3.019630
6-24 months   NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   NIH-Birth        BANGLADESH                     Low                  High              3.7191201   1.5781718    8.764480
6-24 months   NIH-Birth        BANGLADESH                     Medium               High              1.9485816   0.7661679    4.955794
6-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   SAS-CompFeed     INDIA                          Low                  High              3.7559964   2.1546067    6.547603
6-24 months   SAS-CompFeed     INDIA                          Medium               High              2.2636940   1.2007506    4.267590
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              2.0996732   0.7988343    5.518826
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2942828   0.7632538    2.194772
6-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.4656363   1.1426977    1.879841
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.2906165   1.0091046    1.650662


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0188007   -0.0319361   0.0695375
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0038956   -0.0311187   0.0233275
0-24 months   COHORTS          INDIA                          High                 NA                 0.0475261    0.0318497   0.0632026
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0107255   -0.0039802   0.0254313
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0686746   -0.0113648   0.1487140
0-24 months   IRC              INDIA                          High                 NA                 0.0188828   -0.0503517   0.0881173
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0055221    0.0011206   0.0099236
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0199644    0.0104720   0.0294569
0-24 months   MAL-ED           INDIA                          High                 NA                 0.0047619   -0.0571564   0.0666802
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0519123    0.0105813   0.0932432
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0280161    0.0019217   0.0541106
0-24 months   PROBIT           BELARUS                        High                 NA                 0.0087179   -0.0053279   0.0227636
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0174468   -0.0055553   0.0404489
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0697495    0.0400253   0.0994737
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0001971   -0.0166125   0.0170066
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0009432   -0.0034748   0.0053612
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                 0.0164601   -0.0288854   0.0618057
0-6 months    COHORTS          GUATEMALA                      High                 NA                 0.0004293   -0.0280230   0.0288815
0-6 months    COHORTS          INDIA                          High                 NA                 0.0198095    0.0046198   0.0349991
0-6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0103066   -0.0220334   0.0014202
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0152862   -0.0824143   0.0518419
0-6 months    IRC              INDIA                          High                 NA                 0.0169945   -0.0502926   0.0842816
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0019532   -0.0017680   0.0056744
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0016613   -0.0047786   0.0081012
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                 0.0165858   -0.0172399   0.0504116
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0108450   -0.0130878   0.0347777
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0080215   -0.0061203   0.0221634
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.0073860   -0.0124915   0.0272636
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0229669    0.0036581   0.0422757
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0024459   -0.0063067   0.0014149
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0108087   -0.0208939   0.0425113
6-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0080161   -0.0275357   0.0115035
6-24 months   COHORTS          INDIA                          High                 NA                 0.0305664    0.0235113   0.0376215
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0242332    0.0131599   0.0353066
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0922091    0.0239190   0.1604993
6-24 months   IRC              INDIA                          High                 NA                 0.0230921   -0.0090432   0.0552273
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0068378    0.0032602   0.0104154
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0186541    0.0108202   0.0264880
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0503443    0.0194871   0.0812016
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0600484    0.0396065   0.0804904
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0081991   -0.0056758   0.0220739
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0048085    0.0016590   0.0079579


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0762245   -0.1539619   0.2604946
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0547872   -0.5161813   0.2661985
0-24 months   COHORTS          INDIA                          High                 NA                 0.4613667    0.2902040   0.5912546
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0854954   -0.0393412   0.1953378
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.2649987   -0.1175202   0.5165842
0-24 months   IRC              INDIA                          High                 NA                 0.0552995   -0.1708578   0.2377734
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0904296    0.0158870   0.1593259
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.3163955    0.1482487   0.4513480
0-24 months   MAL-ED           INDIA                          High                 NA                 0.0476190   -0.8241477   0.5027653
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.3272046    0.0164967   0.5397539
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.3217609   -0.0425310   0.5587582
0-24 months   PROBIT           BELARUS                        High                 NA                 0.1111809   -0.0729024   0.2636801
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.2907801   -0.2027902   0.5818117
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.4732334    0.2837393   0.6125949
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0029760   -0.2861107   0.2270830
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0102218   -0.0388319   0.0569591
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                 0.0904078   -0.1954866   0.3079321
0-6 months    COHORTS          GUATEMALA                      High                 NA                 0.0070494   -0.5895954   0.3797473
0-6 months    COHORTS          INDIA                          High                 NA                 0.2758614    0.0320920   0.4582370
0-6 months    COHORTS          PHILIPPINES                    High                 NA                -0.1486886   -0.3298919   0.0078250
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.1321579   -0.8895474   0.3216462
0-6 months    IRC              INDIA                          High                 NA                 0.0552995   -0.1910723   0.2507097
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0471599   -0.0467459   0.1326411
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0759851   -0.2710744   0.3282820
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                 0.1842211   -0.2892066   0.4837948
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.1644094   -0.2862845   0.4571873
0-6 months    PROBIT           BELARUS                        High                 NA                 0.1032169   -0.0843526   0.2583409
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.1782832   -0.4663291   0.5395178
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.3456522    0.0452927   0.5515159
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0355398   -0.0931488   0.0190332
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.1343882   -0.3612271   0.4495527
6-24 months   COHORTS          GUATEMALA                      High                 NA                -0.3201102   -1.3687346   0.2642946
6-24 months   COHORTS          INDIA                          High                 NA                 0.8209477    0.5757824   0.9244262
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.3620806    0.1822304   0.5023768
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.4832746   -0.0191883   0.7380218
6-24 months   IRC              INDIA                          High                 NA                 0.3641439   -0.3738866   0.7057159
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.2140523    0.0955606   0.3170203
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.4244981    0.2145509   0.5783274
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.5684713    0.1027881   0.7924493
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.6224424    0.3772273   0.7711047
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1986545   -0.2153224   0.4716180
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.1458745    0.0460116   0.2352839
