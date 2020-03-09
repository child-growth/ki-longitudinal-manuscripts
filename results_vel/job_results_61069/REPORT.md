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

**Outcome Variable:** y_rate_len

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
![](/tmp/4badebfc-c637-4fd6-8463-f22af683ab7b/501558cb-be94-4374-9f02-7d19a9c444f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4badebfc-c637-4fd6-8463-f22af683ab7b/501558cb-be94-4374-9f02-7d19a9c444f3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4badebfc-c637-4fd6-8463-f22af683ab7b/501558cb-be94-4374-9f02-7d19a9c444f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                3.1563447   2.7757941   3.5368953
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                3.5968846   3.0514322   4.1423371
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                3.5054931   2.9509531   4.0600332
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                3.7815580   3.4092569   4.1538590
0-3 months     COHORTS          GUATEMALA                      Wealth Q4            NA                2.5737820   2.4978365   2.6497275
0-3 months     COHORTS          GUATEMALA                      Wealth Q1            NA                2.5559558   2.4659693   2.6459423
0-3 months     COHORTS          GUATEMALA                      Wealth Q2            NA                2.5879925   2.4847864   2.6911987
0-3 months     COHORTS          GUATEMALA                      Wealth Q3            NA                2.6231386   2.5340400   2.7122372
0-3 months     CONTENT          PERU                           Wealth Q4            NA                3.9898145   3.8052975   4.1743315
0-3 months     CONTENT          PERU                           Wealth Q1            NA                3.6471591   3.2148518   4.0794664
0-3 months     CONTENT          PERU                           Wealth Q2            NA                3.3840446   3.1441402   3.6239490
0-3 months     CONTENT          PERU                           Wealth Q3            NA                3.5583976   3.2016959   3.9150994
0-3 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                3.5399072   3.4440611   3.6357534
0-3 months     GMS-Nepal        NEPAL                          Wealth Q1            NA                3.5942980   3.4931199   3.6954761
0-3 months     GMS-Nepal        NEPAL                          Wealth Q2            NA                3.6592962   3.5599208   3.7586717
0-3 months     GMS-Nepal        NEPAL                          Wealth Q3            NA                3.5976567   3.4848590   3.7104545
0-3 months     IRC              INDIA                          Wealth Q4            NA                3.2543271   3.0404599   3.4681942
0-3 months     IRC              INDIA                          Wealth Q1            NA                2.9511561   2.7558262   3.1464860
0-3 months     IRC              INDIA                          Wealth Q2            NA                3.0903949   2.8993807   3.2814092
0-3 months     IRC              INDIA                          Wealth Q3            NA                3.3103824   3.1016595   3.5191053
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q4            NA                3.7391799   3.7131715   3.7651883
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q1            NA                3.7015610   3.6779512   3.7251708
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q2            NA                3.7126051   3.6899438   3.7352664
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q3            NA                3.7378729   3.7197985   3.7559473
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                3.6583930   3.5988857   3.7179003
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q1            NA                3.6165043   3.5536640   3.6793446
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q2            NA                3.6315676   3.5654826   3.6976525
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q3            NA                3.6554532   3.5856005   3.7253060
0-3 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                3.3849707   3.2742864   3.4956550
0-3 months     MAL-ED           BANGLADESH                     Wealth Q1            NA                3.3677133   3.1979934   3.5374333
0-3 months     MAL-ED           BANGLADESH                     Wealth Q2            NA                3.2741878   3.1461938   3.4021817
0-3 months     MAL-ED           BANGLADESH                     Wealth Q3            NA                3.3645418   3.2333428   3.4957408
0-3 months     MAL-ED           BRAZIL                         Wealth Q4            NA                3.7140008   3.5364911   3.8915106
0-3 months     MAL-ED           BRAZIL                         Wealth Q1            NA                3.9468871   3.7205434   4.1732309
0-3 months     MAL-ED           BRAZIL                         Wealth Q2            NA                3.9309538   3.6870133   4.1748942
0-3 months     MAL-ED           BRAZIL                         Wealth Q3            NA                3.7494880   3.4957999   4.0031762
0-3 months     MAL-ED           INDIA                          Wealth Q4            NA                3.1803998   3.0133800   3.3474196
0-3 months     MAL-ED           INDIA                          Wealth Q1            NA                3.4199222   3.2400623   3.5997820
0-3 months     MAL-ED           INDIA                          Wealth Q2            NA                3.3443432   3.1447575   3.5439289
0-3 months     MAL-ED           INDIA                          Wealth Q3            NA                3.3747398   3.1872646   3.5622150
0-3 months     MAL-ED           NEPAL                          Wealth Q4            NA                3.5286000   3.3156059   3.7415940
0-3 months     MAL-ED           NEPAL                          Wealth Q1            NA                3.7728564   3.6264724   3.9192404
0-3 months     MAL-ED           NEPAL                          Wealth Q2            NA                3.6714088   3.4591363   3.8836813
0-3 months     MAL-ED           NEPAL                          Wealth Q3            NA                3.5542299   3.3737560   3.7347039
0-3 months     MAL-ED           PERU                           Wealth Q4            NA                3.0792620   2.9464743   3.2120497
0-3 months     MAL-ED           PERU                           Wealth Q1            NA                3.0699307   2.9267259   3.2131354
0-3 months     MAL-ED           PERU                           Wealth Q2            NA                3.0070308   2.8825050   3.1315566
0-3 months     MAL-ED           PERU                           Wealth Q3            NA                3.1329911   3.0015789   3.2644034
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                3.2328000   3.0336092   3.4319908
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                3.0201132   2.8043609   3.2358656
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                3.3173131   3.1116031   3.5230230
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                3.1480003   2.9611110   3.3348895
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                3.3001318   3.1694866   3.4307770
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                3.2565028   3.1092328   3.4037727
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                3.3733716   3.2218231   3.5249202
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                3.1252819   2.9390561   3.3115078
0-3 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                3.2075187   3.1323939   3.2826435
0-3 months     PROVIDE          BANGLADESH                     Wealth Q1            NA                3.3277407   3.2604196   3.3950617
0-3 months     PROVIDE          BANGLADESH                     Wealth Q2            NA                3.2600745   3.1911692   3.3289798
0-3 months     PROVIDE          BANGLADESH                     Wealth Q3            NA                3.2210011   3.1345217   3.3074805
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                1.7983255   1.5914876   2.0051633
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                2.0143602   1.8217497   2.2069706
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                1.7150622   1.5182548   1.9118696
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                1.7347369   1.5201853   1.9492885
3-6 months     COHORTS          GUATEMALA                      Wealth Q4            NA                1.7706387   1.7227605   1.8185170
3-6 months     COHORTS          GUATEMALA                      Wealth Q1            NA                1.7027687   1.6325830   1.7729544
3-6 months     COHORTS          GUATEMALA                      Wealth Q2            NA                1.7373575   1.6596813   1.8150337
3-6 months     COHORTS          GUATEMALA                      Wealth Q3            NA                1.8045017   1.7433746   1.8656287
3-6 months     CONTENT          PERU                           Wealth Q4            NA                2.1155432   2.0101015   2.2209849
3-6 months     CONTENT          PERU                           Wealth Q1            NA                2.1156973   2.0163332   2.2150614
3-6 months     CONTENT          PERU                           Wealth Q2            NA                2.1214445   2.0342486   2.2086405
3-6 months     CONTENT          PERU                           Wealth Q3            NA                2.0213794   1.9247135   2.1180453
3-6 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                1.7085049   1.6285452   1.7884646
3-6 months     GMS-Nepal        NEPAL                          Wealth Q1            NA                1.7308575   1.6544377   1.8072773
3-6 months     GMS-Nepal        NEPAL                          Wealth Q2            NA                1.6639399   1.5892137   1.7386661
3-6 months     GMS-Nepal        NEPAL                          Wealth Q3            NA                1.7337922   1.6506656   1.8169189
3-6 months     IRC              INDIA                          Wealth Q4            NA                1.9072195   1.7507794   2.0636596
3-6 months     IRC              INDIA                          Wealth Q1            NA                1.8341712   1.7278587   1.9404838
3-6 months     IRC              INDIA                          Wealth Q2            NA                1.8461232   1.7195444   1.9727019
3-6 months     IRC              INDIA                          Wealth Q3            NA                1.9463235   1.8189393   2.0737077
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q4            NA                1.9119963   1.8852817   1.9387110
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q1            NA                1.9256158   1.8981783   1.9530534
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q2            NA                1.9182675   1.8930614   1.9434735
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q3            NA                1.9198828   1.8995669   1.9401987
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                1.9310818   1.8742050   1.9879586
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q1            NA                1.9117750   1.8549752   1.9685748
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q2            NA                1.8554253   1.7947573   1.9160934
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q3            NA                1.8921242   1.8267822   1.9574661
3-6 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                1.9123452   1.8126500   2.0120403
3-6 months     MAL-ED           BANGLADESH                     Wealth Q1            NA                1.9765182   1.8737178   2.0793187
3-6 months     MAL-ED           BANGLADESH                     Wealth Q2            NA                1.9486912   1.8438068   2.0535755
3-6 months     MAL-ED           BANGLADESH                     Wealth Q3            NA                1.8654346   1.7631164   1.9677528
3-6 months     MAL-ED           BRAZIL                         Wealth Q4            NA                2.2176505   2.0637927   2.3715083
3-6 months     MAL-ED           BRAZIL                         Wealth Q1            NA                2.0516381   1.8880052   2.2152709
3-6 months     MAL-ED           BRAZIL                         Wealth Q2            NA                2.1151124   1.9533098   2.2769149
3-6 months     MAL-ED           BRAZIL                         Wealth Q3            NA                2.2216152   2.0579653   2.3852651
3-6 months     MAL-ED           INDIA                          Wealth Q4            NA                1.8468955   1.7390292   1.9547617
3-6 months     MAL-ED           INDIA                          Wealth Q1            NA                1.8473834   1.6929296   2.0018372
3-6 months     MAL-ED           INDIA                          Wealth Q2            NA                1.8922829   1.7531375   2.0314282
3-6 months     MAL-ED           INDIA                          Wealth Q3            NA                1.8651328   1.7404608   1.9898048
3-6 months     MAL-ED           NEPAL                          Wealth Q4            NA                2.0366047   1.9284097   2.1447996
3-6 months     MAL-ED           NEPAL                          Wealth Q1            NA                2.0062535   1.8957320   2.1167750
3-6 months     MAL-ED           NEPAL                          Wealth Q2            NA                1.9827869   1.8686463   2.0969275
3-6 months     MAL-ED           NEPAL                          Wealth Q3            NA                1.8373518   1.7208680   1.9538355
3-6 months     MAL-ED           PERU                           Wealth Q4            NA                1.9902014   1.8556854   2.1247174
3-6 months     MAL-ED           PERU                           Wealth Q1            NA                2.0679351   1.9224301   2.2134401
3-6 months     MAL-ED           PERU                           Wealth Q2            NA                2.0382129   1.8969962   2.1794296
3-6 months     MAL-ED           PERU                           Wealth Q3            NA                1.9531184   1.8397637   2.0664731
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                2.0820323   1.9220831   2.2419816
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                2.0601058   1.8854653   2.2347463
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                1.7754648   1.6274309   1.9234987
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                2.0028554   1.8417503   2.1639605
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.7773159   1.6788227   1.8758090
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.8700551   1.7223671   2.0177431
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.8403284   1.6789333   2.0017236
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.8855102   1.7461539   2.0248666
3-6 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                1.9093288   1.8365579   1.9820997
3-6 months     PROVIDE          BANGLADESH                     Wealth Q1            NA                1.9641142   1.8988703   2.0293581
3-6 months     PROVIDE          BANGLADESH                     Wealth Q2            NA                1.9975402   1.9364476   2.0586328
3-6 months     PROVIDE          BANGLADESH                     Wealth Q3            NA                1.9620179   1.8831494   2.0408863
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.7507934   1.6792087   1.8223782
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.8605290   1.7947989   1.9262591
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.8028082   1.7135271   1.8920894
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.7404172   1.6702036   1.8106307
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                1.2888920   1.1337026   1.4440814
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                1.1494483   1.0030354   1.2958612
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                1.1647362   1.0148599   1.3146124
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                1.2840399   1.1102387   1.4578411
6-9 months     COHORTS          GUATEMALA                      Wealth Q4            NA                1.1396464   1.0935904   1.1857024
6-9 months     COHORTS          GUATEMALA                      Wealth Q1            NA                1.1322846   1.0734098   1.1911595
6-9 months     COHORTS          GUATEMALA                      Wealth Q2            NA                1.0747584   1.0095187   1.1399981
6-9 months     COHORTS          GUATEMALA                      Wealth Q3            NA                1.0684983   1.0113409   1.1256556
6-9 months     CONTENT          PERU                           Wealth Q4            NA                1.4720213   1.3879979   1.5560446
6-9 months     CONTENT          PERU                           Wealth Q1            NA                1.3512730   1.2475504   1.4549956
6-9 months     CONTENT          PERU                           Wealth Q2            NA                1.4331348   1.3417409   1.5245286
6-9 months     CONTENT          PERU                           Wealth Q3            NA                1.3701314   1.2749109   1.4653519
6-9 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                1.2810047   1.2114261   1.3505834
6-9 months     GMS-Nepal        NEPAL                          Wealth Q1            NA                1.3748061   1.2751486   1.4744637
6-9 months     GMS-Nepal        NEPAL                          Wealth Q2            NA                1.3069866   1.2260080   1.3879653
6-9 months     GMS-Nepal        NEPAL                          Wealth Q3            NA                1.3000574   1.2334013   1.3667135
6-9 months     IRC              INDIA                          Wealth Q4            NA                1.4776223   1.3503459   1.6048986
6-9 months     IRC              INDIA                          Wealth Q1            NA                1.3743564   1.2821578   1.4665551
6-9 months     IRC              INDIA                          Wealth Q2            NA                1.3061279   1.2251415   1.3871143
6-9 months     IRC              INDIA                          Wealth Q3            NA                1.3349269   1.2381678   1.4316861
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                1.3173826   1.2746361   1.3601291
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q1            NA                1.3034760   1.2712628   1.3356891
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q2            NA                1.2957408   1.2467467   1.3447350
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q3            NA                1.3477285   1.3010905   1.3943666
6-9 months     LCNI-5           MALAWI                         Wealth Q4            NA                1.4589865   1.3896943   1.5282787
6-9 months     LCNI-5           MALAWI                         Wealth Q1            NA                1.4547866   1.3624964   1.5470767
6-9 months     LCNI-5           MALAWI                         Wealth Q2            NA                1.4379718   1.3745280   1.5014156
6-9 months     LCNI-5           MALAWI                         Wealth Q3            NA                1.4644331   1.3924723   1.5363940
6-9 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                1.2933012   1.2270979   1.3595045
6-9 months     MAL-ED           BANGLADESH                     Wealth Q1            NA                1.2871036   1.1977694   1.3764378
6-9 months     MAL-ED           BANGLADESH                     Wealth Q2            NA                1.2171103   1.1375351   1.2966855
6-9 months     MAL-ED           BANGLADESH                     Wealth Q3            NA                1.1952160   1.1085534   1.2818785
6-9 months     MAL-ED           BRAZIL                         Wealth Q4            NA                1.5845940   1.4164516   1.7527363
6-9 months     MAL-ED           BRAZIL                         Wealth Q1            NA                1.4763534   1.3357554   1.6169514
6-9 months     MAL-ED           BRAZIL                         Wealth Q2            NA                1.4131356   1.2653039   1.5609672
6-9 months     MAL-ED           BRAZIL                         Wealth Q3            NA                1.5464663   1.3678841   1.7250484
6-9 months     MAL-ED           INDIA                          Wealth Q4            NA                1.2664372   1.1790121   1.3538623
6-9 months     MAL-ED           INDIA                          Wealth Q1            NA                1.2431493   1.1036776   1.3826210
6-9 months     MAL-ED           INDIA                          Wealth Q2            NA                1.2463891   1.1469436   1.3458346
6-9 months     MAL-ED           INDIA                          Wealth Q3            NA                1.2776553   1.1716746   1.3836360
6-9 months     MAL-ED           NEPAL                          Wealth Q4            NA                1.3247664   1.2441391   1.4053937
6-9 months     MAL-ED           NEPAL                          Wealth Q1            NA                1.4731757   1.3688917   1.5774598
6-9 months     MAL-ED           NEPAL                          Wealth Q2            NA                1.3554690   1.2631448   1.4477932
6-9 months     MAL-ED           NEPAL                          Wealth Q3            NA                1.2846348   1.2066083   1.3626612
6-9 months     MAL-ED           PERU                           Wealth Q4            NA                1.2686055   1.1582018   1.3790092
6-9 months     MAL-ED           PERU                           Wealth Q1            NA                1.3505402   1.2581039   1.4429765
6-9 months     MAL-ED           PERU                           Wealth Q2            NA                1.3724235   1.2494458   1.4954012
6-9 months     MAL-ED           PERU                           Wealth Q3            NA                1.3026852   1.1792026   1.4261679
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                1.5240827   1.3985474   1.6496180
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                1.2869040   1.1546616   1.4191464
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                1.3875271   1.2677184   1.5073357
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                1.2938000   1.1521612   1.4354388
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.2725295   1.0655294   1.4795296
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.1886071   1.0532772   1.3239370
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.1492820   1.0019647   1.2965993
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.1027546   0.9673964   1.2381128
6-9 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                1.2533038   1.1986734   1.3079341
6-9 months     PROVIDE          BANGLADESH                     Wealth Q1            NA                1.3342939   1.2831863   1.3854015
6-9 months     PROVIDE          BANGLADESH                     Wealth Q2            NA                1.3029219   1.2495612   1.3562826
6-9 months     PROVIDE          BANGLADESH                     Wealth Q3            NA                1.2454806   1.1948497   1.2961116
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.3003582   1.2285374   1.3721791
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.3050680   1.2357909   1.3743452
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.3101005   1.2312258   1.3889751
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.3837482   1.3066379   1.4608585
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.8791701   0.7449484   1.0133918
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.8617531   0.7365617   0.9869445
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.9073677   0.7907082   1.0240272
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.9547127   0.7756058   1.1338196
9-12 months    COHORTS          GUATEMALA                      Wealth Q4            NA                0.9585781   0.9148107   1.0023455
9-12 months    COHORTS          GUATEMALA                      Wealth Q1            NA                0.9409967   0.8831991   0.9987942
9-12 months    COHORTS          GUATEMALA                      Wealth Q2            NA                0.9685852   0.9103678   1.0268026
9-12 months    COHORTS          GUATEMALA                      Wealth Q3            NA                0.9177580   0.8650358   0.9704802
9-12 months    CONTENT          PERU                           Wealth Q4            NA                1.2657917   1.1787137   1.3528697
9-12 months    CONTENT          PERU                           Wealth Q1            NA                1.1896738   1.1087711   1.2705765
9-12 months    CONTENT          PERU                           Wealth Q2            NA                1.2235944   1.1464287   1.3007602
9-12 months    CONTENT          PERU                           Wealth Q3            NA                1.1555832   1.0773859   1.2337805
9-12 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                1.0403476   0.9881887   1.0925065
9-12 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                0.9646685   0.8768679   1.0524691
9-12 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                1.0023008   0.9312824   1.0733193
9-12 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                0.9767698   0.9227429   1.0307968
9-12 months    IRC              INDIA                          Wealth Q4            NA                1.1151486   1.0377514   1.1925459
9-12 months    IRC              INDIA                          Wealth Q1            NA                1.1711882   1.0864487   1.2559278
9-12 months    IRC              INDIA                          Wealth Q2            NA                1.1512565   1.0693142   1.2331988
9-12 months    IRC              INDIA                          Wealth Q3            NA                1.0576608   0.9869951   1.1283264
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                1.0887566   1.0517699   1.1257432
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                1.0609421   1.0321421   1.0897420
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                1.0644382   1.0203607   1.1085158
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                1.0687166   1.0310124   1.1064208
9-12 months    LCNI-5           MALAWI                         Wealth Q4            NA                1.1009965   1.0114771   1.1905160
9-12 months    LCNI-5           MALAWI                         Wealth Q1            NA                1.0001795   0.8964997   1.1038593
9-12 months    LCNI-5           MALAWI                         Wealth Q2            NA                1.1195193   1.0311494   1.2078891
9-12 months    LCNI-5           MALAWI                         Wealth Q3            NA                1.1579348   1.0642221   1.2516476
9-12 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                0.9664107   0.8889643   1.0438571
9-12 months    MAL-ED           BANGLADESH                     Wealth Q1            NA                1.0165182   0.9320547   1.1009816
9-12 months    MAL-ED           BANGLADESH                     Wealth Q2            NA                0.9531147   0.8791584   1.0270710
9-12 months    MAL-ED           BANGLADESH                     Wealth Q3            NA                1.0264303   0.9464231   1.1064376
9-12 months    MAL-ED           BRAZIL                         Wealth Q4            NA                1.3588107   1.1987259   1.5188955
9-12 months    MAL-ED           BRAZIL                         Wealth Q1            NA                1.2026547   1.0815962   1.3237132
9-12 months    MAL-ED           BRAZIL                         Wealth Q2            NA                1.3030351   1.1260844   1.4799858
9-12 months    MAL-ED           BRAZIL                         Wealth Q3            NA                1.2897700   1.1438112   1.4357289
9-12 months    MAL-ED           INDIA                          Wealth Q4            NA                0.9490219   0.8761480   1.0218957
9-12 months    MAL-ED           INDIA                          Wealth Q1            NA                0.9675603   0.8773410   1.0577795
9-12 months    MAL-ED           INDIA                          Wealth Q2            NA                1.0101609   0.9356861   1.0846357
9-12 months    MAL-ED           INDIA                          Wealth Q3            NA                1.0501798   0.9766614   1.1236982
9-12 months    MAL-ED           NEPAL                          Wealth Q4            NA                1.0652433   0.9768765   1.1536100
9-12 months    MAL-ED           NEPAL                          Wealth Q1            NA                1.0787202   0.9895031   1.1679374
9-12 months    MAL-ED           NEPAL                          Wealth Q2            NA                1.1510007   1.0679460   1.2340555
9-12 months    MAL-ED           NEPAL                          Wealth Q3            NA                1.0583838   0.9900932   1.1266744
9-12 months    MAL-ED           PERU                           Wealth Q4            NA                1.0861504   0.9887373   1.1835635
9-12 months    MAL-ED           PERU                           Wealth Q1            NA                1.0706773   0.9739980   1.1673566
9-12 months    MAL-ED           PERU                           Wealth Q2            NA                1.0992413   0.9984627   1.2000198
9-12 months    MAL-ED           PERU                           Wealth Q3            NA                1.1356482   1.0182247   1.2530717
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.9936536   0.8458345   1.1414727
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                1.0969633   0.9485166   1.2454099
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                1.0360647   0.8716132   1.2005161
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.9551391   0.8362221   1.0740561
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.7697482   0.5607686   0.9787278
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.7927734   0.6458782   0.9396685
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7779940   0.6260990   0.9298891
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.8809465   0.7350770   1.0268160
9-12 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                1.0091350   0.9554692   1.0628007
9-12 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                1.0581041   1.0037962   1.1124121
9-12 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                1.0705137   1.0116179   1.1294095
9-12 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                1.0338222   0.9711442   1.0965002
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                1.1380073   1.0714456   1.2045690
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.0734762   1.0086752   1.1382772
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                1.1173846   1.0432986   1.1914706
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                1.0311727   0.9599570   1.1023885
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.8562265   0.7328559   0.9795970
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.8552814   0.7055814   1.0049815
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.9099046   0.7776452   1.0421640
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7878785   0.6338326   0.9419244
12-15 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.7955458   0.7463099   0.8447816
12-15 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.8051278   0.7463271   0.8639286
12-15 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.7572276   0.6998215   0.8146338
12-15 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.7787385   0.7218333   0.8356437
12-15 months   CONTENT          PERU                           Wealth Q4            NA                0.8966865   0.8059209   0.9874522
12-15 months   CONTENT          PERU                           Wealth Q1            NA                0.9269041   0.8524155   1.0013926
12-15 months   CONTENT          PERU                           Wealth Q2            NA                0.9007671   0.8142851   0.9872490
12-15 months   CONTENT          PERU                           Wealth Q3            NA                0.9811935   0.8845327   1.0778542
12-15 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.8549024   0.8066455   0.9031593
12-15 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.8532575   0.8000333   0.9064816
12-15 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.8659976   0.8148604   0.9171348
12-15 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.9599687   0.8726105   1.0473269
12-15 months   IRC              INDIA                          Wealth Q4            NA                0.9754847   0.8654187   1.0855506
12-15 months   IRC              INDIA                          Wealth Q1            NA                0.9613606   0.8843500   1.0383713
12-15 months   IRC              INDIA                          Wealth Q2            NA                0.9634106   0.8913207   1.0355005
12-15 months   IRC              INDIA                          Wealth Q3            NA                0.9053789   0.8272209   0.9835369
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.9639039   0.9277013   1.0001066
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.9410731   0.9117887   0.9703575
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.9567671   0.9192416   0.9942926
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.9277339   0.8937431   0.9617247
12-15 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.8536327   0.6107969   1.0964685
12-15 months   LCNI-5           MALAWI                         Wealth Q1            NA                1.1596638   0.9423121   1.3770155
12-15 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.9428149   0.7945038   1.0911259
12-15 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.8491196   0.7265623   0.9716770
12-15 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.9570288   0.8838854   1.0301722
12-15 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.8785200   0.7657482   0.9912917
12-15 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.8883691   0.8129627   0.9637755
12-15 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.9251058   0.8406640   1.0095477
12-15 months   MAL-ED           BRAZIL                         Wealth Q4            NA                1.1930451   1.0909520   1.2951381
12-15 months   MAL-ED           BRAZIL                         Wealth Q1            NA                1.1297438   0.9871319   1.2723558
12-15 months   MAL-ED           BRAZIL                         Wealth Q2            NA                1.1193067   0.9676926   1.2709209
12-15 months   MAL-ED           BRAZIL                         Wealth Q3            NA                1.2100911   1.1249507   1.2952314
12-15 months   MAL-ED           INDIA                          Wealth Q4            NA                0.9590580   0.8854523   1.0326636
12-15 months   MAL-ED           INDIA                          Wealth Q1            NA                0.9155824   0.8230574   1.0081074
12-15 months   MAL-ED           INDIA                          Wealth Q2            NA                0.9107246   0.8426242   0.9788250
12-15 months   MAL-ED           INDIA                          Wealth Q3            NA                0.8996100   0.8136364   0.9855835
12-15 months   MAL-ED           NEPAL                          Wealth Q4            NA                1.1033986   1.0339759   1.1728213
12-15 months   MAL-ED           NEPAL                          Wealth Q1            NA                0.8654038   0.7752696   0.9555380
12-15 months   MAL-ED           NEPAL                          Wealth Q2            NA                0.8973854   0.8194314   0.9753395
12-15 months   MAL-ED           NEPAL                          Wealth Q3            NA                0.9329859   0.8590952   1.0068765
12-15 months   MAL-ED           PERU                           Wealth Q4            NA                0.8975380   0.7819420   1.0131341
12-15 months   MAL-ED           PERU                           Wealth Q1            NA                0.9400304   0.8519006   1.0281601
12-15 months   MAL-ED           PERU                           Wealth Q2            NA                0.8481268   0.7554710   0.9407825
12-15 months   MAL-ED           PERU                           Wealth Q3            NA                0.8926870   0.8124812   0.9728928
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.9515089   0.8444595   1.0585583
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.8585816   0.7559405   0.9612227
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.9601634   0.8400685   1.0802584
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.8963884   0.7659742   1.0268027
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.8217431   0.6978942   0.9455919
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.8006810   0.6597968   0.9415652
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.9649955   0.8358287   1.0941622
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.8503179   0.7255013   0.9751346
12-15 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.8983379   0.8472686   0.9494071
12-15 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.9545599   0.8986698   1.0104500
12-15 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.9974566   0.9412784   1.0536349
12-15 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.9557835   0.9053609   1.0062062
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.9710374   0.8982629   1.0438119
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.9258662   0.8549292   0.9968033
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.9112257   0.8207611   1.0016902
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.9187175   0.8502364   0.9871985
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7714739   0.6485240   0.8944237
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7679803   0.6052716   0.9306889
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6200682   0.5164614   0.7236750
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7739902   0.6494444   0.8985360
15-18 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.7692768   0.7234420   0.8151117
15-18 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.7294043   0.6587905   0.8000180
15-18 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.7222868   0.6566537   0.7879200
15-18 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.7216901   0.6501476   0.7932326
15-18 months   CONTENT          PERU                           Wealth Q4            NA                1.0207847   0.9241716   1.1173979
15-18 months   CONTENT          PERU                           Wealth Q1            NA                0.9976901   0.9121675   1.0832127
15-18 months   CONTENT          PERU                           Wealth Q2            NA                0.9575794   0.8654833   1.0496756
15-18 months   CONTENT          PERU                           Wealth Q3            NA                0.9742863   0.8741631   1.0744095
15-18 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.7787042   0.7290828   0.8283256
15-18 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.7536621   0.6831928   0.8241315
15-18 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.7547996   0.7025945   0.8070047
15-18 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.7308955   0.6136026   0.8481885
15-18 months   IRC              INDIA                          Wealth Q4            NA                0.8804724   0.7993411   0.9616037
15-18 months   IRC              INDIA                          Wealth Q1            NA                0.8791060   0.7967448   0.9614671
15-18 months   IRC              INDIA                          Wealth Q2            NA                0.8928551   0.8066129   0.9790972
15-18 months   IRC              INDIA                          Wealth Q3            NA                0.7894282   0.7155316   0.8633248
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.8384009   0.7964074   0.8803945
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.8469129   0.8190787   0.8747471
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.8578078   0.8221385   0.8934771
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.8703215   0.8302199   0.9104231
15-18 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.8186185   0.6442751   0.9929619
15-18 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.7578386   0.6483546   0.8673226
15-18 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.8056402   0.6254621   0.9858182
15-18 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.9062032   0.7782207   1.0341858
15-18 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.8289496   0.7502024   0.9076968
15-18 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.8019099   0.6959588   0.9078610
15-18 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.8018275   0.7411242   0.8625307
15-18 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.8663145   0.8000696   0.9325594
15-18 months   MAL-ED           BRAZIL                         Wealth Q4            NA                1.0313762   0.9050777   1.1576746
15-18 months   MAL-ED           BRAZIL                         Wealth Q1            NA                0.9538693   0.8444426   1.0632960
15-18 months   MAL-ED           BRAZIL                         Wealth Q2            NA                1.0129591   0.8747902   1.1511281
15-18 months   MAL-ED           BRAZIL                         Wealth Q3            NA                0.9939724   0.8865868   1.1013581
15-18 months   MAL-ED           INDIA                          Wealth Q4            NA                0.8216807   0.7527374   0.8906239
15-18 months   MAL-ED           INDIA                          Wealth Q1            NA                0.8765275   0.7912569   0.9617981
15-18 months   MAL-ED           INDIA                          Wealth Q2            NA                0.8681828   0.8034810   0.9328845
15-18 months   MAL-ED           INDIA                          Wealth Q3            NA                0.8380238   0.7641355   0.9119121
15-18 months   MAL-ED           NEPAL                          Wealth Q4            NA                0.8925383   0.8175589   0.9675177
15-18 months   MAL-ED           NEPAL                          Wealth Q1            NA                0.8273011   0.7360559   0.9185463
15-18 months   MAL-ED           NEPAL                          Wealth Q2            NA                0.8513967   0.7641679   0.9386255
15-18 months   MAL-ED           NEPAL                          Wealth Q3            NA                0.7849827   0.7000921   0.8698732
15-18 months   MAL-ED           PERU                           Wealth Q4            NA                0.8863403   0.7972801   0.9754005
15-18 months   MAL-ED           PERU                           Wealth Q1            NA                0.8530620   0.7748039   0.9313201
15-18 months   MAL-ED           PERU                           Wealth Q2            NA                0.7942658   0.7051910   0.8833405
15-18 months   MAL-ED           PERU                           Wealth Q3            NA                0.8660197   0.7899534   0.9420860
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.9411860   0.8383435   1.0440285
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                1.0011277   0.8787905   1.1234649
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.8570832   0.7613207   0.9528457
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.7744287   0.6744194   0.8744381
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.8160271   0.7155683   0.9164859
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6446326   0.4913105   0.7979547
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.5959667   0.4668098   0.7251237
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6486188   0.5347331   0.7625045
15-18 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.8590140   0.8072073   0.9108207
15-18 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.8507390   0.8070994   0.8943787
15-18 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.8684350   0.8211607   0.9157093
15-18 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.8401770   0.7860667   0.8942872
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.8801402   0.7942130   0.9660674
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                1.0003858   0.9240264   1.0767451
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.9377394   0.8408412   1.0346377
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.9120498   0.8283453   0.9957544
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7102752   0.5961608   0.8243897
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5648848   0.4552504   0.6745192
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7011737   0.5652562   0.8370912
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7890666   0.6391720   0.9389612
18-21 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.7808249   0.7391400   0.8225099
18-21 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.7574351   0.6941874   0.8206828
18-21 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.7407666   0.6736798   0.8078533
18-21 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.7171132   0.6480753   0.7861510
18-21 months   CONTENT          PERU                           Wealth Q4            NA                0.9271850   0.8377608   1.0166093
18-21 months   CONTENT          PERU                           Wealth Q1            NA                0.8465412   0.7647317   0.9283508
18-21 months   CONTENT          PERU                           Wealth Q2            NA                0.9402136   0.8428342   1.0375930
18-21 months   CONTENT          PERU                           Wealth Q3            NA                0.9744547   0.8891615   1.0597478
18-21 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.9144634   0.8678391   0.9610877
18-21 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.9173557   0.8418220   0.9928895
18-21 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.9019389   0.8527728   0.9511050
18-21 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.8860821   0.7731474   0.9990169
18-21 months   IRC              INDIA                          Wealth Q4            NA                0.7875714   0.7075278   0.8676150
18-21 months   IRC              INDIA                          Wealth Q1            NA                0.7113604   0.6397350   0.7829859
18-21 months   IRC              INDIA                          Wealth Q2            NA                0.7904031   0.7134289   0.8673773
18-21 months   IRC              INDIA                          Wealth Q3            NA                0.7790542   0.6987430   0.8593655
18-21 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.8522804   0.7777558   0.9268050
18-21 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.8102163   0.7100377   0.9103949
18-21 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.7637436   0.6353447   0.8921424
18-21 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.7896551   0.7148190   0.8644912
18-21 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.8766207   0.8176727   0.9355687
18-21 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.8224706   0.7175835   0.9273577
18-21 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.7748036   0.7158897   0.8337175
18-21 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.7726609   0.7019687   0.8433532
18-21 months   MAL-ED           BRAZIL                         Wealth Q4            NA                0.9071588   0.7537646   1.0605529
18-21 months   MAL-ED           BRAZIL                         Wealth Q1            NA                0.8122431   0.6708416   0.9536447
18-21 months   MAL-ED           BRAZIL                         Wealth Q2            NA                0.9850868   0.8055439   1.1646297
18-21 months   MAL-ED           BRAZIL                         Wealth Q3            NA                0.8695356   0.7645870   0.9744842
18-21 months   MAL-ED           INDIA                          Wealth Q4            NA                0.8967612   0.8249416   0.9685808
18-21 months   MAL-ED           INDIA                          Wealth Q1            NA                0.8258387   0.7404488   0.9112286
18-21 months   MAL-ED           INDIA                          Wealth Q2            NA                0.9355453   0.8672544   1.0038363
18-21 months   MAL-ED           INDIA                          Wealth Q3            NA                0.8708457   0.8043074   0.9373840
18-21 months   MAL-ED           NEPAL                          Wealth Q4            NA                0.7711557   0.7045998   0.8377115
18-21 months   MAL-ED           NEPAL                          Wealth Q1            NA                0.9150568   0.8328514   0.9972623
18-21 months   MAL-ED           NEPAL                          Wealth Q2            NA                0.8234802   0.7468666   0.9000937
18-21 months   MAL-ED           NEPAL                          Wealth Q3            NA                0.7707204   0.6948102   0.8466306
18-21 months   MAL-ED           PERU                           Wealth Q4            NA                0.8451860   0.7644030   0.9259689
18-21 months   MAL-ED           PERU                           Wealth Q1            NA                0.8512533   0.7432312   0.9592753
18-21 months   MAL-ED           PERU                           Wealth Q2            NA                0.7694941   0.7001618   0.8388263
18-21 months   MAL-ED           PERU                           Wealth Q3            NA                0.9554507   0.8626845   1.0482169
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.8341450   0.6908827   0.9774072
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.6823610   0.5710573   0.7936646
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.7944969   0.6972897   0.8917041
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.7879742   0.6847965   0.8911518
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.6685230   0.5436147   0.7934313
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.8652116   0.7219549   1.0084683
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7611700   0.6153081   0.9070319
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.7230225   0.5898561   0.8561889
18-21 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.7908162   0.7391603   0.8424721
18-21 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.9033082   0.8571233   0.9494932
18-21 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.8492358   0.8011954   0.8972763
18-21 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.8002759   0.7484112   0.8521407
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.6940164   0.5968228   0.7912100
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.6843083   0.5253712   0.8432453
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7048860   0.5985837   0.8111883
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7474325   0.5919807   0.9028843
21-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.6747938   0.6345064   0.7150812
21-24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.6587730   0.6002874   0.7172586
21-24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.7049802   0.6516786   0.7582818
21-24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.6860206   0.6375491   0.7344922
21-24 months   CONTENT          PERU                           Wealth Q4            NA                1.0124849   0.8046538   1.2203160
21-24 months   CONTENT          PERU                           Wealth Q1            NA                0.9254472   0.7860447   1.0648496
21-24 months   CONTENT          PERU                           Wealth Q2            NA                1.0274973   0.8756221   1.1793725
21-24 months   CONTENT          PERU                           Wealth Q3            NA                0.8043787   0.6853502   0.9234072
21-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.7862825   0.7032607   0.8693043
21-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.7613121   0.6891943   0.8334298
21-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.7839496   0.7075612   0.8603381
21-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.8614561   0.7243619   0.9985503
21-24 months   IRC              INDIA                          Wealth Q4            NA                0.7238983   0.6423941   0.8054026
21-24 months   IRC              INDIA                          Wealth Q1            NA                0.6533159   0.5868682   0.7197635
21-24 months   IRC              INDIA                          Wealth Q2            NA                0.6814534   0.5980649   0.7648420
21-24 months   IRC              INDIA                          Wealth Q3            NA                0.7779533   0.6795259   0.8763806
21-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.7716245   0.7048885   0.8383605
21-24 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.7597041   0.6323227   0.8870855
21-24 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.7143145   0.6243055   0.8043235
21-24 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.7515670   0.6562507   0.8468832
21-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.7562362   0.6912541   0.8212183
21-24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.7604521   0.6480909   0.8728133
21-24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.7804455   0.7054517   0.8554393
21-24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.7791530   0.7198586   0.8384474
21-24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                0.7926700   0.7211736   0.8641664
21-24 months   MAL-ED           BRAZIL                         Wealth Q1            NA                0.8071714   0.7143733   0.8999694
21-24 months   MAL-ED           BRAZIL                         Wealth Q2            NA                0.7699131   0.6477758   0.8920504
21-24 months   MAL-ED           BRAZIL                         Wealth Q3            NA                0.7957332   0.7228822   0.8685842
21-24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.8488236   0.7811008   0.9165465
21-24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.8181810   0.7635458   0.8728161
21-24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.7977842   0.7238140   0.8717544
21-24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.8379579   0.7863319   0.8895838
21-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                0.7891509   0.6932896   0.8850122
21-24 months   MAL-ED           NEPAL                          Wealth Q1            NA                0.7335041   0.6437606   0.8232475
21-24 months   MAL-ED           NEPAL                          Wealth Q2            NA                0.8111829   0.7242408   0.8981250
21-24 months   MAL-ED           NEPAL                          Wealth Q3            NA                0.7960499   0.7374391   0.8546607
21-24 months   MAL-ED           PERU                           Wealth Q4            NA                0.8386814   0.7512783   0.9260845
21-24 months   MAL-ED           PERU                           Wealth Q1            NA                0.8084247   0.7079951   0.9088544
21-24 months   MAL-ED           PERU                           Wealth Q2            NA                0.7009508   0.6198049   0.7820968
21-24 months   MAL-ED           PERU                           Wealth Q3            NA                0.6796592   0.5907752   0.7685431
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.8829843   0.7912043   0.9747642
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.8275414   0.6658230   0.9892598
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.7966353   0.7024093   0.8908612
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.8600635   0.7697045   0.9504224
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.7298818   0.6265869   0.8331767
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.7729626   0.6014864   0.9444387
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.6383577   0.4868836   0.7898317
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6813518   0.5692113   0.7934923
21-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.7380712   0.6805071   0.7956353
21-24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.7357245   0.6837939   0.7876552
21-24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.7500593   0.6995163   0.8006023
21-24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.8219296   0.7696563   0.8742029


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     COHORTS          GUATEMALA                      NA                   NA                2.5857395   2.5420908   2.6293882
0-3 months     CONTENT          PERU                           NA                   NA                3.6418727   3.4619177   3.8218277
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                3.7234060   3.7130997   3.7337124
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                3.6386177   3.6075243   3.6697112
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                3.3470101   3.2814494   3.4125709
0-3 months     MAL-ED           BRAZIL                         NA                   NA                3.8190367   3.7078440   3.9302295
0-3 months     MAL-ED           INDIA                          NA                   NA                3.3306152   3.2408417   3.4203888
0-3 months     MAL-ED           NEPAL                          NA                   NA                3.6214116   3.5288934   3.7139297
0-3 months     MAL-ED           PERU                           NA                   NA                3.0720111   3.0070171   3.1370050
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                3.1667059   3.0657224   3.2676894
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2602600   3.1826202   3.3378997
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     COHORTS          GUATEMALA                      NA                   NA                1.7591266   1.7281267   1.7901266
3-6 months     CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                1.9201969   1.9097350   1.9306589
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                1.8987567   1.8688242   1.9286892
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     MAL-ED           BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     MAL-ED           INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     MAL-ED           NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     MAL-ED           PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.9768255   1.8961556   2.0574955
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7933135   1.7575160   1.8291109
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.2173381   1.1398153   1.2948610
6-9 months     COHORTS          GUATEMALA                      NA                   NA                1.1078835   1.0805783   1.1351886
6-9 months     CONTENT          PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                1.3172026   1.2765236   1.3578817
6-9 months     IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                1.3241671   1.3034835   1.3448507
6-9 months     LCNI-5           MALAWI                         NA                   NA                1.4589363   1.4224162   1.4954563
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     MAL-ED           BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     MAL-ED           INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     MAL-ED           NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     MAL-ED           PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3249931   1.2883838   1.3616025
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.8995224   0.8316661   0.9673787
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.9449661   0.9199056   0.9700266
9-12 months    CONTENT          PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.9983761   0.9658898   1.0308625
9-12 months    IRC              INDIA                          NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                1.0714466   1.0534634   1.0894298
9-12 months    LCNI-5           MALAWI                         NA                   NA                1.1007887   1.0539615   1.1476158
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    MAL-ED           BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    MAL-ED           INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    MAL-ED           NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    MAL-ED           PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0855731   1.0514671   1.1196792
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.8533724   0.7837188   0.9230260
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.7873717   0.7605685   0.8141750
12-15 months   CONTENT          PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.8797046   0.8507834   0.9086259
12-15 months   IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                0.9414130   0.9256041   0.9572219
12-15 months   LCNI-5           MALAWI                         NA                   NA                0.9578403   0.8612449   1.0544357
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   MAL-ED           BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   MAL-ED           INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   MAL-ED           PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9319267   0.8950348   0.9688186
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7339135   0.6710399   0.7967871
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.7430746   0.7129350   0.7732142
15-18 months   CONTENT          PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                0.8599047   0.8433807   0.8764287
15-18 months   LCNI-5           MALAWI                         NA                   NA                0.8227868   0.7513696   0.8942040
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   MAL-ED           BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   MAL-ED           INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   MAL-ED           PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9372014   0.8951355   0.9792674
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6999920   0.6362204   0.7637635
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.7511843   0.7223646   0.7800040
18-21 months   CONTENT          PERU                           NA                   NA                0.9146338   0.8709588   0.9583088
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   IRC              INDIA                          NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.8198090   0.7732927   0.8663254
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   MAL-ED           INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   MAL-ED           PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7068472   0.6454809   0.7682134
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.6794009   0.6558371   0.7029647
21-24 months   CONTENT          PERU                           NA                   NA                0.9350807   0.8543561   1.0158053
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   IRC              INDIA                          NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.7505036   0.7048983   0.7961088
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   MAL-ED           INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   MAL-ED           PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.4405399   -0.2249104    1.1059903
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.3491484   -0.3239989    1.0222957
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.6252132    0.0914022    1.1590243
0-3 months     COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0178262   -0.1354302    0.0997778
0-3 months     COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0142105   -0.1137541    0.1421751
0-3 months     COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0493566   -0.0675558    0.1662689
0-3 months     CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.3426554   -0.8126938    0.1273830
0-3 months     CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.6057699   -0.9084259   -0.3031139
0-3 months     CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.4314169   -0.8330170   -0.0298167
0-3 months     GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0543908   -0.0848096    0.1935911
0-3 months     GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.1193890   -0.0184273    0.2572053
0-3 months     GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0577495   -0.0899400    0.2054390
0-3 months     IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          Wealth Q1            Wealth Q4         -0.3031710   -0.5827280   -0.0236140
0-3 months     IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1639321   -0.4398377    0.1119735
0-3 months     IRC              INDIA                          Wealth Q3            Wealth Q4          0.0560554   -0.2340527    0.3461634
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0376189   -0.0713267   -0.0039111
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0265748   -0.0591828    0.0060331
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0013070   -0.0320572    0.0294431
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0418887   -0.1283697    0.0445923
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0268254   -0.1159038    0.0622530
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0029397   -0.0948628    0.0889833
0-3 months     MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0172574   -0.2187812    0.1842665
0-3 months     MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.1107829   -0.2796267    0.0580608
0-3 months     MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0204289   -0.1916183    0.1507606
0-3 months     MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4          0.2328863   -0.0544554    0.5202280
0-3 months     MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.2169530   -0.0853578    0.5192637
0-3 months     MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.0354872   -0.2743414    0.3453159
0-3 months     MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          Wealth Q1            Wealth Q4          0.2395224   -0.0070034    0.4860482
0-3 months     MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.1639434   -0.0980882    0.4259751
0-3 months     MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.1943400   -0.0569313    0.4456114
0-3 months     MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          Wealth Q1            Wealth Q4          0.2442564   -0.0140611    0.5025740
0-3 months     MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.1428088   -0.1570792    0.4426968
0-3 months     MAL-ED           NEPAL                          Wealth Q3            Wealth Q4          0.0256299   -0.2522172    0.3034771
0-3 months     MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.0093313   -0.2047998    0.1861371
0-3 months     MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.0722312   -0.2542731    0.1098107
0-3 months     MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0537291   -0.1331749    0.2406331
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2126868   -0.5068348    0.0814612
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0845131   -0.2018350    0.3708611
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0847997   -0.3584383    0.1888388
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0436290   -0.2405989    0.1533408
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0732398   -0.1269723    0.2734519
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.1748499   -0.4023569    0.0526571
0-3 months     PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.1202220    0.0197197    0.2207243
0-3 months     PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0525558   -0.0491686    0.1542802
0-3 months     PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0134824   -0.1008503    0.1278151
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.2160347   -0.0669247    0.4989941
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0832633   -0.3696583    0.2031318
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0635885   -0.3621249    0.2349478
3-6 months     COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0678700   -0.1526209    0.0168809
3-6 months     COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0332813   -0.1243998    0.0578373
3-6 months     COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0338629   -0.0436533    0.1113791
3-6 months     CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0001541   -0.1443736    0.1446818
3-6 months     CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0059014   -0.1317098    0.1435126
3-6 months     CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0941638   -0.2380354    0.0497078
3-6 months     GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0223526   -0.0881817    0.1328869
3-6 months     GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0445650   -0.1539933    0.0648633
3-6 months     GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0252873   -0.0901095    0.1406841
3-6 months     IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0730482   -0.2620233    0.1159268
3-6 months     IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0610963   -0.2617931    0.1396005
3-6 months     IRC              INDIA                          Wealth Q3            Wealth Q4          0.0391040   -0.1628248    0.2410329
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4          0.0136195   -0.0247115    0.0519506
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4          0.0062711   -0.0287406    0.0412829
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4          0.0078865   -0.0257372    0.0415102
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0193068   -0.0987401    0.0601265
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0756565   -0.1594409    0.0081279
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0389576   -0.1236433    0.0457280
3-6 months     MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.0641731   -0.0799182    0.2082643
3-6 months     MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4          0.0363460   -0.1095393    0.1822313
3-6 months     MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0469106   -0.1904570    0.0966358
3-6 months     MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.1660124   -0.3908988    0.0588739
3-6 months     MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.1025382   -0.3261374    0.1210611
3-6 months     MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.0039647   -0.2212937    0.2292231
3-6 months     MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          Wealth Q1            Wealth Q4          0.0004879   -0.1893480    0.1903238
3-6 months     MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0453874   -0.1301903    0.2209651
3-6 months     MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0182373   -0.1477016    0.1841763
3-6 months     MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.0303511   -0.1850226    0.1243204
3-6 months     MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.0538178   -0.2111766    0.1035410
3-6 months     MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.1992529   -0.3582645   -0.0402412
3-6 months     MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0777337   -0.1197428    0.2752102
3-6 months     MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0480115   -0.1479094    0.2439324
3-6 months     MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0370830   -0.2128954    0.1387294
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0219265   -0.2589119    0.2150589
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3065675   -0.5243097   -0.0888253
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0791770   -0.3059166    0.1475627
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0927392   -0.0854274    0.2709057
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0630126   -0.1261649    0.2521900
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1081944   -0.0619673    0.2783561
3-6 months     PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0547854   -0.0430805    0.1526514
3-6 months     PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0882114   -0.0068241    0.1832470
3-6 months     PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0526891   -0.0545940    0.1599722
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1097355    0.0124987    0.2069724
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0520148   -0.0625803    0.1666100
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0103762   -0.1107008    0.0899484
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.1394437   -0.3523855    0.0734981
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.1241558   -0.3397725    0.0914609
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0048521   -0.2387740    0.2290698
6-9 months     COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0073617   -0.0820690    0.0673456
6-9 months     COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0648880   -0.1445687    0.0147928
6-9 months     COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0711481   -0.1445085    0.0022123
6-9 months     CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.1207483   -0.2545638    0.0130672
6-9 months     CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0388865   -0.1631415    0.0853685
6-9 months     CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1018898   -0.2293385    0.0255588
6-9 months     GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0938014   -0.0279200    0.2155228
6-9 months     GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0259819   -0.0812293    0.1331931
6-9 months     GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0190527   -0.0777873    0.1158926
6-9 months     IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          Wealth Q1            Wealth Q4         -0.1032658   -0.2602843    0.0537526
6-9 months     IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1714944   -0.3229579   -0.0200309
6-9 months     IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1426953   -0.3032257    0.0178351
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0139066   -0.0661980    0.0383847
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0216418   -0.0873851    0.0441015
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4          0.0303459   -0.0315894    0.0922813
6-9 months     LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0042000   -0.1205574    0.1121575
6-9 months     LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0210147   -0.1149610    0.0729316
6-9 months     LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0054466   -0.0946794    0.1055726
6-9 months     MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0061976   -0.1175393    0.1051441
6-9 months     MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0761909   -0.1798800    0.0274982
6-9 months     MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0980852   -0.2072787    0.0111082
6-9 months     MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.1082406   -0.3271687    0.1106875
6-9 months     MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.1714584   -0.3955887    0.0526718
6-9 months     MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.0381277   -0.2834672    0.2072119
6-9 months     MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0232879   -0.1880295    0.1414538
6-9 months     MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0200481   -0.1521706    0.1120744
6-9 months     MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0112181   -0.1294303    0.1518665
6-9 months     MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          Wealth Q1            Wealth Q4          0.1484094    0.0168663    0.2799524
6-9 months     MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0307027   -0.0927928    0.1541982
6-9 months     MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.0401316   -0.1526747    0.0724115
6-9 months     MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0819347   -0.0622060    0.2260754
6-9 months     MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.1038180   -0.0615861    0.2692221
6-9 months     MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0340798   -0.1317907    0.1999502
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2371787   -0.4206861   -0.0536713
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.1365556   -0.3113105    0.0381993
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2302827   -0.4213398   -0.0392256
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0839224   -0.3318226    0.1639777
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.1232475   -0.3770250    0.1305300
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.1697749   -0.4172135    0.0776638
6-9 months     PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0809901    0.0060797    0.1559004
6-9 months     PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0496181   -0.0266405    0.1258767
6-9 months     PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0078231   -0.0822762    0.0666299
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0047098   -0.0955187    0.1049383
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0097422   -0.0971312    0.1166157
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0833900   -0.0224342    0.1892142
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0174170   -0.2015291    0.1666952
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0281976   -0.1502174    0.2066125
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0755426   -0.1485697    0.2996550
9-12 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0175815   -0.0899159    0.0547530
9-12 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0100071   -0.0629714    0.0829856
9-12 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0408201   -0.1093376    0.0276974
9-12 months    CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0761179   -0.1948133    0.0425776
9-12 months    CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0421972   -0.1586327    0.0742382
9-12 months    CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1102085   -0.2273489    0.0069320
9-12 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0756791   -0.1783255    0.0269673
9-12 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0380467   -0.1268860    0.0507925
9-12 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0635777   -0.1396100    0.0124545
9-12 months    IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          Wealth Q1            Wealth Q4          0.0560396   -0.0585367    0.1706159
9-12 months    IRC              INDIA                          Wealth Q2            Wealth Q4          0.0361079   -0.0766026    0.1488183
9-12 months    IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0574879   -0.1623221    0.0473463
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0278145   -0.0738681    0.0182391
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0243183   -0.0820272    0.0333905
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0200400   -0.0730178    0.0329377
9-12 months    LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1008170   -0.2379952    0.0363611
9-12 months    LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0185227   -0.1073868    0.1444323
9-12 months    LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0569383   -0.0729660    0.1868426
9-12 months    MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.0501074   -0.0645641    0.1647790
9-12 months    MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0132961   -0.1203450    0.0937529
9-12 months    MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4          0.0600196   -0.0514135    0.1714527
9-12 months    MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.1561560   -0.3572446    0.0449325
9-12 months    MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.0557756   -0.2955666    0.1840154
9-12 months    MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.0690407   -0.2877033    0.1496220
9-12 months    MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          Wealth Q1            Wealth Q4          0.0185384   -0.0975214    0.1345982
9-12 months    MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0611391   -0.0446740    0.1669521
9-12 months    MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.1011580   -0.0016061    0.2039220
9-12 months    MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          Wealth Q1            Wealth Q4          0.0134770   -0.1127940    0.1397479
9-12 months    MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0857574   -0.0355819    0.2070968
9-12 months    MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.0068595   -0.1184506    0.1047316
9-12 months    MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.0154731   -0.1531935    0.1222473
9-12 months    MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0130909   -0.1278957    0.1540775
9-12 months    MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0494978   -0.1038817    0.2028773
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.1033097   -0.1099601    0.3165795
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0424110   -0.1847573    0.2695794
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0385145   -0.2308629    0.1538339
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0230252   -0.2332353    0.2792856
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0082458   -0.2511792    0.2676709
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1111983   -0.1445036    0.3669003
9-12 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0489692   -0.0275128    0.1254511
9-12 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0613787   -0.0185332    0.1412906
9-12 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0246872   -0.0580172    0.1073917
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0645311   -0.1575018    0.0284395
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0206227   -0.1204486    0.0792032
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.1068345   -0.2040812   -0.0095879
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0009450   -0.1942949    0.1924049
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0536782   -0.1268848    0.2342411
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0683480   -0.2649861    0.1282902
12-15 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4          0.0095821   -0.0673434    0.0865076
12-15 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0383181   -0.1141174    0.0374811
12-15 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0168072   -0.0922787    0.0586642
12-15 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0302175   -0.0872264    0.1476614
12-15 months   CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0040805   -0.1212513    0.1294124
12-15 months   CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0845069   -0.0479159    0.2169298
12-15 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0016449   -0.0735846    0.0702948
12-15 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0110952   -0.0596064    0.0817969
12-15 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.1050663    0.0052521    0.2048805
12-15 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0141241   -0.1486178    0.1203697
12-15 months   IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0120741   -0.1438861    0.1197380
12-15 months   IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0701058   -0.2056168    0.0654052
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0228308   -0.0694230    0.0237614
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0071368   -0.0595912    0.0453176
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0361701   -0.0857015    0.0133613
12-15 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.3060311   -0.0171938    0.6292561
12-15 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0891822   -0.1992706    0.3776350
12-15 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0045130   -0.2790034    0.2699773
12-15 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0785088   -0.2140310    0.0570134
12-15 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0686597   -0.1745545    0.0372351
12-15 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0319229   -0.1444911    0.0806452
12-15 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.0633012   -0.2422288    0.1156264
12-15 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.0737383   -0.2566969    0.1092202
12-15 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.0170460   -0.1161700    0.1502621
12-15 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0434756   -0.1617337    0.0747826
12-15 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0483334   -0.1490074    0.0523406
12-15 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.0594480   -0.1729451    0.0540491
12-15 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.2379948   -0.3519374   -0.1240522
12-15 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.2060132   -0.3107139   -0.1013125
12-15 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.1704127   -0.2719128   -0.0689127
12-15 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0424923   -0.1036248    0.1886095
12-15 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.0494113   -0.1980237    0.0992011
12-15 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0048510   -0.1462871    0.1365851
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0929273   -0.2420792    0.0562246
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0086546   -0.1526874    0.1699965
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0551204   -0.2246006    0.1143598
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0210621   -0.2089863    0.1668622
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1432524   -0.0359630    0.3224679
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0285749   -0.1478936    0.2050433
12-15 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0562220   -0.0196428    0.1320869
12-15 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0991188    0.0231576    0.1750799
12-15 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0574456   -0.0143735    0.1292648
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0451712   -0.1469082    0.0565659
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0598118   -0.1764043    0.0567807
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0523199   -0.1523762    0.0477363
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0034936   -0.2082911    0.2013039
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.1514056   -0.3129686    0.0101573
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0025163   -0.1729744    0.1780071
15-18 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0398726   -0.1240986    0.0443534
15-18 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0469900   -0.1273124    0.0333324
15-18 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0475867   -0.1328335    0.0376600
15-18 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0230946   -0.1519994    0.1058102
15-18 months   CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0632053   -0.1963628    0.0699522
15-18 months   CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0464984   -0.1858871    0.0928903
15-18 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0250420   -0.1112065    0.0611224
15-18 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0239046   -0.0974751    0.0496659
15-18 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0478087   -0.1750810    0.0794636
15-18 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0013664   -0.1182049    0.1154721
15-18 months   IRC              INDIA                          Wealth Q2            Wealth Q4          0.0123827   -0.1072318    0.1319971
15-18 months   IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0910442   -0.2024268    0.0203384
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4          0.0085119   -0.0412984    0.0583223
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4          0.0194069   -0.0341802    0.0729939
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4          0.0319206   -0.0251231    0.0889643
15-18 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0607799   -0.2669836    0.1454238
15-18 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0129784   -0.2648652    0.2389085
15-18 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0875847   -0.1288295    0.3039989
15-18 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0270397   -0.1590456    0.1049662
15-18 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0271221   -0.1267287    0.0724844
15-18 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4          0.0373649   -0.0655297    0.1402595
15-18 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.0775069   -0.2464613    0.0914476
15-18 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.0184170   -0.2051453    0.1683113
15-18 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.0374037   -0.2053502    0.1305427
15-18 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4          0.0548468   -0.0543126    0.1640063
15-18 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0465021   -0.0476606    0.1406648
15-18 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0163431   -0.0848488    0.1175350
15-18 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.0652372   -0.1834994    0.0530250
15-18 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.0411416   -0.1564544    0.0741712
15-18 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.1075557   -0.2209232    0.0058119
15-18 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.0332783   -0.1520080    0.0854514
15-18 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.0920746   -0.2181786    0.0340295
15-18 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0203206   -0.1376805    0.0970393
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0599417   -0.0999983    0.2198816
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0841028   -0.2248717    0.0566662
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.1667572   -0.3105472   -0.0229673
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.1713945   -0.3550236    0.0122345
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.2200604   -0.3840004   -0.0561204
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.1674083   -0.3192879   -0.0155287
15-18 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0082750   -0.0760561    0.0595061
15-18 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0094210   -0.0607692    0.0796112
15-18 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0188370   -0.0938509    0.0561768
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1202456    0.0059132    0.2345780
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0575993   -0.0716736    0.1868722
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0319097   -0.0883743    0.1521937
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.1453904   -0.3037515    0.0129707
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0091015   -0.1870859    0.1688829
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0787914   -0.1095959    0.2671786
18-21 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0233898   -0.0991667    0.0523870
18-21 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0400584   -0.1190501    0.0389333
18-21 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0637118   -0.1445392    0.0171157
18-21 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0806438   -0.2016729    0.0403853
18-21 months   CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0130286   -0.1189870    0.1450441
18-21 months   CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0472696   -0.0769327    0.1714720
18-21 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0028924   -0.0857756    0.0915603
18-21 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0125244   -0.0809719    0.0559230
18-21 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0283812   -0.1507201    0.0939577
18-21 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0762109   -0.1840910    0.0316691
18-21 months   IRC              INDIA                          Wealth Q2            Wealth Q4          0.0028317   -0.1083306    0.1139940
18-21 months   IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0085171   -0.1219809    0.1049466
18-21 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0420641   -0.1671047    0.0829764
18-21 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0885368   -0.2379013    0.0608276
18-21 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0626253   -0.1683993    0.0431487
18-21 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0541501   -0.1752128    0.0669127
18-21 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.1018171   -0.1853049   -0.0183292
18-21 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.1039598   -0.1962814   -0.0116382
18-21 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.0949156   -0.3037219    0.1138906
18-21 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.0779280   -0.1574963    0.3133523
18-21 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.0376232   -0.2279186    0.1526723
18-21 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0709225   -0.1830701    0.0412251
18-21 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0387841   -0.0615302    0.1390984
18-21 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.0259155   -0.1251680    0.0733369
18-21 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4          0.1439012    0.0380538    0.2497486
18-21 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0523245   -0.0491231    0.1537721
18-21 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.0004352   -0.1015390    0.1006686
18-21 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0060673   -0.1296350    0.1417696
18-21 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.0756919   -0.1823056    0.0309218
18-21 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.1102647   -0.0124685    0.2329980
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1517840   -0.3336892    0.0301212
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0396481   -0.2132566    0.1339604
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0461708   -0.2231633    0.1308216
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1966886    0.0061014    0.3872758
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0926470   -0.0996985    0.2849926
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0544995   -0.1292613    0.2382604
18-21 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.1124920    0.0432003    0.1817838
18-21 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0584196   -0.0119767    0.1288160
18-21 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0094597   -0.0637841    0.0827035
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0097081   -0.1969023    0.1774860
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0108697   -0.1335706    0.1553099
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0534161   -0.1293489    0.2361812
21-24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0160208   -0.0870643    0.0550227
21-24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0301863   -0.0365742    0.0969469
21-24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0112268   -0.0520559    0.0745096
21-24 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0870377   -0.3372912    0.1632158
21-24 months   CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0150124   -0.2423975    0.2724223
21-24 months   CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.2081062   -0.4476089    0.0313965
21-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0249704   -0.1356978    0.0857570
21-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0023329   -0.1161695    0.1115037
21-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0751736   -0.0857787    0.2361258
21-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0705825   -0.1757771    0.0346121
21-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0424449   -0.1591866    0.0742968
21-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4          0.0540549   -0.0739090    0.1820189
21-24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0119204   -0.1560367    0.1321958
21-24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0573100   -0.1698886    0.0552685
21-24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0200576   -0.1366973    0.0965821
21-24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.0042159   -0.1253833    0.1338151
21-24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4          0.0242093   -0.0750734    0.1234919
21-24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4          0.0229168   -0.0650607    0.1108943
21-24 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4          0.0145014   -0.1029990    0.1320018
21-24 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.0227569   -0.1644013    0.1188874
21-24 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.0030631   -0.0993051    0.1054314
21-24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0306427   -0.1177260    0.0564407
21-24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0510394   -0.1513188    0.0492400
21-24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.0108658   -0.0961325    0.0744009
21-24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.0556468   -0.1862902    0.0749966
21-24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0220320   -0.1075849    0.1516489
21-24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4          0.0068990   -0.1051469    0.1189449
21-24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.0302567   -0.1624304    0.1019171
21-24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.1377306   -0.2570453   -0.0184159
21-24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.1590222   -0.2835648   -0.0344797
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0554429   -0.2409773    0.1300914
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0863490   -0.2182520    0.0455539
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0229208   -0.1522338    0.1063922
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0430808   -0.1553532    0.2415147
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0915241   -0.2759071    0.0928589
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0485300   -0.2018631    0.1048030
21-24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0023467   -0.0799228    0.0752294
21-24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0119880   -0.0647155    0.0886916
21-24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0838583    0.0059341    0.1617826


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3038428    0.0067788    0.6009068
0-3 months     COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0119574   -0.0481723    0.0720872
0-3 months     CONTENT          PERU                           Wealth Q4            NA                -0.3479418   -0.5715353   -0.1243483
0-3 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0590611   -0.0262503    0.1443725
0-3 months     IRC              INDIA                          Wealth Q4            NA                -0.1160778   -0.2978552    0.0656996
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0157739   -0.0397695    0.0082218
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0197753   -0.0747933    0.0352428
0-3 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0379606   -0.1406248    0.0647037
0-3 months     MAL-ED           BRAZIL                         Wealth Q4            NA                 0.1050359   -0.0560204    0.2660923
0-3 months     MAL-ED           INDIA                          Wealth Q4            NA                 0.1502155   -0.0020811    0.3025120
0-3 months     MAL-ED           NEPAL                          Wealth Q4            NA                 0.0928116   -0.0863412    0.2719644
0-3 months     MAL-ED           PERU                           Wealth Q4            NA                -0.0072509   -0.1231254    0.1086235
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0660941   -0.2459132    0.1137249
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0398719   -0.1623718    0.0826280
0-3 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0501623   -0.0164288    0.1167535
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0054625   -0.1707769    0.1817019
3-6 months     COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0115121   -0.0511249    0.0281007
3-6 months     CONTENT          PERU                           Wealth Q4            NA                -0.0313591   -0.1229224    0.0602043
3-6 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0010636   -0.0683507    0.0704779
3-6 months     IRC              INDIA                          Wealth Q4            NA                -0.0265456   -0.1576969    0.1046056
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0082006   -0.0163402    0.0327414
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0323251   -0.0843460    0.0196958
3-6 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0152956   -0.0713554    0.1019465
3-6 months     MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0715690   -0.2068893    0.0637514
3-6 months     MAL-ED           INDIA                          Wealth Q4            NA                 0.0454025   -0.0545668    0.1453718
3-6 months     MAL-ED           NEPAL                          Wealth Q4            NA                -0.0721446   -0.1680224    0.0237332
3-6 months     MAL-ED           PERU                           Wealth Q4            NA                 0.0254807   -0.0901727    0.1411341
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.1052068   -0.2432340    0.0328204
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0527743   -0.0439181    0.1494667
3-6 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0564169   -0.0094462    0.1222801
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0425201   -0.0202843    0.1053244
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0715538   -0.2083112    0.0652035
6-9 months     COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0317629   -0.0684013    0.0048756
6-9 months     CONTENT          PERU                           Wealth Q4            NA                -0.0745976   -0.1520737    0.0028784
6-9 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0361979   -0.0291488    0.1015446
6-9 months     IRC              INDIA                          Wealth Q4            NA                -0.1052213   -0.2107644    0.0003217
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0067845   -0.0323233    0.0458923
6-9 months     LCNI-5           MALAWI                         Wealth Q4            NA                -0.0000503   -0.0601298    0.0600293
6-9 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0452561   -0.1053723    0.0148601
6-9 months     MAL-ED           BRAZIL                         Wealth Q4            NA                -0.1014780   -0.2420647    0.0391087
6-9 months     MAL-ED           INDIA                          Wealth Q4            NA                -0.0202136   -0.1019147    0.0614876
6-9 months     MAL-ED           NEPAL                          Wealth Q4            NA                 0.0323745   -0.0404192    0.1051681
6-9 months     MAL-ED           PERU                           Wealth Q4            NA                 0.0513911   -0.0434355    0.1462176
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.1471569   -0.2575762   -0.0367376
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0817739   -0.2472394    0.0836915
6-9 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0291147   -0.0201345    0.0783639
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0246349   -0.0391247    0.0883945
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0203523   -0.0982861    0.1389908
9-12 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0136121   -0.0481956    0.0209715
9-12 months    CONTENT          PERU                           Wealth Q4            NA                -0.0609149   -0.1357023    0.0138725
9-12 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0419715   -0.0921230    0.0081800
9-12 months    IRC              INDIA                          Wealth Q4            NA                 0.0083248   -0.0594166    0.0760661
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0173099   -0.0503798    0.0157599
9-12 months    LCNI-5           MALAWI                         Wealth Q4            NA                -0.0002079   -0.0752050    0.0747893
9-12 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0232338   -0.0428558    0.0893234
9-12 months    MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0605548   -0.1942195    0.0731100
9-12 months    MAL-ED           INDIA                          Wealth Q4            NA                 0.0324484   -0.0323539    0.0972506
9-12 months    MAL-ED           NEPAL                          Wealth Q4            NA                 0.0239939   -0.0506678    0.0986556
9-12 months    MAL-ED           PERU                           Wealth Q4            NA                 0.0123620   -0.0713907    0.0961146
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0206722   -0.1052392    0.1465836
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0433595   -0.1239082    0.2106271
9-12 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0408400   -0.0094087    0.0910887
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0524342   -0.1117012    0.0068328
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0028540   -0.1140118    0.1083037
12-15 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0081740   -0.0455513    0.0292032
12-15 months   CONTENT          PERU                           Wealth Q4            NA                 0.0324578   -0.0463930    0.1113086
12-15 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0248022   -0.0201830    0.0697875
12-15 months   IRC              INDIA                          Wealth Q4            NA                -0.0201308   -0.1102799    0.0700184
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0224909   -0.0561037    0.0111218
12-15 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.1042076   -0.0822463    0.2906615
12-15 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0429283   -0.1079907    0.0221341
12-15 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0508677   -0.1410841    0.0393488
12-15 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0485643   -0.1136196    0.0164909
12-15 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.1519862   -0.2153416   -0.0886308
12-15 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0058101   -0.0980650    0.0864449
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0318794   -0.1247957    0.0610368
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0346128   -0.0721870    0.1414126
12-15 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0614122    0.0135089    0.1093155
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0391107   -0.1039773    0.0257559
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0375603   -0.1451887    0.0700681
15-18 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0262022   -0.0645249    0.0121205
15-18 months   CONTENT          PERU                           Wealth Q4            NA                -0.0347616   -0.1193068    0.0497836
15-18 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0237522   -0.0732109    0.0257065
15-18 months   IRC              INDIA                          Wealth Q4            NA                -0.0213508   -0.0934230    0.0507214
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0215038   -0.0165476    0.0595552
15-18 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0041682   -0.1384634    0.1467999
15-18 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0048270   -0.0691698    0.0595158
15-18 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0292648   -0.1321078    0.0735782
15-18 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0227078   -0.0368508    0.0822664
15-18 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.0517021   -0.1193569    0.0159526
15-18 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0329096   -0.1027966    0.0369774
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0540357   -0.1432959    0.0352244
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1292792   -0.2197439   -0.0388144
15-18 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0029142   -0.0502036    0.0443752
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0570613   -0.0190362    0.1331587
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0102833   -0.1122494    0.0916829
18-21 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0296406   -0.0656496    0.0063684
18-21 months   CONTENT          PERU                           Wealth Q4            NA                -0.0125513   -0.0908868    0.0657843
18-21 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0105678   -0.0579068    0.0367711
18-21 months   IRC              INDIA                          Wealth Q4            NA                -0.0277692   -0.0978740    0.0423356
18-21 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.0324713   -0.0990866    0.0341440
18-21 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0632359   -0.1151894   -0.0112824
18-21 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0089171   -0.1122978    0.1301320
18-21 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0180511   -0.0808353    0.0447331
18-21 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0471241   -0.0132617    0.1075099
18-21 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0037421   -0.0698041    0.0623199
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0519640   -0.1694887    0.0655607
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0751809   -0.0321358    0.1824976
18-21 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0485215    0.0018876    0.0951553
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0128308   -0.0792542    0.1049158
21-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0046071   -0.0270095    0.0362237
21-24 months   CONTENT          PERU                           Wealth Q4            NA                -0.0774042   -0.2732190    0.1184106
21-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0127487   -0.0608205    0.0863179
21-24 months   IRC              INDIA                          Wealth Q4            NA                -0.0154855   -0.0873271    0.0563561
21-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.0211210   -0.0837452    0.0415033
21-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0131820   -0.0421844    0.0685485
21-24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0034819   -0.0583726    0.0653364
21-24 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0232723   -0.0802027    0.0336580
21-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.0057944   -0.0840634    0.0724746
21-24 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0776308   -0.1466978   -0.0085638
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0434893   -0.1263805    0.0394019
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0109490   -0.1047137    0.0828157
21-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0250678   -0.0270442    0.0771799
