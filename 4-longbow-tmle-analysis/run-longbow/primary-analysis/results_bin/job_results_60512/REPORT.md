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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        feducyrs    pers_wast   n_cell       n
------------  ---------------  -----------------------------  ---------  ----------  -------  ------
0-24 months   COHORTS          GUATEMALA                      High                0      182     999
0-24 months   COHORTS          GUATEMALA                      High                1        6     999
0-24 months   COHORTS          GUATEMALA                      Low                 0      431     999
0-24 months   COHORTS          GUATEMALA                      Low                 1       14     999
0-24 months   COHORTS          GUATEMALA                      Medium              0      351     999
0-24 months   COHORTS          GUATEMALA                      Medium              1       15     999
0-24 months   COHORTS          INDIA                          High                0      454    1242
0-24 months   COHORTS          INDIA                          High                1       33    1242
0-24 months   COHORTS          INDIA                          Low                 0      366    1242
0-24 months   COHORTS          INDIA                          Low                 1       38    1242
0-24 months   COHORTS          INDIA                          Medium              0      324    1242
0-24 months   COHORTS          INDIA                          Medium              1       27    1242
0-24 months   COHORTS          PHILIPPINES                    High                0      892    2659
0-24 months   COHORTS          PHILIPPINES                    High                1       31    2659
0-24 months   COHORTS          PHILIPPINES                    Low                 0      736    2659
0-24 months   COHORTS          PHILIPPINES                    Low                 1       44    2659
0-24 months   COHORTS          PHILIPPINES                    Medium              0      897    2659
0-24 months   COHORTS          PHILIPPINES                    Medium              1       59    2659
0-24 months   GMS-Nepal        NEPAL                          High                0      126     596
0-24 months   GMS-Nepal        NEPAL                          High                1       20     596
0-24 months   GMS-Nepal        NEPAL                          Low                 0      221     596
0-24 months   GMS-Nepal        NEPAL                          Low                 1       36     596
0-24 months   GMS-Nepal        NEPAL                          Medium              0      169     596
0-24 months   GMS-Nepal        NEPAL                          Medium              1       24     596
0-24 months   JiVitA-3         BANGLADESH                     High                0     3853   15189
0-24 months   JiVitA-3         BANGLADESH                     High                1      178   15189
0-24 months   JiVitA-3         BANGLADESH                     Low                 0     5568   15189
0-24 months   JiVitA-3         BANGLADESH                     Low                 1      367   15189
0-24 months   JiVitA-3         BANGLADESH                     Medium              0     4914   15189
0-24 months   JiVitA-3         BANGLADESH                     Medium              1      309   15189
0-24 months   JiVitA-4         BANGLADESH                     High                0     1133    5132
0-24 months   JiVitA-4         BANGLADESH                     High                1       77    5132
0-24 months   JiVitA-4         BANGLADESH                     Low                 0     1729    5132
0-24 months   JiVitA-4         BANGLADESH                     Low                 1      167    5132
0-24 months   JiVitA-4         BANGLADESH                     Medium              0     1854    5132
0-24 months   JiVitA-4         BANGLADESH                     Medium              1      172    5132
0-24 months   LCNI-5           MALAWI                         High                0      214     712
0-24 months   LCNI-5           MALAWI                         High                1        2     712
0-24 months   LCNI-5           MALAWI                         Low                 0      258     712
0-24 months   LCNI-5           MALAWI                         Low                 1        1     712
0-24 months   LCNI-5           MALAWI                         Medium              0      234     712
0-24 months   LCNI-5           MALAWI                         Medium              1        3     712
0-24 months   MAL-ED           BANGLADESH                     High                0       48     138
0-24 months   MAL-ED           BANGLADESH                     High                1        3     138
0-24 months   MAL-ED           BANGLADESH                     Low                 0       38     138
0-24 months   MAL-ED           BANGLADESH                     Low                 1        0     138
0-24 months   MAL-ED           BANGLADESH                     Medium              0       45     138
0-24 months   MAL-ED           BANGLADESH                     Medium              1        4     138
0-24 months   MAL-ED           INDIA                          High                0       43     139
0-24 months   MAL-ED           INDIA                          High                1        0     139
0-24 months   MAL-ED           INDIA                          Low                 0       51     139
0-24 months   MAL-ED           INDIA                          Low                 1        4     139
0-24 months   MAL-ED           INDIA                          Medium              0       32     139
0-24 months   MAL-ED           INDIA                          Medium              1        9     139
0-24 months   MAL-ED           NEPAL                          High                0       40      96
0-24 months   MAL-ED           NEPAL                          High                1        1      96
0-24 months   MAL-ED           NEPAL                          Low                 0       27      96
0-24 months   MAL-ED           NEPAL                          Low                 1        0      96
0-24 months   MAL-ED           NEPAL                          Medium              0       27      96
0-24 months   MAL-ED           NEPAL                          Medium              1        1      96
0-24 months   MAL-ED           PERU                           High                0      110     234
0-24 months   MAL-ED           PERU                           High                1        1     234
0-24 months   MAL-ED           PERU                           Low                 0       63     234
0-24 months   MAL-ED           PERU                           Low                 1        0     234
0-24 months   MAL-ED           PERU                           Medium              0       60     234
0-24 months   MAL-ED           PERU                           Medium              1        0     234
0-24 months   MAL-ED           SOUTH AFRICA                   High                0       38      99
0-24 months   MAL-ED           SOUTH AFRICA                   High                1        0      99
0-24 months   MAL-ED           SOUTH AFRICA                   Low                 0       35      99
0-24 months   MAL-ED           SOUTH AFRICA                   Low                 1        1      99
0-24 months   MAL-ED           SOUTH AFRICA                   Medium              0       25      99
0-24 months   MAL-ED           SOUTH AFRICA                   Medium              1        0      99
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                0      129     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                 0       58     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                 1        0     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium              0       19     206
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium              1        0     206
0-24 months   NIH-Crypto       BANGLADESH                     High                0      282     730
0-24 months   NIH-Crypto       BANGLADESH                     High                1        4     730
0-24 months   NIH-Crypto       BANGLADESH                     Low                 0      215     730
0-24 months   NIH-Crypto       BANGLADESH                     Low                 1       14     730
0-24 months   NIH-Crypto       BANGLADESH                     Medium              0      207     730
0-24 months   NIH-Crypto       BANGLADESH                     Medium              1        8     730
0-24 months   PROBIT           BELARUS                        High                0     2617   16012
0-24 months   PROBIT           BELARUS                        High                1       17   16012
0-24 months   PROBIT           BELARUS                        Low                 0     6258   16012
0-24 months   PROBIT           BELARUS                        Low                 1       56   16012
0-24 months   PROBIT           BELARUS                        Medium              0     7006   16012
0-24 months   PROBIT           BELARUS                        Medium              1       58   16012
0-24 months   PROVIDE          BANGLADESH                     High                0      216     641
0-24 months   PROVIDE          BANGLADESH                     High                1        4     641
0-24 months   PROVIDE          BANGLADESH                     Low                 0      208     641
0-24 months   PROVIDE          BANGLADESH                     Low                 1        8     641
0-24 months   PROVIDE          BANGLADESH                     Medium              0      202     641
0-24 months   PROVIDE          BANGLADESH                     Medium              1        3     641
0-24 months   SAS-CompFeed     INDIA                          High                0      345    1363
0-24 months   SAS-CompFeed     INDIA                          High                1       17    1363
0-24 months   SAS-CompFeed     INDIA                          Low                 0      501    1363
0-24 months   SAS-CompFeed     INDIA                          Low                 1       62    1363
0-24 months   SAS-CompFeed     INDIA                          Medium              0      403    1363
0-24 months   SAS-CompFeed     INDIA                          Medium              1       35    1363
0-24 months   SAS-FoodSuppl    INDIA                          High                0       86     375
0-24 months   SAS-FoodSuppl    INDIA                          High                1       13     375
0-24 months   SAS-FoodSuppl    INDIA                          Low                 0      107     375
0-24 months   SAS-FoodSuppl    INDIA                          Low                 1       24     375
0-24 months   SAS-FoodSuppl    INDIA                          Medium              0      117     375
0-24 months   SAS-FoodSuppl    INDIA                          Medium              1       28     375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      393    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1        9    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0     1123    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1       29    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0      581    2155
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       20    2155
0-24 months   ZVITAMBO         ZIMBABWE                       High                0      611    9246
0-24 months   ZVITAMBO         ZIMBABWE                       High                1        9    9246
0-24 months   ZVITAMBO         ZIMBABWE                       Low                 0     1568    9246
0-24 months   ZVITAMBO         ZIMBABWE                       Low                 1       45    9246
0-24 months   ZVITAMBO         ZIMBABWE                       Medium              0     6904    9246
0-24 months   ZVITAMBO         ZIMBABWE                       Medium              1      109    9246
0-6 months    COHORTS          PHILIPPINES                    High                0      259     804
0-6 months    COHORTS          PHILIPPINES                    High                1       18     804
0-6 months    COHORTS          PHILIPPINES                    Low                 0      209     804
0-6 months    COHORTS          PHILIPPINES                    Low                 1       11     804
0-6 months    COHORTS          PHILIPPINES                    Medium              0      288     804
0-6 months    COHORTS          PHILIPPINES                    Medium              1       19     804
0-6 months    GMS-Nepal        NEPAL                          High                0      123     566
0-6 months    GMS-Nepal        NEPAL                          High                1       14     566
0-6 months    GMS-Nepal        NEPAL                          Low                 0      221     566
0-6 months    GMS-Nepal        NEPAL                          Low                 1       26     566
0-6 months    GMS-Nepal        NEPAL                          Medium              0      160     566
0-6 months    GMS-Nepal        NEPAL                          Medium              1       22     566
0-6 months    JiVitA-3         BANGLADESH                     High                0       18      48
0-6 months    JiVitA-3         BANGLADESH                     High                1        1      48
0-6 months    JiVitA-3         BANGLADESH                     Low                 0       13      48
0-6 months    JiVitA-3         BANGLADESH                     Low                 1        1      48
0-6 months    JiVitA-3         BANGLADESH                     Medium              0       15      48
0-6 months    JiVitA-3         BANGLADESH                     Medium              1        0      48
0-6 months    MAL-ED           BANGLADESH                     High                0       49     138
0-6 months    MAL-ED           BANGLADESH                     High                1        2     138
0-6 months    MAL-ED           BANGLADESH                     Low                 0       36     138
0-6 months    MAL-ED           BANGLADESH                     Low                 1        2     138
0-6 months    MAL-ED           BANGLADESH                     Medium              0       47     138
0-6 months    MAL-ED           BANGLADESH                     Medium              1        2     138
0-6 months    MAL-ED           INDIA                          High                0       41     138
0-6 months    MAL-ED           INDIA                          High                1        1     138
0-6 months    MAL-ED           INDIA                          Low                 0       50     138
0-6 months    MAL-ED           INDIA                          Low                 1        5     138
0-6 months    MAL-ED           INDIA                          Medium              0       37     138
0-6 months    MAL-ED           INDIA                          Medium              1        4     138
0-6 months    MAL-ED           NEPAL                          High                0       39      96
0-6 months    MAL-ED           NEPAL                          High                1        2      96
0-6 months    MAL-ED           NEPAL                          Low                 0       27      96
0-6 months    MAL-ED           NEPAL                          Low                 1        0      96
0-6 months    MAL-ED           NEPAL                          Medium              0       28      96
0-6 months    MAL-ED           NEPAL                          Medium              1        0      96
0-6 months    MAL-ED           PERU                           High                0      111     234
0-6 months    MAL-ED           PERU                           High                1        0     234
0-6 months    MAL-ED           PERU                           Low                 0       63     234
0-6 months    MAL-ED           PERU                           Low                 1        0     234
0-6 months    MAL-ED           PERU                           Medium              0       60     234
0-6 months    MAL-ED           PERU                           Medium              1        0     234
0-6 months    MAL-ED           SOUTH AFRICA                   High                0       38      99
0-6 months    MAL-ED           SOUTH AFRICA                   High                1        0      99
0-6 months    MAL-ED           SOUTH AFRICA                   Low                 0       35      99
0-6 months    MAL-ED           SOUTH AFRICA                   Low                 1        1      99
0-6 months    MAL-ED           SOUTH AFRICA                   Medium              0       25      99
0-6 months    MAL-ED           SOUTH AFRICA                   Medium              1        0      99
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                0      129     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                 0       58     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                 1        0     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium              0       19     206
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium              1        0     206
0-6 months    NIH-Crypto       BANGLADESH                     High                0       75     250
0-6 months    NIH-Crypto       BANGLADESH                     High                1        1     250
0-6 months    NIH-Crypto       BANGLADESH                     Low                 0      102     250
0-6 months    NIH-Crypto       BANGLADESH                     Low                 1        2     250
0-6 months    NIH-Crypto       BANGLADESH                     Medium              0       68     250
0-6 months    NIH-Crypto       BANGLADESH                     Medium              1        2     250
0-6 months    PROBIT           BELARUS                        High                0     1861   13069
0-6 months    PROBIT           BELARUS                        High                1      149   13069
0-6 months    PROBIT           BELARUS                        Low                 0     4746   13069
0-6 months    PROBIT           BELARUS                        Low                 1      428   13069
0-6 months    PROBIT           BELARUS                        Medium              0     5412   13069
0-6 months    PROBIT           BELARUS                        Medium              1      473   13069
0-6 months    PROVIDE          BANGLADESH                     High                0      213     638
0-6 months    PROVIDE          BANGLADESH                     High                1        6     638
0-6 months    PROVIDE          BANGLADESH                     Low                 0      209     638
0-6 months    PROVIDE          BANGLADESH                     Low                 1        6     638
0-6 months    PROVIDE          BANGLADESH                     Medium              0      202     638
0-6 months    PROVIDE          BANGLADESH                     Medium              1        2     638
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      364    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       13    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0     1076    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1       23    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0      559    2051
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       16    2051
0-6 months    ZVITAMBO         ZIMBABWE                       High                0       45     613
0-6 months    ZVITAMBO         ZIMBABWE                       High                1        2     613
0-6 months    ZVITAMBO         ZIMBABWE                       Low                 0      102     613
0-6 months    ZVITAMBO         ZIMBABWE                       Low                 1        2     613
0-6 months    ZVITAMBO         ZIMBABWE                       Medium              0      452     613
0-6 months    ZVITAMBO         ZIMBABWE                       Medium              1       10     613
6-24 months   COHORTS          GUATEMALA                      High                0      182     999
6-24 months   COHORTS          GUATEMALA                      High                1        6     999
6-24 months   COHORTS          GUATEMALA                      Low                 0      431     999
6-24 months   COHORTS          GUATEMALA                      Low                 1       14     999
6-24 months   COHORTS          GUATEMALA                      Medium              0      351     999
6-24 months   COHORTS          GUATEMALA                      Medium              1       15     999
6-24 months   COHORTS          INDIA                          High                0      454    1242
6-24 months   COHORTS          INDIA                          High                1       33    1242
6-24 months   COHORTS          INDIA                          Low                 0      366    1242
6-24 months   COHORTS          INDIA                          Low                 1       38    1242
6-24 months   COHORTS          INDIA                          Medium              0      324    1242
6-24 months   COHORTS          INDIA                          Medium              1       27    1242
6-24 months   COHORTS          PHILIPPINES                    High                0      892    2659
6-24 months   COHORTS          PHILIPPINES                    High                1       31    2659
6-24 months   COHORTS          PHILIPPINES                    Low                 0      736    2659
6-24 months   COHORTS          PHILIPPINES                    Low                 1       44    2659
6-24 months   COHORTS          PHILIPPINES                    Medium              0      897    2659
6-24 months   COHORTS          PHILIPPINES                    Medium              1       59    2659
6-24 months   GMS-Nepal        NEPAL                          High                0      126     596
6-24 months   GMS-Nepal        NEPAL                          High                1       20     596
6-24 months   GMS-Nepal        NEPAL                          Low                 0      221     596
6-24 months   GMS-Nepal        NEPAL                          Low                 1       36     596
6-24 months   GMS-Nepal        NEPAL                          Medium              0      169     596
6-24 months   GMS-Nepal        NEPAL                          Medium              1       24     596
6-24 months   JiVitA-3         BANGLADESH                     High                0     3853   15189
6-24 months   JiVitA-3         BANGLADESH                     High                1      178   15189
6-24 months   JiVitA-3         BANGLADESH                     Low                 0     5568   15189
6-24 months   JiVitA-3         BANGLADESH                     Low                 1      367   15189
6-24 months   JiVitA-3         BANGLADESH                     Medium              0     4914   15189
6-24 months   JiVitA-3         BANGLADESH                     Medium              1      309   15189
6-24 months   JiVitA-4         BANGLADESH                     High                0     1133    5132
6-24 months   JiVitA-4         BANGLADESH                     High                1       77    5132
6-24 months   JiVitA-4         BANGLADESH                     Low                 0     1729    5132
6-24 months   JiVitA-4         BANGLADESH                     Low                 1      167    5132
6-24 months   JiVitA-4         BANGLADESH                     Medium              0     1854    5132
6-24 months   JiVitA-4         BANGLADESH                     Medium              1      172    5132
6-24 months   LCNI-5           MALAWI                         High                0      214     712
6-24 months   LCNI-5           MALAWI                         High                1        2     712
6-24 months   LCNI-5           MALAWI                         Low                 0      258     712
6-24 months   LCNI-5           MALAWI                         Low                 1        1     712
6-24 months   LCNI-5           MALAWI                         Medium              0      234     712
6-24 months   LCNI-5           MALAWI                         Medium              1        3     712
6-24 months   MAL-ED           BANGLADESH                     High                0       48     138
6-24 months   MAL-ED           BANGLADESH                     High                1        3     138
6-24 months   MAL-ED           BANGLADESH                     Low                 0       38     138
6-24 months   MAL-ED           BANGLADESH                     Low                 1        0     138
6-24 months   MAL-ED           BANGLADESH                     Medium              0       45     138
6-24 months   MAL-ED           BANGLADESH                     Medium              1        4     138
6-24 months   MAL-ED           INDIA                          High                0       43     139
6-24 months   MAL-ED           INDIA                          High                1        0     139
6-24 months   MAL-ED           INDIA                          Low                 0       51     139
6-24 months   MAL-ED           INDIA                          Low                 1        4     139
6-24 months   MAL-ED           INDIA                          Medium              0       32     139
6-24 months   MAL-ED           INDIA                          Medium              1        9     139
6-24 months   MAL-ED           NEPAL                          High                0       40      96
6-24 months   MAL-ED           NEPAL                          High                1        1      96
6-24 months   MAL-ED           NEPAL                          Low                 0       27      96
6-24 months   MAL-ED           NEPAL                          Low                 1        0      96
6-24 months   MAL-ED           NEPAL                          Medium              0       27      96
6-24 months   MAL-ED           NEPAL                          Medium              1        1      96
6-24 months   MAL-ED           PERU                           High                0      110     234
6-24 months   MAL-ED           PERU                           High                1        1     234
6-24 months   MAL-ED           PERU                           Low                 0       63     234
6-24 months   MAL-ED           PERU                           Low                 1        0     234
6-24 months   MAL-ED           PERU                           Medium              0       60     234
6-24 months   MAL-ED           PERU                           Medium              1        0     234
6-24 months   MAL-ED           SOUTH AFRICA                   High                0       38      99
6-24 months   MAL-ED           SOUTH AFRICA                   High                1        0      99
6-24 months   MAL-ED           SOUTH AFRICA                   Low                 0       35      99
6-24 months   MAL-ED           SOUTH AFRICA                   Low                 1        1      99
6-24 months   MAL-ED           SOUTH AFRICA                   Medium              0       25      99
6-24 months   MAL-ED           SOUTH AFRICA                   Medium              1        0      99
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                0      129     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                 0       58     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                 1        0     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium              0       19     206
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium              1        0     206
6-24 months   NIH-Crypto       BANGLADESH                     High                0      282     730
6-24 months   NIH-Crypto       BANGLADESH                     High                1        4     730
6-24 months   NIH-Crypto       BANGLADESH                     Low                 0      215     730
6-24 months   NIH-Crypto       BANGLADESH                     Low                 1       14     730
6-24 months   NIH-Crypto       BANGLADESH                     Medium              0      207     730
6-24 months   NIH-Crypto       BANGLADESH                     Medium              1        8     730
6-24 months   PROBIT           BELARUS                        High                0     2617   16012
6-24 months   PROBIT           BELARUS                        High                1       17   16012
6-24 months   PROBIT           BELARUS                        Low                 0     6258   16012
6-24 months   PROBIT           BELARUS                        Low                 1       56   16012
6-24 months   PROBIT           BELARUS                        Medium              0     7006   16012
6-24 months   PROBIT           BELARUS                        Medium              1       58   16012
6-24 months   PROVIDE          BANGLADESH                     High                0      216     641
6-24 months   PROVIDE          BANGLADESH                     High                1        4     641
6-24 months   PROVIDE          BANGLADESH                     Low                 0      208     641
6-24 months   PROVIDE          BANGLADESH                     Low                 1        8     641
6-24 months   PROVIDE          BANGLADESH                     Medium              0      202     641
6-24 months   PROVIDE          BANGLADESH                     Medium              1        3     641
6-24 months   SAS-CompFeed     INDIA                          High                0      345    1363
6-24 months   SAS-CompFeed     INDIA                          High                1       17    1363
6-24 months   SAS-CompFeed     INDIA                          Low                 0      501    1363
6-24 months   SAS-CompFeed     INDIA                          Low                 1       62    1363
6-24 months   SAS-CompFeed     INDIA                          Medium              0      403    1363
6-24 months   SAS-CompFeed     INDIA                          Medium              1       35    1363
6-24 months   SAS-FoodSuppl    INDIA                          High                0       86     375
6-24 months   SAS-FoodSuppl    INDIA                          High                1       13     375
6-24 months   SAS-FoodSuppl    INDIA                          Low                 0      107     375
6-24 months   SAS-FoodSuppl    INDIA                          Low                 1       24     375
6-24 months   SAS-FoodSuppl    INDIA                          Medium              0      117     375
6-24 months   SAS-FoodSuppl    INDIA                          Medium              1       28     375
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      393    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1        9    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0     1123    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1       29    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0      581    2155
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       20    2155
6-24 months   ZVITAMBO         ZIMBABWE                       High                0      611    9246
6-24 months   ZVITAMBO         ZIMBABWE                       High                1        9    9246
6-24 months   ZVITAMBO         ZIMBABWE                       Low                 0     1568    9246
6-24 months   ZVITAMBO         ZIMBABWE                       Low                 1       45    9246
6-24 months   ZVITAMBO         ZIMBABWE                       Medium              0     6904    9246
6-24 months   ZVITAMBO         ZIMBABWE                       Medium              1      109    9246


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/83b07af7-c9c2-4843-ab45-72bb5a520b3d/a4f86642-1be4-418f-88dd-04ae6ff42156/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/83b07af7-c9c2-4843-ab45-72bb5a520b3d/a4f86642-1be4-418f-88dd-04ae6ff42156/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/83b07af7-c9c2-4843-ab45-72bb5a520b3d/a4f86642-1be4-418f-88dd-04ae6ff42156/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/83b07af7-c9c2-4843-ab45-72bb5a520b3d/a4f86642-1be4-418f-88dd-04ae6ff42156/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.0319149   0.0067764   0.0570534
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.0314607   0.0152340   0.0476873
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.0409836   0.0206627   0.0613045
0-24 months   COHORTS          INDIA                          High                 NA                0.0683382   0.0459062   0.0907702
0-24 months   COHORTS          INDIA                          Low                  NA                0.0939371   0.0654021   0.1224720
0-24 months   COHORTS          INDIA                          Medium               NA                0.0761968   0.0482305   0.1041631
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.0349766   0.0232177   0.0467356
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.0552620   0.0391041   0.0714199
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.0604175   0.0450885   0.0757464
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.1418352   0.0851234   0.1985471
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.1387342   0.0969462   0.1805223
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.1231369   0.0750979   0.1711759
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.0440971   0.0327019   0.0554923
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.0571399   0.0490360   0.0652438
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.0631772   0.0540553   0.0722990
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.0841144   0.0564338   0.1117949
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.0781317   0.0612933   0.0949702
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.0832351   0.0702713   0.0961990
0-24 months   PROBIT           BELARUS                        High                 NA                0.0065384   0.0017065   0.0113703
0-24 months   PROBIT           BELARUS                        Low                  NA                0.0092013   0.0048419   0.0135607
0-24 months   PROBIT           BELARUS                        Medium               NA                0.0082788   0.0032103   0.0133472
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.0634408   0.0026712   0.1242103
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.0900586   0.0713513   0.1087659
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.0810126   0.0564133   0.1056119
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.1370333   0.0675231   0.2065435
0-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.1728836   0.1053018   0.2404655
0-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.1990924   0.1336540   0.2645308
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0223881   0.0079228   0.0368534
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0251736   0.0161255   0.0342217
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0332779   0.0189349   0.0476209
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0145161   0.0051010   0.0239312
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0278983   0.0198612   0.0359354
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0155426   0.0126474   0.0184378
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.0645100   0.0354238   0.0935962
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.0495890   0.0206927   0.0784852
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.0618239   0.0346325   0.0890153
0-6 months    GMS-Nepal        NEPAL                          High                 NA                0.1009094   0.0505008   0.1513180
0-6 months    GMS-Nepal        NEPAL                          Low                  NA                0.1030248   0.0649753   0.1410743
0-6 months    GMS-Nepal        NEPAL                          Medium               NA                0.1217941   0.0739649   0.1696232
0-6 months    PROBIT           BELARUS                        High                 NA                0.0740013   0.0455941   0.1024085
0-6 months    PROBIT           BELARUS                        Low                  NA                0.0818579   0.0561640   0.1075518
0-6 months    PROBIT           BELARUS                        Medium               NA                0.0808838   0.0539068   0.1078607
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0343288   0.0161303   0.0525273
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0206210   0.0122280   0.0290140
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0285834   0.0146142   0.0425526
6-24 months   COHORTS          GUATEMALA                      High                 NA                0.0319149   0.0067764   0.0570534
6-24 months   COHORTS          GUATEMALA                      Low                  NA                0.0314607   0.0152340   0.0476873
6-24 months   COHORTS          GUATEMALA                      Medium               NA                0.0409836   0.0206627   0.0613045
6-24 months   COHORTS          INDIA                          High                 NA                0.0677983   0.0453563   0.0902403
6-24 months   COHORTS          INDIA                          Low                  NA                0.0939610   0.0654802   0.1224417
6-24 months   COHORTS          INDIA                          Medium               NA                0.0764018   0.0484682   0.1043354
6-24 months   COHORTS          PHILIPPINES                    High                 NA                0.0346886   0.0229354   0.0464418
6-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.0548236   0.0387889   0.0708583
6-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.0616163   0.0462584   0.0769742
6-24 months   GMS-Nepal        NEPAL                          High                 NA                0.1382856   0.0820331   0.1945381
6-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.1377881   0.0957799   0.1797963
6-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.1261553   0.0783726   0.1739380
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.0459661   0.0342971   0.0576351
6-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.0568124   0.0486113   0.0650135
6-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.0614228   0.0526233   0.0702223
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.0814761   0.0572927   0.1056595
6-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.0756342   0.0596664   0.0916020
6-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.0838713   0.0706042   0.0971383
6-24 months   PROBIT           BELARUS                        High                 NA                0.0066002   0.0017373   0.0114631
6-24 months   PROBIT           BELARUS                        Low                  NA                0.0092416   0.0048774   0.0136059
6-24 months   PROBIT           BELARUS                        Medium               NA                0.0082280   0.0032566   0.0131995
6-24 months   SAS-CompFeed     INDIA                          High                 NA                0.0634408   0.0026712   0.1242103
6-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.0900586   0.0713513   0.1087659
6-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.0810126   0.0564133   0.1056119
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.1402283   0.0725019   0.2079547
6-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.1767041   0.1093492   0.2440590
6-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.1989155   0.1333256   0.2645054
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0223881   0.0079228   0.0368534
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0251736   0.0161255   0.0342217
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0332779   0.0189349   0.0476209
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0145161   0.0051010   0.0239312
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0278983   0.0198612   0.0359354
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0155426   0.0126474   0.0184378


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0350350   0.0236276   0.0464425
0-24 months   COHORTS          INDIA                          NA                   NA                0.0789050   0.0639058   0.0939041
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0503949   0.0420785   0.0587113
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1342282   0.1068369   0.1616195
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0562249   0.0520204   0.0604294
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0810600   0.0722782   0.0898418
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0081814   0.0045192   0.0118436
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0836390   0.0602327   0.1070453
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0269142   0.0200799   0.0337484
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176292   0.0149467   0.0203118
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0597015   0.0433139   0.0760891
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.1095406   0.0837882   0.1352931
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0803428   0.0548486   0.1058370
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253535   0.0185487   0.0321583
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0350350   0.0236276   0.0464425
6-24 months   COHORTS          INDIA                          NA                   NA                0.0789050   0.0639058   0.0939041
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0503949   0.0420785   0.0587113
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1342282   0.1068369   0.1616195
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0562249   0.0520204   0.0604294
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0810600   0.0722782   0.0898418
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0081814   0.0045192   0.0118436
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0836390   0.0602327   0.1070453
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0269142   0.0200799   0.0337484
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176292   0.0149467   0.0203118


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      Low                  High              0.9857678   0.3844846   2.527379
0-24 months   COHORTS          GUATEMALA                      Medium               High              1.2841530   0.5062921   3.257110
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          Low                  High              1.3745899   0.8789356   2.149756
0-24 months   COHORTS          INDIA                          Medium               High              1.1149943   0.6813285   1.824689
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              1.5799682   1.0118585   2.467044
0-24 months   COHORTS          PHILIPPINES                    Medium               High              1.7273668   1.1333105   2.632814
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              0.9781366   0.5939000   1.610963
0-24 months   GMS-Nepal        NEPAL                          Medium               High              0.8681684   0.4967241   1.517374
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.2957740   0.9646387   1.740579
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.4326826   1.0694728   1.919244
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              0.9288750   0.6333955   1.362196
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              0.9895473   0.6853306   1.428805
0-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        Low                  High              1.4072700   0.6130279   3.230536
0-24 months   PROBIT           BELARUS                        Medium               High              1.2661744   0.4857832   3.300232
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              1.4195700   0.5777883   3.487746
0-24 months   SAS-CompFeed     INDIA                          Medium               High              1.2769796   0.5149392   3.166737
0-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.2616180   0.6661910   2.389225
0-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.4528765   0.7936350   2.659724
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1244213   0.5368195   2.355211
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.4864115   0.6836450   3.231823
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.9218847   0.9451687   3.907917
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.0707100   0.5452590   2.102524
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              0.7687022   0.3678691   1.606286
0-6 months    COHORTS          PHILIPPINES                    Medium               High              0.9583623   0.5103789   1.799562
0-6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL                          Low                  High              1.0209636   0.5482510   1.901258
0-6 months    GMS-Nepal        NEPAL                          Medium               High              1.2069649   0.6389943   2.279777
0-6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        Low                  High              1.1061687   0.8540785   1.432666
0-6 months    PROBIT           BELARUS                        Medium               High              1.0930048   0.8695358   1.373905
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.6006900   0.3078136   1.172230
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.8326349   0.4047491   1.712866
6-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA                      Low                  High              0.9857678   0.3844846   2.527379
6-24 months   COHORTS          GUATEMALA                      Medium               High              1.2841530   0.5062921   3.257110
6-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA                          Low                  High              1.3858895   0.8845986   2.171256
6-24 months   COHORTS          INDIA                          Medium               High              1.1268989   0.6882870   1.845017
6-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    Low                  High              1.5804509   1.0101108   2.472823
6-24 months   COHORTS          PHILIPPINES                    Medium               High              1.7762705   1.1664697   2.704859
6-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal        NEPAL                          Low                  High              0.9964025   0.5997415   1.655410
6-24 months   GMS-Nepal        NEPAL                          Medium               High              0.9122810   0.5229215   1.591552
6-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.2359641   0.9251446   1.651209
6-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.3362634   1.0029715   1.780310
6-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4         BANGLADESH                     Low                  High              0.9282987   0.6523289   1.321018
6-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.0293973   0.7331201   1.445410
6-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS                        Low                  High              1.4001984   0.6108397   3.209607
6-24 months   PROBIT           BELARUS                        Medium               High              1.2466328   0.4821938   3.222964
6-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          Low                  High              1.4195700   0.5777883   3.487746
6-24 months   SAS-CompFeed     INDIA                          Medium               High              1.2769796   0.5149392   3.166737
6-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.2601171   0.6837239   2.322422
6-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.4185119   0.7903450   2.545946
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1244213   0.5368195   2.355211
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.4864115   0.6836450   3.231823
6-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.9218847   0.9451687   3.907917
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.0707100   0.5452590   2.102524


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0031201   -0.0197759   0.0260162
0-24 months   COHORTS          INDIA                          High                 NA                 0.0105667   -0.0077533   0.0288868
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0154183    0.0048096   0.0260269
0-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0076070   -0.0567743   0.0415602
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0121278    0.0012469   0.0230087
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0030544   -0.0288953   0.0227866
0-24 months   PROBIT           BELARUS                        High                 NA                 0.0016430   -0.0035804   0.0068663
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0201982   -0.0262224   0.0666189
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0363001   -0.0260917   0.0986919
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0045261   -0.0088113   0.0178635
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0031131   -0.0060494   0.0122757
0-6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0048085   -0.0278967   0.0182797
0-6 months    GMS-Nepal        NEPAL                          High                 NA                 0.0086313   -0.0359106   0.0531731
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0063415   -0.0088558   0.0215388
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0089753   -0.0249727   0.0070220
6-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0031201   -0.0197759   0.0260162
6-24 months   COHORTS          INDIA                          High                 NA                 0.0111067   -0.0072322   0.0294456
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0157063    0.0051020   0.0263106
6-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0040574   -0.0528376   0.0447229
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0102588   -0.0008190   0.0213366
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0004161   -0.0227169   0.0218847
6-24 months   PROBIT           BELARUS                        High                 NA                 0.0015812   -0.0036320   0.0067944
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0201982   -0.0262224   0.0666189
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0331050   -0.0277834   0.0939935
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0045261   -0.0088113   0.0178635
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0031131   -0.0060494   0.0122757


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0890578   -0.8653949   0.5551528
0-24 months   COHORTS          INDIA                          High                 NA                 0.1339174   -0.1307053   0.3366095
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.3059488    0.0687512   0.4827300
0-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0566725   -0.4944386   0.2528587
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.2157014   -0.0032462   0.3868661
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0376801   -0.4106349   0.2366699
0-24 months   PROBIT           BELARUS                        High                 NA                 0.2008178   -0.6996091   0.6242124
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.2414930   -0.6486777   0.6510338
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.2094235   -0.2430300   0.4971874
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1681678   -0.5060612   0.5405599
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.1765882   -0.5466324   0.5616237
0-6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0805421   -0.5445750   0.2440824
0-6 months    GMS-Nepal        NEPAL                          High                 NA                 0.0787950   -0.4316955   0.4072632
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0789305   -0.1301492   0.2493301
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.3540075   -1.1489980   0.1468878
6-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0890578   -0.8653949   0.5551528
6-24 months   COHORTS          INDIA                          High                 NA                 0.1407603   -0.1244686   0.3434296
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.3116643    0.0743051   0.4881618
6-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0302275   -0.4659495   0.2759855
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.1824607   -0.0401479   0.3574274
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0051333   -0.3215630   0.2355318
6-24 months   PROBIT           BELARUS                        High                 NA                 0.1932627   -0.7052534   0.6183411
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.2414930   -0.6486777   0.6510338
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.1909906   -0.2445448   0.4741079
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1681678   -0.5060612   0.5405599
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.1765882   -0.5466324   0.5616237
