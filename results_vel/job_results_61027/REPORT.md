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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        hhwealth_quart    n_cell       n
-------------  ---------------  -----------------------------  ---------------  -------  ------
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q4             32      88
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q1             15      88
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q2             16      88
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q3             25      88
0-3 months     COHORTS          GUATEMALA                      Wealth Q4            248     709
0-3 months     COHORTS          GUATEMALA                      Wealth Q1            138     709
0-3 months     COHORTS          GUATEMALA                      Wealth Q2            140     709
0-3 months     COHORTS          GUATEMALA                      Wealth Q3            183     709
0-3 months     CONTENT          PERU                           Wealth Q4              7      29
0-3 months     CONTENT          PERU                           Wealth Q1              7      29
0-3 months     CONTENT          PERU                           Wealth Q2              7      29
0-3 months     CONTENT          PERU                           Wealth Q3              8      29
0-3 months     GMS-Nepal        NEPAL                          Wealth Q4            127     509
0-3 months     GMS-Nepal        NEPAL                          Wealth Q1            126     509
0-3 months     GMS-Nepal        NEPAL                          Wealth Q2            134     509
0-3 months     GMS-Nepal        NEPAL                          Wealth Q3            122     509
0-3 months     IRC              INDIA                          Wealth Q4             86     377
0-3 months     IRC              INDIA                          Wealth Q1             98     377
0-3 months     IRC              INDIA                          Wealth Q2             96     377
0-3 months     IRC              INDIA                          Wealth Q3             97     377
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q4           4830   19863
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q1           4966   19863
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q2           5009   19863
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q3           5058   19863
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q4            414    1805
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q1            440    1805
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q2            465    1805
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q3            486    1805
0-3 months     MAL-ED           BANGLADESH                     Wealth Q4             60     236
0-3 months     MAL-ED           BANGLADESH                     Wealth Q1             56     236
0-3 months     MAL-ED           BANGLADESH                     Wealth Q2             60     236
0-3 months     MAL-ED           BANGLADESH                     Wealth Q3             60     236
0-3 months     MAL-ED           BRAZIL                         Wealth Q4             47     163
0-3 months     MAL-ED           BRAZIL                         Wealth Q1             39     163
0-3 months     MAL-ED           BRAZIL                         Wealth Q2             43     163
0-3 months     MAL-ED           BRAZIL                         Wealth Q3             34     163
0-3 months     MAL-ED           INDIA                          Wealth Q4             42     177
0-3 months     MAL-ED           INDIA                          Wealth Q1             47     177
0-3 months     MAL-ED           INDIA                          Wealth Q2             47     177
0-3 months     MAL-ED           INDIA                          Wealth Q3             41     177
0-3 months     MAL-ED           NEPAL                          Wealth Q4             37     155
0-3 months     MAL-ED           NEPAL                          Wealth Q1             38     155
0-3 months     MAL-ED           NEPAL                          Wealth Q2             35     155
0-3 months     MAL-ED           NEPAL                          Wealth Q3             45     155
0-3 months     MAL-ED           PERU                           Wealth Q4             63     254
0-3 months     MAL-ED           PERU                           Wealth Q1             64     254
0-3 months     MAL-ED           PERU                           Wealth Q2             66     254
0-3 months     MAL-ED           PERU                           Wealth Q3             61     254
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q4             45     198
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q1             53     198
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q2             49     198
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q3             51     198
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             54     225
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             57     225
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             56     225
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58     225
0-3 months     PROVIDE          BANGLADESH                     Wealth Q4            148     640
0-3 months     PROVIDE          BANGLADESH                     Wealth Q1            166     640
0-3 months     PROVIDE          BANGLADESH                     Wealth Q2            170     640
0-3 months     PROVIDE          BANGLADESH                     Wealth Q3            156     640
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q4             80     307
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q1             75     307
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q2             79     307
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q3             73     307
3-6 months     COHORTS          GUATEMALA                      Wealth Q4            284     780
3-6 months     COHORTS          GUATEMALA                      Wealth Q1            146     780
3-6 months     COHORTS          GUATEMALA                      Wealth Q2            156     780
3-6 months     COHORTS          GUATEMALA                      Wealth Q3            194     780
3-6 months     CONTENT          PERU                           Wealth Q4             51     214
3-6 months     CONTENT          PERU                           Wealth Q1             59     214
3-6 months     CONTENT          PERU                           Wealth Q2             52     214
3-6 months     CONTENT          PERU                           Wealth Q3             52     214
3-6 months     GMS-Nepal        NEPAL                          Wealth Q4            118     469
3-6 months     GMS-Nepal        NEPAL                          Wealth Q1            117     469
3-6 months     GMS-Nepal        NEPAL                          Wealth Q2            122     469
3-6 months     GMS-Nepal        NEPAL                          Wealth Q3            112     469
3-6 months     IRC              INDIA                          Wealth Q4             94     397
3-6 months     IRC              INDIA                          Wealth Q1            105     397
3-6 months     IRC              INDIA                          Wealth Q2             98     397
3-6 months     IRC              INDIA                          Wealth Q3            100     397
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q4           3653   12574
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q1           2708   12574
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q2           2937   12574
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q3           3276   12574
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q4            430    1839
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q1            455    1839
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q2            458    1839
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q3            496    1839
3-6 months     MAL-ED           BANGLADESH                     Wealth Q4             60     231
3-6 months     MAL-ED           BANGLADESH                     Wealth Q1             54     231
3-6 months     MAL-ED           BANGLADESH                     Wealth Q2             58     231
3-6 months     MAL-ED           BANGLADESH                     Wealth Q3             59     231
3-6 months     MAL-ED           BRAZIL                         Wealth Q4             53     208
3-6 months     MAL-ED           BRAZIL                         Wealth Q1             52     208
3-6 months     MAL-ED           BRAZIL                         Wealth Q2             52     208
3-6 months     MAL-ED           BRAZIL                         Wealth Q3             51     208
3-6 months     MAL-ED           INDIA                          Wealth Q4             57     230
3-6 months     MAL-ED           INDIA                          Wealth Q1             60     230
3-6 months     MAL-ED           INDIA                          Wealth Q2             55     230
3-6 months     MAL-ED           INDIA                          Wealth Q3             58     230
3-6 months     MAL-ED           NEPAL                          Wealth Q4             58     233
3-6 months     MAL-ED           NEPAL                          Wealth Q1             58     233
3-6 months     MAL-ED           NEPAL                          Wealth Q2             58     233
3-6 months     MAL-ED           NEPAL                          Wealth Q3             59     233
3-6 months     MAL-ED           PERU                           Wealth Q4             67     267
3-6 months     MAL-ED           PERU                           Wealth Q1             67     267
3-6 months     MAL-ED           PERU                           Wealth Q2             69     267
3-6 months     MAL-ED           PERU                           Wealth Q3             64     267
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q4             61     241
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q1             55     241
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q2             62     241
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q3             63     241
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             60     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             58     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58     239
3-6 months     PROVIDE          BANGLADESH                     Wealth Q4            133     598
3-6 months     PROVIDE          BANGLADESH                     Wealth Q1            156     598
3-6 months     PROVIDE          BANGLADESH                     Wealth Q2            163     598
3-6 months     PROVIDE          BANGLADESH                     Wealth Q3            146     598
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            409    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            501    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            332    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            414    1656
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q4             77     313
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q1             76     313
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q2             84     313
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q3             76     313
6-9 months     COHORTS          GUATEMALA                      Wealth Q4            298     799
6-9 months     COHORTS          GUATEMALA                      Wealth Q1            156     799
6-9 months     COHORTS          GUATEMALA                      Wealth Q2            166     799
6-9 months     COHORTS          GUATEMALA                      Wealth Q3            179     799
6-9 months     CONTENT          PERU                           Wealth Q4             52     214
6-9 months     CONTENT          PERU                           Wealth Q1             59     214
6-9 months     CONTENT          PERU                           Wealth Q2             52     214
6-9 months     CONTENT          PERU                           Wealth Q3             51     214
6-9 months     GMS-Nepal        NEPAL                          Wealth Q4            119     481
6-9 months     GMS-Nepal        NEPAL                          Wealth Q1            123     481
6-9 months     GMS-Nepal        NEPAL                          Wealth Q2            128     481
6-9 months     GMS-Nepal        NEPAL                          Wealth Q3            111     481
6-9 months     IRC              INDIA                          Wealth Q4             99     407
6-9 months     IRC              INDIA                          Wealth Q1            105     407
6-9 months     IRC              INDIA                          Wealth Q2            100     407
6-9 months     IRC              INDIA                          Wealth Q3            103     407
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q4            770    3052
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q1            749    3052
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q2            760    3052
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q3            773    3052
6-9 months     LCNI-5           MALAWI                         Wealth Q4            153     559
6-9 months     LCNI-5           MALAWI                         Wealth Q1            132     559
6-9 months     LCNI-5           MALAWI                         Wealth Q2            131     559
6-9 months     LCNI-5           MALAWI                         Wealth Q3            143     559
6-9 months     MAL-ED           BANGLADESH                     Wealth Q4             61     224
6-9 months     MAL-ED           BANGLADESH                     Wealth Q1             49     224
6-9 months     MAL-ED           BANGLADESH                     Wealth Q2             56     224
6-9 months     MAL-ED           BANGLADESH                     Wealth Q3             58     224
6-9 months     MAL-ED           BRAZIL                         Wealth Q4             53     198
6-9 months     MAL-ED           BRAZIL                         Wealth Q1             46     198
6-9 months     MAL-ED           BRAZIL                         Wealth Q2             48     198
6-9 months     MAL-ED           BRAZIL                         Wealth Q3             51     198
6-9 months     MAL-ED           INDIA                          Wealth Q4             59     230
6-9 months     MAL-ED           INDIA                          Wealth Q1             57     230
6-9 months     MAL-ED           INDIA                          Wealth Q2             56     230
6-9 months     MAL-ED           INDIA                          Wealth Q3             58     230
6-9 months     MAL-ED           NEPAL                          Wealth Q4             58     230
6-9 months     MAL-ED           NEPAL                          Wealth Q1             56     230
6-9 months     MAL-ED           NEPAL                          Wealth Q2             57     230
6-9 months     MAL-ED           NEPAL                          Wealth Q3             59     230
6-9 months     MAL-ED           PERU                           Wealth Q4             67     245
6-9 months     MAL-ED           PERU                           Wealth Q1             60     245
6-9 months     MAL-ED           PERU                           Wealth Q2             58     245
6-9 months     MAL-ED           PERU                           Wealth Q3             60     245
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q4             59     231
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q1             50     231
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q2             60     231
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q3             62     231
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             62     225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             48     225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             59     225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             56     225
6-9 months     PROVIDE          BANGLADESH                     Wealth Q4            123     565
6-9 months     PROVIDE          BANGLADESH                     Wealth Q1            148     565
6-9 months     PROVIDE          BANGLADESH                     Wealth Q2            150     565
6-9 months     PROVIDE          BANGLADESH                     Wealth Q3            144     565
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            359    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            440    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            311    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            370    1480
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q4             79     317
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q1             75     317
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q2             85     317
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q3             78     317
9-12 months    COHORTS          GUATEMALA                      Wealth Q4            335     898
9-12 months    COHORTS          GUATEMALA                      Wealth Q1            179     898
9-12 months    COHORTS          GUATEMALA                      Wealth Q2            184     898
9-12 months    COHORTS          GUATEMALA                      Wealth Q3            200     898
9-12 months    CONTENT          PERU                           Wealth Q4             52     212
9-12 months    CONTENT          PERU                           Wealth Q1             59     212
9-12 months    CONTENT          PERU                           Wealth Q2             52     212
9-12 months    CONTENT          PERU                           Wealth Q3             49     212
9-12 months    GMS-Nepal        NEPAL                          Wealth Q4            119     469
9-12 months    GMS-Nepal        NEPAL                          Wealth Q1            116     469
9-12 months    GMS-Nepal        NEPAL                          Wealth Q2            127     469
9-12 months    GMS-Nepal        NEPAL                          Wealth Q3            107     469
9-12 months    IRC              INDIA                          Wealth Q4             98     400
9-12 months    IRC              INDIA                          Wealth Q1            102     400
9-12 months    IRC              INDIA                          Wealth Q2             98     400
9-12 months    IRC              INDIA                          Wealth Q3            102     400
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q4            861    3499
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q1            871    3499
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q2            861    3499
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q3            906    3499
9-12 months    LCNI-5           MALAWI                         Wealth Q4            110     383
9-12 months    LCNI-5           MALAWI                         Wealth Q1             92     383
9-12 months    LCNI-5           MALAWI                         Wealth Q2             80     383
9-12 months    LCNI-5           MALAWI                         Wealth Q3            101     383
9-12 months    MAL-ED           BANGLADESH                     Wealth Q4             61     225
9-12 months    MAL-ED           BANGLADESH                     Wealth Q1             49     225
9-12 months    MAL-ED           BANGLADESH                     Wealth Q2             57     225
9-12 months    MAL-ED           BANGLADESH                     Wealth Q3             58     225
9-12 months    MAL-ED           BRAZIL                         Wealth Q4             53     194
9-12 months    MAL-ED           BRAZIL                         Wealth Q1             43     194
9-12 months    MAL-ED           BRAZIL                         Wealth Q2             47     194
9-12 months    MAL-ED           BRAZIL                         Wealth Q3             51     194
9-12 months    MAL-ED           INDIA                          Wealth Q4             58     227
9-12 months    MAL-ED           INDIA                          Wealth Q1             53     227
9-12 months    MAL-ED           INDIA                          Wealth Q2             58     227
9-12 months    MAL-ED           INDIA                          Wealth Q3             58     227
9-12 months    MAL-ED           NEPAL                          Wealth Q4             58     229
9-12 months    MAL-ED           NEPAL                          Wealth Q1             55     229
9-12 months    MAL-ED           NEPAL                          Wealth Q2             57     229
9-12 months    MAL-ED           NEPAL                          Wealth Q3             59     229
9-12 months    MAL-ED           PERU                           Wealth Q4             65     235
9-12 months    MAL-ED           PERU                           Wealth Q1             53     235
9-12 months    MAL-ED           PERU                           Wealth Q2             58     235
9-12 months    MAL-ED           PERU                           Wealth Q3             59     235
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q4             61     233
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q1             53     233
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q2             59     233
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q3             60     233
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             45     224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             60     224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58     224
9-12 months    PROVIDE          BANGLADESH                     Wealth Q4            123     566
9-12 months    PROVIDE          BANGLADESH                     Wealth Q1            150     566
9-12 months    PROVIDE          BANGLADESH                     Wealth Q2            148     566
9-12 months    PROVIDE          BANGLADESH                     Wealth Q3            145     566
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            257    1075
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            338    1075
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            234    1075
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            246    1075
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q4             84     329
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q1             77     329
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q2             86     329
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q3             82     329
12-15 months   COHORTS          GUATEMALA                      Wealth Q4            329     855
12-15 months   COHORTS          GUATEMALA                      Wealth Q1            161     855
12-15 months   COHORTS          GUATEMALA                      Wealth Q2            184     855
12-15 months   COHORTS          GUATEMALA                      Wealth Q3            181     855
12-15 months   CONTENT          PERU                           Wealth Q4             47     199
12-15 months   CONTENT          PERU                           Wealth Q1             56     199
12-15 months   CONTENT          PERU                           Wealth Q2             48     199
12-15 months   CONTENT          PERU                           Wealth Q3             48     199
12-15 months   GMS-Nepal        NEPAL                          Wealth Q4            125     469
12-15 months   GMS-Nepal        NEPAL                          Wealth Q1            112     469
12-15 months   GMS-Nepal        NEPAL                          Wealth Q2            126     469
12-15 months   GMS-Nepal        NEPAL                          Wealth Q3            106     469
12-15 months   IRC              INDIA                          Wealth Q4             95     390
12-15 months   IRC              INDIA                          Wealth Q1            100     390
12-15 months   IRC              INDIA                          Wealth Q2             97     390
12-15 months   IRC              INDIA                          Wealth Q3             98     390
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q4            864    3547
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q1            878    3547
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q2            886    3547
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q3            919    3547
12-15 months   LCNI-5           MALAWI                         Wealth Q4             40     126
12-15 months   LCNI-5           MALAWI                         Wealth Q1             31     126
12-15 months   LCNI-5           MALAWI                         Wealth Q2             24     126
12-15 months   LCNI-5           MALAWI                         Wealth Q3             31     126
12-15 months   MAL-ED           BANGLADESH                     Wealth Q4             60     212
12-15 months   MAL-ED           BANGLADESH                     Wealth Q1             39     212
12-15 months   MAL-ED           BANGLADESH                     Wealth Q2             56     212
12-15 months   MAL-ED           BANGLADESH                     Wealth Q3             57     212
12-15 months   MAL-ED           BRAZIL                         Wealth Q4             53     184
12-15 months   MAL-ED           BRAZIL                         Wealth Q1             38     184
12-15 months   MAL-ED           BRAZIL                         Wealth Q2             42     184
12-15 months   MAL-ED           BRAZIL                         Wealth Q3             51     184
12-15 months   MAL-ED           INDIA                          Wealth Q4             58     226
12-15 months   MAL-ED           INDIA                          Wealth Q1             52     226
12-15 months   MAL-ED           INDIA                          Wealth Q2             58     226
12-15 months   MAL-ED           INDIA                          Wealth Q3             58     226
12-15 months   MAL-ED           NEPAL                          Wealth Q4             59     230
12-15 months   MAL-ED           NEPAL                          Wealth Q1             55     230
12-15 months   MAL-ED           NEPAL                          Wealth Q2             57     230
12-15 months   MAL-ED           NEPAL                          Wealth Q3             59     230
12-15 months   MAL-ED           PERU                           Wealth Q4             64     224
12-15 months   MAL-ED           PERU                           Wealth Q1             49     224
12-15 months   MAL-ED           PERU                           Wealth Q2             53     224
12-15 months   MAL-ED           PERU                           Wealth Q3             58     224
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q4             62     228
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q1             50     228
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q2             60     228
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q3             56     228
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             43     226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             62     226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     226
12-15 months   PROVIDE          BANGLADESH                     Wealth Q4            112     532
12-15 months   PROVIDE          BANGLADESH                     Wealth Q1            141     532
12-15 months   PROVIDE          BANGLADESH                     Wealth Q2            143     532
12-15 months   PROVIDE          BANGLADESH                     Wealth Q3            136     532
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            187     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            238     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            175     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            186     786
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q4             83     321
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q1             77     321
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q2             83     321
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q3             78     321
15-18 months   COHORTS          GUATEMALA                      Wealth Q4            291     772
15-18 months   COHORTS          GUATEMALA                      Wealth Q1            146     772
15-18 months   COHORTS          GUATEMALA                      Wealth Q2            169     772
15-18 months   COHORTS          GUATEMALA                      Wealth Q3            166     772
15-18 months   CONTENT          PERU                           Wealth Q4             45     189
15-18 months   CONTENT          PERU                           Wealth Q1             53     189
15-18 months   CONTENT          PERU                           Wealth Q2             45     189
15-18 months   CONTENT          PERU                           Wealth Q3             46     189
15-18 months   GMS-Nepal        NEPAL                          Wealth Q4            128     480
15-18 months   GMS-Nepal        NEPAL                          Wealth Q1            117     480
15-18 months   GMS-Nepal        NEPAL                          Wealth Q2            128     480
15-18 months   GMS-Nepal        NEPAL                          Wealth Q3            107     480
15-18 months   IRC              INDIA                          Wealth Q4             92     382
15-18 months   IRC              INDIA                          Wealth Q1            102     382
15-18 months   IRC              INDIA                          Wealth Q2             93     382
15-18 months   IRC              INDIA                          Wealth Q3             95     382
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q4            838    3548
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q1            883    3548
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q2            920    3548
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q3            907    3548
15-18 months   LCNI-5           MALAWI                         Wealth Q4             31     119
15-18 months   LCNI-5           MALAWI                         Wealth Q1             30     119
15-18 months   LCNI-5           MALAWI                         Wealth Q2             25     119
15-18 months   LCNI-5           MALAWI                         Wealth Q3             33     119
15-18 months   MAL-ED           BANGLADESH                     Wealth Q4             60     212
15-18 months   MAL-ED           BANGLADESH                     Wealth Q1             37     212
15-18 months   MAL-ED           BANGLADESH                     Wealth Q2             58     212
15-18 months   MAL-ED           BANGLADESH                     Wealth Q3             57     212
15-18 months   MAL-ED           BRAZIL                         Wealth Q4             52     175
15-18 months   MAL-ED           BRAZIL                         Wealth Q1             34     175
15-18 months   MAL-ED           BRAZIL                         Wealth Q2             39     175
15-18 months   MAL-ED           BRAZIL                         Wealth Q3             50     175
15-18 months   MAL-ED           INDIA                          Wealth Q4             59     226
15-18 months   MAL-ED           INDIA                          Wealth Q1             52     226
15-18 months   MAL-ED           INDIA                          Wealth Q2             57     226
15-18 months   MAL-ED           INDIA                          Wealth Q3             58     226
15-18 months   MAL-ED           NEPAL                          Wealth Q4             58     227
15-18 months   MAL-ED           NEPAL                          Wealth Q1             55     227
15-18 months   MAL-ED           NEPAL                          Wealth Q2             56     227
15-18 months   MAL-ED           NEPAL                          Wealth Q3             58     227
15-18 months   MAL-ED           PERU                           Wealth Q4             66     213
15-18 months   MAL-ED           PERU                           Wealth Q1             43     213
15-18 months   MAL-ED           PERU                           Wealth Q2             49     213
15-18 months   MAL-ED           PERU                           Wealth Q3             55     213
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q4             61     225
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q1             45     225
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q2             62     225
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q3             57     225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             40     217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             59     217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             57     217
15-18 months   PROVIDE          BANGLADESH                     Wealth Q4            111     528
15-18 months   PROVIDE          BANGLADESH                     Wealth Q1            140     528
15-18 months   PROVIDE          BANGLADESH                     Wealth Q2            145     528
15-18 months   PROVIDE          BANGLADESH                     Wealth Q3            132     528
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            153     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            207     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            141     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            161     662
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q4             80     305
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q1             75     305
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q2             77     305
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q3             73     305
18-21 months   COHORTS          GUATEMALA                      Wealth Q4            281     765
18-21 months   COHORTS          GUATEMALA                      Wealth Q1            149     765
18-21 months   COHORTS          GUATEMALA                      Wealth Q2            162     765
18-21 months   COHORTS          GUATEMALA                      Wealth Q3            173     765
18-21 months   CONTENT          PERU                           Wealth Q4             44     183
18-21 months   CONTENT          PERU                           Wealth Q1             50     183
18-21 months   CONTENT          PERU                           Wealth Q2             44     183
18-21 months   CONTENT          PERU                           Wealth Q3             45     183
18-21 months   GMS-Nepal        NEPAL                          Wealth Q4            115     445
18-21 months   GMS-Nepal        NEPAL                          Wealth Q1            106     445
18-21 months   GMS-Nepal        NEPAL                          Wealth Q2            124     445
18-21 months   GMS-Nepal        NEPAL                          Wealth Q3            100     445
18-21 months   IRC              INDIA                          Wealth Q4             90     379
18-21 months   IRC              INDIA                          Wealth Q1            102     379
18-21 months   IRC              INDIA                          Wealth Q2             91     379
18-21 months   IRC              INDIA                          Wealth Q3             96     379
18-21 months   LCNI-5           MALAWI                         Wealth Q4            143     474
18-21 months   LCNI-5           MALAWI                         Wealth Q1             98     474
18-21 months   LCNI-5           MALAWI                         Wealth Q2            116     474
18-21 months   LCNI-5           MALAWI                         Wealth Q3            117     474
18-21 months   MAL-ED           BANGLADESH                     Wealth Q4             61     209
18-21 months   MAL-ED           BANGLADESH                     Wealth Q1             31     209
18-21 months   MAL-ED           BANGLADESH                     Wealth Q2             60     209
18-21 months   MAL-ED           BANGLADESH                     Wealth Q3             57     209
18-21 months   MAL-ED           BRAZIL                         Wealth Q4             52     167
18-21 months   MAL-ED           BRAZIL                         Wealth Q1             26     167
18-21 months   MAL-ED           BRAZIL                         Wealth Q2             39     167
18-21 months   MAL-ED           BRAZIL                         Wealth Q3             50     167
18-21 months   MAL-ED           INDIA                          Wealth Q4             59     226
18-21 months   MAL-ED           INDIA                          Wealth Q1             53     226
18-21 months   MAL-ED           INDIA                          Wealth Q2             56     226
18-21 months   MAL-ED           INDIA                          Wealth Q3             58     226
18-21 months   MAL-ED           NEPAL                          Wealth Q4             58     227
18-21 months   MAL-ED           NEPAL                          Wealth Q1             55     227
18-21 months   MAL-ED           NEPAL                          Wealth Q2             56     227
18-21 months   MAL-ED           NEPAL                          Wealth Q3             58     227
18-21 months   MAL-ED           PERU                           Wealth Q4             64     202
18-21 months   MAL-ED           PERU                           Wealth Q1             40     202
18-21 months   MAL-ED           PERU                           Wealth Q2             45     202
18-21 months   MAL-ED           PERU                           Wealth Q3             53     202
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q4             62     233
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q1             49     233
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q2             62     233
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q3             60     233
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             60     204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             33     204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             57     204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             54     204
18-21 months   PROVIDE          BANGLADESH                     Wealth Q4            118     541
18-21 months   PROVIDE          BANGLADESH                     Wealth Q1            143     541
18-21 months   PROVIDE          BANGLADESH                     Wealth Q2            144     541
18-21 months   PROVIDE          BANGLADESH                     Wealth Q3            136     541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              2       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              2       9
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4             79     308
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1             77     308
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2             76     308
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3             76     308
21-24 months   COHORTS          GUATEMALA                      Wealth Q4            312     843
21-24 months   COHORTS          GUATEMALA                      Wealth Q1            166     843
21-24 months   COHORTS          GUATEMALA                      Wealth Q2            177     843
21-24 months   COHORTS          GUATEMALA                      Wealth Q3            188     843
21-24 months   CONTENT          PERU                           Wealth Q4              5      38
21-24 months   CONTENT          PERU                           Wealth Q1             14      38
21-24 months   CONTENT          PERU                           Wealth Q2             10      38
21-24 months   CONTENT          PERU                           Wealth Q3              9      38
21-24 months   GMS-Nepal        NEPAL                          Wealth Q4             92     342
21-24 months   GMS-Nepal        NEPAL                          Wealth Q1             75     342
21-24 months   GMS-Nepal        NEPAL                          Wealth Q2             97     342
21-24 months   GMS-Nepal        NEPAL                          Wealth Q3             78     342
21-24 months   IRC              INDIA                          Wealth Q4             93     389
21-24 months   IRC              INDIA                          Wealth Q1            103     389
21-24 months   IRC              INDIA                          Wealth Q2             94     389
21-24 months   IRC              INDIA                          Wealth Q3             99     389
21-24 months   LCNI-5           MALAWI                         Wealth Q4            122     405
21-24 months   LCNI-5           MALAWI                         Wealth Q1             84     405
21-24 months   LCNI-5           MALAWI                         Wealth Q2            102     405
21-24 months   LCNI-5           MALAWI                         Wealth Q3             97     405
21-24 months   MAL-ED           BANGLADESH                     Wealth Q4             61     207
21-24 months   MAL-ED           BANGLADESH                     Wealth Q1             29     207
21-24 months   MAL-ED           BANGLADESH                     Wealth Q2             60     207
21-24 months   MAL-ED           BANGLADESH                     Wealth Q3             57     207
21-24 months   MAL-ED           BRAZIL                         Wealth Q4             53     165
21-24 months   MAL-ED           BRAZIL                         Wealth Q1             23     165
21-24 months   MAL-ED           BRAZIL                         Wealth Q2             38     165
21-24 months   MAL-ED           BRAZIL                         Wealth Q3             51     165
21-24 months   MAL-ED           INDIA                          Wealth Q4             59     226
21-24 months   MAL-ED           INDIA                          Wealth Q1             52     226
21-24 months   MAL-ED           INDIA                          Wealth Q2             57     226
21-24 months   MAL-ED           INDIA                          Wealth Q3             58     226
21-24 months   MAL-ED           NEPAL                          Wealth Q4             59     227
21-24 months   MAL-ED           NEPAL                          Wealth Q1             54     227
21-24 months   MAL-ED           NEPAL                          Wealth Q2             55     227
21-24 months   MAL-ED           NEPAL                          Wealth Q3             59     227
21-24 months   MAL-ED           PERU                           Wealth Q4             62     189
21-24 months   MAL-ED           PERU                           Wealth Q1             40     189
21-24 months   MAL-ED           PERU                           Wealth Q2             34     189
21-24 months   MAL-ED           PERU                           Wealth Q3             53     189
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4             63     235
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1             48     235
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2             63     235
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3             61     235
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             26     204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             60     204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             57     204
21-24 months   PROVIDE          BANGLADESH                     Wealth Q4             95     471
21-24 months   PROVIDE          BANGLADESH                     Wealth Q1            126     471
21-24 months   PROVIDE          BANGLADESH                     Wealth Q2            126     471
21-24 months   PROVIDE          BANGLADESH                     Wealth Q3            124     471


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: CONTENT, country: PERU
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/76b2dee0-1e70-4d36-b8c2-ea74be4b3d2e/d38a1508-aeee-4d58-a7e3-6dc2ed9cacd3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/76b2dee0-1e70-4d36-b8c2-ea74be4b3d2e/d38a1508-aeee-4d58-a7e3-6dc2ed9cacd3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/76b2dee0-1e70-4d36-b8c2-ea74be4b3d2e/d38a1508-aeee-4d58-a7e3-6dc2ed9cacd3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2333315   -0.4303696   -0.0362934
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0480893   -0.3245538    0.2283752
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.0345881   -0.2746115    0.2054353
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                 0.0486616   -0.1560962    0.2534194
0-3 months     COHORTS          GUATEMALA                      Wealth Q4            NA                -0.5402813   -0.5787383   -0.5018243
0-3 months     COHORTS          GUATEMALA                      Wealth Q1            NA                -0.5532192   -0.5976468   -0.5087915
0-3 months     COHORTS          GUATEMALA                      Wealth Q2            NA                -0.5346454   -0.5873149   -0.4819760
0-3 months     COHORTS          GUATEMALA                      Wealth Q3            NA                -0.5192156   -0.5636987   -0.4747324
0-3 months     CONTENT          PERU                           Wealth Q4            NA                 0.1612483    0.0541784    0.2683182
0-3 months     CONTENT          PERU                           Wealth Q1            NA                 0.0518065   -0.1187735    0.2223865
0-3 months     CONTENT          PERU                           Wealth Q2            NA                -0.1043812   -0.2398869    0.0311244
0-3 months     CONTENT          PERU                           Wealth Q3            NA                -0.0048119   -0.1256335    0.1160097
0-3 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0588076   -0.1062349   -0.0113804
0-3 months     GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0272965   -0.0790737    0.0244807
0-3 months     GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0137860   -0.0651427    0.0375707
0-3 months     GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0303721   -0.0853144    0.0245702
0-3 months     IRC              INDIA                          Wealth Q4            NA                -0.2140974   -0.3171585   -0.1110364
0-3 months     IRC              INDIA                          Wealth Q1            NA                -0.3393031   -0.4337640   -0.2448422
0-3 months     IRC              INDIA                          Wealth Q2            NA                -0.2816590   -0.3784464   -0.1848716
0-3 months     IRC              INDIA                          Wealth Q3            NA                -0.1870032   -0.2913345   -0.0826718
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0832930    0.0709934    0.0955925
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q1            NA                 0.0616820    0.0504615    0.0729025
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q2            NA                 0.0687462    0.0580207    0.0794716
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q3            NA                 0.0810440    0.0725496    0.0895384
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0777689    0.0504299    0.1051078
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q1            NA                 0.0642127    0.0323515    0.0960739
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q2            NA                 0.0640299    0.0327207    0.0953392
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q3            NA                 0.0772664    0.0439894    0.1105435
0-3 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.1115073   -0.1664349   -0.0565798
0-3 months     MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.0707851   -0.1510294    0.0094592
0-3 months     MAL-ED           BANGLADESH                     Wealth Q2            NA                -0.1371830   -0.2038462   -0.0705199
0-3 months     MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.1445866   -0.2127396   -0.0764336
0-3 months     MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0976669   -0.0000296    0.1953634
0-3 months     MAL-ED           BRAZIL                         Wealth Q1            NA                 0.1859017    0.0704726    0.3013308
0-3 months     MAL-ED           BRAZIL                         Wealth Q2            NA                 0.1851538    0.0621814    0.3081262
0-3 months     MAL-ED           BRAZIL                         Wealth Q3            NA                 0.0763550   -0.0605160    0.2132261
0-3 months     MAL-ED           INDIA                          Wealth Q4            NA                -0.1404669   -0.2274836   -0.0534502
0-3 months     MAL-ED           INDIA                          Wealth Q1            NA                -0.0113753   -0.1058916    0.0831410
0-3 months     MAL-ED           INDIA                          Wealth Q2            NA                -0.0665264   -0.1690719    0.0360192
0-3 months     MAL-ED           INDIA                          Wealth Q3            NA                -0.0648368   -0.1501972    0.0205235
0-3 months     MAL-ED           NEPAL                          Wealth Q4            NA                 0.0222457   -0.0874660    0.1319575
0-3 months     MAL-ED           NEPAL                          Wealth Q1            NA                 0.1548740    0.0809856    0.2287623
0-3 months     MAL-ED           NEPAL                          Wealth Q2            NA                 0.0901162    0.0036018    0.1766306
0-3 months     MAL-ED           NEPAL                          Wealth Q3            NA                 0.0242140   -0.0577124    0.1061405
0-3 months     MAL-ED           PERU                           Wealth Q4            NA                -0.2507123   -0.3185737   -0.1828509
0-3 months     MAL-ED           PERU                           Wealth Q1            NA                -0.2435243   -0.3166477   -0.1704009
0-3 months     MAL-ED           PERU                           Wealth Q2            NA                -0.2851431   -0.3482431   -0.2220430
0-3 months     MAL-ED           PERU                           Wealth Q3            NA                -0.2425193   -0.3132995   -0.1717390
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.1419174   -0.2497721   -0.0340626
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -0.2571013   -0.3593577   -0.1548449
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -0.1200272   -0.2238070   -0.0162473
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -0.2147831   -0.3089500   -0.1206161
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1155164   -0.1848774   -0.0461554
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.1489372   -0.2166743   -0.0812000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0976142   -0.1776279   -0.0176004
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1978611   -0.2855704   -0.1101518
0-3 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.2129390   -0.2495395   -0.1763385
0-3 months     PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.1558891   -0.1881486   -0.1236296
0-3 months     PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.1839354   -0.2172750   -0.1505958
0-3 months     PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.2112867   -0.2545282   -0.1680453
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1075399   -0.2054524   -0.0096274
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                 0.0062729   -0.0839363    0.0964820
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1393175   -0.2349084   -0.0437266
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.1454043   -0.2478755   -0.0429332
3-6 months     COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0910089   -0.1133859   -0.0686318
3-6 months     COHORTS          GUATEMALA                      Wealth Q1            NA                -0.1247147   -0.1573267   -0.0921026
3-6 months     COHORTS          GUATEMALA                      Wealth Q2            NA                -0.1095886   -0.1462524   -0.0729249
3-6 months     COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0784891   -0.1077923   -0.0491860
3-6 months     CONTENT          PERU                           Wealth Q4            NA                 0.0219933   -0.0273881    0.0713746
3-6 months     CONTENT          PERU                           Wealth Q1            NA                 0.0268327   -0.0193342    0.0729996
3-6 months     CONTENT          PERU                           Wealth Q2            NA                 0.0299883   -0.0109768    0.0709533
3-6 months     CONTENT          PERU                           Wealth Q3            NA                -0.0204189   -0.0669947    0.0261570
3-6 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1595126   -0.1984571   -0.1205682
3-6 months     GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.1516838   -0.1883805   -0.1149871
3-6 months     GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.1838373   -0.2204085   -0.1472662
3-6 months     GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.1505339   -0.1874957   -0.1135722
3-6 months     IRC              INDIA                          Wealth Q4            NA                -0.0480318   -0.1207241    0.0246605
3-6 months     IRC              INDIA                          Wealth Q1            NA                -0.0574831   -0.1084872   -0.0064791
3-6 months     IRC              INDIA                          Wealth Q2            NA                -0.0642139   -0.1241327   -0.0042951
3-6 months     IRC              INDIA                          Wealth Q3            NA                -0.0201153   -0.0781166    0.0378860
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0083208   -0.0202462    0.0036046
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q1            NA                 0.0022846   -0.0109499    0.0155190
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q2            NA                -0.0037116   -0.0156321    0.0082089
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q3            NA                -0.0035254   -0.0132028    0.0061521
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0036294   -0.0228260    0.0300847
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q1            NA                -0.0011630   -0.0268485    0.0245225
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q2            NA                -0.0260982   -0.0534947    0.0012983
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q3            NA                -0.0118639   -0.0412599    0.0175321
3-6 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0304903   -0.0744289    0.0134483
3-6 months     MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.0012108   -0.0492439    0.0468223
3-6 months     MAL-ED           BANGLADESH                     Wealth Q2            NA                -0.0124136   -0.0681400    0.0433128
3-6 months     MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.0433688   -0.0930436    0.0063061
3-6 months     MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0836501    0.0129301    0.1543701
3-6 months     MAL-ED           BRAZIL                         Wealth Q1            NA                 0.0126619   -0.0616214    0.0869452
3-6 months     MAL-ED           BRAZIL                         Wealth Q2            NA                 0.0376733   -0.0368134    0.1121600
3-6 months     MAL-ED           BRAZIL                         Wealth Q3            NA                 0.0787317    0.0024296    0.1550337
3-6 months     MAL-ED           INDIA                          Wealth Q4            NA                -0.0500704   -0.1037101    0.0035693
3-6 months     MAL-ED           INDIA                          Wealth Q1            NA                -0.0512072   -0.1196143    0.0171999
3-6 months     MAL-ED           INDIA                          Wealth Q2            NA                -0.0297648   -0.0929049    0.0333752
3-6 months     MAL-ED           INDIA                          Wealth Q3            NA                -0.0339496   -0.0926161    0.0247169
3-6 months     MAL-ED           NEPAL                          Wealth Q4            NA                 0.0233128   -0.0298269    0.0764524
3-6 months     MAL-ED           NEPAL                          Wealth Q1            NA                -0.0184643   -0.0698987    0.0329701
3-6 months     MAL-ED           NEPAL                          Wealth Q2            NA                -0.0186403   -0.0720511    0.0347706
3-6 months     MAL-ED           NEPAL                          Wealth Q3            NA                -0.0762280   -0.1349388   -0.0175172
3-6 months     MAL-ED           PERU                           Wealth Q4            NA                 0.0132372   -0.0538869    0.0803614
3-6 months     MAL-ED           PERU                           Wealth Q1            NA                 0.0486049   -0.0192612    0.1164710
3-6 months     MAL-ED           PERU                           Wealth Q2            NA                 0.0478235   -0.0205589    0.1162060
3-6 months     MAL-ED           PERU                           Wealth Q3            NA                -0.0075008   -0.0622531    0.0472516
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0548494   -0.0239433    0.1336420
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                 0.0371985   -0.0424480    0.1168451
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -0.1054964   -0.1739764   -0.0370164
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                 0.0133145   -0.0627169    0.0893458
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1076201   -0.1540449   -0.0611953
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0575447   -0.1260101    0.0109207
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0723548   -0.1482587    0.0035490
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0395781   -0.1054568    0.0263007
3-6 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0457858   -0.0801425   -0.0114292
3-6 months     PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.0376134   -0.0673511   -0.0078758
3-6 months     PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.0098974   -0.0390001    0.0192053
3-6 months     PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.0318261   -0.0693065    0.0056542
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1084075   -0.1416116   -0.0752033
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0578914   -0.0884994   -0.0272833
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0822162   -0.1237710   -0.0406615
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1061743   -0.1386229   -0.0737257
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0574294   -0.1271574    0.0122986
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.1145531   -0.1817500   -0.0473562
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1020797   -0.1701234   -0.0340361
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0563202   -0.1335303    0.0208899
6-9 months     COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1049637   -0.1248408   -0.0850866
6-9 months     COHORTS          GUATEMALA                      Wealth Q1            NA                -0.1112660   -0.1370700   -0.0854621
6-9 months     COHORTS          GUATEMALA                      Wealth Q2            NA                -0.1377382   -0.1661189   -0.1093574
6-9 months     COHORTS          GUATEMALA                      Wealth Q3            NA                -0.1372116   -0.1618968   -0.1125265
6-9 months     CONTENT          PERU                           Wealth Q4            NA                 0.0061609   -0.0296322    0.0419540
6-9 months     CONTENT          PERU                           Wealth Q1            NA                -0.0441759   -0.0876874   -0.0006644
6-9 months     CONTENT          PERU                           Wealth Q2            NA                -0.0033872   -0.0441751    0.0374007
6-9 months     CONTENT          PERU                           Wealth Q3            NA                -0.0291748   -0.0730771    0.0147275
6-9 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0562769   -0.0868525   -0.0257014
6-9 months     GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0262784   -0.0648472    0.0122904
6-9 months     GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0443176   -0.0787438   -0.0098914
6-9 months     GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0526641   -0.0809355   -0.0243926
6-9 months     IRC              INDIA                          Wealth Q4            NA                 0.0265123   -0.0307377    0.0837624
6-9 months     IRC              INDIA                          Wealth Q1            NA                -0.0121296   -0.0524243    0.0281651
6-9 months     IRC              INDIA                          Wealth Q2            NA                -0.0414109   -0.0777472   -0.0050747
6-9 months     IRC              INDIA                          Wealth Q3            NA                -0.0320688   -0.0760192    0.0118816
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0373142   -0.0562640   -0.0183644
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q1            NA                -0.0353645   -0.0489669   -0.0217621
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q2            NA                -0.0415902   -0.0640302   -0.0191502
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q3            NA                -0.0211244   -0.0408386   -0.0014102
6-9 months     LCNI-5           MALAWI                         Wealth Q4            NA                 0.0299853   -0.0000780    0.0600485
6-9 months     LCNI-5           MALAWI                         Wealth Q1            NA                 0.0248388   -0.0159055    0.0655832
6-9 months     LCNI-5           MALAWI                         Wealth Q2            NA                 0.0243189   -0.0040155    0.0526534
6-9 months     LCNI-5           MALAWI                         Wealth Q3            NA                 0.0341326    0.0030355    0.0652296
6-9 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0551808   -0.0842333   -0.0261283
6-9 months     MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.0546998   -0.0925286   -0.0168711
6-9 months     MAL-ED           BANGLADESH                     Wealth Q2            NA                -0.0866855   -0.1207340   -0.0526371
6-9 months     MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.0941716   -0.1311554   -0.0571879
6-9 months     MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0368630   -0.0345866    0.1083126
6-9 months     MAL-ED           BRAZIL                         Wealth Q1            NA                 0.0023779   -0.0589779    0.0637338
6-9 months     MAL-ED           BRAZIL                         Wealth Q2            NA                -0.0337373   -0.1002407    0.0327662
6-9 months     MAL-ED           BRAZIL                         Wealth Q3            NA                 0.0388563   -0.0390030    0.1167157
6-9 months     MAL-ED           INDIA                          Wealth Q4            NA                -0.0699158   -0.1085919   -0.0312398
6-9 months     MAL-ED           INDIA                          Wealth Q1            NA                -0.0689121   -0.1275913   -0.0102330
6-9 months     MAL-ED           INDIA                          Wealth Q2            NA                -0.0765037   -0.1186081   -0.0343993
6-9 months     MAL-ED           INDIA                          Wealth Q3            NA                -0.0705831   -0.1139968   -0.0271694
6-9 months     MAL-ED           NEPAL                          Wealth Q4            NA                -0.0506661   -0.0856661   -0.0156662
6-9 months     MAL-ED           NEPAL                          Wealth Q1            NA                 0.0082019   -0.0402976    0.0567013
6-9 months     MAL-ED           NEPAL                          Wealth Q2            NA                -0.0390131   -0.0796114    0.0015853
6-9 months     MAL-ED           NEPAL                          Wealth Q3            NA                -0.0578755   -0.0923907   -0.0233603
6-9 months     MAL-ED           PERU                           Wealth Q4            NA                -0.0562626   -0.1024512   -0.0100740
6-9 months     MAL-ED           PERU                           Wealth Q1            NA                -0.0278236   -0.0695479    0.0139006
6-9 months     MAL-ED           PERU                           Wealth Q2            NA                -0.0111506   -0.0682393    0.0459380
6-9 months     MAL-ED           PERU                           Wealth Q3            NA                -0.0348026   -0.0909234    0.0213182
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0358489   -0.0202356    0.0919334
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -0.0553573   -0.1121007    0.0013862
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -0.0106763   -0.0603116    0.0389590
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -0.0452873   -0.1069878    0.0164133
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0500343   -0.1300956    0.0300271
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.1029829   -0.1651839   -0.0407820
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.1115389   -0.1779604   -0.0451173
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1359195   -0.1973343   -0.0745046
6-9 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0742732   -0.0974044   -0.0511421
6-9 months     PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.0360298   -0.0573278   -0.0147319
6-9 months     PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.0537328   -0.0772829   -0.0301828
6-9 months     PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.0750806   -0.0971669   -0.0529943
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0608079   -0.0932139   -0.0284019
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0578088   -0.0886129   -0.0270046
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0602353   -0.0955261   -0.0249446
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0240655   -0.0582590    0.0101280
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1256737   -0.1831344   -0.0682131
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.1416226   -0.1916046   -0.0916406
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1102015   -0.1575685   -0.0628346
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.1020489   -0.1790323   -0.0250655
9-12 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0875759   -0.1045757   -0.0705761
9-12 months    COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0900054   -0.1147919   -0.0652189
9-12 months    COHORTS          GUATEMALA                      Wealth Q2            NA                -0.0809933   -0.1042202   -0.0577663
9-12 months    COHORTS          GUATEMALA                      Wealth Q3            NA                -0.1022354   -0.1237276   -0.0807432
9-12 months    CONTENT          PERU                           Wealth Q4            NA                -0.0121449   -0.0471380    0.0228482
9-12 months    CONTENT          PERU                           Wealth Q1            NA                -0.0312603   -0.0636799    0.0011593
9-12 months    CONTENT          PERU                           Wealth Q2            NA                -0.0219926   -0.0539302    0.0099450
9-12 months    CONTENT          PERU                           Wealth Q3            NA                -0.0455342   -0.0785253   -0.0125432
9-12 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0620181   -0.0835894   -0.0404467
9-12 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0928943   -0.1278150   -0.0579737
9-12 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0753449   -0.1057296   -0.0449601
9-12 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0899618   -0.1116642   -0.0682594
9-12 months    IRC              INDIA                          Wealth Q4            NA                -0.0466025   -0.0791503   -0.0140548
9-12 months    IRC              INDIA                          Wealth Q1            NA                -0.0154742   -0.0510448    0.0200963
9-12 months    IRC              INDIA                          Wealth Q2            NA                -0.0201469   -0.0559446    0.0156508
9-12 months    IRC              INDIA                          Wealth Q3            NA                -0.0621415   -0.0932187   -0.0310644
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0457435   -0.0619202   -0.0295668
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                -0.0539500   -0.0695161   -0.0383838
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                -0.0569518   -0.0778767   -0.0360270
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                -0.0533099   -0.0691384   -0.0374815
9-12 months    LCNI-5           MALAWI                         Wealth Q4            NA                -0.0427904   -0.0804452   -0.0051355
9-12 months    LCNI-5           MALAWI                         Wealth Q1            NA                -0.0875919   -0.1313180   -0.0438658
9-12 months    LCNI-5           MALAWI                         Wealth Q2            NA                -0.0274131   -0.0641744    0.0093482
9-12 months    LCNI-5           MALAWI                         Wealth Q3            NA                -0.0168518   -0.0561478    0.0224443
9-12 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.1005249   -0.1319751   -0.0690748
9-12 months    MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.0767131   -0.1120265   -0.0413997
9-12 months    MAL-ED           BANGLADESH                     Wealth Q2            NA                -0.0978076   -0.1279375   -0.0676777
9-12 months    MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.0708117   -0.1045538   -0.0370696
9-12 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0304991   -0.0351055    0.0961038
9-12 months    MAL-ED           BRAZIL                         Wealth Q1            NA                -0.0231042   -0.0714542    0.0252458
9-12 months    MAL-ED           BRAZIL                         Wealth Q2            NA                 0.0013684   -0.0706079    0.0733447
9-12 months    MAL-ED           BRAZIL                         Wealth Q3            NA                 0.0057569   -0.0580348    0.0695487
9-12 months    MAL-ED           INDIA                          Wealth Q4            NA                -0.1075794   -0.1372138   -0.0779450
9-12 months    MAL-ED           INDIA                          Wealth Q1            NA                -0.1031411   -0.1405399   -0.0657423
9-12 months    MAL-ED           INDIA                          Wealth Q2            NA                -0.0837099   -0.1151164   -0.0523033
9-12 months    MAL-ED           INDIA                          Wealth Q3            NA                -0.0724288   -0.1042242   -0.0406334
9-12 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.0721674   -0.1079317   -0.0364032
9-12 months    MAL-ED           NEPAL                          Wealth Q1            NA                -0.0706094   -0.1066619   -0.0345569
9-12 months    MAL-ED           NEPAL                          Wealth Q2            NA                -0.0352898   -0.0711814    0.0006017
9-12 months    MAL-ED           NEPAL                          Wealth Q3            NA                -0.0682947   -0.0962160   -0.0403735
9-12 months    MAL-ED           PERU                           Wealth Q4            NA                -0.0518140   -0.0951488   -0.0084792
9-12 months    MAL-ED           PERU                           Wealth Q1            NA                -0.0536614   -0.0948353   -0.0124875
9-12 months    MAL-ED           PERU                           Wealth Q2            NA                -0.0397648   -0.0819136    0.0023840
9-12 months    MAL-ED           PERU                           Wealth Q3            NA                -0.0210962   -0.0724278    0.0302353
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0908479   -0.1497976   -0.0318981
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -0.0556301   -0.1157384    0.0044782
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -0.0863109   -0.1429476   -0.0296742
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -0.1020071   -0.1497358   -0.0542784
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1616379   -0.2476988   -0.0755770
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.1653930   -0.2279654   -0.1028207
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.1686071   -0.2318484   -0.1053658
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1333074   -0.1937101   -0.0729048
9-12 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0745069   -0.0957228   -0.0532909
9-12 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.0606404   -0.0829202   -0.0383607
9-12 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.0566831   -0.0802174   -0.0331488
9-12 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.0668216   -0.0912618   -0.0423814
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0427066   -0.0708693   -0.0145438
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0674824   -0.0944396   -0.0405252
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0527572   -0.0833587   -0.0221557
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0931006   -0.1227838   -0.0634175
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0706347   -0.1198465   -0.0214230
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0863169   -0.1467969   -0.0258368
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.0632404   -0.1150941   -0.0113868
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0970268   -0.1608943   -0.0331593
12-15 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0875028   -0.1061061   -0.0688996
12-15 months   COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0751977   -0.0971303   -0.0532651
12-15 months   COHORTS          GUATEMALA                      Wealth Q2            NA                -0.0966078   -0.1185090   -0.0747066
12-15 months   COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0863315   -0.1096119   -0.0630511
12-15 months   CONTENT          PERU                           Wealth Q4            NA                -0.0879032   -0.1234233   -0.0523832
12-15 months   CONTENT          PERU                           Wealth Q1            NA                -0.0740097   -0.1019163   -0.0461031
12-15 months   CONTENT          PERU                           Wealth Q2            NA                -0.0793089   -0.1130954   -0.0455225
12-15 months   CONTENT          PERU                           Wealth Q3            NA                -0.0513082   -0.0871933   -0.0154232
12-15 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0728145   -0.0904250   -0.0552040
12-15 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0773727   -0.0970888   -0.0576566
12-15 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0677894   -0.0876497   -0.0479291
12-15 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0411131   -0.0745545   -0.0076716
12-15 months   IRC              INDIA                          Wealth Q4            NA                -0.0409811   -0.0864224    0.0044602
12-15 months   IRC              INDIA                          Wealth Q1            NA                -0.0416314   -0.0728470   -0.0104157
12-15 months   IRC              INDIA                          Wealth Q2            NA                -0.0394187   -0.0683458   -0.0104916
12-15 months   IRC              INDIA                          Wealth Q3            NA                -0.0594878   -0.0915954   -0.0273803
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0412556   -0.0547345   -0.0277767
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                -0.0418269   -0.0532332   -0.0304207
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                -0.0381950   -0.0521187   -0.0242713
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                -0.0526691   -0.0656092   -0.0397290
12-15 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.0601531   -0.1515536    0.0312473
12-15 months   LCNI-5           MALAWI                         Wealth Q1            NA                 0.0340472   -0.0438866    0.1119810
12-15 months   LCNI-5           MALAWI                         Wealth Q2            NA                -0.0239908   -0.0821124    0.0341307
12-15 months   LCNI-5           MALAWI                         Wealth Q3            NA                -0.0715251   -0.1160006   -0.0270496
12-15 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0445065   -0.0710033   -0.0180097
12-15 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.0721681   -0.1149142   -0.0294220
12-15 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                -0.0654459   -0.0928194   -0.0380724
12-15 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.0475969   -0.0812750   -0.0139188
12-15 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0000955   -0.0405362    0.0403452
12-15 months   MAL-ED           BRAZIL                         Wealth Q1            NA                -0.0305619   -0.0809812    0.0198574
12-15 months   MAL-ED           BRAZIL                         Wealth Q2            NA                -0.0251776   -0.0841743    0.0338190
12-15 months   MAL-ED           BRAZIL                         Wealth Q3            NA                 0.0136059   -0.0215049    0.0487166
12-15 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0420126   -0.0692322   -0.0147930
12-15 months   MAL-ED           INDIA                          Wealth Q1            NA                -0.0564886   -0.0914007   -0.0215765
12-15 months   MAL-ED           INDIA                          Wealth Q2            NA                -0.0555896   -0.0835732   -0.0276061
12-15 months   MAL-ED           INDIA                          Wealth Q3            NA                -0.0722944   -0.1060445   -0.0385443
12-15 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0015081   -0.0256592    0.0286754
12-15 months   MAL-ED           NEPAL                          Wealth Q1            NA                -0.0967463   -0.1328449   -0.0606476
12-15 months   MAL-ED           NEPAL                          Wealth Q2            NA                -0.0784415   -0.1090237   -0.0478594
12-15 months   MAL-ED           NEPAL                          Wealth Q3            NA                -0.0579417   -0.0866210   -0.0292624
12-15 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0668662   -0.1095541   -0.0241784
12-15 months   MAL-ED           PERU                           Wealth Q1            NA                -0.0467373   -0.0812069   -0.0122677
12-15 months   MAL-ED           PERU                           Wealth Q2            NA                -0.0800857   -0.1159719   -0.0441994
12-15 months   MAL-ED           PERU                           Wealth Q3            NA                -0.0620692   -0.0926289   -0.0315096
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0499211   -0.0919817   -0.0078606
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -0.0795536   -0.1193774   -0.0397298
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -0.0403860   -0.0879973    0.0072254
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -0.0725781   -0.1240919   -0.0210642
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0850075   -0.1331610   -0.0368540
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0962717   -0.1491657   -0.0433776
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0324120   -0.0825123    0.0176884
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0708004   -0.1210731   -0.0205277
12-15 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0558115   -0.0760290   -0.0355941
12-15 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.0417429   -0.0628484   -0.0206375
12-15 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.0301101   -0.0520103   -0.0082099
12-15 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.0441693   -0.0629981   -0.0253404
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0467822   -0.0755676   -0.0179968
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0679499   -0.0955471   -0.0403526
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0744753   -0.1095556   -0.0393950
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0674358   -0.0938688   -0.0410027
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0532496   -0.0988708   -0.0076283
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0567958   -0.1187625    0.0051710
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.1123075   -0.1514803   -0.0731348
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0530114   -0.0989500   -0.0070729
15-18 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0475571   -0.0642848   -0.0308294
15-18 months   COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0579685   -0.0835846   -0.0323525
15-18 months   COHORTS          GUATEMALA                      Wealth Q2            NA                -0.0641015   -0.0890922   -0.0391109
15-18 months   COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0610232   -0.0862397   -0.0358067
15-18 months   CONTENT          PERU                           Wealth Q4            NA                -0.0066259   -0.0415361    0.0282844
15-18 months   CONTENT          PERU                           Wealth Q1            NA                -0.0076282   -0.0391812    0.0239249
15-18 months   CONTENT          PERU                           Wealth Q2            NA                -0.0256940   -0.0587105    0.0073224
15-18 months   CONTENT          PERU                           Wealth Q3            NA                -0.0125552   -0.0492007    0.0240902
15-18 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0598461   -0.0772167   -0.0424754
15-18 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.0723885   -0.0976982   -0.0470788
15-18 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.0690832   -0.0881389   -0.0500275
15-18 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.0747860   -0.1161246   -0.0334474
15-18 months   IRC              INDIA                          Wealth Q4            NA                -0.0374411   -0.0681390   -0.0067432
15-18 months   IRC              INDIA                          Wealth Q1            NA                -0.0305573   -0.0605986   -0.0005160
15-18 months   IRC              INDIA                          Wealth Q2            NA                -0.0238053   -0.0560682    0.0084576
15-18 months   IRC              INDIA                          Wealth Q3            NA                -0.0629323   -0.0896726   -0.0361921
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0408209   -0.0560837   -0.0255581
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                -0.0339678   -0.0440901   -0.0238455
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                -0.0339107   -0.0479501   -0.0198713
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                -0.0310096   -0.0457271   -0.0162921
15-18 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.0464162   -0.1081075    0.0152752
15-18 months   LCNI-5           MALAWI                         Wealth Q1            NA                -0.0779939   -0.1192087   -0.0367790
15-18 months   LCNI-5           MALAWI                         Wealth Q2            NA                -0.0559373   -0.1196105    0.0077360
15-18 months   LCNI-5           MALAWI                         Wealth Q3            NA                -0.0240091   -0.0667755    0.0187573
15-18 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0529224   -0.0821274   -0.0237174
15-18 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.0555139   -0.0948083   -0.0162195
15-18 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                -0.0482086   -0.0698477   -0.0265696
15-18 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.0288431   -0.0546146   -0.0030715
15-18 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0126942   -0.0564141    0.0310257
15-18 months   MAL-ED           BRAZIL                         Wealth Q1            NA                -0.0288886   -0.0679281    0.0101509
15-18 months   MAL-ED           BRAZIL                         Wealth Q2            NA                -0.0263400   -0.0766299    0.0239498
15-18 months   MAL-ED           BRAZIL                         Wealth Q3            NA                -0.0220612   -0.0589260    0.0148036
15-18 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0462415   -0.0715082   -0.0209747
15-18 months   MAL-ED           INDIA                          Wealth Q1            NA                -0.0286911   -0.0596510    0.0022688
15-18 months   MAL-ED           INDIA                          Wealth Q2            NA                -0.0323902   -0.0546103   -0.0101702
15-18 months   MAL-ED           INDIA                          Wealth Q3            NA                -0.0452626   -0.0710207   -0.0195046
15-18 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.0403085   -0.0675253   -0.0130917
15-18 months   MAL-ED           NEPAL                          Wealth Q1            NA                -0.0589793   -0.0938197   -0.0241388
15-18 months   MAL-ED           NEPAL                          Wealth Q2            NA                -0.0497404   -0.0825186   -0.0169623
15-18 months   MAL-ED           NEPAL                          Wealth Q3            NA                -0.0673449   -0.0974933   -0.0371965
15-18 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0249838   -0.0579999    0.0080322
15-18 months   MAL-ED           PERU                           Wealth Q1            NA                -0.0424708   -0.0724513   -0.0124902
15-18 months   MAL-ED           PERU                           Wealth Q2            NA                -0.0515941   -0.0842829   -0.0189053
15-18 months   MAL-ED           PERU                           Wealth Q3            NA                -0.0307588   -0.0583018   -0.0032157
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0223680   -0.0584030    0.0136669
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                 0.0183117   -0.0266405    0.0632640
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -0.0305359   -0.0672760    0.0062043
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -0.0592210   -0.0998735   -0.0185686
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0347358   -0.0730208    0.0035492
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0935631   -0.1476765   -0.0394497
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.1211001   -0.1701949   -0.0720052
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0953221   -0.1361494   -0.0544948
15-18 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0303300   -0.0494529   -0.0112071
15-18 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.0463972   -0.0618015   -0.0309929
15-18 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.0359131   -0.0530813   -0.0187450
15-18 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.0392181   -0.0591256   -0.0193106
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0365753   -0.0680371   -0.0051135
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0022980   -0.0254363    0.0300322
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0212820   -0.0561248    0.0135609
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0263743   -0.0565631    0.0038145
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0289954   -0.0680778    0.0100871
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.0878216   -0.1269639   -0.0486792
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.0367652   -0.0839430    0.0104125
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                 0.0024927   -0.0509287    0.0559142
18-21 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0131784   -0.0276729    0.0013162
18-21 months   COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0148486   -0.0368646    0.0071674
18-21 months   COHORTS          GUATEMALA                      Wealth Q2            NA                -0.0184958   -0.0424108    0.0054192
18-21 months   COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0293948   -0.0541012   -0.0046884
18-21 months   CONTENT          PERU                           Wealth Q4            NA                -0.0061777   -0.0362493    0.0238939
18-21 months   CONTENT          PERU                           Wealth Q1            NA                -0.0344268   -0.0634870   -0.0053666
18-21 months   CONTENT          PERU                           Wealth Q2            NA                -0.0007723   -0.0352210    0.0336763
18-21 months   CONTENT          PERU                           Wealth Q3            NA                 0.0086087   -0.0209534    0.0381707
18-21 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0207473    0.0042219    0.0372726
18-21 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                 0.0225505   -0.0059703    0.0510714
18-21 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                 0.0145660   -0.0025213    0.0316533
18-21 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                 0.0041281   -0.0335766    0.0418328
18-21 months   IRC              INDIA                          Wealth Q4            NA                -0.0352851   -0.0643026   -0.0062677
18-21 months   IRC              INDIA                          Wealth Q1            NA                -0.0582948   -0.0820309   -0.0345586
18-21 months   IRC              INDIA                          Wealth Q2            NA                -0.0286027   -0.0546198   -0.0025855
18-21 months   IRC              INDIA                          Wealth Q3            NA                -0.0352978   -0.0631757   -0.0074198
18-21 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0016024   -0.0259014    0.0291062
18-21 months   LCNI-5           MALAWI                         Wealth Q1            NA                -0.0191131   -0.0525324    0.0143062
18-21 months   LCNI-5           MALAWI                         Wealth Q2            NA                -0.0326304   -0.0808035    0.0155426
18-21 months   LCNI-5           MALAWI                         Wealth Q3            NA                -0.0211427   -0.0467599    0.0044746
18-21 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0012734   -0.0197743    0.0172274
18-21 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.0106788   -0.0472355    0.0258778
18-21 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                -0.0202621   -0.0408961    0.0003719
18-21 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.0275354   -0.0519402   -0.0031306
18-21 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0296728   -0.0779981    0.0186525
18-21 months   MAL-ED           BRAZIL                         Wealth Q1            NA                -0.0242034   -0.0795188    0.0311120
18-21 months   MAL-ED           BRAZIL                         Wealth Q2            NA                 0.0270944   -0.0471508    0.1013395
18-21 months   MAL-ED           BRAZIL                         Wealth Q3            NA                -0.0402587   -0.0747593   -0.0057582
18-21 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0078042   -0.0156343    0.0312428
18-21 months   MAL-ED           INDIA                          Wealth Q1            NA                -0.0089393   -0.0365693    0.0186907
18-21 months   MAL-ED           INDIA                          Wealth Q2            NA                 0.0246443    0.0046231    0.0446655
18-21 months   MAL-ED           INDIA                          Wealth Q3            NA                 0.0002369   -0.0221077    0.0225815
18-21 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.0509768   -0.0720041   -0.0299495
18-21 months   MAL-ED           NEPAL                          Wealth Q1            NA                -0.0001624   -0.0291829    0.0288580
18-21 months   MAL-ED           NEPAL                          Wealth Q2            NA                -0.0289359   -0.0571214   -0.0007505
18-21 months   MAL-ED           NEPAL                          Wealth Q3            NA                -0.0378298   -0.0611829   -0.0144767
18-21 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0088647   -0.0374804    0.0197510
18-21 months   MAL-ED           PERU                           Wealth Q1            NA                -0.0256021   -0.0615880    0.0103837
18-21 months   MAL-ED           PERU                           Wealth Q2            NA                -0.0376598   -0.0636647   -0.0116550
18-21 months   MAL-ED           PERU                           Wealth Q3            NA                 0.0318218    0.0003926    0.0632510
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0196540   -0.0685963    0.0292882
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -0.0724158   -0.1096835   -0.0351481
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -0.0200936   -0.0541085    0.0139212
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -0.0242465   -0.0609077    0.0124148
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0443045   -0.0855902   -0.0030188
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0121278   -0.0335963    0.0578520
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0113167   -0.0607964    0.0381630
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.0276297   -0.0724173    0.0171578
18-21 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0195740   -0.0378263   -0.0013217
18-21 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                 0.0078047   -0.0073030    0.0229123
18-21 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.0144161   -0.0305489    0.0017168
18-21 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.0197591   -0.0383933   -0.0011248
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0083346   -0.0266536    0.0433228
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                 0.0121274   -0.0410785    0.0653333
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                 0.0163295   -0.0188819    0.0515409
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                 0.0350771   -0.0163418    0.0864960
21-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0100365   -0.0238510    0.0037780
21-24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                -0.0098410   -0.0286325    0.0089506
21-24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                 0.0050226   -0.0130817    0.0231269
21-24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                -0.0036353   -0.0200247    0.0127541
21-24 months   CONTENT          PERU                           Wealth Q4            NA                 0.0447288   -0.0208387    0.1102962
21-24 months   CONTENT          PERU                           Wealth Q1            NA                 0.0184446   -0.0274433    0.0643325
21-24 months   CONTENT          PERU                           Wealth Q2            NA                 0.0628164    0.0079046    0.1177281
21-24 months   CONTENT          PERU                           Wealth Q3            NA                -0.0160957   -0.0548420    0.0226507
21-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0403134    0.0125981    0.0680286
21-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                 0.0391909    0.0149688    0.0634130
21-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                 0.0495856    0.0228221    0.0763492
21-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                 0.0607888    0.0143501    0.1072275
21-24 months   IRC              INDIA                          Wealth Q4            NA                -0.0095040   -0.0384415    0.0194335
21-24 months   IRC              INDIA                          Wealth Q1            NA                -0.0279371   -0.0508671   -0.0050070
21-24 months   IRC              INDIA                          Wealth Q2            NA                -0.0220940   -0.0506558    0.0064678
21-24 months   IRC              INDIA                          Wealth Q3            NA                 0.0050138   -0.0277172    0.0377449
21-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0338319    0.0116393    0.0560244
21-24 months   LCNI-5           MALAWI                         Wealth Q1            NA                 0.0199839   -0.0217369    0.0617047
21-24 months   LCNI-5           MALAWI                         Wealth Q2            NA                 0.0218733   -0.0084935    0.0522402
21-24 months   LCNI-5           MALAWI                         Wealth Q3            NA                 0.0244744   -0.0075333    0.0564820
21-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0217814    0.0007016    0.0428611
21-24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                 0.0200695   -0.0242447    0.0643837
21-24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                 0.0287773    0.0022411    0.0553136
21-24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                 0.0281210    0.0070566    0.0491853
21-24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0165055   -0.0101589    0.0431698
21-24 months   MAL-ED           BRAZIL                         Wealth Q1            NA                 0.0364892   -0.0030911    0.0760695
21-24 months   MAL-ED           BRAZIL                         Wealth Q2            NA                 0.0047666   -0.0396652    0.0491984
21-24 months   MAL-ED           BRAZIL                         Wealth Q3            NA                 0.0113360   -0.0162331    0.0389051
21-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0403127    0.0141288    0.0664966
21-24 months   MAL-ED           INDIA                          Wealth Q1            NA                 0.0274776    0.0068823    0.0480728
21-24 months   MAL-ED           INDIA                          Wealth Q2            NA                 0.0225774   -0.0009471    0.0461019
21-24 months   MAL-ED           INDIA                          Wealth Q3            NA                 0.0273555    0.0107327    0.0439783
21-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.0014278   -0.0318084    0.0289528
21-24 months   MAL-ED           NEPAL                          Wealth Q1            NA                -0.0110907   -0.0400492    0.0178678
21-24 months   MAL-ED           NEPAL                          Wealth Q2            NA                 0.0148629   -0.0149421    0.0446678
21-24 months   MAL-ED           NEPAL                          Wealth Q3            NA                 0.0153417   -0.0057302    0.0364136
21-24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0771323    0.0482626    0.1060019
21-24 months   MAL-ED           PERU                           Wealth Q1            NA                 0.0726462    0.0349252    0.1103671
21-24 months   MAL-ED           PERU                           Wealth Q2            NA                 0.0427268    0.0154715    0.0699821
21-24 months   MAL-ED           PERU                           Wealth Q3            NA                 0.0353320    0.0061769    0.0644872
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0508845    0.0180603    0.0837087
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                 0.0415640   -0.0054846    0.0886125
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                 0.0235651   -0.0067938    0.0539240
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                 0.0628836    0.0330300    0.0927371
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0195125   -0.0177733    0.0567983
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0339071   -0.0326293    0.1004435
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.0104607   -0.0582078    0.0372863
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.0079473   -0.0292942    0.0451887
21-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0368819    0.0166049    0.0571589
21-24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                 0.0374857    0.0191850    0.0557864
21-24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                 0.0396772    0.0230464    0.0563080
21-24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                 0.0666661    0.0501034    0.0832288


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     COHORTS          GUATEMALA                      NA                   NA                -0.5355682   -0.5575602   -0.5135762
0-3 months     CONTENT          PERU                           NA                   NA                 0.0249041   -0.0510599    0.1008681
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                 0.0740853    0.0691485    0.0790221
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                 0.0675829    0.0526455    0.0825202
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                -0.1175527   -0.1512522   -0.0838531
0-3 months     MAL-ED           BRAZIL                         NA                   NA                 0.1446583    0.0870976    0.2022191
0-3 months     MAL-ED           INDIA                          NA                   NA                -0.0689235   -0.1155446   -0.0223023
0-3 months     MAL-ED           NEPAL                          NA                   NA                 0.0544973    0.0099212    0.0990734
0-3 months     MAL-ED           PERU                           NA                   NA                -0.2543887   -0.2877193   -0.2210580
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1882890   -0.2390479   -0.1375301
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1400701   -0.1794271   -0.1007131
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     COHORTS          GUATEMALA                      NA                   NA                -0.0976717   -0.1124091   -0.0829344
3-6 months     CONTENT          PERU                           NA                   NA                 0.0173829   -0.0049673    0.0397330
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                -0.0034346   -0.0083001    0.0014310
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                -0.0088470   -0.0225757    0.0048816
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     MAL-ED           BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     MAL-ED           INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     MAL-ED           NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     MAL-ED           PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0016619   -0.0396107    0.0362870
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856607   -0.1022688   -0.0690525
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     COHORTS          GUATEMALA                      NA                   NA                -0.1202982   -0.1323063   -0.1082902
6-9 months     CONTENT          PERU                           NA                   NA                -0.0236130   -0.0439514   -0.0032747
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0438931   -0.0614010   -0.0263853
6-9 months     IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                -0.0289856   -0.0379823   -0.0199890
6-9 months     LCNI-5           MALAWI                         NA                   NA                 0.0279334    0.0120046    0.0438622
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     MAL-ED           BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     MAL-ED           INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     MAL-ED           NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     MAL-ED           PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0516546   -0.0677408   -0.0355685
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    COHORTS          GUATEMALA                      NA                   NA                -0.0910818   -0.1013201   -0.0808435
9-12 months    CONTENT          PERU                           NA                   NA                -0.0227002   -0.0389439   -0.0064565
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                -0.0798239   -0.0934194   -0.0662284
9-12 months    IRC              INDIA                          NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.0521361   -0.0596399   -0.0446324
9-12 months    LCNI-5           MALAWI                         NA                   NA                -0.0433141   -0.0626948   -0.0239333
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    MAL-ED           BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    MAL-ED           INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    MAL-ED           NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    MAL-ED           PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0659765   -0.0802683   -0.0516847
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   COHORTS          GUATEMALA                      NA                   NA                -0.0868247   -0.0971751   -0.0764742
12-15 months   CONTENT          PERU                           NA                   NA                -0.0751985   -0.0914586   -0.0589385
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0667249   -0.0775841   -0.0558657
12-15 months   IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                -0.0451119   -0.0511864   -0.0390374
12-15 months   LCNI-5           MALAWI                         NA                   NA                -0.0403575   -0.0774359   -0.0032790
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   MAL-ED           BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   MAL-ED           INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   MAL-ED           NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   MAL-ED           PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0644098   -0.0788912   -0.0499283
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   COHORTS          GUATEMALA                      NA                   NA                -0.0555559   -0.0666347   -0.0444771
15-18 months   CONTENT          PERU                           NA                   NA                -0.0106370   -0.0272168    0.0059428
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                -0.0328956   -0.0389474   -0.0268439
15-18 months   LCNI-5           MALAWI                         NA                   NA                -0.0464023   -0.0722064   -0.0205982
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   MAL-ED           BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   MAL-ED           INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   MAL-ED           NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   MAL-ED           PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0193878   -0.0347002   -0.0040754
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   COHORTS          GUATEMALA                      NA                   NA                -0.0186971   -0.0286605   -0.0087338
18-21 months   CONTENT          PERU                           NA                   NA                -0.0068090   -0.0219193    0.0083013
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   IRC              INDIA                          NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   LCNI-5           MALAWI                         NA                   NA                -0.0147327   -0.0309734    0.0015080
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   MAL-ED           BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   MAL-ED           INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   MAL-ED           NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   MAL-ED           PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   COHORTS          GUATEMALA                      NA                   NA                -0.0053218   -0.0133012    0.0026576
21-24 months   CONTENT          PERU                           NA                   NA                 0.0253992   -0.0018188    0.0526172
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   IRC              INDIA                          NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   LCNI-5           MALAWI                         NA                   NA                 0.0258428    0.0105053    0.0411803
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   MAL-ED           INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   MAL-ED           NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   MAL-ED           PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.1852422   -0.1544093    0.5248937
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.1987434   -0.1120874    0.5095742
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.2819931   -0.0024692    0.5664555
0-3 months     COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0129379   -0.0716253    0.0457495
0-3 months     COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0056358   -0.0594967    0.0707683
0-3 months     COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0210657   -0.0376801    0.0798115
0-3 months     CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.1094418   -0.3108407    0.0919571
0-3 months     CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.2656295   -0.4383308   -0.0929282
0-3 months     CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1660602   -0.3274970   -0.0046235
0-3 months     GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0315112   -0.0387012    0.1017235
0-3 months     GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0450216   -0.0249019    0.1149452
0-3 months     GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0284355   -0.0442265    0.1010975
0-3 months     IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          Wealth Q1            Wealth Q4         -0.1252057   -0.2584739    0.0080626
0-3 months     IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0675616   -0.2021803    0.0670572
0-3 months     IRC              INDIA                          Wealth Q3            Wealth Q4          0.0270943   -0.1139318    0.1681204
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0216110   -0.0375595   -0.0056624
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0145468   -0.0298881    0.0007945
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0022490   -0.0167680    0.0122700
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0135562   -0.0556920    0.0285796
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0137389   -0.0544726    0.0269948
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0005024   -0.0431119    0.0421070
0-3 months     MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.0407223   -0.0562768    0.1377214
0-3 months     MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0256757   -0.1117089    0.0603574
0-3 months     MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0330793   -0.1204038    0.0542452
0-3 months     MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4          0.0882348   -0.0619797    0.2384493
0-3 months     MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.0874869   -0.0690919    0.2440657
0-3 months     MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.0213119   -0.1884226    0.1457989
0-3 months     MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          Wealth Q1            Wealth Q4          0.1290916    0.0018686    0.2563145
0-3 months     MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0739405   -0.0597616    0.2076426
0-3 months     MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0756300   -0.0455912    0.1968513
0-3 months     MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          Wealth Q1            Wealth Q4          0.1326283    0.0002099    0.2650466
0-3 months     MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0678705   -0.0724003    0.2081412
0-3 months     MAL-ED           NEPAL                          Wealth Q3            Wealth Q4          0.0019683   -0.1346902    0.1386269
0-3 months     MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0071880   -0.0923556    0.1067316
0-3 months     MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.0344308   -0.1268019    0.0579404
0-3 months     MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0081931   -0.0896181    0.1060042
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1151840   -0.2645733    0.0342054
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0218902   -0.1279887    0.1717691
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0728657   -0.2164216    0.0706902
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0334208   -0.1296282    0.0627866
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0179022   -0.0874478    0.1232523
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0823447   -0.1939449    0.0292555
0-3 months     PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0570499    0.0083387    0.1057611
0-3 months     PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0290036   -0.0204864    0.0784936
0-3 months     PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0016523   -0.0550436    0.0583481
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.1138128   -0.0194449    0.2470704
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0317776   -0.1687054    0.1051503
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0378645   -0.1796724    0.1039435
3-6 months     COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0337058   -0.0730521    0.0056404
3-6 months     COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0185798   -0.0613883    0.0242287
3-6 months     COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0125197   -0.0241442    0.0491837
3-6 months     CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0048394   -0.0629157    0.0725945
3-6 months     CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0079950   -0.0563025    0.0722924
3-6 months     CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0424121   -0.1105176    0.0256933
3-6 months     GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0078288   -0.0456846    0.0613422
3-6 months     GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0243247   -0.0778155    0.0291661
3-6 months     GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0089787   -0.0447790    0.0627364
3-6 months     IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0094514   -0.0980097    0.0791069
3-6 months     IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0161822   -0.1099655    0.0776011
3-6 months     IRC              INDIA                          Wealth Q3            Wealth Q4          0.0279165   -0.0651391    0.1209721
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4          0.0106053   -0.0070943    0.0283050
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4          0.0046092   -0.0112691    0.0204875
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4          0.0047954   -0.0105942    0.0201850
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0047923   -0.0413182    0.0317335
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0297276   -0.0679947    0.0085395
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0154933   -0.0540311    0.0230444
3-6 months     MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.0292795   -0.0359019    0.0944609
3-6 months     MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4          0.0180767   -0.0529260    0.0890793
3-6 months     MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0128785   -0.0793674    0.0536104
3-6 months     MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.0709882   -0.1735014    0.0315249
3-6 months     MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.0459768   -0.1483248    0.0563711
3-6 months     MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.0049185   -0.1088915    0.0990546
3-6 months     MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0011367   -0.0889257    0.0866523
3-6 months     MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0203056   -0.0626733    0.1032845
3-6 months     MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0161209   -0.0645540    0.0967957
3-6 months     MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.0417771   -0.1156285    0.0320744
3-6 months     MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.0419530   -0.1172233    0.0333172
3-6 months     MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.0995408   -0.1782778   -0.0208037
3-6 months     MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0353677   -0.0602388    0.1309741
3-6 months     MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0345863   -0.0614209    0.1305935
3-6 months     MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0207380   -0.1075572    0.0660812
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0176508   -0.1299899    0.0946882
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.1603458   -0.2649409   -0.0557506
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0415349   -0.1511397    0.0680699
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0500753   -0.0320972    0.1322479
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0352653   -0.0541512    0.1246817
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0680420   -0.0123560    0.1484401
3-6 months     PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0081724   -0.0373320    0.0536768
3-6 months     PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0358884   -0.0090329    0.0808097
3-6 months     PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0139597   -0.0368182    0.0647376
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0505161    0.0053622    0.0956699
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0261912   -0.0270302    0.0794127
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0022331   -0.0441576    0.0486239
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0571237   -0.1542261    0.0399787
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0446503   -0.1423998    0.0530992
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0011092   -0.1036116    0.1058300
6-9 months     COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0063024   -0.0388818    0.0262771
6-9 months     COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0327745   -0.0674123    0.0018634
6-9 months     COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0322480   -0.0639412   -0.0005547
6-9 months     CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0503368   -0.1068224    0.0061488
6-9 months     CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0095481   -0.0638358    0.0447395
6-9 months     CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0353357   -0.0921012    0.0214298
6-9 months     GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0299985   -0.0193052    0.0793022
6-9 months     GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0119593   -0.0340877    0.0580063
6-9 months     GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0036129   -0.0380454    0.0452712
6-9 months     IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0386419   -0.1089589    0.0316750
6-9 months     IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0679233   -0.1361147    0.0002682
6-9 months     IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0585812   -0.1308955    0.0137332
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4          0.0019497   -0.0206398    0.0245393
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0042760   -0.0338487    0.0252968
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4          0.0161899   -0.0105640    0.0429438
6-9 months     LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0051465   -0.0560460    0.0457531
6-9 months     LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0056664   -0.0470429    0.0357102
6-9 months     LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0041473   -0.0392060    0.0475006
6-9 months     MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.0004809   -0.0473071    0.0482690
6-9 months     MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0315048   -0.0761089    0.0130993
6-9 months     MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0389909   -0.0859265    0.0079448
6-9 months     MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.0344851   -0.1284746    0.0595044
6-9 months     MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.0706003   -0.1681849    0.0269844
6-9 months     MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.0019933   -0.1034169    0.1074035
6-9 months     MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          Wealth Q1            Wealth Q4          0.0010037   -0.0693715    0.0713788
6-9 months     MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0065879   -0.0637913    0.0506156
6-9 months     MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.0006673   -0.0589989    0.0576643
6-9 months     MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          Wealth Q1            Wealth Q4          0.0588680   -0.0007916    0.1185276
6-9 months     MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0116530   -0.0421619    0.0654680
6-9 months     MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.0072094   -0.0564798    0.0420610
6-9 months     MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0284390   -0.0340062    0.0908841
6-9 months     MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0451119   -0.0284975    0.1187214
6-9 months     MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0214600   -0.0512632    0.0941831
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0912061   -0.1703539   -0.0120583
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0465252   -0.1212668    0.0282165
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0811361   -0.1645832    0.0023109
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0529487   -0.1545455    0.0486481
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0615046   -0.1659183    0.0429091
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0858852   -0.1868708    0.0151003
6-9 months     PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0382434    0.0067615    0.0697253
6-9 months     PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0205404   -0.0124925    0.0535733
6-9 months     PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0008073   -0.0327006    0.0310860
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0029991   -0.0419049    0.0479031
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0005726   -0.0475348    0.0486799
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0367424   -0.0105241    0.0840089
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0159488   -0.0922737    0.0603761
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0154722   -0.0590460    0.0899904
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0236249   -0.0728072    0.1200569
9-12 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0024295   -0.0324460    0.0275869
9-12 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0065826   -0.0222039    0.0353692
9-12 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0146595   -0.0421142    0.0127952
9-12 months    CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0191154   -0.0669641    0.0287332
9-12 months    CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0098477   -0.0572272    0.0375318
9-12 months    CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0333893   -0.0814806    0.0147019
9-12 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0308763   -0.0719608    0.0102083
9-12 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0133268   -0.0506800    0.0240265
9-12 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0279437   -0.0586779    0.0027904
9-12 months    IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          Wealth Q1            Wealth Q4          0.0311283   -0.0171225    0.0793790
9-12 months    IRC              INDIA                          Wealth Q2            Wealth Q4          0.0264556   -0.0219093    0.0748206
9-12 months    IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0155390   -0.0605443    0.0294663
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0082065   -0.0304797    0.0140667
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0112084   -0.0379882    0.0155715
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0075664   -0.0303510    0.0152181
9-12 months    LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0448015   -0.1022630    0.0126599
9-12 months    LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0153773   -0.0374551    0.0682096
9-12 months    LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0259386   -0.0286344    0.0805116
9-12 months    MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.0238118   -0.0234975    0.0711212
9-12 months    MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4          0.0027173   -0.0408558    0.0462905
9-12 months    MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4          0.0297132   -0.0164322    0.0758587
9-12 months    MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.0536033   -0.1356130    0.0284064
9-12 months    MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.0291308   -0.1268335    0.0685720
9-12 months    MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.0247422   -0.1171173    0.0676329
9-12 months    MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          Wealth Q1            Wealth Q4          0.0044383   -0.0431544    0.0520310
9-12 months    MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0238695   -0.0198399    0.0675789
9-12 months    MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0351506   -0.0082697    0.0785710
9-12 months    MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          Wealth Q1            Wealth Q4          0.0015581   -0.0494574    0.0525735
9-12 months    MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0368776   -0.0137777    0.0875330
9-12 months    MAL-ED           NEPAL                          Wealth Q3            Wealth Q4          0.0038727   -0.0415471    0.0492925
9-12 months    MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.0018474   -0.0620524    0.0583575
9-12 months    MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0120492   -0.0486620    0.0727604
9-12 months    MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0307177   -0.0366953    0.0981308
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0352178   -0.0498125    0.1202480
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0045370   -0.0779749    0.0870489
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0111592   -0.0870887    0.0647702
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0037551   -0.1115761    0.1040659
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0069692   -0.1150056    0.1010672
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0283305   -0.0774109    0.1340719
9-12 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0138664   -0.0169340    0.0446669
9-12 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0178238   -0.0138949    0.0495425
9-12 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0076853   -0.0246485    0.0400190
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0247758   -0.0638637    0.0143120
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0100506   -0.0517182    0.0316170
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0503941   -0.0912914   -0.0094967
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0156821   -0.0933998    0.0620355
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0073943   -0.0638008    0.0785893
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0263921   -0.1068915    0.0541073
12-15 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4          0.0123051   -0.0165900    0.0412003
12-15 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0091050   -0.0380579    0.0198479
12-15 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0011714   -0.0288342    0.0311769
12-15 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0138936   -0.0313381    0.0591252
12-15 months   CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0085943   -0.0404409    0.0576296
12-15 months   CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0365950   -0.0140803    0.0872704
12-15 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0045582   -0.0310050    0.0218886
12-15 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0050251   -0.0217103    0.0317605
12-15 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0317014   -0.0060379    0.0694408
12-15 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0006503   -0.0560604    0.0547598
12-15 months   IRC              INDIA                          Wealth Q2            Wealth Q4          0.0015624   -0.0525862    0.0557110
12-15 months   IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0185068   -0.0741371    0.0371236
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0005713   -0.0184335    0.0172909
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4          0.0030606   -0.0164548    0.0225760
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0114136   -0.0299782    0.0071511
12-15 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0942004   -0.0264134    0.2148142
12-15 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0361623   -0.0727685    0.1450931
12-15 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0113720   -0.1131265    0.0903826
12-15 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0276616   -0.0779852    0.0226620
12-15 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0209394   -0.0592218    0.0173430
12-15 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0030904   -0.0460169    0.0398361
12-15 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.0304664   -0.0950400    0.0341072
12-15 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.0250821   -0.0968436    0.0466795
12-15 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.0137014   -0.0402837    0.0676865
12-15 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0144760   -0.0588076    0.0298556
12-15 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0135770   -0.0526974    0.0255433
12-15 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.0302818   -0.0737252    0.0131615
12-15 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.0982543   -0.1434478   -0.0530609
12-15 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.0799496   -0.1209004   -0.0389989
12-15 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.0594498   -0.0989537   -0.0199458
12-15 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0201289   -0.0348394    0.0750972
12-15 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.0132194   -0.0689921    0.0425532
12-15 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0047970   -0.0481091    0.0577031
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0296325   -0.0878252    0.0285603
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0095352   -0.0542071    0.0732775
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0226569   -0.0892033    0.0438894
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0112641   -0.0828461    0.0603178
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0525956   -0.0169759    0.1221670
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0142071   -0.0554329    0.0838472
12-15 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0140686   -0.0152996    0.0434368
12-15 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0257015   -0.0041263    0.0555292
12-15 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0116423   -0.0160416    0.0393262
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0211677   -0.0611123    0.0187769
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0276932   -0.0732864    0.0179001
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0206536   -0.0598211    0.0185139
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0035462   -0.0807445    0.0736521
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0590580   -0.1194846    0.0013687
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0002381   -0.0648265    0.0653027
15-18 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0104115   -0.0410373    0.0202144
15-18 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0165444   -0.0467405    0.0136516
15-18 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0134661   -0.0437150    0.0167828
15-18 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0010023   -0.0480028    0.0459982
15-18 months   CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0190682   -0.0669801    0.0288437
15-18 months   CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0059294   -0.0565217    0.0446629
15-18 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0125424   -0.0431289    0.0180440
15-18 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0092372   -0.0353581    0.0168838
15-18 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0149399   -0.0597276    0.0298478
15-18 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          Wealth Q1            Wealth Q4          0.0068838   -0.0362004    0.0499680
15-18 months   IRC              INDIA                          Wealth Q2            Wealth Q4          0.0136358   -0.0310344    0.0583061
15-18 months   IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0254913   -0.0665286    0.0155461
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4          0.0068531   -0.0110635    0.0247697
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4          0.0069102   -0.0131467    0.0269672
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4          0.0098113   -0.0111977    0.0308203
15-18 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0315777   -0.1061055    0.0429501
15-18 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0095211   -0.0980434    0.0790012
15-18 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0224071   -0.0529489    0.0977630
15-18 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0025914   -0.0516537    0.0464708
15-18 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4          0.0047138   -0.0317567    0.0411843
15-18 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4          0.0240793   -0.0149012    0.0630599
15-18 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.0161944   -0.0749164    0.0425276
15-18 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.0136458   -0.0803758    0.0530842
15-18 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.0093670   -0.0666608    0.0479269
15-18 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4          0.0175504   -0.0224472    0.0575479
15-18 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0138512   -0.0198452    0.0475477
15-18 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0009788   -0.0351978    0.0371555
15-18 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.0186708   -0.0629238    0.0255822
15-18 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.0094319   -0.0520365    0.0331726
15-18 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.0270364   -0.0676761    0.0136033
15-18 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.0174870   -0.0621600    0.0271861
15-18 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.0266102   -0.0731670    0.0199465
15-18 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0057749   -0.0488580    0.0373081
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0406797   -0.0176339    0.0989933
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0081679   -0.0597764    0.0434407
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0368530   -0.0912049    0.0174989
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0588273   -0.1251512    0.0074965
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0863642   -0.1486925   -0.0240360
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0605863   -0.1166152   -0.0045573
15-18 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0160672   -0.0406132    0.0084787
15-18 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0055832   -0.0312951    0.0201287
15-18 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0088881   -0.0365051    0.0187289
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0388733   -0.0029632    0.0807097
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0152934   -0.0317022    0.0622889
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0102010   -0.0335067    0.0539087
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0588262   -0.1143266   -0.0033258
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0077699   -0.0690874    0.0535477
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0314881   -0.0349296    0.0979058
18-21 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0016702   -0.0281355    0.0247950
18-21 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0053174   -0.0332911    0.0226562
18-21 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0162164   -0.0450820    0.0126491
18-21 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0282491   -0.0699298    0.0134315
18-21 months   CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0054054   -0.0402726    0.0510834
18-21 months   CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0147864   -0.0278441    0.0574169
18-21 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0018032   -0.0313955    0.0350019
18-21 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0061813   -0.0304871    0.0181246
18-21 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0166192   -0.0581264    0.0248880
18-21 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0230096   -0.0605415    0.0145223
18-21 months   IRC              INDIA                          Wealth Q2            Wealth Q4          0.0066824   -0.0323151    0.0456799
18-21 months   IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0000127   -0.0403325    0.0403071
18-21 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0207155   -0.0642426    0.0228116
18-21 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0342328   -0.0907580    0.0222924
18-21 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0227451   -0.0609312    0.0154411
18-21 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0094054   -0.0504189    0.0316081
18-21 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0189887   -0.0466616    0.0086843
18-21 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0262619   -0.0569123    0.0043884
18-21 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4          0.0054694   -0.0680527    0.0789916
18-21 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.0567672   -0.0317891    0.1453235
18-21 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.0105859   -0.0701503    0.0489784
18-21 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0167435   -0.0530206    0.0195335
18-21 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0168401   -0.0141210    0.0478012
18-21 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.0075673   -0.0400734    0.0249388
18-21 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4          0.0508143    0.0151101    0.0865186
18-21 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0220408   -0.0131633    0.0572450
18-21 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4          0.0131470   -0.0182131    0.0445070
18-21 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.0167374   -0.0627973    0.0293224
18-21 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.0287951   -0.0675464    0.0099561
18-21 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0406865   -0.0019168    0.0832898
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0527618   -0.1149501    0.0094266
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0004396   -0.0603008    0.0594217
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0045924   -0.0659022    0.0567173
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0564324   -0.0051668    0.1180315
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0329878   -0.0316935    0.0976691
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0166748   -0.0444631    0.0778127
18-21 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0273787    0.0036533    0.0511040
18-21 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0051579   -0.0191997    0.0295156
18-21 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0001851   -0.0262831    0.0259130
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0037927   -0.0603979    0.0679834
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0079949   -0.0422227    0.0582125
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0267425   -0.0357008    0.0891858
21-24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4          0.0001955   -0.0230929    0.0234840
21-24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0150591   -0.0077213    0.0378394
21-24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0064012   -0.0150850    0.0278874
21-24 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0262842   -0.1063141    0.0537457
21-24 months   CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0180876   -0.0674366    0.1036118
21-24 months   CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0608244   -0.1369846    0.0153357
21-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0011224   -0.0379814    0.0357365
21-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0092723   -0.0294347    0.0479792
21-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0204754   -0.0337723    0.0747232
21-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0184330   -0.0556808    0.0188148
21-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0125900   -0.0535969    0.0284170
21-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4          0.0145179   -0.0292562    0.0582919
21-24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0138480   -0.0611271    0.0334312
21-24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0119585   -0.0496126    0.0256956
21-24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0093575   -0.0482649    0.0295499
21-24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0017119   -0.0507500    0.0473262
21-24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4          0.0069960   -0.0273195    0.0413115
21-24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4          0.0063396   -0.0234045    0.0360837
21-24 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4          0.0199837   -0.0278266    0.0677940
21-24 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.0117389   -0.0635991    0.0401213
21-24 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.0051695   -0.0436371    0.0332981
21-24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0128351   -0.0461959    0.0205256
21-24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0177353   -0.0529513    0.0174807
21-24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.0129572   -0.0439532    0.0180388
21-24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.0096629   -0.0513624    0.0320366
21-24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0162907   -0.0264313    0.0590126
21-24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4          0.0167695   -0.0200445    0.0535836
21-24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.0044861   -0.0521645    0.0431923
21-24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.0344055   -0.0741524    0.0053414
21-24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0418002   -0.0829486   -0.0006519
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0093205   -0.0664602    0.0478191
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0273194   -0.0722558    0.0176171
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0119991   -0.0325313    0.0565294
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0143946   -0.0619112    0.0907004
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0299732   -0.0905202    0.0305737
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0115652   -0.0641458    0.0410154
21-24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0006038   -0.0267463    0.0279540
21-24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0027953   -0.0234630    0.0290536
21-24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0297842    0.0035696    0.0559988


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1454929   -0.0098946    0.3008804
0-3 months     COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0047131   -0.0262255    0.0356517
0-3 months     CONTENT          PERU                           Wealth Q4            NA                -0.1363442   -0.2445115   -0.0281769
0-3 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0270396   -0.0152071    0.0692863
0-3 months     IRC              INDIA                          Wealth Q4            NA                -0.0417297   -0.1283756    0.0449162
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0092077   -0.0206743    0.0022589
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0101860   -0.0358405    0.0154684
0-3 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0060453   -0.0572490    0.0451584
0-3 months     MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0469914   -0.0387267    0.1327096
0-3 months     MAL-ED           INDIA                          Wealth Q4            NA                 0.0715434   -0.0069200    0.1500068
0-3 months     MAL-ED           NEPAL                          Wealth Q4            NA                 0.0322516   -0.0594831    0.1239863
0-3 months     MAL-ED           PERU                           Wealth Q4            NA                -0.0036764   -0.0634880    0.0561353
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0463716   -0.1423280    0.0495847
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0245537   -0.0875345    0.0384270
0-3 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0248988   -0.0076088    0.0574065
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0095784   -0.0737490    0.0929057
3-6 months     COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0066629   -0.0251610    0.0118352
3-6 months     CONTENT          PERU                           Wealth Q4            NA                -0.0046104   -0.0471698    0.0379490
3-6 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0018851   -0.0356361    0.0318659
3-6 months     IRC              INDIA                          Wealth Q4            NA                -0.0038600   -0.0648009    0.0570808
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0048862   -0.0059677    0.0157401
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0124764   -0.0364872    0.0115344
3-6 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0080495   -0.0307875    0.0468865
3-6 months     MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0239210   -0.0860388    0.0381969
3-6 months     MAL-ED           INDIA                          Wealth Q4            NA                 0.0140302   -0.0352712    0.0633317
3-6 months     MAL-ED           NEPAL                          Wealth Q4            NA                -0.0463912   -0.0939072    0.0011247
3-6 months     MAL-ED           PERU                           Wealth Q4            NA                 0.0125088   -0.0454625    0.0704801
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0565113   -0.1245827    0.0115602
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0370753   -0.0083279    0.0824785
3-6 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0188233   -0.0121492    0.0497959
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0227468   -0.0062771    0.0517707
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0245362   -0.0858908    0.0368184
6-9 months     COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0153345   -0.0311940    0.0005249
6-9 months     CONTENT          PERU                           Wealth Q4            NA                -0.0297739   -0.0629379    0.0033900
6-9 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0123838   -0.0158510    0.0406185
6-9 months     IRC              INDIA                          Wealth Q4            NA                -0.0427800   -0.0901327    0.0045726
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0083286   -0.0090495    0.0257067
6-9 months     LCNI-5           MALAWI                         Wealth Q4            NA                -0.0020519   -0.0281453    0.0240415
6-9 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0148424   -0.0409746    0.0112898
6-9 months     MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0280797   -0.0876062    0.0314469
6-9 months     MAL-ED           INDIA                          Wealth Q4            NA                -0.0004198   -0.0362409    0.0354014
6-9 months     MAL-ED           NEPAL                          Wealth Q4            NA                 0.0161066   -0.0155519    0.0477650
6-9 months     MAL-ED           PERU                           Wealth Q4            NA                 0.0226842   -0.0172563    0.0626246
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0536316   -0.1021487   -0.0051145
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0433756   -0.1073084    0.0205572
6-9 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0128469   -0.0080261    0.0337198
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0091533   -0.0196968    0.0380033
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0068581   -0.0437496    0.0574658
9-12 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0035059   -0.0170113    0.0099994
9-12 months    CONTENT          PERU                           Wealth Q4            NA                -0.0105553   -0.0406567    0.0195461
9-12 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0178058   -0.0384465    0.0028348
9-12 months    IRC              INDIA                          Wealth Q4            NA                 0.0104712   -0.0182353    0.0391778
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0063926   -0.0210073    0.0082220
9-12 months    LCNI-5           MALAWI                         Wealth Q4            NA                -0.0005237   -0.0321751    0.0311277
9-12 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0133196   -0.0135656    0.0402047
9-12 months    MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0223207   -0.0773305    0.0326890
9-12 months    MAL-ED           INDIA                          Wealth Q4            NA                 0.0163395   -0.0100663    0.0427453
9-12 months    MAL-ED           NEPAL                          Wealth Q4            NA                 0.0098710   -0.0205111    0.0402530
9-12 months    MAL-ED           PERU                           Wealth Q4            NA                 0.0098879   -0.0272817    0.0470575
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0059858   -0.0439058    0.0558773
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0066718   -0.0624667    0.0758104
9-12 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0114599   -0.0083094    0.0312291
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0232700   -0.0483737    0.0018337
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0005989   -0.0447676    0.0435698
12-15 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0006782   -0.0134097    0.0147660
12-15 months   CONTENT          PERU                           Wealth Q4            NA                 0.0127047   -0.0180309    0.0434403
12-15 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0060896   -0.0102891    0.0224682
12-15 months   IRC              INDIA                          Wealth Q4            NA                -0.0044708   -0.0415771    0.0326355
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0038563   -0.0163103    0.0085976
12-15 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0197957   -0.0487973    0.0883886
12-15 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0112058   -0.0347787    0.0123671
12-15 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0029475   -0.0379830    0.0320880
12-15 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0145098   -0.0390177    0.0099982
12-15 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.0589631   -0.0837193   -0.0342068
12-15 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0015131   -0.0321678    0.0351940
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0092547   -0.0457514    0.0272419
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0156512   -0.0256252    0.0569276
12-15 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0149008   -0.0040189    0.0338205
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0176276   -0.0433108    0.0080556
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0148375   -0.0547321    0.0250570
15-18 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0079988   -0.0219250    0.0059274
15-18 months   CONTENT          PERU                           Wealth Q4            NA                -0.0040111   -0.0345754    0.0265531
15-18 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0091115   -0.0264436    0.0082205
15-18 months   IRC              INDIA                          Wealth Q4            NA                -0.0010756   -0.0281043    0.0259532
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0079253   -0.0058335    0.0216840
15-18 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0000139   -0.0503921    0.0504198
15-18 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0071281   -0.0167702    0.0310265
15-18 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0076480   -0.0431548    0.0278587
15-18 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0082380   -0.0135725    0.0300485
15-18 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.0146261   -0.0395792    0.0103271
15-18 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0110727   -0.0371823    0.0150369
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0061796   -0.0377588    0.0253996
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0508984   -0.0849364   -0.0168604
15-18 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0073138   -0.0247623    0.0101348
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0171875   -0.0106619    0.0450368
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0147704   -0.0499465    0.0204057
18-21 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0055188   -0.0180689    0.0070314
18-21 months   CONTENT          PERU                           Wealth Q4            NA                -0.0006313   -0.0272485    0.0259859
18-21 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0051547   -0.0219786    0.0116692
18-21 months   IRC              INDIA                          Wealth Q4            NA                -0.0047965   -0.0299997    0.0204067
18-21 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.0163351   -0.0411738    0.0085036
18-21 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0142484   -0.0307548    0.0022580
18-21 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0093138   -0.0288262    0.0474538
18-21 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0020302   -0.0221247    0.0180643
18-21 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0228715    0.0033762    0.0423669
18-21 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0007506   -0.0226402    0.0241414
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0125124   -0.0528032    0.0277784
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0161013   -0.0194754    0.0516779
18-21 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0086341   -0.0077259    0.0249941
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0093665   -0.0234452    0.0421781
21-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0047147   -0.0060190    0.0154484
21-24 months   CONTENT          PERU                           Wealth Q4            NA                -0.0193296   -0.0818481    0.0431890
21-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0078136   -0.0170346    0.0326617
21-24 months   IRC              INDIA                          Wealth Q4            NA                -0.0044041   -0.0297179    0.0209097
21-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.0079891   -0.0287858    0.0128076
21-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0038368   -0.0147273    0.0224010
21-24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0000185   -0.0230385    0.0230016
21-24 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0105241   -0.0318527    0.0108046
21-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0068826   -0.0181535    0.0319187
21-24 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0201579   -0.0432547    0.0029388
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0070124   -0.0357781    0.0217534
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0106728   -0.0439007    0.0225552
21-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0093523   -0.0088330    0.0275376
