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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

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



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/c4d04af7-694a-4bf3-96ae-5fb5964ca1e8/8cf29e8f-e9b6-48e5-90a5-c2f146d81e9f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c4d04af7-694a-4bf3-96ae-5fb5964ca1e8/8cf29e8f-e9b6-48e5-90a5-c2f146d81e9f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c4d04af7-694a-4bf3-96ae-5fb5964ca1e8/8cf29e8f-e9b6-48e5-90a5-c2f146d81e9f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS      GUATEMALA    1                    NA                -0.5386737   -0.6305724   -0.4467749
0-3 months     COHORTS      GUATEMALA    0                    NA                -0.5108859   -0.5397752   -0.4819967
0-3 months     COHORTS      INDIA        1                    NA                -0.0478891   -0.0610751   -0.0347032
0-3 months     COHORTS      INDIA        0                    NA                -0.0811411   -0.0914890   -0.0707932
0-3 months     JiVitA-3     BANGLADESH   1                    NA                 0.0812824    0.0758171    0.0867477
0-3 months     JiVitA-3     BANGLADESH   0                    NA                 0.0583986    0.0500767    0.0667205
0-3 months     JiVitA-4     BANGLADESH   1                    NA                 0.0732407    0.0563678    0.0901135
0-3 months     JiVitA-4     BANGLADESH   0                    NA                 0.0481490    0.0149225    0.0813754
0-3 months     MAL-ED       BANGLADESH   1                    NA                -0.1219567   -0.1572334   -0.0866801
0-3 months     MAL-ED       BANGLADESH   0                    NA                -0.0946050   -0.1943715    0.0051614
0-3 months     MAL-ED       INDIA        1                    NA                -0.0741122   -0.1392504   -0.0089740
0-3 months     MAL-ED       INDIA        0                    NA                -0.0701212   -0.1358761   -0.0043663
0-3 months     MAL-ED       PERU         1                    NA                -0.2631009   -0.3401013   -0.1861005
0-3 months     MAL-ED       PERU         0                    NA                -0.2491775   -0.2868915   -0.2114634
0-3 months     NIH-Birth    BANGLADESH   1                    NA                -0.2294711   -0.2747531   -0.1841890
0-3 months     NIH-Birth    BANGLADESH   0                    NA                -0.2335622   -0.2662345   -0.2008899
0-3 months     NIH-Crypto   BANGLADESH   1                    NA                -0.2251934   -0.2442199   -0.2061669
0-3 months     NIH-Crypto   BANGLADESH   0                    NA                -0.2595593   -0.3021831   -0.2169355
3-6 months     COHORTS      GUATEMALA    1                    NA                -0.0834351   -0.1281638   -0.0387064
3-6 months     COHORTS      GUATEMALA    0                    NA                -0.0991294   -0.1184209   -0.0798380
3-6 months     COHORTS      INDIA        1                    NA                -0.0480776   -0.0585274   -0.0376277
3-6 months     COHORTS      INDIA        0                    NA                -0.0721335   -0.0803110   -0.0639561
3-6 months     CONTENT      PERU         1                    NA                 0.0199494   -0.0031014    0.0430002
3-6 months     CONTENT      PERU         0                    NA                -0.0192822   -0.1080692    0.0695048
3-6 months     JiVitA-3     BANGLADESH   1                    NA                -0.0016390   -0.0072115    0.0039336
3-6 months     JiVitA-3     BANGLADESH   0                    NA                -0.0078934   -0.0167336    0.0009469
3-6 months     JiVitA-4     BANGLADESH   1                    NA                -0.0085003   -0.0240692    0.0070686
3-6 months     JiVitA-4     BANGLADESH   0                    NA                -0.0100629   -0.0391643    0.0190384
3-6 months     MAL-ED       BANGLADESH   1                    NA                -0.0144810   -0.0405993    0.0116374
3-6 months     MAL-ED       BANGLADESH   0                    NA                -0.0628681   -0.1155076   -0.0102287
3-6 months     MAL-ED       INDIA        1                    NA                -0.0337684   -0.0752917    0.0077549
3-6 months     MAL-ED       INDIA        0                    NA                -0.0502119   -0.0884786   -0.0119452
3-6 months     MAL-ED       PERU         1                    NA                -0.0254857   -0.0870496    0.0360783
3-6 months     MAL-ED       PERU         0                    NA                 0.0435892    0.0075453    0.0796330
3-6 months     NIH-Birth    BANGLADESH   1                    NA                -0.0448877   -0.0827259   -0.0070496
3-6 months     NIH-Birth    BANGLADESH   0                    NA                -0.0545640   -0.0816565   -0.0274714
3-6 months     NIH-Crypto   BANGLADESH   1                    NA                 0.0191622    0.0015470    0.0367773
3-6 months     NIH-Crypto   BANGLADESH   0                    NA                 0.0689090    0.0196429    0.1181751
6-9 months     COHORTS      GUATEMALA    1                    NA                -0.0889886   -0.1297823   -0.0481949
6-9 months     COHORTS      GUATEMALA    0                    NA                -0.1242590   -0.1390165   -0.1095016
6-9 months     COHORTS      INDIA        1                    NA                -0.1017253   -0.1109893   -0.0924613
6-9 months     COHORTS      INDIA        0                    NA                -0.1007678   -0.1079808   -0.0935549
6-9 months     CONTENT      PERU         1                    NA                -0.0228171   -0.0439407   -0.0016935
6-9 months     CONTENT      PERU         0                    NA                -0.0349835   -0.1094824    0.0395155
6-9 months     JiVitA-4     BANGLADESH   1                    NA                -0.0242858   -0.0348201   -0.0137515
6-9 months     JiVitA-4     BANGLADESH   0                    NA                -0.0455991   -0.0625943   -0.0286039
6-9 months     MAL-ED       BANGLADESH   1                    NA                -0.0709741   -0.0896966   -0.0522516
6-9 months     MAL-ED       BANGLADESH   0                    NA                -0.0653684   -0.1095110   -0.0212258
6-9 months     MAL-ED       INDIA        1                    NA                -0.0411608   -0.0728955   -0.0094262
6-9 months     MAL-ED       INDIA        0                    NA                -0.0852548   -0.1134107   -0.0570988
6-9 months     MAL-ED       PERU         1                    NA                -0.0734500   -0.1152022   -0.0316977
6-9 months     MAL-ED       PERU         0                    NA                -0.0211641   -0.0504731    0.0081448
6-9 months     NIH-Birth    BANGLADESH   1                    NA                -0.0391475   -0.0701259   -0.0081692
6-9 months     NIH-Birth    BANGLADESH   0                    NA                -0.0724683   -0.0939293   -0.0510072
6-9 months     NIH-Crypto   BANGLADESH   1                    NA                -0.0305565   -0.0445916   -0.0165214
6-9 months     NIH-Crypto   BANGLADESH   0                    NA                -0.0379084   -0.0679837   -0.0078332
9-12 months    COHORTS      GUATEMALA    1                    NA                -0.0824793   -0.1165634   -0.0483952
9-12 months    COHORTS      GUATEMALA    0                    NA                -0.0921333   -0.1047005   -0.0795661
9-12 months    COHORTS      INDIA        1                    NA                -0.0785693   -0.0874248   -0.0697137
9-12 months    COHORTS      INDIA        0                    NA                -0.0990315   -0.1063980   -0.0916651
9-12 months    CONTENT      PERU         1                    NA                -0.0221740   -0.0391977   -0.0051504
9-12 months    CONTENT      PERU         0                    NA                -0.0301415   -0.0803501    0.0200671
9-12 months    JiVitA-4     BANGLADESH   1                    NA                -0.0515639   -0.0601919   -0.0429358
9-12 months    JiVitA-4     BANGLADESH   0                    NA                -0.0541676   -0.0687387   -0.0395966
9-12 months    MAL-ED       BANGLADESH   1                    NA                -0.0868955   -0.1045507   -0.0692404
9-12 months    MAL-ED       BANGLADESH   0                    NA                -0.0888874   -0.1289989   -0.0487758
9-12 months    MAL-ED       INDIA        1                    NA                -0.0845356   -0.1060227   -0.0630484
9-12 months    MAL-ED       INDIA        0                    NA                -0.0974554   -0.1205722   -0.0743385
9-12 months    MAL-ED       PERU         1                    NA                -0.0031346   -0.0444210    0.0381518
9-12 months    MAL-ED       PERU         0                    NA                -0.0561988   -0.0812494   -0.0311482
9-12 months    NIH-Birth    BANGLADESH   1                    NA                -0.0436002   -0.0665587   -0.0206417
9-12 months    NIH-Birth    BANGLADESH   0                    NA                -0.0417489   -0.0603412   -0.0231566
9-12 months    NIH-Crypto   BANGLADESH   1                    NA                -0.0341472   -0.0462062   -0.0220883
9-12 months    NIH-Crypto   BANGLADESH   0                    NA                -0.0293351   -0.0556995   -0.0029707
12-15 months   COHORTS      GUATEMALA    1                    NA                -0.0754842   -0.1080889   -0.0428796
12-15 months   COHORTS      GUATEMALA    0                    NA                -0.0864777   -0.0980450   -0.0749104
12-15 months   CONTENT      PERU         1                    NA                -0.0732067   -0.0901086   -0.0563049
12-15 months   CONTENT      PERU         0                    NA                -0.1036964   -0.1603975   -0.0469953
12-15 months   JiVitA-4     BANGLADESH   1                    NA                -0.0439928   -0.0506492   -0.0373363
12-15 months   JiVitA-4     BANGLADESH   0                    NA                -0.0490176   -0.0619488   -0.0360863
12-15 months   MAL-ED       BANGLADESH   1                    NA                -0.0528212   -0.0703242   -0.0353182
12-15 months   MAL-ED       BANGLADESH   0                    NA                -0.0719745   -0.1013776   -0.0425715
12-15 months   MAL-ED       INDIA        1                    NA                -0.0455500   -0.0669301   -0.0241699
12-15 months   MAL-ED       INDIA        0                    NA                -0.0640887   -0.0843937   -0.0437837
12-15 months   MAL-ED       PERU         1                    NA                -0.0740534   -0.1106776   -0.0374292
12-15 months   MAL-ED       PERU         0                    NA                -0.0638428   -0.0847514   -0.0429342
12-15 months   NIH-Birth    BANGLADESH   1                    NA                -0.1165607   -0.1396551   -0.0934663
12-15 months   NIH-Birth    BANGLADESH   0                    NA                -0.1320340   -0.1555421   -0.1085258
12-15 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0352446   -0.0455308   -0.0249584
12-15 months   NIH-Crypto   BANGLADESH   0                    NA                -0.0572567   -0.0835634   -0.0309500
15-18 months   COHORTS      GUATEMALA    1                    NA                -0.0537077   -0.0967935   -0.0106218
15-18 months   COHORTS      GUATEMALA    0                    NA                -0.0587269   -0.0714659   -0.0459880
15-18 months   CONTENT      PERU         1                    NA                -0.0083142   -0.0253512    0.0087228
15-18 months   CONTENT      PERU         0                    NA                -0.0420835   -0.1098010    0.0256340
15-18 months   JiVitA-4     BANGLADESH   1                    NA                -0.0314979   -0.0383641   -0.0246318
15-18 months   JiVitA-4     BANGLADESH   0                    NA                -0.0377911   -0.0494517   -0.0261306
15-18 months   MAL-ED       BANGLADESH   1                    NA                -0.0490135   -0.0637351   -0.0342919
15-18 months   MAL-ED       BANGLADESH   0                    NA                -0.0283326   -0.0611482    0.0044830
15-18 months   MAL-ED       INDIA        1                    NA                -0.0473579   -0.0650938   -0.0296220
15-18 months   MAL-ED       INDIA        0                    NA                -0.0291091   -0.0475197   -0.0106985
15-18 months   MAL-ED       PERU         1                    NA                -0.0171449   -0.0528959    0.0186060
15-18 months   MAL-ED       PERU         0                    NA                -0.0397130   -0.0569144   -0.0225116
15-18 months   NIH-Birth    BANGLADESH   1                    NA                -0.0584913   -0.0818694   -0.0351131
15-18 months   NIH-Birth    BANGLADESH   0                    NA                -0.0571548   -0.0760313   -0.0382783
15-18 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0174651   -0.0263400   -0.0085903
15-18 months   NIH-Crypto   BANGLADESH   0                    NA                -0.0170718   -0.0422146    0.0080710
18-21 months   COHORTS      GUATEMALA    1                    NA                -0.0250942   -0.0580874    0.0078989
18-21 months   COHORTS      GUATEMALA    0                    NA                -0.0203989   -0.0318564   -0.0089414
18-21 months   CONTENT      PERU         1                    NA                -0.0062406   -0.0220606    0.0095793
18-21 months   CONTENT      PERU         0                    NA                -0.0149083   -0.0624039    0.0325873
18-21 months   MAL-ED       BANGLADESH   1                    NA                -0.0107554   -0.0231541    0.0016433
18-21 months   MAL-ED       BANGLADESH   0                    NA                -0.0439618   -0.0750367   -0.0128868
18-21 months   MAL-ED       INDIA        1                    NA                 0.0172794    0.0010257    0.0335332
18-21 months   MAL-ED       INDIA        0                    NA                -0.0043318   -0.0203291    0.0116655
18-21 months   MAL-ED       PERU         1                    NA                 0.0162308   -0.0123764    0.0448380
18-21 months   MAL-ED       PERU         0                    NA                -0.0168319   -0.0346327    0.0009688
18-21 months   NIH-Birth    BANGLADESH   1                    NA                -0.0410769   -0.0605238   -0.0216301
18-21 months   NIH-Birth    BANGLADESH   0                    NA                -0.0365935   -0.0527517   -0.0204353
18-21 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0283936   -0.0372720   -0.0195152
18-21 months   NIH-Crypto   BANGLADESH   0                    NA                -0.0247742   -0.0447159   -0.0048326
21-24 months   COHORTS      GUATEMALA    1                    NA                -0.0036527   -0.0333335    0.0260281
21-24 months   COHORTS      GUATEMALA    0                    NA                -0.0091602   -0.0182511   -0.0000693
21-24 months   MAL-ED       BANGLADESH   1                    NA                 0.0272763    0.0141047    0.0404479
21-24 months   MAL-ED       BANGLADESH   0                    NA                 0.0154408   -0.0159003    0.0467819
21-24 months   MAL-ED       INDIA        1                    NA                 0.0207626    0.0055397    0.0359855
21-24 months   MAL-ED       INDIA        0                    NA                 0.0369471    0.0212799    0.0526143
21-24 months   MAL-ED       PERU         1                    NA                 0.0420277    0.0135376    0.0705179
21-24 months   MAL-ED       PERU         0                    NA                 0.0628444    0.0450147    0.0806742
21-24 months   NIH-Birth    BANGLADESH   1                    NA                 0.0343449    0.0166074    0.0520824
21-24 months   NIH-Birth    BANGLADESH   0                    NA                 0.0448628    0.0292830    0.0604426
21-24 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0552507    0.0462315    0.0642698
21-24 months   NIH-Crypto   BANGLADESH   0                    NA                 0.0812377    0.0595323    0.1029432


### Parameter: E(Y)


agecat         studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS      GUATEMALA    NA                   NA                -0.5135086   -0.5410819   -0.4859353
0-3 months     COHORTS      INDIA        NA                   NA                -0.0687822   -0.0769373   -0.0606271
0-3 months     JiVitA-3     BANGLADESH   NA                   NA                 0.0740628    0.0691284    0.0789971
0-3 months     JiVitA-4     BANGLADESH   NA                   NA                 0.0675829    0.0526455    0.0825202
0-3 months     MAL-ED       BANGLADESH   NA                   NA                -0.1175527   -0.1512522   -0.0838531
0-3 months     MAL-ED       INDIA        NA                   NA                -0.0719353   -0.1184447   -0.0254258
0-3 months     MAL-ED       PERU         NA                   NA                -0.2525734   -0.2867261   -0.2184208
0-3 months     NIH-Birth    BANGLADESH   NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     NIH-Crypto   BANGLADESH   NA                   NA                -0.2292592   -0.2467953   -0.2117232
3-6 months     COHORTS      GUATEMALA    NA                   NA                -0.0974774   -0.1153733   -0.0795815
3-6 months     COHORTS      INDIA        NA                   NA                -0.0631107   -0.0695595   -0.0566618
3-6 months     CONTENT      PERU         NA                   NA                 0.0173829   -0.0049673    0.0397330
3-6 months     JiVitA-3     BANGLADESH   NA                   NA                -0.0034191   -0.0082871    0.0014488
3-6 months     JiVitA-4     BANGLADESH   NA                   NA                -0.0088470   -0.0225757    0.0048816
3-6 months     MAL-ED       BANGLADESH   NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     MAL-ED       INDIA        NA                   NA                -0.0426392   -0.0707991   -0.0144793
3-6 months     MAL-ED       PERU         NA                   NA                 0.0268518   -0.0044749    0.0581786
3-6 months     NIH-Birth    BANGLADESH   NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     NIH-Crypto   BANGLADESH   NA                   NA                 0.0251987    0.0085620    0.0418354
6-9 months     COHORTS      GUATEMALA    NA                   NA                -0.1205556   -0.1344677   -0.1066436
6-9 months     COHORTS      INDIA        NA                   NA                -0.1011329   -0.1068243   -0.0954414
6-9 months     CONTENT      PERU         NA                   NA                -0.0236130   -0.0439514   -0.0032747
6-9 months     JiVitA-4     BANGLADESH   NA                   NA                -0.0289856   -0.0379823   -0.0199890
6-9 months     MAL-ED       BANGLADESH   NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     MAL-ED       INDIA        NA                   NA                -0.0651417   -0.0864064   -0.0438771
6-9 months     MAL-ED       PERU         NA                   NA                -0.0334667   -0.0581003   -0.0088331
6-9 months     NIH-Birth    BANGLADESH   NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     NIH-Crypto   BANGLADESH   NA                   NA                -0.0315216   -0.0443389   -0.0187043
9-12 months    COHORTS      GUATEMALA    NA                   NA                -0.0911807   -0.1029986   -0.0793628
9-12 months    COHORTS      INDIA        NA                   NA                -0.0910334   -0.0967095   -0.0853573
9-12 months    CONTENT      PERU         NA                   NA                -0.0227002   -0.0389439   -0.0064565
9-12 months    JiVitA-4     BANGLADESH   NA                   NA                -0.0521361   -0.0596399   -0.0446324
9-12 months    MAL-ED       BANGLADESH   NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    MAL-ED       INDIA        NA                   NA                -0.0915410   -0.1074964   -0.0755855
9-12 months    MAL-ED       PERU         NA                   NA                -0.0440965   -0.0657987   -0.0223943
9-12 months    NIH-Birth    BANGLADESH   NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    NIH-Crypto   BANGLADESH   NA                   NA                -0.0335095   -0.0445391   -0.0224799
12-15 months   COHORTS      GUATEMALA    NA                   NA                -0.0854255   -0.0963439   -0.0745071
12-15 months   CONTENT      PERU         NA                   NA                -0.0751985   -0.0914586   -0.0589385
12-15 months   JiVitA-4     BANGLADESH   NA                   NA                -0.0451119   -0.0511864   -0.0390374
12-15 months   MAL-ED       BANGLADESH   NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   MAL-ED       INDIA        NA                   NA                -0.0555642   -0.0703434   -0.0407850
12-15 months   MAL-ED       PERU         NA                   NA                -0.0662315   -0.0844054   -0.0480576
12-15 months   NIH-Birth    BANGLADESH   NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   NIH-Crypto   BANGLADESH   NA                   NA                -0.0381954   -0.0477928   -0.0285980
15-18 months   COHORTS      GUATEMALA    NA                   NA                -0.0582735   -0.0704983   -0.0460486
15-18 months   CONTENT      PERU         NA                   NA                -0.0106370   -0.0272168    0.0059428
15-18 months   JiVitA-4     BANGLADESH   NA                   NA                -0.0328956   -0.0389474   -0.0268439
15-18 months   MAL-ED       BANGLADESH   NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   MAL-ED       INDIA        NA                   NA                -0.0375818   -0.0504856   -0.0246779
15-18 months   MAL-ED       PERU         NA                   NA                -0.0342880   -0.0499824   -0.0185936
15-18 months   NIH-Birth    BANGLADESH   NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   NIH-Crypto   BANGLADESH   NA                   NA                -0.0174101   -0.0258150   -0.0090052
18-21 months   COHORTS      GUATEMALA    NA                   NA                -0.0208348   -0.0316711   -0.0099986
18-21 months   CONTENT      PERU         NA                   NA                -0.0068090   -0.0219193    0.0083013
18-21 months   MAL-ED       BANGLADESH   NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   MAL-ED       INDIA        NA                   NA                 0.0056055   -0.0059067    0.0171177
18-21 months   MAL-ED       PERU         NA                   NA                -0.0084828   -0.0237553    0.0067897
18-21 months   NIH-Birth    BANGLADESH   NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   NIH-Crypto   BANGLADESH   NA                   NA                -0.0279065   -0.0360459   -0.0197670
21-24 months   COHORTS      GUATEMALA    NA                   NA                -0.0086469   -0.0173431    0.0000492
21-24 months   MAL-ED       BANGLADESH   NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   MAL-ED       INDIA        NA                   NA                 0.0295051    0.0184714    0.0405388
21-24 months   MAL-ED       PERU         NA                   NA                 0.0575271    0.0423309    0.0727234
21-24 months   NIH-Birth    BANGLADESH   NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   NIH-Crypto   BANGLADESH   NA                   NA                 0.0590484    0.0506790    0.0674177


### Parameter: ATE


agecat         studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS      GUATEMALA    0                    1                  0.0277877   -0.0685449    0.1241203
0-3 months     COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS      INDIA        0                    1                 -0.0332520   -0.0500135   -0.0164905
0-3 months     JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3     BANGLADESH   0                    1                 -0.0228838   -0.0320715   -0.0136961
0-3 months     JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4     BANGLADESH   0                    1                 -0.0250917   -0.0627102    0.0125268
0-3 months     MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BANGLADESH   0                    1                  0.0273517   -0.0784679    0.1331713
0-3 months     MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       INDIA        0                    1                  0.0039910   -0.0885654    0.0965474
0-3 months     MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU         0                    1                  0.0139235   -0.0718169    0.0996638
0-3 months     NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH   0                    1                 -0.0040912   -0.0599297    0.0517474
0-3 months     NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH   0                    1                 -0.0343659   -0.0810434    0.0123117
3-6 months     COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS      GUATEMALA    0                    1                 -0.0156943   -0.0644059    0.0330173
3-6 months     COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS      INDIA        0                    1                 -0.0240560   -0.0373251   -0.0107868
3-6 months     CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CONTENT      PERU         0                    1                 -0.0392316   -0.1309620    0.0524988
3-6 months     JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3     BANGLADESH   0                    1                 -0.0062544   -0.0163569    0.0038481
3-6 months     JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4     BANGLADESH   0                    1                 -0.0015626   -0.0345626    0.0314374
3-6 months     MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BANGLADESH   0                    1                 -0.0483872   -0.1071501    0.0103758
3-6 months     MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA        0                    1                 -0.0164435   -0.0729106    0.0400235
3-6 months     MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU         0                    1                  0.0690748   -0.0022643    0.1404140
3-6 months     NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH   0                    1                 -0.0096762   -0.0562137    0.0368612
3-6 months     NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH   0                    1                  0.0497469   -0.0025738    0.1020675
6-9 months     COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS      GUATEMALA    0                    1                 -0.0352704   -0.0786514    0.0081105
6-9 months     COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS      INDIA        0                    1                  0.0009574   -0.0107835    0.0126983
6-9 months     CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CONTENT      PERU         0                    1                 -0.0121663   -0.0896021    0.0652695
6-9 months     JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4     BANGLADESH   0                    1                 -0.0213133   -0.0414655   -0.0011611
6-9 months     MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BANGLADESH   0                    1                  0.0056057   -0.0423432    0.0535546
6-9 months     MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA        0                    1                 -0.0440939   -0.0865185   -0.0016693
6-9 months     MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU         0                    1                  0.0522858    0.0012734    0.1032982
6-9 months     NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH   0                    1                 -0.0333207   -0.0710068    0.0043653
6-9 months     NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH   0                    1                 -0.0073519   -0.0405409    0.0258370
9-12 months    COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS      GUATEMALA    0                    1                 -0.0096540   -0.0459812    0.0266731
9-12 months    COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS      INDIA        0                    1                 -0.0204622   -0.0319812   -0.0089433
9-12 months    CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CONTENT      PERU         0                    1                 -0.0079675   -0.0609836    0.0450487
9-12 months    JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4     BANGLADESH   0                    1                 -0.0026038   -0.0194129    0.0142054
9-12 months    MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BANGLADESH   0                    1                 -0.0019918   -0.0458170    0.0418333
9-12 months    MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA        0                    1                 -0.0129198   -0.0444806    0.0186411
9-12 months    MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU         0                    1                 -0.0530643   -0.1013561   -0.0047724
9-12 months    NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH   0                    1                  0.0018513   -0.0276913    0.0313939
9-12 months    NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH   0                    1                  0.0048122   -0.0241792    0.0338035
12-15 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS      GUATEMALA    0                    1                 -0.0109935   -0.0455892    0.0236023
12-15 months   CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CONTENT      PERU         0                    1                 -0.0304897   -0.0896563    0.0286769
12-15 months   JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4     BANGLADESH   0                    1                 -0.0050248   -0.0192120    0.0091624
12-15 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BANGLADESH   0                    1                 -0.0191533   -0.0533716    0.0150650
12-15 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA        0                    1                 -0.0185387   -0.0480243    0.0109469
12-15 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU         0                    1                  0.0102106   -0.0319617    0.0523829
12-15 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH   0                    1                 -0.0154733   -0.0484275    0.0174810
12-15 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH   0                    1                 -0.0220120   -0.0502582    0.0062341
15-18 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS      GUATEMALA    0                    1                 -0.0050193   -0.0499489    0.0399104
15-18 months   CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CONTENT      PERU         0                    1                 -0.0337693   -0.1035971    0.0360584
15-18 months   JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4     BANGLADESH   0                    1                 -0.0062932   -0.0195206    0.0069342
15-18 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BANGLADESH   0                    1                  0.0206809   -0.0152856    0.0566474
15-18 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA        0                    1                  0.0182488   -0.0073151    0.0438127
15-18 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU         0                    1                 -0.0225680   -0.0622419    0.0171058
15-18 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH   0                    1                  0.0013365   -0.0287112    0.0313841
15-18 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH   0                    1                  0.0003933   -0.0262698    0.0270564
18-21 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS      GUATEMALA    0                    1                  0.0046953   -0.0302306    0.0396213
18-21 months   CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CONTENT      PERU         0                    1                 -0.0086676   -0.0587286    0.0413933
18-21 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BANGLADESH   0                    1                 -0.0332064   -0.0666635    0.0002508
18-21 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA        0                    1                 -0.0216112   -0.0444169    0.0011944
18-21 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU         0                    1                 -0.0330627   -0.0667560    0.0006306
18-21 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH   0                    1                  0.0044834   -0.0208003    0.0297672
18-21 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH   0                    1                  0.0036193   -0.0182094    0.0254481
21-24 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS      GUATEMALA    0                    1                 -0.0055075   -0.0365493    0.0255344
21-24 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BANGLADESH   0                    1                 -0.0118355   -0.0458319    0.0221609
21-24 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA        0                    1                  0.0161845   -0.0056604    0.0380294
21-24 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU         0                    1                  0.0208167   -0.0127926    0.0544260
21-24 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH   0                    1                  0.0105179   -0.0130903    0.0341261
21-24 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH   0                    1                  0.0259871    0.0024823    0.0494918


### Parameter: PAR


agecat         studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS      GUATEMALA    1                    NA                 0.0251651   -0.0620788    0.1124089
0-3 months     COHORTS      INDIA        1                    NA                -0.0208931   -0.0314349   -0.0103513
0-3 months     JiVitA-3     BANGLADESH   1                    NA                -0.0072197   -0.0101250   -0.0043144
0-3 months     JiVitA-4     BANGLADESH   1                    NA                -0.0056578   -0.0141823    0.0028667
0-3 months     MAL-ED       BANGLADESH   1                    NA                 0.0044041   -0.0126831    0.0214913
0-3 months     MAL-ED       INDIA        1                    NA                 0.0021769   -0.0483093    0.0526631
0-3 months     MAL-ED       PERU         1                    NA                 0.0105275   -0.0543049    0.0753599
0-3 months     NIH-Birth    BANGLADESH   1                    NA                -0.0025154   -0.0368476    0.0318168
0-3 months     NIH-Crypto   BANGLADESH   1                    NA                -0.0040658   -0.0096483    0.0015167
3-6 months     COHORTS      GUATEMALA    1                    NA                -0.0140423   -0.0576282    0.0295436
3-6 months     COHORTS      INDIA        1                    NA                -0.0150331   -0.0233319   -0.0067342
3-6 months     CONTENT      PERU         1                    NA                -0.0025666   -0.0087074    0.0035743
3-6 months     JiVitA-3     BANGLADESH   1                    NA                -0.0017802   -0.0046556    0.0010953
3-6 months     JiVitA-4     BANGLADESH   1                    NA                -0.0003467   -0.0076651    0.0069717
3-6 months     MAL-ED       BANGLADESH   1                    NA                -0.0079598   -0.0179005    0.0019809
3-6 months     MAL-ED       INDIA        1                    NA                -0.0088708   -0.0393520    0.0216103
3-6 months     MAL-ED       PERU         1                    NA                 0.0523375   -0.0018357    0.1065107
3-6 months     NIH-Birth    BANGLADESH   1                    NA                -0.0060130   -0.0349348    0.0229089
3-6 months     NIH-Crypto   BANGLADESH   1                    NA                 0.0060365   -0.0004281    0.0125012
6-9 months     COHORTS      GUATEMALA    1                    NA                -0.0315670   -0.0704026    0.0072686
6-9 months     COHORTS      INDIA        1                    NA                 0.0005924   -0.0066724    0.0078572
6-9 months     CONTENT      PERU         1                    NA                -0.0007959   -0.0058779    0.0042860
6-9 months     JiVitA-4     BANGLADESH   1                    NA                -0.0046998   -0.0091819   -0.0002178
6-9 months     MAL-ED       BANGLADESH   1                    NA                 0.0009510   -0.0071879    0.0090898
6-9 months     MAL-ED       INDIA        1                    NA                -0.0239809   -0.0472301   -0.0007317
6-9 months     MAL-ED       PERU         1                    NA                 0.0399833    0.0008717    0.0790948
6-9 months     NIH-Birth    BANGLADESH   1                    NA                -0.0204073   -0.0435322    0.0027176
6-9 months     NIH-Crypto   BANGLADESH   1                    NA                -0.0009651   -0.0053257    0.0033956
9-12 months    COHORTS      GUATEMALA    1                    NA                -0.0087014   -0.0414447    0.0240419
9-12 months    COHORTS      INDIA        1                    NA                -0.0124641   -0.0194879   -0.0054403
9-12 months    CONTENT      PERU         1                    NA                -0.0005262   -0.0040374    0.0029851
9-12 months    JiVitA-4     BANGLADESH   1                    NA                -0.0005722   -0.0042708    0.0031263
9-12 months    MAL-ED       BANGLADESH   1                    NA                -0.0003098   -0.0071277    0.0065081
9-12 months    MAL-ED       INDIA        1                    NA                -0.0070054   -0.0241391    0.0101283
9-12 months    MAL-ED       PERU         1                    NA                -0.0409619   -0.0783521   -0.0035716
9-12 months    NIH-Birth    BANGLADESH   1                    NA                 0.0011254   -0.0168333    0.0190840
9-12 months    NIH-Crypto   BANGLADESH   1                    NA                 0.0006378   -0.0032065    0.0044820
12-15 months   COHORTS      GUATEMALA    1                    NA                -0.0099412   -0.0412266    0.0213442
12-15 months   CONTENT      PERU         1                    NA                -0.0019918   -0.0059969    0.0020133
12-15 months   JiVitA-4     BANGLADESH   1                    NA                -0.0011191   -0.0042850    0.0020467
12-15 months   MAL-ED       BANGLADESH   1                    NA                -0.0028911   -0.0081383    0.0023562
12-15 months   MAL-ED       INDIA        1                    NA                -0.0100142   -0.0259878    0.0059594
12-15 months   MAL-ED       PERU         1                    NA                 0.0078219   -0.0244895    0.0401333
12-15 months   NIH-Birth    BANGLADESH   1                    NA                -0.0093981   -0.0294256    0.0106294
12-15 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0029508   -0.0067810    0.0008795
15-18 months   COHORTS      GUATEMALA    1                    NA                -0.0045658   -0.0454365    0.0363049
15-18 months   CONTENT      PERU         1                    NA                -0.0023228   -0.0072787    0.0026331
15-18 months   JiVitA-4     BANGLADESH   1                    NA                -0.0013977   -0.0043321    0.0015367
15-18 months   MAL-ED       BANGLADESH   1                    NA                 0.0032192   -0.0024700    0.0089084
15-18 months   MAL-ED       INDIA        1                    NA                 0.0097761   -0.0039708    0.0235231
15-18 months   MAL-ED       PERU         1                    NA                -0.0171430   -0.0473085    0.0130225
15-18 months   NIH-Birth    BANGLADESH   1                    NA                 0.0008007   -0.0172012    0.0188026
15-18 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0000551   -0.0036769    0.0037870
18-21 months   COHORTS      GUATEMALA    1                    NA                 0.0042594   -0.0274240    0.0359428
18-21 months   CONTENT      PERU         1                    NA                -0.0005684   -0.0038658    0.0027291
18-21 months   MAL-ED       BANGLADESH   1                    NA                -0.0047665   -0.0098229    0.0002899
18-21 months   MAL-ED       INDIA        1                    NA                -0.0116739   -0.0240739    0.0007260
18-21 months   MAL-ED       PERU         1                    NA                -0.0247136   -0.0499782    0.0005511
18-21 months   NIH-Birth    BANGLADESH   1                    NA                 0.0026879   -0.0124718    0.0178476
18-21 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0004871   -0.0024525    0.0034267
21-24 months   COHORTS      GUATEMALA    1                    NA                -0.0049943   -0.0331437    0.0231552
21-24 months   MAL-ED       BANGLADESH   1                    NA                -0.0016581   -0.0064538    0.0031376
21-24 months   MAL-ED       INDIA        1                    NA                 0.0087425   -0.0031050    0.0205901
21-24 months   MAL-ED       PERU         1                    NA                 0.0154994   -0.0095595    0.0405583
21-24 months   NIH-Birth    BANGLADESH   1                    NA                 0.0063466   -0.0079075    0.0206006
21-24 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0037977    0.0002656    0.0073298
