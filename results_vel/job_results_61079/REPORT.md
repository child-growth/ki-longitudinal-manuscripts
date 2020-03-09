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

**Intervention Variable:** impsan

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* W_nrooms
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_nrooms
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid      country                        impsan    n_cell       n
-------------  -----------  -----------------------------  -------  -------  ------
0-3 months     COHORTS      GUATEMALA                      1             42     445
0-3 months     COHORTS      GUATEMALA                      0            403     445
0-3 months     COHORTS      INDIA                          1           1732    4660
0-3 months     COHORTS      INDIA                          0           2928    4660
0-3 months     CONTENT      PERU                           1             25      29
0-3 months     CONTENT      PERU                           0              4      29
0-3 months     JiVitA-3     BANGLADESH                     1          13595   19861
0-3 months     JiVitA-3     BANGLADESH                     0           6266   19861
0-3 months     JiVitA-4     BANGLADESH                     1           1398    1805
0-3 months     JiVitA-4     BANGLADESH                     0            407    1805
0-3 months     MAL-ED       BANGLADESH                     1            198     236
0-3 months     MAL-ED       BANGLADESH                     0             38     236
0-3 months     MAL-ED       BRAZIL                         1            159     163
0-3 months     MAL-ED       BRAZIL                         0              4     163
0-3 months     MAL-ED       INDIA                          1             80     176
0-3 months     MAL-ED       INDIA                          0             96     176
0-3 months     MAL-ED       NEPAL                          1            154     155
0-3 months     MAL-ED       NEPAL                          0              1     155
0-3 months     MAL-ED       PERU                           1             60     246
0-3 months     MAL-ED       PERU                           0            186     246
0-3 months     MAL-ED       SOUTH AFRICA                   1              2     194
0-3 months     MAL-ED       SOUTH AFRICA                   0            192     194
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     216
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            216     216
0-3 months     NIH-Birth    BANGLADESH                     1            218     566
0-3 months     NIH-Birth    BANGLADESH                     0            348     566
0-3 months     NIH-Crypto   BANGLADESH                     1            626     710
0-3 months     NIH-Crypto   BANGLADESH                     0             84     710
0-3 months     PROVIDE      BANGLADESH                     1             13      13
0-3 months     PROVIDE      BANGLADESH                     0              0      13
3-6 months     COHORTS      GUATEMALA                      1             58     551
3-6 months     COHORTS      GUATEMALA                      0            493     551
3-6 months     COHORTS      INDIA                          1           1770    4719
3-6 months     COHORTS      INDIA                          0           2949    4719
3-6 months     CONTENT      PERU                           1            200     214
3-6 months     CONTENT      PERU                           0             14     214
3-6 months     JiVitA-3     BANGLADESH                     1           8993   12571
3-6 months     JiVitA-3     BANGLADESH                     0           3578   12571
3-6 months     JiVitA-4     BANGLADESH                     1           1431    1839
3-6 months     JiVitA-4     BANGLADESH                     0            408    1839
3-6 months     MAL-ED       BANGLADESH                     1            193     231
3-6 months     MAL-ED       BANGLADESH                     0             38     231
3-6 months     MAL-ED       BRAZIL                         1            204     208
3-6 months     MAL-ED       BRAZIL                         0              4     208
3-6 months     MAL-ED       INDIA                          1            105     228
3-6 months     MAL-ED       INDIA                          0            123     228
3-6 months     MAL-ED       NEPAL                          1            232     233
3-6 months     MAL-ED       NEPAL                          0              1     233
3-6 months     MAL-ED       PERU                           1             63     260
3-6 months     MAL-ED       PERU                           0            197     260
3-6 months     MAL-ED       SOUTH AFRICA                   1              4     237
3-6 months     MAL-ED       SOUTH AFRICA                   0            233     237
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     231
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            231     231
3-6 months     NIH-Birth    BANGLADESH                     1            198     523
3-6 months     NIH-Birth    BANGLADESH                     0            325     523
3-6 months     NIH-Crypto   BANGLADESH                     1            601     684
3-6 months     NIH-Crypto   BANGLADESH                     0             83     684
3-6 months     PROVIDE      BANGLADESH                     1             11      11
3-6 months     PROVIDE      BANGLADESH                     0              0      11
6-9 months     COHORTS      GUATEMALA                      1             63     600
6-9 months     COHORTS      GUATEMALA                      0            537     600
6-9 months     COHORTS      INDIA                          1           1650    4328
6-9 months     COHORTS      INDIA                          0           2678    4328
6-9 months     CONTENT      PERU                           1            200     214
6-9 months     CONTENT      PERU                           0             14     214
6-9 months     JiVitA-4     BANGLADESH                     1           2379    3052
6-9 months     JiVitA-4     BANGLADESH                     0            673    3052
6-9 months     LCNI-5       MALAWI                         1              3     556
6-9 months     LCNI-5       MALAWI                         0            553     556
6-9 months     MAL-ED       BANGLADESH                     1            186     224
6-9 months     MAL-ED       BANGLADESH                     0             38     224
6-9 months     MAL-ED       BRAZIL                         1            194     198
6-9 months     MAL-ED       BRAZIL                         0              4     198
6-9 months     MAL-ED       INDIA                          1            104     228
6-9 months     MAL-ED       INDIA                          0            124     228
6-9 months     MAL-ED       NEPAL                          1            229     230
6-9 months     MAL-ED       NEPAL                          0              1     230
6-9 months     MAL-ED       PERU                           1             56     238
6-9 months     MAL-ED       PERU                           0            182     238
6-9 months     MAL-ED       SOUTH AFRICA                   1              4     227
6-9 months     MAL-ED       SOUTH AFRICA                   0            223     227
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     219
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            219     219
6-9 months     NIH-Birth    BANGLADESH                     1            193     498
6-9 months     NIH-Birth    BANGLADESH                     0            305     498
6-9 months     NIH-Crypto   BANGLADESH                     1            589     678
6-9 months     NIH-Crypto   BANGLADESH                     0             89     678
6-9 months     PROVIDE      BANGLADESH                     1              6       6
6-9 months     PROVIDE      BANGLADESH                     0              0       6
9-12 months    COHORTS      GUATEMALA                      1             67     679
9-12 months    COHORTS      GUATEMALA                      0            612     679
9-12 months    COHORTS      INDIA                          1           1456    3725
9-12 months    COHORTS      INDIA                          0           2269    3725
9-12 months    CONTENT      PERU                           1            198     212
9-12 months    CONTENT      PERU                           0             14     212
9-12 months    JiVitA-4     BANGLADESH                     1           2730    3499
9-12 months    JiVitA-4     BANGLADESH                     0            769    3499
9-12 months    LCNI-5       MALAWI                         1              3     381
9-12 months    LCNI-5       MALAWI                         0            378     381
9-12 months    MAL-ED       BANGLADESH                     1            190     225
9-12 months    MAL-ED       BANGLADESH                     0             35     225
9-12 months    MAL-ED       BRAZIL                         1            190     194
9-12 months    MAL-ED       BRAZIL                         0              4     194
9-12 months    MAL-ED       INDIA                          1            103     225
9-12 months    MAL-ED       INDIA                          0            122     225
9-12 months    MAL-ED       NEPAL                          1            228     229
9-12 months    MAL-ED       NEPAL                          0              1     229
9-12 months    MAL-ED       PERU                           1             52     228
9-12 months    MAL-ED       PERU                           0            176     228
9-12 months    MAL-ED       SOUTH AFRICA                   1              4     229
9-12 months    MAL-ED       SOUTH AFRICA                   0            225     229
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     217
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            217     217
9-12 months    NIH-Birth    BANGLADESH                     1            189     482
9-12 months    NIH-Birth    BANGLADESH                     0            293     482
9-12 months    NIH-Crypto   BANGLADESH                     1            576     664
9-12 months    NIH-Crypto   BANGLADESH                     0             88     664
9-12 months    PROVIDE      BANGLADESH                     1              6       6
9-12 months    PROVIDE      BANGLADESH                     0              0       6
12-15 months   COHORTS      GUATEMALA                      1             67     700
12-15 months   COHORTS      GUATEMALA                      0            633     700
12-15 months   CONTENT      PERU                           1            186     199
12-15 months   CONTENT      PERU                           0             13     199
12-15 months   JiVitA-4     BANGLADESH                     1           2757    3547
12-15 months   JiVitA-4     BANGLADESH                     0            790    3547
12-15 months   LCNI-5       MALAWI                         1              0     126
12-15 months   LCNI-5       MALAWI                         0            126     126
12-15 months   MAL-ED       BANGLADESH                     1            180     212
12-15 months   MAL-ED       BANGLADESH                     0             32     212
12-15 months   MAL-ED       BRAZIL                         1            181     184
12-15 months   MAL-ED       BRAZIL                         0              3     184
12-15 months   MAL-ED       INDIA                          1            103     224
12-15 months   MAL-ED       INDIA                          0            121     224
12-15 months   MAL-ED       NEPAL                          1            229     230
12-15 months   MAL-ED       NEPAL                          0              1     230
12-15 months   MAL-ED       PERU                           1             51     218
12-15 months   MAL-ED       PERU                           0            167     218
12-15 months   MAL-ED       SOUTH AFRICA                   1              4     224
12-15 months   MAL-ED       SOUTH AFRICA                   0            220     224
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     219
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            219     219
12-15 months   NIH-Birth    BANGLADESH                     1            181     461
12-15 months   NIH-Birth    BANGLADESH                     0            280     461
12-15 months   NIH-Crypto   BANGLADESH                     1            562     649
12-15 months   NIH-Crypto   BANGLADESH                     0             87     649
12-15 months   PROVIDE      BANGLADESH                     1              8       8
12-15 months   PROVIDE      BANGLADESH                     0              0       8
15-18 months   COHORTS      GUATEMALA                      1             58     642
15-18 months   COHORTS      GUATEMALA                      0            584     642
15-18 months   CONTENT      PERU                           1            176     189
15-18 months   CONTENT      PERU                           0             13     189
15-18 months   JiVitA-4     BANGLADESH                     1           2760    3548
15-18 months   JiVitA-4     BANGLADESH                     0            788    3548
15-18 months   LCNI-5       MALAWI                         1              0     119
15-18 months   LCNI-5       MALAWI                         0            119     119
15-18 months   MAL-ED       BANGLADESH                     1            179     212
15-18 months   MAL-ED       BANGLADESH                     0             33     212
15-18 months   MAL-ED       BRAZIL                         1            172     175
15-18 months   MAL-ED       BRAZIL                         0              3     175
15-18 months   MAL-ED       INDIA                          1            104     224
15-18 months   MAL-ED       INDIA                          0            120     224
15-18 months   MAL-ED       NEPAL                          1            226     227
15-18 months   MAL-ED       NEPAL                          0              1     227
15-18 months   MAL-ED       PERU                           1             50     208
15-18 months   MAL-ED       PERU                           0            158     208
15-18 months   MAL-ED       SOUTH AFRICA                   1              4     222
15-18 months   MAL-ED       SOUTH AFRICA                   0            218     222
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     211
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            211     211
15-18 months   NIH-Birth    BANGLADESH                     1            180     449
15-18 months   NIH-Birth    BANGLADESH                     0            269     449
15-18 months   NIH-Crypto   BANGLADESH                     1            510     593
15-18 months   NIH-Crypto   BANGLADESH                     0             83     593
15-18 months   PROVIDE      BANGLADESH                     1             10      10
15-18 months   PROVIDE      BANGLADESH                     0              0      10
18-21 months   COHORTS      GUATEMALA                      1             61     657
18-21 months   COHORTS      GUATEMALA                      0            596     657
18-21 months   CONTENT      PERU                           1            171     183
18-21 months   CONTENT      PERU                           0             12     183
18-21 months   LCNI-5       MALAWI                         1              3     473
18-21 months   LCNI-5       MALAWI                         0            470     473
18-21 months   MAL-ED       BANGLADESH                     1            179     209
18-21 months   MAL-ED       BANGLADESH                     0             30     209
18-21 months   MAL-ED       BRAZIL                         1            164     167
18-21 months   MAL-ED       BRAZIL                         0              3     167
18-21 months   MAL-ED       INDIA                          1            103     224
18-21 months   MAL-ED       INDIA                          0            121     224
18-21 months   MAL-ED       NEPAL                          1            226     227
18-21 months   MAL-ED       NEPAL                          0              1     227
18-21 months   MAL-ED       PERU                           1             50     198
18-21 months   MAL-ED       PERU                           0            148     198
18-21 months   MAL-ED       SOUTH AFRICA                   1              4     230
18-21 months   MAL-ED       SOUTH AFRICA                   0            226     230
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     198
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            198     198
18-21 months   NIH-Birth    BANGLADESH                     1            169     422
18-21 months   NIH-Birth    BANGLADESH                     0            253     422
18-21 months   NIH-Crypto   BANGLADESH                     1            463     535
18-21 months   NIH-Crypto   BANGLADESH                     0             72     535
18-21 months   PROVIDE      BANGLADESH                     1              9       9
18-21 months   PROVIDE      BANGLADESH                     0              0       9
21-24 months   COHORTS      GUATEMALA                      1             67     719
21-24 months   COHORTS      GUATEMALA                      0            652     719
21-24 months   CONTENT      PERU                           1             36      38
21-24 months   CONTENT      PERU                           0              2      38
21-24 months   LCNI-5       MALAWI                         1              2     405
21-24 months   LCNI-5       MALAWI                         0            403     405
21-24 months   MAL-ED       BANGLADESH                     1            178     207
21-24 months   MAL-ED       BANGLADESH                     0             29     207
21-24 months   MAL-ED       BRAZIL                         1            162     165
21-24 months   MAL-ED       BRAZIL                         0              3     165
21-24 months   MAL-ED       INDIA                          1            103     224
21-24 months   MAL-ED       INDIA                          0            121     224
21-24 months   MAL-ED       NEPAL                          1            226     227
21-24 months   MAL-ED       NEPAL                          0              1     227
21-24 months   MAL-ED       PERU                           1             47     184
21-24 months   MAL-ED       PERU                           0            137     184
21-24 months   MAL-ED       SOUTH AFRICA                   1              4     232
21-24 months   MAL-ED       SOUTH AFRICA                   0            228     232
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     198
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            198     198
21-24 months   NIH-Birth    BANGLADESH                     1            163     411
21-24 months   NIH-Birth    BANGLADESH                     0            248     411
21-24 months   NIH-Crypto   BANGLADESH                     1            409     479
21-24 months   NIH-Crypto   BANGLADESH                     0             70     479
21-24 months   PROVIDE      BANGLADESH                     1              8       8
21-24 months   PROVIDE      BANGLADESH                     0              0       8


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: CONTENT, country: PERU
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: CONTENT, country: PERU
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/05a6114b-8e93-4266-9a9a-2036ef09d861/6d95fe80-07a3-4827-99a0-a9532ac7bf88/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/05a6114b-8e93-4266-9a9a-2036ef09d861/6d95fe80-07a3-4827-99a0-a9532ac7bf88/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/05a6114b-8e93-4266-9a9a-2036ef09d861/6d95fe80-07a3-4827-99a0-a9532ac7bf88/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS      GUATEMALA    1                    NA                2.5772755   2.3838741   2.7706769
0-3 months     COHORTS      GUATEMALA    0                    NA                2.6229749   2.5655294   2.6804204
0-3 months     COHORTS      INDIA        1                    NA                3.5135057   3.4846903   3.5423211
0-3 months     COHORTS      INDIA        0                    NA                3.4783502   3.4563241   3.5003763
0-3 months     JiVitA-3     BANGLADESH   1                    NA                3.7259894   3.7134279   3.7385509
0-3 months     JiVitA-3     BANGLADESH   0                    NA                3.7002521   3.6785581   3.7219460
0-3 months     JiVitA-4     BANGLADESH   1                    NA                3.6471002   3.6112366   3.6829638
0-3 months     JiVitA-4     BANGLADESH   0                    NA                3.6380365   3.5610160   3.7150571
0-3 months     MAL-ED       BANGLADESH   1                    NA                3.3414459   3.2730713   3.4098204
0-3 months     MAL-ED       BANGLADESH   0                    NA                3.3746223   3.1691110   3.5801337
0-3 months     MAL-ED       INDIA        1                    NA                3.2922700   3.1632310   3.4213089
0-3 months     MAL-ED       INDIA        0                    NA                3.3345949   3.2067412   3.4624487
0-3 months     MAL-ED       PERU         1                    NA                3.0837846   2.9194159   3.2481533
0-3 months     MAL-ED       PERU         0                    NA                3.0658729   2.9902456   3.1415001
0-3 months     NIH-Birth    BANGLADESH   1                    NA                3.1260446   3.0357136   3.2163755
0-3 months     NIH-Birth    BANGLADESH   0                    NA                3.0995779   3.0337458   3.1654101
0-3 months     NIH-Crypto   BANGLADESH   1                    NA                3.1433969   3.1040133   3.1827806
0-3 months     NIH-Crypto   BANGLADESH   0                    NA                3.0611192   2.9605259   3.1617124
3-6 months     COHORTS      GUATEMALA    1                    NA                1.7725827   1.6505656   1.8945998
3-6 months     COHORTS      GUATEMALA    0                    NA                1.7465730   1.7060640   1.7870820
3-6 months     COHORTS      INDIA        1                    NA                1.8727507   1.8490118   1.8964895
3-6 months     COHORTS      INDIA        0                    NA                1.8454463   1.8270005   1.8638921
3-6 months     CONTENT      PERU         1                    NA                2.0891694   2.0397846   2.1385542
3-6 months     CONTENT      PERU         0                    NA                1.7957696   1.6079158   1.9836234
3-6 months     JiVitA-3     BANGLADESH   1                    NA                1.9212811   1.9084666   1.9340955
3-6 months     JiVitA-3     BANGLADESH   0                    NA                1.9197664   1.8960625   1.9434703
3-6 months     JiVitA-4     BANGLADESH   1                    NA                1.8968979   1.8630891   1.9307066
3-6 months     JiVitA-4     BANGLADESH   0                    NA                1.8859380   1.8272071   1.9446690
3-6 months     MAL-ED       BANGLADESH   1                    NA                1.9445872   1.8895380   1.9996363
3-6 months     MAL-ED       BANGLADESH   0                    NA                1.8460730   1.7150299   1.9771162
3-6 months     MAL-ED       INDIA        1                    NA                1.9101186   1.8216297   1.9986074
3-6 months     MAL-ED       INDIA        0                    NA                1.8574569   1.7727574   1.9421565
3-6 months     MAL-ED       PERU         1                    NA                1.9133896   1.7713263   2.0554529
3-6 months     MAL-ED       PERU         0                    NA                2.0455042   1.9702174   2.1207910
3-6 months     NIH-Birth    BANGLADESH   1                    NA                1.8450645   1.7591137   1.9310153
3-6 months     NIH-Birth    BANGLADESH   0                    NA                1.8273341   1.7679193   1.8867489
3-6 months     NIH-Crypto   BANGLADESH   1                    NA                1.9918597   1.9537140   2.0300055
3-6 months     NIH-Crypto   BANGLADESH   0                    NA                2.0820150   1.9730596   2.1909704
6-9 months     COHORTS      GUATEMALA    1                    NA                1.2557698   1.1329945   1.3785452
6-9 months     COHORTS      GUATEMALA    0                    NA                1.1010797   1.0672111   1.1349484
6-9 months     COHORTS      INDIA        1                    NA                1.1691139   1.1438275   1.1944004
6-9 months     COHORTS      INDIA        0                    NA                1.1880303   1.1710239   1.2050367
6-9 months     CONTENT      PERU         1                    NA                1.4004163   1.3511822   1.4496505
6-9 months     CONTENT      PERU         0                    NA                1.3513596   1.1676402   1.5350790
6-9 months     JiVitA-4     BANGLADESH   1                    NA                1.3287855   1.3041679   1.3534030
6-9 months     JiVitA-4     BANGLADESH   0                    NA                1.3144274   1.2577511   1.3711038
6-9 months     MAL-ED       BANGLADESH   1                    NA                1.2463001   1.2033815   1.2892187
6-9 months     MAL-ED       BANGLADESH   0                    NA                1.2567628   1.1502820   1.3632436
6-9 months     MAL-ED       INDIA        1                    NA                1.3232158   1.2510879   1.3953437
6-9 months     MAL-ED       INDIA        0                    NA                1.2022229   1.1369839   1.2674618
6-9 months     MAL-ED       PERU         1                    NA                1.2555777   1.1455556   1.3655999
6-9 months     MAL-ED       PERU         0                    NA                1.3480444   1.2813035   1.4147853
6-9 months     NIH-Birth    BANGLADESH   1                    NA                1.3137135   1.2398635   1.3875636
6-9 months     NIH-Birth    BANGLADESH   0                    NA                1.2191912   1.1695230   1.2688594
6-9 months     NIH-Crypto   BANGLADESH   1                    NA                1.3269980   1.2946949   1.3593011
6-9 months     NIH-Crypto   BANGLADESH   0                    NA                1.3396271   1.2671133   1.4121410
9-12 months    COHORTS      GUATEMALA    1                    NA                0.9982870   0.8943934   1.1021806
9-12 months    COHORTS      GUATEMALA    0                    NA                0.9391547   0.9087735   0.9695358
9-12 months    COHORTS      INDIA        1                    NA                1.0128147   0.9884015   1.0372280
9-12 months    COHORTS      INDIA        0                    NA                0.9685215   0.9496164   0.9874265
9-12 months    CONTENT      PERU         1                    NA                1.2085592   1.1670278   1.2500907
9-12 months    CONTENT      PERU         0                    NA                1.1547705   1.0158113   1.2937296
9-12 months    JiVitA-4     BANGLADESH   1                    NA                1.0752719   1.0534987   1.0970451
9-12 months    JiVitA-4     BANGLADESH   0                    NA                1.0525121   1.0109167   1.0941074
9-12 months    MAL-ED       BANGLADESH   1                    NA                0.9915083   0.9499133   1.0331034
9-12 months    MAL-ED       BANGLADESH   0                    NA                0.9586633   0.8470505   1.0702761
9-12 months    MAL-ED       INDIA        1                    NA                1.0020614   0.9498316   1.0542912
9-12 months    MAL-ED       INDIA        0                    NA                0.9613347   0.9049183   1.0177510
9-12 months    MAL-ED       PERU         1                    NA                1.1841228   1.0656902   1.3025554
9-12 months    MAL-ED       PERU         0                    NA                1.0668082   1.0042053   1.1294111
9-12 months    NIH-Birth    BANGLADESH   1                    NA                1.0789739   1.0243637   1.1335842
9-12 months    NIH-Birth    BANGLADESH   0                    NA                1.0946778   1.0489599   1.1403957
9-12 months    NIH-Crypto   BANGLADESH   1                    NA                1.1241230   1.0949793   1.1532668
9-12 months    NIH-Crypto   BANGLADESH   0                    NA                1.1508841   1.0903640   1.2114041
12-15 months   COHORTS      GUATEMALA    1                    NA                0.8208718   0.6902848   0.9514588
12-15 months   COHORTS      GUATEMALA    0                    NA                0.7925945   0.7607082   0.8244808
12-15 months   CONTENT      PERU         1                    NA                0.9354964   0.8915661   0.9794268
12-15 months   CONTENT      PERU         0                    NA                0.8031844   0.6256284   0.9807405
12-15 months   JiVitA-4     BANGLADESH   1                    NA                0.9435671   0.9256594   0.9614748
12-15 months   JiVitA-4     BANGLADESH   0                    NA                0.9068781   0.8704674   0.9432887
12-15 months   MAL-ED       BANGLADESH   1                    NA                0.9218224   0.8765347   0.9671101
12-15 months   MAL-ED       BANGLADESH   0                    NA                0.8755376   0.7970381   0.9540370
12-15 months   MAL-ED       INDIA        1                    NA                0.9427413   0.8861570   0.9993256
12-15 months   MAL-ED       INDIA        0                    NA                0.8858129   0.8339180   0.9377078
12-15 months   MAL-ED       PERU         1                    NA                0.8442130   0.7435894   0.9448365
12-15 months   MAL-ED       PERU         0                    NA                0.9022439   0.8454718   0.9590160
12-15 months   NIH-Birth    BANGLADESH   1                    NA                0.7534779   0.6905807   0.8163751
12-15 months   NIH-Birth    BANGLADESH   0                    NA                0.7049528   0.6446245   0.7652812
12-15 months   NIH-Crypto   BANGLADESH   1                    NA                0.9775659   0.9510239   1.0041079
12-15 months   NIH-Crypto   BANGLADESH   0                    NA                0.9265564   0.8551265   0.9979864
15-18 months   COHORTS      GUATEMALA    1                    NA                0.7178472   0.5591121   0.8765824
15-18 months   COHORTS      GUATEMALA    0                    NA                0.7305611   0.6957714   0.7653508
15-18 months   CONTENT      PERU         1                    NA                0.9952431   0.9483724   1.0421138
15-18 months   CONTENT      PERU         0                    NA                0.8429659   0.5811177   1.1048140
15-18 months   JiVitA-4     BANGLADESH   1                    NA                0.8687739   0.8498465   0.8877013
15-18 months   JiVitA-4     BANGLADESH   0                    NA                0.8692934   0.8283043   0.9102826
15-18 months   MAL-ED       BANGLADESH   1                    NA                0.8159892   0.7756257   0.8563528
15-18 months   MAL-ED       BANGLADESH   0                    NA                0.8712007   0.7788972   0.9635042
15-18 months   MAL-ED       INDIA        1                    NA                0.8231794   0.7736719   0.8726869
15-18 months   MAL-ED       INDIA        0                    NA                0.8630726   0.8097379   0.9164073
15-18 months   MAL-ED       PERU         1                    NA                0.9013480   0.7994436   1.0032524
15-18 months   MAL-ED       PERU         0                    NA                0.8450226   0.7974663   0.8925789
15-18 months   NIH-Birth    BANGLADESH   1                    NA                0.7687418   0.7051272   0.8323563
15-18 months   NIH-Birth    BANGLADESH   0                    NA                0.7712976   0.7190755   0.8235197
15-18 months   NIH-Crypto   BANGLADESH   1                    NA                0.9165918   0.8920232   0.9411604
15-18 months   NIH-Crypto   BANGLADESH   0                    NA                0.9172991   0.8485864   0.9860118
18-21 months   COHORTS      GUATEMALA    1                    NA                0.7134713   0.5860669   0.8408757
18-21 months   COHORTS      GUATEMALA    0                    NA                0.7509150   0.7156289   0.7862012
18-21 months   CONTENT      PERU         1                    NA                0.9175341   0.8720044   0.9630637
18-21 months   CONTENT      PERU         0                    NA                0.8702637   0.6632337   1.0772938
18-21 months   MAL-ED       BANGLADESH   1                    NA                0.8267535   0.7903016   0.8632055
18-21 months   MAL-ED       BANGLADESH   0                    NA                0.7305710   0.6251941   0.8359479
18-21 months   MAL-ED       INDIA        1                    NA                0.9222491   0.8715512   0.9729469
18-21 months   MAL-ED       INDIA        0                    NA                0.8442648   0.7947635   0.8937661
18-21 months   MAL-ED       PERU         1                    NA                0.8987132   0.8053945   0.9920319
18-21 months   MAL-ED       PERU         0                    NA                0.8135474   0.7612951   0.8657998
18-21 months   NIH-Birth    BANGLADESH   1                    NA                0.7264463   0.6682661   0.7846264
18-21 months   NIH-Birth    BANGLADESH   0                    NA                0.7294508   0.6821251   0.7767764
18-21 months   NIH-Crypto   BANGLADESH   1                    NA                0.7960887   0.7704478   0.8217295
18-21 months   NIH-Crypto   BANGLADESH   0                    NA                0.8093482   0.7476930   0.8710035
21-24 months   COHORTS      GUATEMALA    1                    NA                0.6580625   0.5121532   0.8039718
21-24 months   COHORTS      GUATEMALA    0                    NA                0.6749039   0.6470403   0.7027676
21-24 months   MAL-ED       BANGLADESH   1                    NA                0.7675469   0.7296941   0.8053996
21-24 months   MAL-ED       BANGLADESH   0                    NA                0.7969522   0.6919128   0.9019915
21-24 months   MAL-ED       INDIA        1                    NA                0.8131780   0.7721363   0.8542196
21-24 months   MAL-ED       INDIA        0                    NA                0.8405453   0.7947109   0.8863797
21-24 months   MAL-ED       PERU         1                    NA                0.6951182   0.6055646   0.7846717
21-24 months   MAL-ED       PERU         0                    NA                0.7755929   0.7217497   0.8294362
21-24 months   NIH-Birth    BANGLADESH   1                    NA                0.7010082   0.6472643   0.7547520
21-24 months   NIH-Birth    BANGLADESH   0                    NA                0.7271912   0.6806987   0.7736837
21-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.7957924   0.7689676   0.8226171
21-24 months   NIH-Crypto   BANGLADESH   0                    NA                0.8317694   0.7611171   0.9024216


### Parameter: E(Y)


agecat         studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS      GUATEMALA    NA                   NA                2.6177358   2.5631597   2.6723119
0-3 months     COHORTS      INDIA        NA                   NA                3.4938034   3.4771179   3.5104888
0-3 months     JiVitA-3     BANGLADESH   NA                   NA                3.7233638   3.7130612   3.7336665
0-3 months     JiVitA-4     BANGLADESH   NA                   NA                3.6386177   3.6075243   3.6697112
0-3 months     MAL-ED       BANGLADESH   NA                   NA                3.3470101   3.2814494   3.4125709
0-3 months     MAL-ED       INDIA        NA                   NA                3.3257529   3.2359780   3.4155278
0-3 months     MAL-ED       PERU         NA                   NA                3.0728777   3.0062000   3.1395554
0-3 months     NIH-Birth    BANGLADESH   NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     NIH-Crypto   BANGLADESH   NA                   NA                3.1335342   3.0968946   3.1701738
3-6 months     COHORTS      GUATEMALA    NA                   NA                1.7541195   1.7166655   1.7915734
3-6 months     COHORTS      INDIA        NA                   NA                1.8572103   1.8432112   1.8712094
3-6 months     CONTENT      PERU         NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     JiVitA-3     BANGLADESH   NA                   NA                1.9202191   1.9097529   1.9306852
3-6 months     JiVitA-4     BANGLADESH   NA                   NA                1.8987567   1.8688242   1.9286892
3-6 months     MAL-ED       BANGLADESH   NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     MAL-ED       INDIA        NA                   NA                1.8780654   1.8173074   1.9388233
3-6 months     MAL-ED       PERU         NA                   NA                2.0175680   1.9512051   2.0839310
3-6 months     NIH-Birth    BANGLADESH   NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     NIH-Crypto   BANGLADESH   NA                   NA                2.0027540   1.9667312   2.0387768
6-9 months     COHORTS      GUATEMALA    NA                   NA                1.1046168   1.0728025   1.1364310
6-9 months     COHORTS      INDIA        NA                   NA                1.1818282   1.1689263   1.1947301
6-9 months     CONTENT      PERU         NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     JiVitA-4     BANGLADESH   NA                   NA                1.3241671   1.3034835   1.3448507
6-9 months     MAL-ED       BANGLADESH   NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     MAL-ED       INDIA        NA                   NA                1.2581259   1.2101884   1.3060633
6-9 months     MAL-ED       PERU         NA                   NA                1.3204373   1.2649539   1.3759207
6-9 months     NIH-Birth    BANGLADESH   NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     NIH-Crypto   BANGLADESH   NA                   NA                1.3277672   1.2982110   1.3573234
9-12 months    COHORTS      GUATEMALA    NA                   NA                0.9427431   0.9140297   0.9714566
9-12 months    COHORTS      INDIA        NA                   NA                0.9844431   0.9705367   0.9983496
9-12 months    CONTENT      PERU         NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    JiVitA-4     BANGLADESH   NA                   NA                1.0714466   1.0534634   1.0894298
9-12 months    MAL-ED       BANGLADESH   NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    MAL-ED       INDIA        NA                   NA                0.9810598   0.9425271   1.0195925
9-12 months    MAL-ED       PERU         NA                   NA                1.0938158   1.0421876   1.1454440
9-12 months    NIH-Birth    BANGLADESH   NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    NIH-Crypto   BANGLADESH   NA                   NA                1.1253061   1.0988172   1.1517949
12-15 months   COHORTS      GUATEMALA    NA                   NA                0.7899732   0.7616006   0.8183457
12-15 months   CONTENT      PERU         NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   JiVitA-4     BANGLADESH   NA                   NA                0.9414130   0.9256041   0.9572219
12-15 months   MAL-ED       BANGLADESH   NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   MAL-ED       INDIA        NA                   NA                0.9129447   0.8748557   0.9510337
12-15 months   MAL-ED       PERU         NA                   NA                0.8895957   0.8424004   0.9367911
12-15 months   NIH-Birth    BANGLADESH   NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   NIH-Crypto   BANGLADESH   NA                   NA                0.9714857   0.9466423   0.9963290
15-18 months   COHORTS      GUATEMALA    NA                   NA                0.7357057   0.7024388   0.7689726
15-18 months   CONTENT      PERU         NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   JiVitA-4     BANGLADESH   NA                   NA                0.8599047   0.8433807   0.8764287
15-18 months   MAL-ED       BANGLADESH   NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   MAL-ED       INDIA        NA                   NA                0.8461081   0.8096109   0.8826053
15-18 months   MAL-ED       PERU         NA                   NA                0.8582871   0.8154498   0.9011244
15-18 months   NIH-Birth    BANGLADESH   NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   NIH-Crypto   BANGLADESH   NA                   NA                0.9162288   0.8930973   0.9393604
18-21 months   COHORTS      GUATEMALA    NA                   NA                0.7453230   0.7139167   0.7767294
18-21 months   CONTENT      PERU         NA                   NA                0.9146338   0.8709588   0.9583088
18-21 months   MAL-ED       BANGLADESH   NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   MAL-ED       INDIA        NA                   NA                0.8786990   0.8431802   0.9142178
18-21 months   MAL-ED       PERU         NA                   NA                0.8405408   0.7957138   0.8853678
18-21 months   NIH-Birth    BANGLADESH   NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   NIH-Crypto   BANGLADESH   NA                   NA                0.7977951   0.7741689   0.8214214
21-24 months   COHORTS      GUATEMALA    NA                   NA                0.6771703   0.6513485   0.7029921
21-24 months   MAL-ED       BANGLADESH   NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   MAL-ED       INDIA        NA                   NA                0.8256267   0.7945621   0.8566913
21-24 months   MAL-ED       PERU         NA                   NA                0.7622936   0.7156467   0.8089404
21-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.8010871   0.7761614   0.8260128


### Parameter: ATE


agecat         studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS      GUATEMALA    0                    1                  0.0456994   -0.1569872    0.2483860
0-3 months     COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS      INDIA        0                    1                 -0.0351555   -0.0708888    0.0005779
0-3 months     JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3     BANGLADESH   0                    1                 -0.0257373   -0.0487374   -0.0027373
0-3 months     JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4     BANGLADESH   0                    1                 -0.0090637   -0.0944901    0.0763627
0-3 months     MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BANGLADESH   0                    1                  0.0331765   -0.1834326    0.2497856
0-3 months     MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       INDIA        0                    1                  0.0423250   -0.1406690    0.2253190
0-3 months     MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU         0                    1                 -0.0179117   -0.1990123    0.1631889
0-3 months     NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH   0                    1                 -0.0264666   -0.1377892    0.0848559
0-3 months     NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH   0                    1                 -0.0822778   -0.1903355    0.0257799
3-6 months     COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS      GUATEMALA    0                    1                 -0.0260097   -0.1549739    0.1029545
3-6 months     COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS      INDIA        0                    1                 -0.0273044   -0.0572158    0.0026071
3-6 months     CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CONTENT      PERU         0                    1                 -0.2933999   -0.4883154   -0.0984843
3-6 months     JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3     BANGLADESH   0                    1                 -0.0015146   -0.0278516    0.0248223
3-6 months     JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4     BANGLADESH   0                    1                 -0.0109598   -0.0790361    0.0571165
3-6 months     MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BANGLADESH   0                    1                 -0.0985141   -0.2411226    0.0440944
3-6 months     MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA        0                    1                 -0.0526616   -0.1751973    0.0698741
3-6 months     MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU         0                    1                  0.1321146   -0.0290434    0.2932727
3-6 months     NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH   0                    1                 -0.0177304   -0.1220671    0.0866063
3-6 months     NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH   0                    1                  0.0901553   -0.0250534    0.2053639
6-9 months     COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS      GUATEMALA    0                    1                 -0.1546901   -0.2822749   -0.0271053
6-9 months     COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS      INDIA        0                    1                  0.0189163   -0.0115031    0.0493358
6-9 months     CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CONTENT      PERU         0                    1                 -0.0490567   -0.2394977    0.1413843
6-9 months     JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4     BANGLADESH   0                    1                 -0.0143580   -0.0755549    0.0468388
6-9 months     MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BANGLADESH   0                    1                  0.0104627   -0.1046761    0.1256016
6-9 months     MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA        0                    1                 -0.1209929   -0.2191589   -0.0228269
6-9 months     MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU         0                    1                  0.0924667   -0.0365165    0.2214499
6-9 months     NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH   0                    1                 -0.0945223   -0.1843006   -0.0047440
6-9 months     NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH   0                    1                  0.0126292   -0.0669920    0.0922504
9-12 months    COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS      GUATEMALA    0                    1                 -0.0591323   -0.1674716    0.0492069
9-12 months    COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS      INDIA        0                    1                 -0.0442933   -0.0750987   -0.0134879
9-12 months    CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CONTENT      PERU         0                    1                 -0.0537888   -0.1987366    0.0911590
9-12 months    JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4     BANGLADESH   0                    1                 -0.0227598   -0.0696720    0.0241523
9-12 months    MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BANGLADESH   0                    1                 -0.0328450   -0.1520078    0.0863177
9-12 months    MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA        0                    1                 -0.0407267   -0.1178071    0.0363537
9-12 months    MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU         0                    1                 -0.1173146   -0.2514565    0.0168273
9-12 months    NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH   0                    1                  0.0157039   -0.0549346    0.0863423
9-12 months    NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH   0                    1                  0.0267610   -0.0404290    0.0939511
12-15 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS      GUATEMALA    0                    1                 -0.0282773   -0.1628133    0.1062587
12-15 months   CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CONTENT      PERU         0                    1                 -0.1323120   -0.3151297    0.0505057
12-15 months   JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4     BANGLADESH   0                    1                 -0.0366890   -0.0766958    0.0033179
12-15 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BANGLADESH   0                    1                 -0.0462849   -0.1369502    0.0443805
12-15 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA        0                    1                 -0.0569284   -0.1341217    0.0202649
12-15 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU         0                    1                  0.0580309   -0.0578109    0.1738727
12-15 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH   0                    1                 -0.0485251   -0.1367158    0.0396656
12-15 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH   0                    1                 -0.0510095   -0.1268902    0.0248713
15-18 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS      GUATEMALA    0                    1                  0.0127139   -0.1498330    0.1752608
15-18 months   CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CONTENT      PERU         0                    1                 -0.1522773   -0.4181142    0.1135597
15-18 months   JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4     BANGLADESH   0                    1                  0.0005195   -0.0442298    0.0452688
15-18 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BANGLADESH   0                    1                  0.0552114   -0.0456716    0.1560944
15-18 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA        0                    1                  0.0398932   -0.0327889    0.1125753
15-18 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU         0                    1                 -0.0563254   -0.1690239    0.0563731
15-18 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH   0                    1                  0.0025558   -0.0799270    0.0850386
15-18 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH   0                    1                  0.0007073   -0.0723938    0.0738083
18-21 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS      GUATEMALA    0                    1                  0.0374437   -0.0947344    0.1696218
18-21 months   CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CONTENT      PERU         0                    1                 -0.0472703   -0.2596369    0.1650963
18-21 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BANGLADESH   0                    1                 -0.0961825   -0.2078298    0.0154648
18-21 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA        0                    1                 -0.0779843   -0.1488500   -0.0071185
18-21 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU         0                    1                 -0.0851658   -0.1927274    0.0223959
18-21 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH   0                    1                  0.0030045   -0.0724776    0.0784866
18-21 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH   0                    1                  0.0132596   -0.0533411    0.0798603
21-24 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS      GUATEMALA    0                    1                  0.0168414   -0.1317894    0.1654722
21-24 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BANGLADESH   0                    1                  0.0294053   -0.0826353    0.1414459
21-24 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA        0                    1                  0.0273673   -0.0343868    0.0891214
21-24 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU         0                    1                  0.0804748   -0.0237698    0.1847194
21-24 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH   0                    1                  0.0261830   -0.0447502    0.0971163
21-24 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH   0                    1                  0.0359770   -0.0397801    0.1117341


### Parameter: PAR


agecat         studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS      GUATEMALA    1                    NA                 0.0404603   -0.1445730    0.2254935
0-3 months     COHORTS      INDIA        1                    NA                -0.0197023   -0.0434750    0.0040703
0-3 months     JiVitA-3     BANGLADESH   1                    NA                -0.0026256   -0.0096565    0.0044053
0-3 months     JiVitA-4     BANGLADESH   1                    NA                -0.0084825   -0.0268972    0.0099322
0-3 months     MAL-ED       BANGLADESH   1                    NA                 0.0055643   -0.0265085    0.0376370
0-3 months     MAL-ED       INDIA        1                    NA                 0.0334829   -0.0672520    0.1342178
0-3 months     MAL-ED       PERU         1                    NA                -0.0109068   -0.1531651    0.1313514
0-3 months     NIH-Birth    BANGLADESH   1                    NA                -0.0160330   -0.0845708    0.0525048
0-3 months     NIH-Crypto   BANGLADESH   1                    NA                -0.0098627   -0.0221981    0.0024726
3-6 months     COHORTS      GUATEMALA    1                    NA                -0.0184632   -0.1373173    0.1003908
3-6 months     COHORTS      INDIA        1                    NA                -0.0155404   -0.0351658    0.0040850
3-6 months     CONTENT      PERU         1                    NA                -0.0049853   -0.0194234    0.0094527
3-6 months     JiVitA-3     BANGLADESH   1                    NA                -0.0010620   -0.0083783    0.0062543
3-6 months     JiVitA-4     BANGLADESH   1                    NA                 0.0018588   -0.0149531    0.0186707
3-6 months     MAL-ED       BANGLADESH   1                    NA                -0.0169464   -0.0392376    0.0053447
3-6 months     MAL-ED       INDIA        1                    NA                -0.0320532   -0.0981458    0.0340394
3-6 months     MAL-ED       PERU         1                    NA                 0.1041785   -0.0228426    0.2311995
3-6 months     NIH-Birth    BANGLADESH   1                    NA                -0.0123730   -0.0787275    0.0539815
3-6 months     NIH-Crypto   BANGLADESH   1                    NA                 0.0108943   -0.0026083    0.0243969
6-9 months     COHORTS      GUATEMALA    1                    NA                -0.1511531   -0.2710454   -0.0312607
6-9 months     COHORTS      INDIA        1                    NA                 0.0127143   -0.0084381    0.0338667
6-9 months     CONTENT      PERU         1                    NA                -0.0029927   -0.0143127    0.0083273
6-9 months     JiVitA-4     BANGLADESH   1                    NA                -0.0046183   -0.0160811    0.0068445
6-9 months     MAL-ED       BANGLADESH   1                    NA                 0.0017450   -0.0171214    0.0206114
6-9 months     MAL-ED       INDIA        1                    NA                -0.0650899   -0.1190680   -0.0111118
6-9 months     MAL-ED       PERU         1                    NA                 0.0648596   -0.0381334    0.1678527
6-9 months     NIH-Birth    BANGLADESH   1                    NA                -0.0581185   -0.1144312   -0.0018058
6-9 months     NIH-Crypto   BANGLADESH   1                    NA                 0.0007693   -0.0096086    0.0111471
9-12 months    COHORTS      GUATEMALA    1                    NA                -0.0555439   -0.1570448    0.0459570
9-12 months    COHORTS      INDIA        1                    NA                -0.0283716   -0.0486153   -0.0081279
9-12 months    CONTENT      PERU         1                    NA                -0.0036824   -0.0133579    0.0059930
9-12 months    JiVitA-4     BANGLADESH   1                    NA                -0.0038253   -0.0143541    0.0067034
9-12 months    MAL-ED       BANGLADESH   1                    NA                -0.0018638   -0.0189552    0.0152276
9-12 months    MAL-ED       INDIA        1                    NA                -0.0210016   -0.0627538    0.0207506
9-12 months    MAL-ED       PERU         1                    NA                -0.0903070   -0.1986787    0.0180646
9-12 months    NIH-Birth    BANGLADESH   1                    NA                 0.0096069   -0.0334931    0.0527070
9-12 months    NIH-Crypto   BANGLADESH   1                    NA                 0.0011830   -0.0077767    0.0101427
12-15 months   COHORTS      GUATEMALA    1                    NA                -0.0308986   -0.1585580    0.0967607
12-15 months   CONTENT      PERU         1                    NA                -0.0063521   -0.0172759    0.0045717
12-15 months   JiVitA-4     BANGLADESH   1                    NA                -0.0021541   -0.0111848    0.0068766
12-15 months   MAL-ED       BANGLADESH   1                    NA                -0.0077220   -0.0218830    0.0064390
12-15 months   MAL-ED       INDIA        1                    NA                -0.0297966   -0.0717586    0.0121654
12-15 months   MAL-ED       PERU         1                    NA                 0.0453828   -0.0452968    0.1360623
12-15 months   NIH-Birth    BANGLADESH   1                    NA                -0.0293157   -0.0849272    0.0262959
12-15 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0060803   -0.0155405    0.0033800
15-18 months   COHORTS      GUATEMALA    1                    NA                 0.0178585   -0.1348168    0.1705339
15-18 months   CONTENT      PERU         1                    NA                -0.0092200   -0.0225252    0.0040853
15-18 months   JiVitA-4     BANGLADESH   1                    NA                -0.0088692   -0.0176524   -0.0000860
15-18 months   MAL-ED       BANGLADESH   1                    NA                 0.0081333   -0.0067734    0.0230400
15-18 months   MAL-ED       INDIA        1                    NA                 0.0229287   -0.0162507    0.0621082
15-18 months   MAL-ED       PERU         1                    NA                -0.0430609   -0.1310234    0.0449015
15-18 months   NIH-Birth    BANGLADESH   1                    NA                 0.0040301   -0.0460031    0.0540634
15-18 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0003630   -0.0104098    0.0096837
18-21 months   COHORTS      GUATEMALA    1                    NA                 0.0318517   -0.0923636    0.1560671
18-21 months   CONTENT      PERU         1                    NA                -0.0029003   -0.0133107    0.0075101
18-21 months   MAL-ED       BANGLADESH   1                    NA                -0.0133688   -0.0287924    0.0020549
18-21 months   MAL-ED       INDIA        1                    NA                -0.0435500   -0.0823210   -0.0047791
18-21 months   MAL-ED       PERU         1                    NA                -0.0581724   -0.1421263    0.0257815
18-21 months   NIH-Birth    BANGLADESH   1                    NA                 0.0027006   -0.0429658    0.0483670
18-21 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0017065   -0.0068117    0.0102246
21-24 months   COHORTS      GUATEMALA    1                    NA                 0.0191078   -0.1231500    0.1613656
21-24 months   MAL-ED       BANGLADESH   1                    NA                 0.0018714   -0.0133808    0.0171236
21-24 months   MAL-ED       INDIA        1                    NA                 0.0124487   -0.0210362    0.0459337
21-24 months   MAL-ED       PERU         1                    NA                 0.0671754   -0.0126245    0.1469754
21-24 months   NIH-Birth    BANGLADESH   1                    NA                 0.0162096   -0.0267722    0.0591914
21-24 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0052947   -0.0053674    0.0159569
