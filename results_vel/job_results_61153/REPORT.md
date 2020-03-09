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

**Outcome Variable:** y_rate_wtkg

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
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q4             85     331
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q1             82     331
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q2             86     331
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q3             78     331
0-3 months     COHORTS          GUATEMALA                      Wealth Q4            272     774
0-3 months     COHORTS          GUATEMALA                      Wealth Q1            153     774
0-3 months     COHORTS          GUATEMALA                      Wealth Q2            155     774
0-3 months     COHORTS          GUATEMALA                      Wealth Q3            194     774
0-3 months     CONTENT          PERU                           Wealth Q4              7      29
0-3 months     CONTENT          PERU                           Wealth Q1              7      29
0-3 months     CONTENT          PERU                           Wealth Q2              7      29
0-3 months     CONTENT          PERU                           Wealth Q3              8      29
0-3 months     GMS-Nepal        NEPAL                          Wealth Q4            129     509
0-3 months     GMS-Nepal        NEPAL                          Wealth Q1            125     509
0-3 months     GMS-Nepal        NEPAL                          Wealth Q2            133     509
0-3 months     GMS-Nepal        NEPAL                          Wealth Q3            122     509
0-3 months     IRC              INDIA                          Wealth Q4             96     394
0-3 months     IRC              INDIA                          Wealth Q1            103     394
0-3 months     IRC              INDIA                          Wealth Q2             96     394
0-3 months     IRC              INDIA                          Wealth Q3             99     394
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q4           4939   20272
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q1           5061   20272
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q2           5105   20272
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q3           5167   20272
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q4            411    1793
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q1            438    1793
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q2            461    1793
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q3            483    1793
0-3 months     MAL-ED           BANGLADESH                     Wealth Q4             60     239
0-3 months     MAL-ED           BANGLADESH                     Wealth Q1             58     239
0-3 months     MAL-ED           BANGLADESH                     Wealth Q2             61     239
0-3 months     MAL-ED           BANGLADESH                     Wealth Q3             60     239
0-3 months     MAL-ED           BRAZIL                         Wealth Q4             53     210
0-3 months     MAL-ED           BRAZIL                         Wealth Q1             53     210
0-3 months     MAL-ED           BRAZIL                         Wealth Q2             53     210
0-3 months     MAL-ED           BRAZIL                         Wealth Q3             51     210
0-3 months     MAL-ED           INDIA                          Wealth Q4             57     232
0-3 months     MAL-ED           INDIA                          Wealth Q1             60     232
0-3 months     MAL-ED           INDIA                          Wealth Q2             57     232
0-3 months     MAL-ED           INDIA                          Wealth Q3             58     232
0-3 months     MAL-ED           NEPAL                          Wealth Q4             58     230
0-3 months     MAL-ED           NEPAL                          Wealth Q1             57     230
0-3 months     MAL-ED           NEPAL                          Wealth Q2             56     230
0-3 months     MAL-ED           NEPAL                          Wealth Q3             59     230
0-3 months     MAL-ED           PERU                           Wealth Q4             68     270
0-3 months     MAL-ED           PERU                           Wealth Q1             68     270
0-3 months     MAL-ED           PERU                           Wealth Q2             70     270
0-3 months     MAL-ED           PERU                           Wealth Q3             64     270
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q4             65     254
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q1             62     254
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q2             63     254
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q3             64     254
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             58     233
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             59     233
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             57     233
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             59     233
0-3 months     PROVIDE          BANGLADESH                     Wealth Q4            148     640
0-3 months     PROVIDE          BANGLADESH                     Wealth Q1            166     640
0-3 months     PROVIDE          BANGLADESH                     Wealth Q2            170     640
0-3 months     PROVIDE          BANGLADESH                     Wealth Q3            156     640
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            505    2014
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            614    2014
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            398    2014
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            497    2014
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q4             82     322
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q1             79     322
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q2             85     322
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q3             76     322
3-6 months     COHORTS          GUATEMALA                      Wealth Q4            283     784
3-6 months     COHORTS          GUATEMALA                      Wealth Q1            150     784
3-6 months     COHORTS          GUATEMALA                      Wealth Q2            156     784
3-6 months     COHORTS          GUATEMALA                      Wealth Q3            195     784
3-6 months     CONTENT          PERU                           Wealth Q4             51     214
3-6 months     CONTENT          PERU                           Wealth Q1             59     214
3-6 months     CONTENT          PERU                           Wealth Q2             52     214
3-6 months     CONTENT          PERU                           Wealth Q3             52     214
3-6 months     GMS-Nepal        NEPAL                          Wealth Q4            119     469
3-6 months     GMS-Nepal        NEPAL                          Wealth Q1            117     469
3-6 months     GMS-Nepal        NEPAL                          Wealth Q2            121     469
3-6 months     GMS-Nepal        NEPAL                          Wealth Q3            112     469
3-6 months     IRC              INDIA                          Wealth Q4             96     399
3-6 months     IRC              INDIA                          Wealth Q1            104     399
3-6 months     IRC              INDIA                          Wealth Q2             99     399
3-6 months     IRC              INDIA                          Wealth Q3            100     399
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q4           3707   12713
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q1           2737   12713
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q2           2959   12713
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q3           3310   12713
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q4            426    1817
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q1            445    1817
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q2            456    1817
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q3            490    1817
3-6 months     MAL-ED           BANGLADESH                     Wealth Q4             60     233
3-6 months     MAL-ED           BANGLADESH                     Wealth Q1             56     233
3-6 months     MAL-ED           BANGLADESH                     Wealth Q2             58     233
3-6 months     MAL-ED           BANGLADESH                     Wealth Q3             59     233
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
3-6 months     PROVIDE          BANGLADESH                     Wealth Q4            133     601
3-6 months     PROVIDE          BANGLADESH                     Wealth Q1            157     601
3-6 months     PROVIDE          BANGLADESH                     Wealth Q2            164     601
3-6 months     PROVIDE          BANGLADESH                     Wealth Q3            147     601
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            410    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            502    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            332    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            415    1659
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q4             81     325
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q1             81     325
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q2             86     325
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q3             77     325
6-9 months     COHORTS          GUATEMALA                      Wealth Q4            299     801
6-9 months     COHORTS          GUATEMALA                      Wealth Q1            156     801
6-9 months     COHORTS          GUATEMALA                      Wealth Q2            166     801
6-9 months     COHORTS          GUATEMALA                      Wealth Q3            180     801
6-9 months     CONTENT          PERU                           Wealth Q4             52     214
6-9 months     CONTENT          PERU                           Wealth Q1             59     214
6-9 months     CONTENT          PERU                           Wealth Q2             52     214
6-9 months     CONTENT          PERU                           Wealth Q3             51     214
6-9 months     GMS-Nepal        NEPAL                          Wealth Q4            118     477
6-9 months     GMS-Nepal        NEPAL                          Wealth Q1            123     477
6-9 months     GMS-Nepal        NEPAL                          Wealth Q2            127     477
6-9 months     GMS-Nepal        NEPAL                          Wealth Q3            109     477
6-9 months     IRC              INDIA                          Wealth Q4            100     410
6-9 months     IRC              INDIA                          Wealth Q1            105     410
6-9 months     IRC              INDIA                          Wealth Q2            102     410
6-9 months     IRC              INDIA                          Wealth Q3            103     410
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q4            774    3071
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q1            749    3071
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q2            768    3071
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q3            780    3071
6-9 months     LCNI-5           MALAWI                         Wealth Q4            152     556
6-9 months     LCNI-5           MALAWI                         Wealth Q1            129     556
6-9 months     LCNI-5           MALAWI                         Wealth Q2            132     556
6-9 months     LCNI-5           MALAWI                         Wealth Q3            143     556
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
6-9 months     PROVIDE          BANGLADESH                     Wealth Q4            125     576
6-9 months     PROVIDE          BANGLADESH                     Wealth Q1            151     576
6-9 months     PROVIDE          BANGLADESH                     Wealth Q2            153     576
6-9 months     PROVIDE          BANGLADESH                     Wealth Q3            147     576
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            362    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            442    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            312    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            372    1488
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q4             81     327
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q1             80     327
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q2             86     327
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q3             80     327
9-12 months    COHORTS          GUATEMALA                      Wealth Q4            334     899
9-12 months    COHORTS          GUATEMALA                      Wealth Q1            179     899
9-12 months    COHORTS          GUATEMALA                      Wealth Q2            184     899
9-12 months    COHORTS          GUATEMALA                      Wealth Q3            202     899
9-12 months    CONTENT          PERU                           Wealth Q4             52     212
9-12 months    CONTENT          PERU                           Wealth Q1             59     212
9-12 months    CONTENT          PERU                           Wealth Q2             52     212
9-12 months    CONTENT          PERU                           Wealth Q3             49     212
9-12 months    GMS-Nepal        NEPAL                          Wealth Q4            115     454
9-12 months    GMS-Nepal        NEPAL                          Wealth Q1            112     454
9-12 months    GMS-Nepal        NEPAL                          Wealth Q2            124     454
9-12 months    GMS-Nepal        NEPAL                          Wealth Q3            103     454
9-12 months    IRC              INDIA                          Wealth Q4             99     403
9-12 months    IRC              INDIA                          Wealth Q1            102     403
9-12 months    IRC              INDIA                          Wealth Q2            100     403
9-12 months    IRC              INDIA                          Wealth Q3            102     403
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q4            863    3516
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q1            872    3516
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q2            871    3516
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q3            910    3516
9-12 months    LCNI-5           MALAWI                         Wealth Q4            108     380
9-12 months    LCNI-5           MALAWI                         Wealth Q1             93     380
9-12 months    LCNI-5           MALAWI                         Wealth Q2             78     380
9-12 months    LCNI-5           MALAWI                         Wealth Q3            101     380
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
9-12 months    PROVIDE          BANGLADESH                     Wealth Q4            124     569
9-12 months    PROVIDE          BANGLADESH                     Wealth Q1            151     569
9-12 months    PROVIDE          BANGLADESH                     Wealth Q2            149     569
9-12 months    PROVIDE          BANGLADESH                     Wealth Q3            145     569
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            259    1077
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            337    1077
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            236    1077
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            245    1077
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q4             84     334
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q1             79     334
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q2             88     334
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q3             83     334
12-15 months   COHORTS          GUATEMALA                      Wealth Q4            330     861
12-15 months   COHORTS          GUATEMALA                      Wealth Q1            162     861
12-15 months   COHORTS          GUATEMALA                      Wealth Q2            185     861
12-15 months   COHORTS          GUATEMALA                      Wealth Q3            184     861
12-15 months   CONTENT          PERU                           Wealth Q4             47     199
12-15 months   CONTENT          PERU                           Wealth Q1             56     199
12-15 months   CONTENT          PERU                           Wealth Q2             48     199
12-15 months   CONTENT          PERU                           Wealth Q3             48     199
12-15 months   GMS-Nepal        NEPAL                          Wealth Q4            118     452
12-15 months   GMS-Nepal        NEPAL                          Wealth Q1            107     452
12-15 months   GMS-Nepal        NEPAL                          Wealth Q2            122     452
12-15 months   GMS-Nepal        NEPAL                          Wealth Q3            105     452
12-15 months   IRC              INDIA                          Wealth Q4             96     392
12-15 months   IRC              INDIA                          Wealth Q1            100     392
12-15 months   IRC              INDIA                          Wealth Q2             98     392
12-15 months   IRC              INDIA                          Wealth Q3             98     392
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q4            863    3549
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q1            878    3549
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q2            886    3549
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q3            922    3549
12-15 months   LCNI-5           MALAWI                         Wealth Q4             38     125
12-15 months   LCNI-5           MALAWI                         Wealth Q1             32     125
12-15 months   LCNI-5           MALAWI                         Wealth Q2             24     125
12-15 months   LCNI-5           MALAWI                         Wealth Q3             31     125
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
12-15 months   PROVIDE          BANGLADESH                     Wealth Q4            113     537
12-15 months   PROVIDE          BANGLADESH                     Wealth Q1            141     537
12-15 months   PROVIDE          BANGLADESH                     Wealth Q2            146     537
12-15 months   PROVIDE          BANGLADESH                     Wealth Q3            137     537
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            188     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            238     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            175     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            185     786
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q4             84     325
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q1             78     325
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q2             84     325
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q3             79     325
15-18 months   COHORTS          GUATEMALA                      Wealth Q4            294     782
15-18 months   COHORTS          GUATEMALA                      Wealth Q1            146     782
15-18 months   COHORTS          GUATEMALA                      Wealth Q2            172     782
15-18 months   COHORTS          GUATEMALA                      Wealth Q3            170     782
15-18 months   CONTENT          PERU                           Wealth Q4             45     189
15-18 months   CONTENT          PERU                           Wealth Q1             53     189
15-18 months   CONTENT          PERU                           Wealth Q2             45     189
15-18 months   CONTENT          PERU                           Wealth Q3             46     189
15-18 months   GMS-Nepal        NEPAL                          Wealth Q4            125     477
15-18 months   GMS-Nepal        NEPAL                          Wealth Q1            116     477
15-18 months   GMS-Nepal        NEPAL                          Wealth Q2            127     477
15-18 months   GMS-Nepal        NEPAL                          Wealth Q3            109     477
15-18 months   IRC              INDIA                          Wealth Q4             93     383
15-18 months   IRC              INDIA                          Wealth Q1            102     383
15-18 months   IRC              INDIA                          Wealth Q2             93     383
15-18 months   IRC              INDIA                          Wealth Q3             95     383
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q4            832    3508
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q1            875    3508
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q2            904    3508
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q3            897    3508
15-18 months   LCNI-5           MALAWI                         Wealth Q4             31     118
15-18 months   LCNI-5           MALAWI                         Wealth Q1             30     118
15-18 months   LCNI-5           MALAWI                         Wealth Q2             25     118
15-18 months   LCNI-5           MALAWI                         Wealth Q3             32     118
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
15-18 months   MAL-ED           PERU                           Wealth Q4             66     214
15-18 months   MAL-ED           PERU                           Wealth Q1             43     214
15-18 months   MAL-ED           PERU                           Wealth Q2             50     214
15-18 months   MAL-ED           PERU                           Wealth Q3             55     214
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q4             61     225
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q1             45     225
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q2             62     225
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q3             57     225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     220
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             40     220
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             59     220
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     220
15-18 months   PROVIDE          BANGLADESH                     Wealth Q4            112     533
15-18 months   PROVIDE          BANGLADESH                     Wealth Q1            140     533
15-18 months   PROVIDE          BANGLADESH                     Wealth Q2            148     533
15-18 months   PROVIDE          BANGLADESH                     Wealth Q3            133     533
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            154     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            207     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            141     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            160     662
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q4             83     310
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q1             75     310
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q2             78     310
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q3             74     310
18-21 months   COHORTS          GUATEMALA                      Wealth Q4            287     782
18-21 months   COHORTS          GUATEMALA                      Wealth Q1            151     782
18-21 months   COHORTS          GUATEMALA                      Wealth Q2            165     782
18-21 months   COHORTS          GUATEMALA                      Wealth Q3            179     782
18-21 months   CONTENT          PERU                           Wealth Q4             44     183
18-21 months   CONTENT          PERU                           Wealth Q1             50     183
18-21 months   CONTENT          PERU                           Wealth Q2             44     183
18-21 months   CONTENT          PERU                           Wealth Q3             45     183
18-21 months   GMS-Nepal        NEPAL                          Wealth Q4            117     447
18-21 months   GMS-Nepal        NEPAL                          Wealth Q1            106     447
18-21 months   GMS-Nepal        NEPAL                          Wealth Q2            124     447
18-21 months   GMS-Nepal        NEPAL                          Wealth Q3            100     447
18-21 months   IRC              INDIA                          Wealth Q4             91     380
18-21 months   IRC              INDIA                          Wealth Q1            102     380
18-21 months   IRC              INDIA                          Wealth Q2             91     380
18-21 months   IRC              INDIA                          Wealth Q3             96     380
18-21 months   LCNI-5           MALAWI                         Wealth Q4            135     452
18-21 months   LCNI-5           MALAWI                         Wealth Q1             94     452
18-21 months   LCNI-5           MALAWI                         Wealth Q2            115     452
18-21 months   LCNI-5           MALAWI                         Wealth Q3            108     452
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             60     208
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             33     208
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             58     208
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             57     208
18-21 months   PROVIDE          BANGLADESH                     Wealth Q4            119     542
18-21 months   PROVIDE          BANGLADESH                     Wealth Q1            143     542
18-21 months   PROVIDE          BANGLADESH                     Wealth Q2            144     542
18-21 months   PROVIDE          BANGLADESH                     Wealth Q3            136     542
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              3      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              5      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              2      11
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4             82     311
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1             77     311
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2             76     311
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3             76     311
21-24 months   COHORTS          GUATEMALA                      Wealth Q4            317     857
21-24 months   COHORTS          GUATEMALA                      Wealth Q1            168     857
21-24 months   COHORTS          GUATEMALA                      Wealth Q2            180     857
21-24 months   COHORTS          GUATEMALA                      Wealth Q3            192     857
21-24 months   CONTENT          PERU                           Wealth Q4              5      38
21-24 months   CONTENT          PERU                           Wealth Q1             14      38
21-24 months   CONTENT          PERU                           Wealth Q2             10      38
21-24 months   CONTENT          PERU                           Wealth Q3              9      38
21-24 months   GMS-Nepal        NEPAL                          Wealth Q4             93     343
21-24 months   GMS-Nepal        NEPAL                          Wealth Q1             75     343
21-24 months   GMS-Nepal        NEPAL                          Wealth Q2             97     343
21-24 months   GMS-Nepal        NEPAL                          Wealth Q3             78     343
21-24 months   IRC              INDIA                          Wealth Q4             93     389
21-24 months   IRC              INDIA                          Wealth Q1            103     389
21-24 months   IRC              INDIA                          Wealth Q2             94     389
21-24 months   IRC              INDIA                          Wealth Q3             99     389
21-24 months   LCNI-5           MALAWI                         Wealth Q4            112     382
21-24 months   LCNI-5           MALAWI                         Wealth Q1             79     382
21-24 months   LCNI-5           MALAWI                         Wealth Q2            100     382
21-24 months   LCNI-5           MALAWI                         Wealth Q3             91     382
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             61     206
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             26     206
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             61     206
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             58     206
21-24 months   PROVIDE          BANGLADESH                     Wealth Q4             99     485
21-24 months   PROVIDE          BANGLADESH                     Wealth Q1            127     485
21-24 months   PROVIDE          BANGLADESH                     Wealth Q2            130     485
21-24 months   PROVIDE          BANGLADESH                     Wealth Q3            129     485


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
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/e6c3ea05-9bd4-4bee-adca-002de0722836/b18ae875-1f9a-4d0c-a21a-7d18e166a156/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e6c3ea05-9bd4-4bee-adca-002de0722836/b18ae875-1f9a-4d0c-a21a-7d18e166a156/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e6c3ea05-9bd4-4bee-adca-002de0722836/b18ae875-1f9a-4d0c-a21a-7d18e166a156/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7834971    0.7370023   0.8299919
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7397731    0.6946611   0.7848851
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6985293    0.6496412   0.7474174
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7775682    0.7289849   0.8261515
0-3 months     COHORTS          GUATEMALA                      Wealth Q4            NA                0.7935127    0.7660235   0.8210019
0-3 months     COHORTS          GUATEMALA                      Wealth Q1            NA                0.7790883    0.7402980   0.8178786
0-3 months     COHORTS          GUATEMALA                      Wealth Q2            NA                0.8162459    0.7832348   0.8492570
0-3 months     COHORTS          GUATEMALA                      Wealth Q3            NA                0.7951597    0.7564827   0.8338367
0-3 months     CONTENT          PERU                           Wealth Q4            NA                1.3248876    1.1598148   1.4899603
0-3 months     CONTENT          PERU                           Wealth Q1            NA                1.0509204    0.9541744   1.1476665
0-3 months     CONTENT          PERU                           Wealth Q2            NA                1.0409084    0.9328380   1.1489788
0-3 months     CONTENT          PERU                           Wealth Q3            NA                1.1246119    0.9708334   1.2783904
0-3 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                0.8179305    0.7846538   0.8512072
0-3 months     GMS-Nepal        NEPAL                          Wealth Q1            NA                0.8132248    0.7756469   0.8508027
0-3 months     GMS-Nepal        NEPAL                          Wealth Q2            NA                0.8401875    0.8108687   0.8695063
0-3 months     GMS-Nepal        NEPAL                          Wealth Q3            NA                0.8356011    0.7994026   0.8717996
0-3 months     IRC              INDIA                          Wealth Q4            NA                0.7748941    0.7370919   0.8126963
0-3 months     IRC              INDIA                          Wealth Q1            NA                0.7582698    0.7198599   0.7966796
0-3 months     IRC              INDIA                          Wealth Q2            NA                0.7799535    0.7413695   0.8185376
0-3 months     IRC              INDIA                          Wealth Q3            NA                0.7579644    0.7157540   0.8001748
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.8798744    0.8721088   0.8876401
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.8588500    0.8525136   0.8651864
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.8619226    0.8552936   0.8685516
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.8782085    0.8723587   0.8840583
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.8993521    0.8822568   0.9164474
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.8732453    0.8489441   0.8975464
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.8840325    0.8655263   0.9025387
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.9017473    0.8802287   0.9232659
0-3 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                0.9127172    0.8623056   0.9631288
0-3 months     MAL-ED           BANGLADESH                     Wealth Q1            NA                0.8611197    0.8090863   0.9131531
0-3 months     MAL-ED           BANGLADESH                     Wealth Q2            NA                0.8514942    0.8115803   0.8914081
0-3 months     MAL-ED           BANGLADESH                     Wealth Q3            NA                0.8859423    0.8404492   0.9314355
0-3 months     MAL-ED           BRAZIL                         Wealth Q4            NA                1.0012990    0.9412302   1.0613678
0-3 months     MAL-ED           BRAZIL                         Wealth Q1            NA                1.0872902    1.0174356   1.1571448
0-3 months     MAL-ED           BRAZIL                         Wealth Q2            NA                1.1013272    1.0282814   1.1743731
0-3 months     MAL-ED           BRAZIL                         Wealth Q3            NA                1.1243846    1.0509595   1.1978096
0-3 months     MAL-ED           INDIA                          Wealth Q4            NA                0.7760230    0.7312876   0.8207584
0-3 months     MAL-ED           INDIA                          Wealth Q1            NA                0.7516500    0.6991182   0.8041817
0-3 months     MAL-ED           INDIA                          Wealth Q2            NA                0.7608162    0.7175834   0.8040490
0-3 months     MAL-ED           INDIA                          Wealth Q3            NA                0.7574085    0.7137971   0.8010200
0-3 months     MAL-ED           NEPAL                          Wealth Q4            NA                0.9629532    0.9103995   1.0155068
0-3 months     MAL-ED           NEPAL                          Wealth Q1            NA                0.9761112    0.9193079   1.0329144
0-3 months     MAL-ED           NEPAL                          Wealth Q2            NA                0.9904903    0.9448651   1.0361156
0-3 months     MAL-ED           NEPAL                          Wealth Q3            NA                0.9065529    0.8464378   0.9666679
0-3 months     MAL-ED           PERU                           Wealth Q4            NA                0.9300188    0.8741731   0.9858646
0-3 months     MAL-ED           PERU                           Wealth Q1            NA                1.0271183    0.9743697   1.0798669
0-3 months     MAL-ED           PERU                           Wealth Q2            NA                0.9742245    0.9282133   1.0202358
0-3 months     MAL-ED           PERU                           Wealth Q3            NA                0.9532356    0.9114773   0.9949939
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.9881498    0.9309560   1.0453436
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.9137936    0.8566076   0.9709796
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.9164317    0.8536557   0.9792076
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.9559677    0.9117027   1.0002326
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.8981532    0.8374971   0.9588093
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.8644629    0.8091262   0.9197997
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.8942985    0.8231040   0.9654929
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.8737919    0.8164442   0.9311395
0-3 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                0.8696426    0.8364281   0.9028571
0-3 months     PROVIDE          BANGLADESH                     Wealth Q1            NA                0.9073773    0.8805360   0.9342185
0-3 months     PROVIDE          BANGLADESH                     Wealth Q2            NA                0.9251388    0.8945232   0.9557543
0-3 months     PROVIDE          BANGLADESH                     Wealth Q3            NA                0.8904943    0.8589003   0.9220884
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.9059099    0.8857821   0.9260377
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.9310142    0.9118319   0.9501966
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.9236245    0.9027027   0.9445463
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.9281715    0.9082591   0.9480840
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5181769    0.4728793   0.5634745
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.4602128    0.4211254   0.4993002
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.4623789    0.4291567   0.4956011
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4665588    0.4299159   0.5032017
3-6 months     COHORTS          GUATEMALA                      Wealth Q4            NA                0.4710992    0.4533126   0.4888858
3-6 months     COHORTS          GUATEMALA                      Wealth Q1            NA                0.4670212    0.4411593   0.4928832
3-6 months     COHORTS          GUATEMALA                      Wealth Q2            NA                0.4313096    0.4073910   0.4552281
3-6 months     COHORTS          GUATEMALA                      Wealth Q3            NA                0.4607838    0.4374589   0.4841087
3-6 months     CONTENT          PERU                           Wealth Q4            NA                0.6076338    0.5611904   0.6540772
3-6 months     CONTENT          PERU                           Wealth Q1            NA                0.5542001    0.5096435   0.5987567
3-6 months     CONTENT          PERU                           Wealth Q2            NA                0.5935019    0.5519185   0.6350854
3-6 months     CONTENT          PERU                           Wealth Q3            NA                0.5835592    0.5446802   0.6224382
3-6 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4967434    0.4680855   0.5254013
3-6 months     GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5015499    0.4748474   0.5282524
3-6 months     GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4926132    0.4668647   0.5183616
3-6 months     GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4972550    0.4674157   0.5270943
3-6 months     IRC              INDIA                          Wealth Q4            NA                0.4753280    0.4352814   0.5153745
3-6 months     IRC              INDIA                          Wealth Q1            NA                0.4818761    0.4493942   0.5143581
3-6 months     IRC              INDIA                          Wealth Q2            NA                0.4395303    0.4051885   0.4738722
3-6 months     IRC              INDIA                          Wealth Q3            NA                0.4687375    0.4348817   0.5025933
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.4421185    0.4347762   0.4494608
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.4418328    0.4343992   0.4492664
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.4337611    0.4278770   0.4396452
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.4453210    0.4388786   0.4517635
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.4495499    0.4339329   0.4651668
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.4157554    0.3992285   0.4322823
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.4397412    0.4132953   0.4661871
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.4433853    0.4250215   0.4617490
3-6 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                0.4719660    0.4370961   0.5068359
3-6 months     MAL-ED           BANGLADESH                     Wealth Q1            NA                0.4923958    0.4526405   0.5321512
3-6 months     MAL-ED           BANGLADESH                     Wealth Q2            NA                0.4585100    0.4327541   0.4842660
3-6 months     MAL-ED           BANGLADESH                     Wealth Q3            NA                0.4643762    0.4315628   0.4971897
3-6 months     MAL-ED           BRAZIL                         Wealth Q4            NA                0.5788787    0.5119523   0.6458052
3-6 months     MAL-ED           BRAZIL                         Wealth Q1            NA                0.5490485    0.4929709   0.6051261
3-6 months     MAL-ED           BRAZIL                         Wealth Q2            NA                0.6083358    0.5481244   0.6685473
3-6 months     MAL-ED           BRAZIL                         Wealth Q3            NA                0.5753415    0.5034087   0.6472742
3-6 months     MAL-ED           INDIA                          Wealth Q4            NA                0.4417175    0.4046374   0.4787976
3-6 months     MAL-ED           INDIA                          Wealth Q1            NA                0.4119125    0.3764287   0.4473964
3-6 months     MAL-ED           INDIA                          Wealth Q2            NA                0.4547769    0.4218519   0.4877018
3-6 months     MAL-ED           INDIA                          Wealth Q3            NA                0.4732415    0.4370426   0.5094405
3-6 months     MAL-ED           NEPAL                          Wealth Q4            NA                0.5287782    0.4849753   0.5725810
3-6 months     MAL-ED           NEPAL                          Wealth Q1            NA                0.5454638    0.4966657   0.5942618
3-6 months     MAL-ED           NEPAL                          Wealth Q2            NA                0.5232297    0.4857420   0.5607174
3-6 months     MAL-ED           NEPAL                          Wealth Q3            NA                0.4900768    0.4567260   0.5234275
3-6 months     MAL-ED           PERU                           Wealth Q4            NA                0.5088388    0.4711181   0.5465594
3-6 months     MAL-ED           PERU                           Wealth Q1            NA                0.4940413    0.4548018   0.5332808
3-6 months     MAL-ED           PERU                           Wealth Q2            NA                0.4891054    0.4531978   0.5250129
3-6 months     MAL-ED           PERU                           Wealth Q3            NA                0.5024827    0.4611345   0.5438310
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.5164608    0.4521712   0.5807503
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.4626531    0.4098939   0.5154123
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.4658748    0.4185543   0.5131953
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.4286150    0.3777582   0.4794718
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.4449239    0.3903553   0.4994925
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.4831276    0.4459486   0.5203066
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.4528748    0.4117259   0.4940237
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.4490255    0.3880416   0.5100095
3-6 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                0.4785037    0.4533550   0.5036524
3-6 months     PROVIDE          BANGLADESH                     Wealth Q1            NA                0.4870712    0.4659838   0.5081585
3-6 months     PROVIDE          BANGLADESH                     Wealth Q2            NA                0.5092965    0.4725538   0.5460393
3-6 months     PROVIDE          BANGLADESH                     Wealth Q3            NA                0.4779373    0.4582851   0.4975895
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.4120216    0.3942452   0.4297979
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.4287427    0.4130755   0.4444100
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.4207576    0.4003247   0.4411905
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.4158974    0.3975561   0.4342386
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.2722392    0.2412872   0.3031912
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.2509079    0.2133596   0.2884562
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2495102    0.2158579   0.2831625
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2548448    0.2287781   0.2809115
6-9 months     COHORTS          GUATEMALA                      Wealth Q4            NA                0.2315049    0.2154304   0.2475794
6-9 months     COHORTS          GUATEMALA                      Wealth Q1            NA                0.2085622    0.1883090   0.2288154
6-9 months     COHORTS          GUATEMALA                      Wealth Q2            NA                0.2021311    0.1783286   0.2259336
6-9 months     COHORTS          GUATEMALA                      Wealth Q3            NA                0.2073485    0.1866535   0.2280434
6-9 months     CONTENT          PERU                           Wealth Q4            NA                0.3405042    0.2992098   0.3817986
6-9 months     CONTENT          PERU                           Wealth Q1            NA                0.2931091    0.2517800   0.3344382
6-9 months     CONTENT          PERU                           Wealth Q2            NA                0.3242918    0.2851975   0.3633861
6-9 months     CONTENT          PERU                           Wealth Q3            NA                0.3238519    0.2862197   0.3614840
6-9 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1862454    0.1689834   0.2035074
6-9 months     GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2063792    0.1767341   0.2360242
6-9 months     GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1857237    0.1636064   0.2078410
6-9 months     GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1741395    0.1521580   0.1961210
6-9 months     IRC              INDIA                          Wealth Q4            NA                0.2593962    0.2332092   0.2855832
6-9 months     IRC              INDIA                          Wealth Q1            NA                0.2690716    0.2421254   0.2960179
6-9 months     IRC              INDIA                          Wealth Q2            NA                0.2612853    0.2320406   0.2905300
6-9 months     IRC              INDIA                          Wealth Q3            NA                0.2592713    0.2310969   0.2874457
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.2492451    0.2344071   0.2640832
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.2302926    0.2226644   0.2379208
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.2376897    0.2248378   0.2505416
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.2368576    0.2263844   0.2473308
6-9 months     LCNI-5           MALAWI                         Wealth Q4            NA                0.2694297    0.2471145   0.2917449
6-9 months     LCNI-5           MALAWI                         Wealth Q1            NA                0.3008140    0.2729377   0.3286904
6-9 months     LCNI-5           MALAWI                         Wealth Q2            NA                0.2985038    0.2690054   0.3280023
6-9 months     LCNI-5           MALAWI                         Wealth Q3            NA                0.2715317    0.2485581   0.2945054
6-9 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                0.2417187    0.2200757   0.2633618
6-9 months     MAL-ED           BANGLADESH                     Wealth Q1            NA                0.2766691    0.2360103   0.3173279
6-9 months     MAL-ED           BANGLADESH                     Wealth Q2            NA                0.2289403    0.1988687   0.2590119
6-9 months     MAL-ED           BANGLADESH                     Wealth Q3            NA                0.2351328    0.2043912   0.2658745
6-9 months     MAL-ED           BRAZIL                         Wealth Q4            NA                0.4006463    0.3515889   0.4497038
6-9 months     MAL-ED           BRAZIL                         Wealth Q1            NA                0.3980389    0.3445022   0.4515756
6-9 months     MAL-ED           BRAZIL                         Wealth Q2            NA                0.3862661    0.3276692   0.4448629
6-9 months     MAL-ED           BRAZIL                         Wealth Q3            NA                0.3787408    0.3275675   0.4299141
6-9 months     MAL-ED           INDIA                          Wealth Q4            NA                0.2205872    0.1891784   0.2519960
6-9 months     MAL-ED           INDIA                          Wealth Q1            NA                0.2418049    0.2067486   0.2768613
6-9 months     MAL-ED           INDIA                          Wealth Q2            NA                0.2315503    0.2083607   0.2547399
6-9 months     MAL-ED           INDIA                          Wealth Q3            NA                0.2274593    0.1969329   0.2579857
6-9 months     MAL-ED           NEPAL                          Wealth Q4            NA                0.2805211    0.2449688   0.3160734
6-9 months     MAL-ED           NEPAL                          Wealth Q1            NA                0.2645721    0.2406310   0.2885132
6-9 months     MAL-ED           NEPAL                          Wealth Q2            NA                0.2898739    0.2615265   0.3182213
6-9 months     MAL-ED           NEPAL                          Wealth Q3            NA                0.2507316    0.2214858   0.2799774
6-9 months     MAL-ED           PERU                           Wealth Q4            NA                0.2620558    0.2313496   0.2927620
6-9 months     MAL-ED           PERU                           Wealth Q1            NA                0.2535091    0.2239811   0.2830372
6-9 months     MAL-ED           PERU                           Wealth Q2            NA                0.2547771    0.2232763   0.2862779
6-9 months     MAL-ED           PERU                           Wealth Q3            NA                0.2742128    0.2396385   0.3087870
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.2795718    0.2390056   0.3201379
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.2629512    0.2114115   0.3144909
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.2560109    0.2214413   0.2905804
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.2494215    0.2106478   0.2881953
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2618802    0.1910420   0.3327185
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1991047    0.1401924   0.2580170
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2206089    0.1762973   0.2649206
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2467888    0.1912779   0.3022997
6-9 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                0.2353542    0.2143327   0.2563757
6-9 months     PROVIDE          BANGLADESH                     Wealth Q1            NA                0.2653702    0.2443250   0.2864155
6-9 months     PROVIDE          BANGLADESH                     Wealth Q2            NA                0.2527246    0.2193467   0.2861025
6-9 months     PROVIDE          BANGLADESH                     Wealth Q3            NA                0.2445084    0.2242829   0.2647340
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2541127    0.2349213   0.2733041
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2549403    0.2381869   0.2716937
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2613739    0.2419124   0.2808355
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2527123    0.2358715   0.2695531
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.2075482    0.1707189   0.2443776
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1835309    0.1504521   0.2166097
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2513131    0.2134016   0.2892246
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2064604    0.1715543   0.2413665
9-12 months    COHORTS          GUATEMALA                      Wealth Q4            NA                0.1583494    0.1431921   0.1735066
9-12 months    COHORTS          GUATEMALA                      Wealth Q1            NA                0.1516372    0.1322881   0.1709864
9-12 months    COHORTS          GUATEMALA                      Wealth Q2            NA                0.1426372    0.1229500   0.1623245
9-12 months    COHORTS          GUATEMALA                      Wealth Q3            NA                0.1575331    0.1392451   0.1758211
9-12 months    CONTENT          PERU                           Wealth Q4            NA                0.2586266    0.2166048   0.3006485
9-12 months    CONTENT          PERU                           Wealth Q1            NA                0.2117362    0.1778715   0.2456009
9-12 months    CONTENT          PERU                           Wealth Q2            NA                0.2344518    0.1985936   0.2703099
9-12 months    CONTENT          PERU                           Wealth Q3            NA                0.1924506    0.1595511   0.2253500
9-12 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1513112    0.1287454   0.1738769
9-12 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1227827    0.0924812   0.1530842
9-12 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1457185    0.1202545   0.1711824
9-12 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1584348    0.1323010   0.1845685
9-12 months    IRC              INDIA                          Wealth Q4            NA                0.2087264    0.1793459   0.2381069
9-12 months    IRC              INDIA                          Wealth Q1            NA                0.1894183    0.1599666   0.2188700
9-12 months    IRC              INDIA                          Wealth Q2            NA                0.2280632    0.1974956   0.2586307
9-12 months    IRC              INDIA                          Wealth Q3            NA                0.2258973    0.2013244   0.2504701
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.1595584    0.1490382   0.1700786
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.1488648    0.1420728   0.1556568
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.1571308    0.1477191   0.1665426
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.1568268    0.1486397   0.1650140
9-12 months    LCNI-5           MALAWI                         Wealth Q4            NA                0.2149166    0.1856456   0.2441876
9-12 months    LCNI-5           MALAWI                         Wealth Q1            NA                0.1806768    0.1454017   0.2159518
9-12 months    LCNI-5           MALAWI                         Wealth Q2            NA                0.1974538    0.1651448   0.2297628
9-12 months    LCNI-5           MALAWI                         Wealth Q3            NA                0.2093850    0.1778669   0.2409032
9-12 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                0.1632242    0.1357849   0.1906636
9-12 months    MAL-ED           BANGLADESH                     Wealth Q1            NA                0.1954044    0.1648758   0.2259329
9-12 months    MAL-ED           BANGLADESH                     Wealth Q2            NA                0.1583323    0.1323156   0.1843490
9-12 months    MAL-ED           BANGLADESH                     Wealth Q3            NA                0.1784001    0.1521814   0.2046188
9-12 months    MAL-ED           BRAZIL                         Wealth Q4            NA                0.3187295    0.2596211   0.3778379
9-12 months    MAL-ED           BRAZIL                         Wealth Q1            NA                0.2487694    0.1867854   0.3107533
9-12 months    MAL-ED           BRAZIL                         Wealth Q2            NA                0.2571356    0.2035614   0.3107098
9-12 months    MAL-ED           BRAZIL                         Wealth Q3            NA                0.3236856    0.2468791   0.4004921
9-12 months    MAL-ED           INDIA                          Wealth Q4            NA                0.1553024    0.1238142   0.1867906
9-12 months    MAL-ED           INDIA                          Wealth Q1            NA                0.1890467    0.1551760   0.2229174
9-12 months    MAL-ED           INDIA                          Wealth Q2            NA                0.1874882    0.1667037   0.2082728
9-12 months    MAL-ED           INDIA                          Wealth Q3            NA                0.1783362    0.1522206   0.2044519
9-12 months    MAL-ED           NEPAL                          Wealth Q4            NA                0.2161287    0.1893517   0.2429058
9-12 months    MAL-ED           NEPAL                          Wealth Q1            NA                0.1801116    0.1548575   0.2053658
9-12 months    MAL-ED           NEPAL                          Wealth Q2            NA                0.1903255    0.1652596   0.2153914
9-12 months    MAL-ED           NEPAL                          Wealth Q3            NA                0.1572479    0.1181300   0.1963658
9-12 months    MAL-ED           PERU                           Wealth Q4            NA                0.2058179    0.1765493   0.2350865
9-12 months    MAL-ED           PERU                           Wealth Q1            NA                0.1898458    0.1629270   0.2167647
9-12 months    MAL-ED           PERU                           Wealth Q2            NA                0.1743953    0.1432734   0.2055172
9-12 months    MAL-ED           PERU                           Wealth Q3            NA                0.1845032    0.1479734   0.2210331
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.2355762    0.1924353   0.2787172
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.2119910    0.1587805   0.2652014
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.2081217    0.1656206   0.2506228
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.2025165    0.1605773   0.2444557
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1696992    0.1308140   0.2085844
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1889287    0.1513880   0.2264694
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1969919    0.1543566   0.2396273
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1343639    0.0909544   0.1777733
9-12 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                0.1600534    0.1397066   0.1804002
9-12 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                0.1809490    0.1612805   0.2006176
9-12 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                0.1786574    0.1575404   0.1997744
9-12 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                0.1782463    0.1610486   0.1954440
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2179274    0.1955864   0.2402684
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2192016    0.2014375   0.2369658
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1928301    0.1697889   0.2158714
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1848375    0.1659646   0.2037104
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1469630    0.1149969   0.1789291
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1883480    0.1628876   0.2138084
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1283841    0.1051592   0.1516089
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1413405    0.1118291   0.1708519
12-15 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.1501218    0.1352199   0.1650237
12-15 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.1454755    0.1221445   0.1688064
12-15 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.1654767    0.1467023   0.1842512
12-15 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.1410713    0.1185624   0.1635802
12-15 months   CONTENT          PERU                           Wealth Q4            NA                0.1390850    0.0970294   0.1811406
12-15 months   CONTENT          PERU                           Wealth Q1            NA                0.2024070    0.1623875   0.2424264
12-15 months   CONTENT          PERU                           Wealth Q2            NA                0.1679349    0.1361409   0.1997290
12-15 months   CONTENT          PERU                           Wealth Q3            NA                0.1797238    0.1444083   0.2150392
12-15 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1651898    0.1347463   0.1956332
12-15 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1766890    0.1510909   0.2022872
12-15 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1703847    0.1478089   0.1929605
12-15 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1744321    0.1451361   0.2037281
12-15 months   IRC              INDIA                          Wealth Q4            NA                0.2000566    0.1751005   0.2250128
12-15 months   IRC              INDIA                          Wealth Q1            NA                0.1716511    0.1466222   0.1966800
12-15 months   IRC              INDIA                          Wealth Q2            NA                0.1777596    0.1493114   0.2062079
12-15 months   IRC              INDIA                          Wealth Q3            NA                0.1807023    0.1528041   0.2086005
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.1315688    0.1218808   0.1412567
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.1353436    0.1280689   0.1426184
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.1239203    0.1154378   0.1324028
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.1315952    0.1235156   0.1396748
12-15 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.1236153    0.0640080   0.1832227
12-15 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.1389149    0.0414182   0.2364116
12-15 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.2005500    0.1482794   0.2528206
12-15 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.1770797    0.1361939   0.2179654
12-15 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.1426105    0.1139757   0.1712453
12-15 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.1143490    0.0702732   0.1584248
12-15 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.1476114    0.1152415   0.1799812
12-15 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.1340426    0.1055659   0.1625192
12-15 months   MAL-ED           BRAZIL                         Wealth Q4            NA                0.1889073    0.1427037   0.2351108
12-15 months   MAL-ED           BRAZIL                         Wealth Q1            NA                0.1766397    0.1120849   0.2411946
12-15 months   MAL-ED           BRAZIL                         Wealth Q2            NA                0.2099652    0.1593517   0.2605787
12-15 months   MAL-ED           BRAZIL                         Wealth Q3            NA                0.2317029    0.1832942   0.2801116
12-15 months   MAL-ED           INDIA                          Wealth Q4            NA                0.1817225    0.1473521   0.2160928
12-15 months   MAL-ED           INDIA                          Wealth Q1            NA                0.1712690    0.1330579   0.2094801
12-15 months   MAL-ED           INDIA                          Wealth Q2            NA                0.1590390    0.1317424   0.1863357
12-15 months   MAL-ED           INDIA                          Wealth Q3            NA                0.1768163    0.1455762   0.2080564
12-15 months   MAL-ED           NEPAL                          Wealth Q4            NA                0.1380896    0.1118329   0.1643462
12-15 months   MAL-ED           NEPAL                          Wealth Q1            NA                0.1653389    0.1266744   0.2040035
12-15 months   MAL-ED           NEPAL                          Wealth Q2            NA                0.1731389    0.1439603   0.2023176
12-15 months   MAL-ED           NEPAL                          Wealth Q3            NA                0.1318906    0.0902853   0.1734958
12-15 months   MAL-ED           PERU                           Wealth Q4            NA                0.1487474    0.1173784   0.1801164
12-15 months   MAL-ED           PERU                           Wealth Q1            NA                0.1431721    0.1088184   0.1775259
12-15 months   MAL-ED           PERU                           Wealth Q2            NA                0.1345424    0.0995199   0.1695650
12-15 months   MAL-ED           PERU                           Wealth Q3            NA                0.1447431    0.1103557   0.1791305
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.1706071    0.1247127   0.2165015
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.1987411    0.1524735   0.2450086
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.2090550    0.1442578   0.2738523
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.1844098    0.1378624   0.2309573
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1510415    0.1089666   0.1931165
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1015103    0.0418035   0.1612170
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1505635    0.1099790   0.1911480
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2186363    0.1620364   0.2752363
12-15 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.1824539    0.1528290   0.2120787
12-15 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.1812241    0.1586440   0.2038042
12-15 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.1895667    0.1660749   0.2130585
12-15 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.1691007    0.1446448   0.1935567
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1658217    0.1417119   0.1899315
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1720792    0.1525003   0.1916581
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1855778    0.1600262   0.2111295
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1713005    0.1485299   0.1940712
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1560614    0.1325754   0.1795474
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1471418    0.1012695   0.1930140
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1422823    0.1197731   0.1647916
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1605353    0.1380691   0.1830015
15-18 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.1467325    0.1293232   0.1641418
15-18 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.1493097    0.1225529   0.1760665
15-18 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.1296201    0.1055320   0.1537082
15-18 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.1390434    0.1140814   0.1640054
15-18 months   CONTENT          PERU                           Wealth Q4            NA                0.1914774    0.1608206   0.2221343
15-18 months   CONTENT          PERU                           Wealth Q1            NA                0.1612481    0.1167507   0.2057456
15-18 months   CONTENT          PERU                           Wealth Q2            NA                0.1764986    0.1386999   0.2142973
15-18 months   CONTENT          PERU                           Wealth Q3            NA                0.1800569    0.1489595   0.2111544
15-18 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2461535    0.2139302   0.2783768
15-18 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2215563    0.1936160   0.2494966
15-18 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2441370    0.2125985   0.2756756
15-18 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2264387    0.1922290   0.2606483
15-18 months   IRC              INDIA                          Wealth Q4            NA                0.1827795    0.1549374   0.2106216
15-18 months   IRC              INDIA                          Wealth Q1            NA                0.1436222    0.1154037   0.1718407
15-18 months   IRC              INDIA                          Wealth Q2            NA                0.1622041    0.1361093   0.1882989
15-18 months   IRC              INDIA                          Wealth Q3            NA                0.1635216    0.1366184   0.1904248
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.1601627    0.1508827   0.1694427
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.1577353    0.1490127   0.1664579
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.1631176    0.1524189   0.1738162
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.1584173    0.1493687   0.1674659
15-18 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.1844221    0.1243530   0.2444912
15-18 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.1198224    0.0512760   0.1883688
15-18 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.1821403    0.0957202   0.2685605
15-18 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.1724716    0.1380141   0.2069292
15-18 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.1431193    0.1101680   0.1760705
15-18 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.1232328    0.0841036   0.1623620
15-18 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.1434993    0.1161003   0.1708982
15-18 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.1542658    0.1252302   0.1833015
15-18 months   MAL-ED           BRAZIL                         Wealth Q4            NA                0.2130663    0.1531690   0.2729636
15-18 months   MAL-ED           BRAZIL                         Wealth Q1            NA                0.2147405    0.1662287   0.2632522
15-18 months   MAL-ED           BRAZIL                         Wealth Q2            NA                0.1881201    0.1358112   0.2404290
15-18 months   MAL-ED           BRAZIL                         Wealth Q3            NA                0.1895879    0.1397704   0.2394054
15-18 months   MAL-ED           INDIA                          Wealth Q4            NA                0.1504734    0.1188736   0.1820733
15-18 months   MAL-ED           INDIA                          Wealth Q1            NA                0.1702369    0.1406281   0.1998458
15-18 months   MAL-ED           INDIA                          Wealth Q2            NA                0.1805236    0.1503834   0.2106638
15-18 months   MAL-ED           INDIA                          Wealth Q3            NA                0.1616571    0.1308211   0.1924932
15-18 months   MAL-ED           NEPAL                          Wealth Q4            NA                0.1735495    0.1480341   0.1990650
15-18 months   MAL-ED           NEPAL                          Wealth Q1            NA                0.1767571    0.1300271   0.2234870
15-18 months   MAL-ED           NEPAL                          Wealth Q2            NA                0.1929362    0.1606969   0.2251756
15-18 months   MAL-ED           NEPAL                          Wealth Q3            NA                0.1540787    0.1291602   0.1789973
15-18 months   MAL-ED           PERU                           Wealth Q4            NA                0.1230982    0.0876062   0.1585902
15-18 months   MAL-ED           PERU                           Wealth Q1            NA                0.1541985    0.1056986   0.2026983
15-18 months   MAL-ED           PERU                           Wealth Q2            NA                0.1449761    0.1069820   0.1829702
15-18 months   MAL-ED           PERU                           Wealth Q3            NA                0.1763512    0.1456694   0.2070330
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.2712704    0.2206311   0.3219097
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.2112498    0.1510706   0.2714289
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.1929596    0.1255258   0.2603935
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.2066289    0.1572106   0.2560472
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1624860    0.1167803   0.2081917
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1765832    0.1307392   0.2224272
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1335121    0.0877051   0.1793191
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1243324    0.0779582   0.1707065
15-18 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.1443171    0.1215636   0.1670707
15-18 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.1711712    0.1480293   0.1943131
15-18 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.1661778    0.1424088   0.1899468
15-18 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.1422765    0.1173029   0.1672501
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1686652    0.1375321   0.1997983
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1803862    0.1559859   0.2047865
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1656450    0.1331938   0.1980962
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1629868    0.1340919   0.1918818
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1317435    0.1001026   0.1633845
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1289541    0.0883342   0.1695739
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1487311    0.1221234   0.1753389
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1315970    0.1017445   0.1614494
18-21 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.1606956    0.1444572   0.1769339
18-21 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.1681219    0.1438598   0.1923840
18-21 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.1672371    0.1428223   0.1916518
18-21 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.1621084    0.1370409   0.1871759
18-21 months   CONTENT          PERU                           Wealth Q4            NA                0.1746259    0.1328092   0.2164426
18-21 months   CONTENT          PERU                           Wealth Q1            NA                0.1938299    0.1649458   0.2227141
18-21 months   CONTENT          PERU                           Wealth Q2            NA                0.2138753    0.1674031   0.2603474
18-21 months   CONTENT          PERU                           Wealth Q3            NA                0.2147044    0.1777860   0.2516227
18-21 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1437410    0.1135916   0.1738904
18-21 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1559123    0.1216511   0.1901735
18-21 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1285199    0.0959449   0.1610949
18-21 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1411717    0.1120154   0.1703281
18-21 months   IRC              INDIA                          Wealth Q4            NA                0.1761541    0.1424394   0.2098688
18-21 months   IRC              INDIA                          Wealth Q1            NA                0.1578822    0.1320564   0.1837080
18-21 months   IRC              INDIA                          Wealth Q2            NA                0.1537022    0.1316154   0.1757890
18-21 months   IRC              INDIA                          Wealth Q3            NA                0.1418440    0.1151908   0.1684971
18-21 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.1900853    0.1527266   0.2274440
18-21 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.1814820    0.1321782   0.2307859
18-21 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.2043298    0.1653595   0.2433000
18-21 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.1592884    0.1202253   0.1983515
18-21 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.1541779    0.1207259   0.1876300
18-21 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.1752129    0.1225468   0.2278790
18-21 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.1218486    0.0914767   0.1522206
18-21 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.1366669    0.1098032   0.1635306
18-21 months   MAL-ED           BRAZIL                         Wealth Q4            NA                0.1979874    0.1554931   0.2404816
18-21 months   MAL-ED           BRAZIL                         Wealth Q1            NA                0.0923984    0.0390625   0.1457343
18-21 months   MAL-ED           BRAZIL                         Wealth Q2            NA                0.1771507    0.1212924   0.2330090
18-21 months   MAL-ED           BRAZIL                         Wealth Q3            NA                0.1478133    0.1010772   0.1945493
18-21 months   MAL-ED           INDIA                          Wealth Q4            NA                0.1802628    0.1509579   0.2095677
18-21 months   MAL-ED           INDIA                          Wealth Q1            NA                0.1585495    0.1255664   0.1915326
18-21 months   MAL-ED           INDIA                          Wealth Q2            NA                0.1683577    0.1396505   0.1970649
18-21 months   MAL-ED           INDIA                          Wealth Q3            NA                0.1690904    0.1367600   0.2014209
18-21 months   MAL-ED           NEPAL                          Wealth Q4            NA                0.1880521    0.1599617   0.2161425
18-21 months   MAL-ED           NEPAL                          Wealth Q1            NA                0.1126150    0.0770815   0.1481484
18-21 months   MAL-ED           NEPAL                          Wealth Q2            NA                0.1136985    0.0675259   0.1598711
18-21 months   MAL-ED           NEPAL                          Wealth Q3            NA                0.1782529    0.1469609   0.2095449
18-21 months   MAL-ED           PERU                           Wealth Q4            NA                0.1758111    0.1414862   0.2101360
18-21 months   MAL-ED           PERU                           Wealth Q1            NA                0.1485773    0.1057319   0.1914226
18-21 months   MAL-ED           PERU                           Wealth Q2            NA                0.1573797    0.1164083   0.1983511
18-21 months   MAL-ED           PERU                           Wealth Q3            NA                0.1569186    0.1183303   0.1955069
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.1909021    0.1469099   0.2348943
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.1442146    0.0834279   0.2050013
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.1595567    0.1039207   0.2151927
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.2134974    0.1541050   0.2728898
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1741478    0.1238000   0.2244955
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1528911    0.0888213   0.2169608
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1174272    0.0733699   0.1614844
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1156631    0.0658307   0.1654956
18-21 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.1011682    0.0789446   0.1233919
18-21 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.1416157    0.1192997   0.1639318
18-21 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.1255327    0.1003020   0.1507634
18-21 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.1505689    0.1280223   0.1731156
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1593943    0.1280471   0.1907415
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1425740    0.1155608   0.1695872
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1457073    0.1156983   0.1757163
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1442357    0.1177193   0.1707521
21-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.1841506    0.1686922   0.1996089
21-24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.1684840    0.1427289   0.1942390
21-24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.2034778    0.1807736   0.2261821
21-24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.1776607    0.1558280   0.1994935
21-24 months   CONTENT          PERU                           Wealth Q4            NA                0.1871987   -0.0182242   0.3926216
21-24 months   CONTENT          PERU                           Wealth Q1            NA                0.2884323    0.2114909   0.3653738
21-24 months   CONTENT          PERU                           Wealth Q2            NA                0.1727004    0.1246147   0.2207861
21-24 months   CONTENT          PERU                           Wealth Q3            NA                0.1227963    0.0562345   0.1893580
21-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1895159    0.1408975   0.2381343
21-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1778494    0.1221750   0.2335237
21-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1682838    0.1256255   0.2109422
21-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1947272    0.1444308   0.2450235
21-24 months   IRC              INDIA                          Wealth Q4            NA                0.1876353    0.1585548   0.2167159
21-24 months   IRC              INDIA                          Wealth Q1            NA                0.1607350    0.1334621   0.1880079
21-24 months   IRC              INDIA                          Wealth Q2            NA                0.1600135    0.1320754   0.1879515
21-24 months   IRC              INDIA                          Wealth Q3            NA                0.1992985    0.1702688   0.2283281
21-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.2088389    0.1596504   0.2580274
21-24 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.1457258    0.0803585   0.2110930
21-24 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.1740125    0.1266825   0.2213426
21-24 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.1924886    0.1372798   0.2476974
21-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.1403623    0.1090338   0.1716908
21-24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.1562726    0.1169569   0.1955883
21-24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.1625720    0.1316921   0.1934520
21-24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.1495324    0.1227924   0.1762724
21-24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                0.1715867    0.1260697   0.2171036
21-24 months   MAL-ED           BRAZIL                         Wealth Q1            NA                0.1073888    0.0449817   0.1697959
21-24 months   MAL-ED           BRAZIL                         Wealth Q2            NA                0.1592280    0.1070692   0.2113868
21-24 months   MAL-ED           BRAZIL                         Wealth Q3            NA                0.0952696    0.0580951   0.1324440
21-24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.1587927    0.1303730   0.1872123
21-24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.1523772    0.1252363   0.1795180
21-24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.1607537    0.1360751   0.1854323
21-24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.1547169    0.1267939   0.1826399
21-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                0.1793814    0.1344967   0.2242661
21-24 months   MAL-ED           NEPAL                          Wealth Q1            NA                0.1419499    0.1000666   0.1838333
21-24 months   MAL-ED           NEPAL                          Wealth Q2            NA                0.1638825    0.1181013   0.2096638
21-24 months   MAL-ED           NEPAL                          Wealth Q3            NA                0.1899408    0.1600964   0.2197853
21-24 months   MAL-ED           PERU                           Wealth Q4            NA                0.1729282    0.1411350   0.2047213
21-24 months   MAL-ED           PERU                           Wealth Q1            NA                0.2101861    0.1667846   0.2535877
21-24 months   MAL-ED           PERU                           Wealth Q2            NA                0.1520114    0.1103333   0.1936895
21-24 months   MAL-ED           PERU                           Wealth Q3            NA                0.1905889    0.1458965   0.2352813
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.1954952    0.1488813   0.2421091
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.2521434    0.1911298   0.3131571
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.1582114    0.1121365   0.2042863
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.1605730    0.1153458   0.2058002
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1464261    0.0910376   0.2018147
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1408997    0.0535791   0.2282202
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1644765    0.1198144   0.2091387
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1156604    0.0594386   0.1718822
21-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.1418612    0.1190543   0.1646682
21-24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.1410496    0.1183175   0.1637816
21-24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.1450739    0.1195475   0.1706002
21-24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.1378582    0.1154391   0.1602773


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     COHORTS          GUATEMALA                      NA                   NA                0.7967509   0.7797129   0.8137889
0-3 months     CONTENT          PERU                           NA                   NA                1.1349624   1.0553477   1.2145771
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                0.8710506   0.8679710   0.8741302
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                0.8897517   0.8792503   0.9002532
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                0.8772390   0.8535646   0.9009134
0-3 months     MAL-ED           BRAZIL                         NA                   NA                1.0702868   1.0355019   1.1050717
0-3 months     MAL-ED           INDIA                          NA                   NA                0.7600956   0.7374283   0.7827630
0-3 months     MAL-ED           NEPAL                          NA                   NA                0.9579130   0.9310445   0.9847815
0-3 months     MAL-ED           PERU                           NA                   NA                0.9711748   0.9453625   0.9969872
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.9442402   0.9164250   0.9720554
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8849237   0.8543694   0.9154779
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9223779   0.9122086   0.9325472
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.4751567   0.4562440   0.4940693
3-6 months     COHORTS          GUATEMALA                      NA                   NA                0.4598586   0.4488398   0.4708774
3-6 months     CONTENT          PERU                           NA                   NA                0.5883623   0.5672770   0.6094476
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     IRC              INDIA                          NA                   NA                0.4660717   0.4485044   0.4836390
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                0.4413913   0.4384220   0.4443605
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                0.4391710   0.4303780   0.4479640
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     MAL-ED           BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     MAL-ED           INDIA                          NA                   NA                0.4452214   0.4276818   0.4627610
3-6 months     MAL-ED           NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     MAL-ED           PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.4668324   0.4408845   0.4927803
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4195871   0.4109053   0.4282689
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.2595889   0.2435057   0.2756721
6-9 months     COHORTS          GUATEMALA                      NA                   NA                0.2148174   0.2050742   0.2245606
6-9 months     CONTENT          PERU                           NA                   NA                0.3201718   0.3007014   0.3396422
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                0.1874500   0.1753777   0.1995223
6-9 months     IRC              INDIA                          NA                   NA                0.2626310   0.2487635   0.2764985
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                0.2398525   0.2345783   0.2451267
6-9 months     LCNI-5           MALAWI                         NA                   NA                0.2849079   0.2723110   0.2975048
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     MAL-ED           BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     MAL-ED           INDIA                          NA                   NA                0.2318230   0.2168658   0.2467803
6-9 months     MAL-ED           NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     MAL-ED           PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.2593884   0.2383337   0.2804432
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2558522   0.2469636   0.2647409
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.2123308   0.1948351   0.2298265
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.1548601   0.1460722   0.1636480
9-12 months    CONTENT          PERU                           NA                   NA                0.2245187   0.2063866   0.2426509
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.1439907   0.1312935   0.1566879
9-12 months    IRC              INDIA                          NA                   NA                0.2132244   0.1989917   0.2274571
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1545123   0.1502488   0.1587759
9-12 months    LCNI-5           MALAWI                         NA                   NA                0.2022567   0.1863082   0.2182053
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    MAL-ED           BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    MAL-ED           INDIA                          NA                   NA                0.1788440   0.1647878   0.1929001
9-12 months    MAL-ED           NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    MAL-ED           PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.2146445   0.1925652   0.2367238
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2046179   0.1945139   0.2147219
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1504668   0.1366572   0.1642764
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.1507021   0.1414031   0.1600010
12-15 months   CONTENT          PERU                           NA                   NA                0.1810771   0.1624014   0.1997528
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.1721075   0.1589812   0.1852337
12-15 months   IRC              INDIA                          NA                   NA                0.1821426   0.1693469   0.1949383
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1304576   0.1263404   0.1345747
12-15 months   LCNI-5           MALAWI                         NA                   NA                0.1518822   0.1181702   0.1855942
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   MAL-ED           BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   MAL-ED           INDIA                          NA                   NA                0.1739561   0.1580675   0.1898447
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   MAL-ED           PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1894245   0.1641813   0.2146678
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1737296   0.1623947   0.1850645
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1521835   0.1380291   0.1663379
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.1390423   0.1279954   0.1500893
15-18 months   CONTENT          PERU                           NA                   NA                0.1711673   0.1527815   0.1895531
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   IRC              INDIA                          NA                   NA                0.1604586   0.1468913   0.1740260
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1595310   0.1548323   0.1642296
15-18 months   LCNI-5           MALAWI                         NA                   NA                0.1738706   0.1423337   0.2054074
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   MAL-ED           BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   MAL-ED           INDIA                          NA                   NA                0.1625746   0.1476285   0.1775207
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   MAL-ED           PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2236104   0.1952383   0.2519826
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1702121   0.1559390   0.1844852
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1352327   0.1200477   0.1504178
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.1635896   0.1528248   0.1743543
18-21 months   CONTENT          PERU                           NA                   NA                0.1921646   0.1732990   0.2110302
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   IRC              INDIA                          NA                   NA                0.1589791   0.1455977   0.1723606
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.1818489   0.1616805   0.2020172
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   MAL-ED           INDIA                          NA                   NA                0.1726665   0.1577530   0.1875800
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   MAL-ED           PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1770799   0.1505223   0.2036374
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1484491   0.1344875   0.1624106
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1844754   0.1744220   0.1945287
21-24 months   CONTENT          PERU                           NA                   NA                0.2054267   0.1563552   0.2544983
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1768175   0.1523979   0.2012370
21-24 months   IRC              INDIA                          NA                   NA                0.1777340   0.1639174   0.1915507
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.1789517   0.1520986   0.2058049
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   MAL-ED           INDIA                          NA                   NA                0.1562703   0.1431057   0.1694349
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   MAL-ED           PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1876561   0.1639063   0.2114059
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0437240   -0.1084335    0.0209856
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0849678   -0.1524577   -0.0174779
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0059289   -0.0732817    0.0614239
0-3 months     COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0144244   -0.0618811    0.0330322
0-3 months     COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0227332   -0.0201423    0.0656088
0-3 months     COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0016470   -0.0457204    0.0490144
0-3 months     CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2739672   -0.4653014   -0.0826329
0-3 months     CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.2839792   -0.4812815   -0.0866768
0-3 months     CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.2002757   -0.4258790    0.0253276
0-3 months     GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0047057   -0.0547817    0.0453703
0-3 months     GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0222570   -0.0218631    0.0663771
0-3 months     GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0176706   -0.0313574    0.0666987
0-3 months     IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0166244   -0.0705309    0.0372822
0-3 months     IRC              INDIA                          Wealth Q2            Wealth Q4          0.0050594   -0.0489708    0.0590897
0-3 months     IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0169297   -0.0736360    0.0397766
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0210244   -0.0306501   -0.0113988
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0179518   -0.0274633   -0.0084404
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0016659   -0.0111094    0.0077775
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0261069   -0.0557489    0.0035352
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0153196   -0.0401360    0.0094967
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4          0.0023951   -0.0246314    0.0294217
0-3 months     MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0515975   -0.1242229    0.0210280
0-3 months     MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0612229   -0.1256137    0.0031678
0-3 months     MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0267748   -0.0947561    0.0412064
0-3 months     MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4          0.0859912   -0.0062306    0.1782130
0-3 months     MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.1000283    0.0053443    0.1947122
0-3 months     MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.1230856    0.0279080    0.2182631
0-3 months     MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0243731   -0.0934737    0.0447276
0-3 months     MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0152068   -0.0774732    0.0470596
0-3 months     MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.0186145   -0.0810906    0.0438616
0-3 months     MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          Wealth Q1            Wealth Q4          0.0131580   -0.0644729    0.0907889
0-3 months     MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0275371   -0.0421630    0.0972372
0-3 months     MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.0564003   -0.1362856    0.0234850
0-3 months     MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0970995    0.0216203    0.1725787
0-3 months     MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0442057   -0.0273184    0.1157297
0-3 months     MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0232168   -0.0461765    0.0926101
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0743562   -0.1548769    0.0061645
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0717181   -0.1565840    0.0131477
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0321821   -0.1044655    0.0401012
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0336902   -0.1154115    0.0480310
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0038547   -0.0967985    0.0890890
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0243613   -0.1071533    0.0584306
0-3 months     PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0377347   -0.0049835    0.0804529
0-3 months     PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0554962    0.0103116    0.1006808
0-3 months     PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0208517   -0.0250084    0.0667118
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0251043   -0.0024586    0.0526673
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0177146   -0.0111138    0.0465430
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0222617   -0.0057823    0.0503056
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0579641   -0.1181783    0.0022501
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0557980   -0.1119645    0.0003685
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0516181   -0.1102711    0.0070349
3-6 months     COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0040779   -0.0354759    0.0273200
3-6 months     COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0397896   -0.0696110   -0.0099683
3-6 months     COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0103154   -0.0396573    0.0190265
3-6 months     CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0534337   -0.1179174    0.0110499
3-6 months     CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0141319   -0.0765679    0.0483041
3-6 months     CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0240746   -0.0846160    0.0364668
3-6 months     GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0048065   -0.0341607    0.0437736
3-6 months     GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0041302   -0.0425693    0.0343088
3-6 months     GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0005116   -0.0404703    0.0414934
3-6 months     IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          Wealth Q1            Wealth Q4          0.0065482   -0.0448650    0.0579613
3-6 months     IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0357976   -0.0884144    0.0168192
3-6 months     IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0065905   -0.0589585    0.0457776
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0002857   -0.0102110    0.0096396
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0083574   -0.0176187    0.0009039
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4          0.0032025   -0.0063772    0.0127822
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0337945   -0.0564401   -0.0111489
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0098087   -0.0405303    0.0209130
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0061646   -0.0298713    0.0175421
3-6 months     MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.0204298   -0.0328637    0.0737233
3-6 months     MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0134559   -0.0566869    0.0297750
3-6 months     MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0075897   -0.0555090    0.0403295
3-6 months     MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.0298302   -0.1174278    0.0577673
3-6 months     MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.0294571   -0.0607373    0.1196516
3-6 months     MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.0035373   -0.1018606    0.0947861
3-6 months     MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0298050   -0.0811157    0.0215057
3-6 months     MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0130593   -0.0365511    0.0626697
3-6 months     MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0315240   -0.0203182    0.0833661
3-6 months     MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          Wealth Q1            Wealth Q4          0.0166856   -0.0488047    0.0821759
3-6 months     MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.0055485   -0.0630621    0.0519651
3-6 months     MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.0387014   -0.0936771    0.0162742
3-6 months     MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.0147975   -0.0691138    0.0395189
3-6 months     MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.0197334   -0.0717826    0.0323158
3-6 months     MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0063560   -0.0623153    0.0496032
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0538076   -0.1379465    0.0303312
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0505859   -0.1304871    0.0293152
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0878458   -0.1701176   -0.0055740
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0382037   -0.0280714    0.1044788
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0079509   -0.0605164    0.0764182
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0041016   -0.0781071    0.0863103
3-6 months     PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0085675   -0.0242458    0.0413808
3-6 months     PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0307929   -0.0138165    0.0754023
3-6 months     PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0005664   -0.0324752    0.0313424
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0167212   -0.0070168    0.0404592
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0087360   -0.0183546    0.0358267
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0038758   -0.0217240    0.0294756
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0213312   -0.0700367    0.0273743
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0227290   -0.0684406    0.0229826
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0173944   -0.0578870    0.0230983
6-9 months     COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0229427   -0.0489251    0.0030398
6-9 months     COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0293738   -0.0582154   -0.0005322
6-9 months     COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0241564   -0.0504427    0.0021298
6-9 months     CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0473951   -0.1062155    0.0114253
6-9 months     CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0162124   -0.0733713    0.0409465
6-9 months     CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0166523   -0.0725091    0.0392045
6-9 months     GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0201338   -0.0141393    0.0544068
6-9 months     GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0005217   -0.0287759    0.0277325
6-9 months     GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0121059   -0.0399825    0.0157707
6-9 months     IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          Wealth Q1            Wealth Q4          0.0096754   -0.0278943    0.0472452
6-9 months     IRC              INDIA                          Wealth Q2            Wealth Q4          0.0018891   -0.0374186    0.0411967
6-9 months     IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0001249   -0.0385938    0.0383440
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0189526   -0.0354643   -0.0024408
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0115554   -0.0310839    0.0079731
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0123876   -0.0304068    0.0056317
6-9 months     LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0313843   -0.0045775    0.0673460
6-9 months     LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0290741   -0.0079063    0.0660545
6-9 months     LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0021020   -0.0299706    0.0341746
6-9 months     MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.0349504   -0.0112971    0.0811979
6-9 months     MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0127785   -0.0499606    0.0244037
6-9 months     MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0065859   -0.0444713    0.0312995
6-9 months     MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.0026075   -0.0752289    0.0700139
6-9 months     MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.0143803   -0.0910251    0.0622645
6-9 months     MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.0219055   -0.0929874    0.0491763
6-9 months     MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          Wealth Q1            Wealth Q4          0.0212177   -0.0257406    0.0681761
6-9 months     MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0109631   -0.0281308    0.0500569
6-9 months     MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0068721   -0.0371323    0.0508764
6-9 months     MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.0159490   -0.0588273    0.0269294
6-9 months     MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0093528   -0.0361507    0.0548564
6-9 months     MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.0297895   -0.0758526    0.0162735
6-9 months     MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.0085466   -0.0515626    0.0344694
6-9 months     MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.0072787   -0.0517085    0.0371511
6-9 months     MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0121570   -0.0344428    0.0587568
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0166205   -0.0824087    0.0491677
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0235609   -0.0768980    0.0297762
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0301502   -0.0861453    0.0258448
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0627755   -0.1591162    0.0335651
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0412713   -0.1295845    0.0470419
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0150914   -0.1109727    0.0807899
6-9 months     PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0300160    0.0004201    0.0596119
6-9 months     PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0173704   -0.0225217    0.0572625
6-9 months     PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0091542   -0.0199570    0.0382655
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0008276   -0.0246812    0.0263364
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0072612   -0.0200898    0.0346122
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0014004   -0.0270240    0.0242232
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0240173   -0.0736355    0.0256008
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0437649   -0.0092871    0.0968168
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0010878   -0.0519805    0.0498049
9-12 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0067121   -0.0312794    0.0178551
9-12 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0157121   -0.0406224    0.0091981
9-12 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0008163   -0.0246230    0.0229905
9-12 months    CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0468905   -0.1008445    0.0070636
9-12 months    CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0241749   -0.0793703    0.0310205
9-12 months    CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0661761   -0.1194177   -0.0129345
9-12 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0285285   -0.0663781    0.0093211
9-12 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0055927   -0.0397891    0.0286037
9-12 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0071236   -0.0273720    0.0416192
9-12 months    IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0193081   -0.0610629    0.0224466
9-12 months    IRC              INDIA                          Wealth Q2            Wealth Q4          0.0193367   -0.0231794    0.0618529
9-12 months    IRC              INDIA                          Wealth Q3            Wealth Q4          0.0171708   -0.0212186    0.0555603
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0106936   -0.0229367    0.0015494
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0024276   -0.0165603    0.0117051
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0027316   -0.0154113    0.0099481
9-12 months    LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0342398   -0.0800942    0.0116145
9-12 months    LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0174628   -0.0610805    0.0261549
9-12 months    LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0055315   -0.0485918    0.0375287
9-12 months    MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.0321801   -0.0088975    0.0732578
9-12 months    MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0048919   -0.0427987    0.0330148
9-12 months    MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4          0.0151759   -0.0228004    0.0531522
9-12 months    MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.0699601   -0.1554049    0.0154846
9-12 months    MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.0615938   -0.1415944    0.0184067
9-12 months    MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.0049561   -0.0920730    0.1019853
9-12 months    MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          Wealth Q1            Wealth Q4          0.0337443   -0.0125174    0.0800059
9-12 months    MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0321858   -0.0054822    0.0698538
9-12 months    MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0230338   -0.0179428    0.0640104
9-12 months    MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.0360171   -0.0731857    0.0011515
9-12 months    MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.0258032   -0.0628505    0.0112440
9-12 months    MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.0588808   -0.1063228   -0.0114389
9-12 months    MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.0159721   -0.0559931    0.0240489
9-12 months    MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.0314226   -0.0743852    0.0115400
9-12 months    MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0213147   -0.0687021    0.0260727
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0235852   -0.0924234    0.0452529
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0274545   -0.0880347    0.0331256
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0330598   -0.0930774    0.0269579
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0192295   -0.0353316    0.0737906
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0272927   -0.0305267    0.0851121
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0353353   -0.0941380    0.0234673
9-12 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0208956   -0.0074888    0.0492801
9-12 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0186040   -0.0107686    0.0479767
9-12 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0181929   -0.0084680    0.0448538
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0012743   -0.0273174    0.0298660
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0250972   -0.0573026    0.0071082
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0330899   -0.0623793   -0.0038005
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0413850    0.0004790    0.0822910
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0185789   -0.0580800    0.0209222
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0056225   -0.0491952    0.0379502
12-15 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0046463   -0.0324547    0.0231621
12-15 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0153550   -0.0086751    0.0393850
12-15 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0090504   -0.0361861    0.0180852
12-15 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0633220    0.0051891    0.1214549
12-15 months   CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0288499   -0.0237003    0.0814002
12-15 months   CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0406388   -0.0145158    0.0957934
12-15 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0114993   -0.0285686    0.0515671
12-15 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0051950   -0.0328711    0.0432610
12-15 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0092423   -0.0332584    0.0517431
12-15 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0284055   -0.0639455    0.0071344
12-15 months   IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0222970   -0.0605004    0.0159064
12-15 months   IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0193544   -0.0572481    0.0185394
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4          0.0037748   -0.0085103    0.0160600
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0076485   -0.0206449    0.0053479
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4          0.0000265   -0.0124311    0.0124841
12-15 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4          0.0152996   -0.0993238    0.1299230
12-15 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0769347   -0.0025100    0.1563793
12-15 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4          0.0534643   -0.0191058    0.1260344
12-15 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0282615   -0.0808193    0.0242963
12-15 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4          0.0050009   -0.0383171    0.0483188
12-15 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0085679   -0.0490963    0.0319604
12-15 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.0122675   -0.0917864    0.0672514
12-15 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.0210580   -0.0474396    0.0895555
12-15 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.0427956   -0.0243653    0.1099566
12-15 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0104535   -0.0623222    0.0414153
12-15 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0226834   -0.0670093    0.0216425
12-15 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.0049062   -0.0513706    0.0415583
12-15 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4          0.0272494   -0.0195325    0.0740313
12-15 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0350494   -0.0041893    0.0742881
12-15 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.0061990   -0.0554368    0.0430388
12-15 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.0055753   -0.0518735    0.0407230
12-15 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.0142049   -0.0612977    0.0328878
12-15 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0040043   -0.0504508    0.0424422
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0281339   -0.0372731    0.0935409
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4          0.0384479   -0.0412436    0.1181394
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0138027   -0.0523074    0.0799128
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0495313   -0.1223654    0.0233028
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0004781   -0.0592192    0.0582631
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0675948   -0.0029859    0.1381754
12-15 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0012298   -0.0384731    0.0360135
12-15 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0071128   -0.0307511    0.0449768
12-15 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0133531   -0.0517981    0.0250918
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0062575   -0.0248654    0.0373804
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0197561   -0.0153803    0.0548926
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.0054788   -0.0277997    0.0387574
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0089196   -0.0605519    0.0427127
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0137790   -0.0463878    0.0188297
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.0044739   -0.0281116    0.0370594
15-18 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4          0.0025771   -0.0292568    0.0344111
15-18 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0171124   -0.0467647    0.0125398
15-18 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0076891   -0.0381113    0.0227331
15-18 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0302293   -0.0844121    0.0239535
15-18 months   CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0149788   -0.0636644    0.0337068
15-18 months   CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0114205   -0.0549178    0.0320768
15-18 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0245972   -0.0672396    0.0180453
15-18 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0020165   -0.0471537    0.0431207
15-18 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0197149   -0.0667521    0.0273224
15-18 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0391573   -0.0787918    0.0004772
15-18 months   IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0205754   -0.0587114    0.0175605
15-18 months   IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0192579   -0.0580060    0.0194901
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0024274   -0.0153270    0.0104722
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4          0.0029548   -0.0107922    0.0167019
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0017454   -0.0146913    0.0112005
15-18 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0645997   -0.1537832    0.0245837
15-18 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0022818   -0.1079877    0.1034242
15-18 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0119505   -0.0801924    0.0562914
15-18 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0198865   -0.0709198    0.0311468
15-18 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4          0.0003800   -0.0426995    0.0434595
15-18 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4          0.0111465   -0.0325396    0.0548326
15-18 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4          0.0016742   -0.0754030    0.0787513
15-18 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.0249462   -0.1045173    0.0546249
15-18 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.0234784   -0.1014019    0.0544451
15-18 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4          0.0197635   -0.0236024    0.0631295
15-18 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0300502   -0.0136810    0.0737813
15-18 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0111837   -0.0330528    0.0554202
15-18 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4          0.0032075   -0.0499141    0.0563292
15-18 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0193867   -0.0218122    0.0605856
15-18 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.0194708   -0.0552059    0.0162643
15-18 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0311003   -0.0294585    0.0916591
15-18 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0218779   -0.0301057    0.0738615
15-18 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0532530    0.0062173    0.1002888
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0600206   -0.1386494    0.0186081
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0783107   -0.1631429    0.0065214
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0646415   -0.1354566    0.0061736
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0140972   -0.0506728    0.0788673
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0289739   -0.0935724    0.0356247
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0381536   -0.1034950    0.0271878
15-18 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0268541   -0.0055432    0.0592513
15-18 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0218607   -0.0111230    0.0548443
15-18 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0020406   -0.0358686    0.0317874
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0117210   -0.0278196    0.0512615
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0030202   -0.0480150    0.0419746
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0056784   -0.0481581    0.0368014
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0027895   -0.0545699    0.0489910
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.0169876   -0.0252512    0.0592263
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0001466   -0.0442671    0.0439740
18-21 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4          0.0074263   -0.0218212    0.0366738
18-21 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0065415   -0.0226421    0.0357251
18-21 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0014129   -0.0284106    0.0312363
18-21 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   CONTENT          PERU                           Wealth Q1            Wealth Q4          0.0192040   -0.0316866    0.0700946
18-21 months   CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0392493   -0.0235523    0.1020510
18-21 months   CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0400784   -0.0159208    0.0960776
18-21 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0121712   -0.0337598    0.0581022
18-21 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0152211   -0.0598925    0.0294502
18-21 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0025693   -0.0447572    0.0396186
18-21 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0182719   -0.0608630    0.0243193
18-21 months   IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0224518   -0.0628767    0.0179731
18-21 months   IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0343101   -0.0774853    0.0088651
18-21 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0086033   -0.0705378    0.0533312
18-21 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4          0.0142444   -0.0397448    0.0682337
18-21 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0307969   -0.0849591    0.0233653
18-21 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.0210349   -0.0414179    0.0834877
18-21 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0323293   -0.0776196    0.0129610
18-21 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0175111   -0.0606466    0.0256245
18-21 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.1055890   -0.1740113   -0.0371667
18-21 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.0208366   -0.0911656    0.0494923
18-21 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.0501741   -0.1141778    0.0138296
18-21 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0217133   -0.0658899    0.0224634
18-21 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0119051   -0.0530651    0.0292548
18-21 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.0111724   -0.0548839    0.0325391
18-21 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.0754371   -0.1208956   -0.0299786
18-21 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.0743536   -0.1287800   -0.0199271
18-21 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.0097991   -0.0521381    0.0325398
18-21 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.0272338   -0.0822316    0.0277639
18-21 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.0184314   -0.0719569    0.0350942
18-21 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0188925   -0.0706447    0.0328597
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0466875   -0.1222633    0.0288883
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0313454   -0.1031121    0.0404213
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0225953   -0.0525134    0.0977039
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0212567   -0.1025399    0.0600265
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0567206   -0.1240728    0.0106316
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0584846   -0.1295160    0.0125467
18-21 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0404475    0.0087816    0.0721134
18-21 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0243645   -0.0092947    0.0580236
18-21 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0494007    0.0175366    0.0812648
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0168204   -0.0582637    0.0246230
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0136871   -0.0571398    0.0297657
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.0151586   -0.0563467    0.0260294
21-24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0156666   -0.0457329    0.0143997
21-24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0193272   -0.0082126    0.0468671
21-24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0064899   -0.0332777    0.0202980
21-24 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   CONTENT          PERU                           Wealth Q1            Wealth Q4          0.1012336   -0.1181258    0.3205930
21-24 months   CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0144983   -0.2254741    0.1964775
21-24 months   CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0644024   -0.2803400    0.1515351
21-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0116665   -0.0854609    0.0621278
21-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0212321   -0.0859273    0.0434632
21-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0052113   -0.0649874    0.0754100
21-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.0269003   -0.0670966    0.0132960
21-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0276219   -0.0682167    0.0129730
21-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4          0.0116631   -0.0295768    0.0529031
21-24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0631131   -0.1449924    0.0187662
21-24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0348263   -0.1032070    0.0335544
21-24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0163503   -0.0902778    0.0575773
21-24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.0159103   -0.0343305    0.0661511
21-24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4          0.0222097   -0.0219186    0.0663381
21-24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4          0.0091701   -0.0320049    0.0503451
21-24 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.0641979   -0.1415169    0.0131212
21-24 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.0123586   -0.0813419    0.0566246
21-24 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.0763171   -0.1357986   -0.0168356
21-24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0064155   -0.0458556    0.0330246
21-24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0019611   -0.0358289    0.0397510
21-24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.0040758   -0.0441075    0.0359560
21-24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.0374315   -0.0994554    0.0245924
21-24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.0154989   -0.0799645    0.0489667
21-24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4          0.0105594   -0.0437082    0.0648271
21-24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0372579   -0.0163947    0.0909106
21-24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.0209168   -0.0732601    0.0314266
21-24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0176607   -0.0372063    0.0725278
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4          0.0566482   -0.0200975    0.1333939
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0372838   -0.1027359    0.0281682
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.0349222   -0.0998387    0.0299943
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0055265   -0.1094494    0.0983965
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0180504   -0.0531057    0.0892065
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0307657   -0.1095651    0.0480336
21-24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0008117   -0.0330092    0.0313858
21-24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0032126   -0.0310516    0.0374769
21-24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0040030   -0.0359724    0.0279663


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0367412   -0.0770897    0.0036072
0-3 months     COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0032382   -0.0194425    0.0259189
0-3 months     CONTENT          PERU                           Wealth Q4            NA                -0.1899252   -0.3328686   -0.0469818
0-3 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0090817   -0.0198653    0.0380287
0-3 months     IRC              INDIA                          Wealth Q4            NA                -0.0069036   -0.0404451    0.0266380
0-3 months     JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0088238   -0.0158909   -0.0017567
0-3 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0096004   -0.0256017    0.0064008
0-3 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0354782   -0.0784581    0.0075018
0-3 months     MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0689878    0.0140950    0.1238807
0-3 months     MAL-ED           INDIA                          Wealth Q4            NA                -0.0159274   -0.0552537    0.0233989
0-3 months     MAL-ED           NEPAL                          Wealth Q4            NA                -0.0050402   -0.0514119    0.0413316
0-3 months     MAL-ED           PERU                           Wealth Q4            NA                 0.0411560   -0.0053419    0.0876540
0-3 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0439096   -0.0923530    0.0045337
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0132295   -0.0656372    0.0391782
0-3 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0320046    0.0026493    0.0613599
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0164680   -0.0007414    0.0336774
3-6 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0430203   -0.0805197   -0.0055208
3-6 months     COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0112406   -0.0257335    0.0032523
3-6 months     CONTENT          PERU                           Wealth Q4            NA                -0.0192715   -0.0596421    0.0210991
3-6 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0008683   -0.0236840    0.0254206
3-6 months     IRC              INDIA                          Wealth Q4            NA                -0.0092563   -0.0430506    0.0245380
3-6 months     JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0007272   -0.0071594    0.0057050
3-6 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0103788   -0.0252180    0.0044603
3-6 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0026841   -0.0267942    0.0321624
3-6 months     MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0006812   -0.0578488    0.0564865
3-6 months     MAL-ED           INDIA                          Wealth Q4            NA                 0.0035039   -0.0291341    0.0361419
3-6 months     MAL-ED           NEPAL                          Wealth Q4            NA                -0.0070619   -0.0443773    0.0302534
3-6 months     MAL-ED           PERU                           Wealth Q4            NA                -0.0106053   -0.0432738    0.0220632
3-6 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0496284   -0.1034013    0.0041446
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0122058   -0.0335272    0.0579388
3-6 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0105574   -0.0128476    0.0339625
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0075656   -0.0079628    0.0230939
6-9 months     CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0126503   -0.0401729    0.0148724
6-9 months     COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0166875   -0.0293974   -0.0039776
6-9 months     CONTENT          PERU                           Wealth Q4            NA                -0.0203324   -0.0562852    0.0156205
6-9 months     GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0012046   -0.0162304    0.0186395
6-9 months     IRC              INDIA                          Wealth Q4            NA                 0.0032348   -0.0202766    0.0267462
6-9 months     JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0093926   -0.0224623    0.0036771
6-9 months     LCNI-5           MALAWI                         Wealth Q4            NA                 0.0154782   -0.0042907    0.0352470
6-9 months     MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0011365   -0.0200074    0.0222803
6-9 months     MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0174965   -0.0598560    0.0248630
6-9 months     MAL-ED           INDIA                          Wealth Q4            NA                 0.0112358   -0.0154495    0.0379211
6-9 months     MAL-ED           NEPAL                          Wealth Q4            NA                -0.0109478   -0.0402222    0.0183266
6-9 months     MAL-ED           PERU                           Wealth Q4            NA                -0.0006625   -0.0268551    0.0255301
6-9 months     MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0201833   -0.0562926    0.0159259
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0235198   -0.0826984    0.0356587
6-9 months     PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0138111   -0.0066712    0.0342934
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0017396   -0.0148002    0.0182794
9-12 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0047826   -0.0271679    0.0367331
9-12 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0034893   -0.0152236    0.0082450
9-12 months    CONTENT          PERU                           Wealth Q4            NA                -0.0341079   -0.0692291    0.0010133
9-12 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0073204   -0.0280612    0.0134203
9-12 months    IRC              INDIA                          Wealth Q4            NA                 0.0044980   -0.0208313    0.0298273
9-12 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0050461   -0.0143033    0.0042112
9-12 months    LCNI-5           MALAWI                         Wealth Q4            NA                -0.0126599   -0.0378017    0.0124820
9-12 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0098104   -0.0137481    0.0333688
9-12 months    MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0341372   -0.0858157    0.0175413
9-12 months    MAL-ED           INDIA                          Wealth Q4            NA                 0.0235416   -0.0025990    0.0496821
9-12 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.0301367   -0.0544775   -0.0057959
9-12 months    MAL-ED           PERU                           Wealth Q4            NA                -0.0183373   -0.0436523    0.0069778
9-12 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0209317   -0.0582891    0.0164256
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0028104   -0.0366151    0.0309943
9-12 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0174782   -0.0013543    0.0363107
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0133094   -0.0323815    0.0057626
12-15 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0035038   -0.0233332    0.0303408
12-15 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0005803   -0.0113763    0.0125369
12-15 months   CONTENT          PERU                           Wealth Q4            NA                 0.0419921    0.0053692    0.0786150
12-15 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0069177   -0.0183908    0.0322262
12-15 months   IRC              INDIA                          Wealth Q4            NA                -0.0179141   -0.0404031    0.0045750
12-15 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0011112   -0.0095374    0.0073149
12-15 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0282669   -0.0228806    0.0794143
12-15 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0072519   -0.0321733    0.0176696
12-15 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0212873   -0.0183293    0.0609040
12-15 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0077664   -0.0371783    0.0216456
12-15 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0146043   -0.0104570    0.0396657
12-15 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0070084   -0.0334539    0.0194371
12-15 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0188174   -0.0219745    0.0596093
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0084024   -0.0299196    0.0467245
12-15 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0024215   -0.0292067    0.0243636
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0079079   -0.0129797    0.0287955
15-18 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0038779   -0.0257245    0.0179687
15-18 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0076902   -0.0218713    0.0064909
15-18 months   CONTENT          PERU                           Wealth Q4            NA                -0.0203102   -0.0493446    0.0087242
15-18 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0113799   -0.0390276    0.0162677
15-18 months   IRC              INDIA                          Wealth Q4            NA                -0.0223209   -0.0465680    0.0019261
15-18 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0006317   -0.0092539    0.0079904
15-18 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.0105515   -0.0619844    0.0408813
15-18 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0003311   -0.0274680    0.0268058
15-18 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0096468   -0.0567026    0.0374090
15-18 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0121012   -0.0148798    0.0390822
15-18 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.0000585   -0.0241474    0.0240304
15-18 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0230907   -0.0061100    0.0522914
15-18 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0476599   -0.0921232   -0.0031967
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0196838   -0.0581723    0.0188048
15-18 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0120343   -0.0090858    0.0331545
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0015469   -0.0254512    0.0285449
18-21 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0034892   -0.0238536    0.0308320
18-21 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0028940   -0.0105880    0.0163760
18-21 months   CONTENT          PERU                           Wealth Q4            NA                 0.0175386   -0.0186102    0.0536875
18-21 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0013463   -0.0276226    0.0249301
18-21 months   IRC              INDIA                          Wealth Q4            NA                -0.0171749   -0.0452044    0.0108545
18-21 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.0082365   -0.0395719    0.0230990
18-21 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0114633   -0.0394997    0.0165731
18-21 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0373382   -0.0735004   -0.0011761
18-21 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0075963   -0.0329771    0.0177845
18-21 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.0405524   -0.0677544   -0.0133504
18-21 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0142459   -0.0427220    0.0142303
18-21 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0138223   -0.0544549    0.0268103
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0277939   -0.0697754    0.0141875
18-21 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0313199    0.0104627    0.0521772
21-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0109453   -0.0372786    0.0153881
21-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0003248   -0.0124530    0.0131026
21-24 months   CONTENT          PERU                           Wealth Q4            NA                 0.0182280   -0.1648067    0.2012627
21-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0126984   -0.0536995    0.0283026
21-24 months   IRC              INDIA                          Wealth Q4            NA                -0.0099013   -0.0355155    0.0157129
21-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.0298871   -0.0714367    0.0116625
21-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0117533   -0.0137806    0.0372871
21-24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0280966   -0.0645033    0.0083101
21-24 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0025223   -0.0265484    0.0215037
21-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.0103402   -0.0477156    0.0270351
21-24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0085389   -0.0189018    0.0359796
21-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0078391   -0.0481002    0.0324220
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0051074   -0.0513864    0.0411716
21-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0001092   -0.0210306    0.0212491
