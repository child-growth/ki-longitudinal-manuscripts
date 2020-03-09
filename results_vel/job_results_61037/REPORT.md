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
![](/tmp/3fb16353-62e3-4d09-9bd8-0a6b1807b381/0c5c1f45-fe39-4aca-a036-bd827c3b693b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3fb16353-62e3-4d09-9bd8-0a6b1807b381/0c5c1f45-fe39-4aca-a036-bd827c3b693b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3fb16353-62e3-4d09-9bd8-0a6b1807b381/0c5c1f45-fe39-4aca-a036-bd827c3b693b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS      GUATEMALA    1                    NA                -0.5439234   -0.6498420   -0.4380048
0-3 months     COHORTS      GUATEMALA    0                    NA                -0.5103606   -0.5391942   -0.4815269
0-3 months     COHORTS      INDIA        1                    NA                -0.0618362   -0.0761996   -0.0474729
0-3 months     COHORTS      INDIA        0                    NA                -0.0747752   -0.0856486   -0.0639018
0-3 months     JiVitA-3     BANGLADESH   1                    NA                 0.0747679    0.0687199    0.0808158
0-3 months     JiVitA-3     BANGLADESH   0                    NA                 0.0621464    0.0516431    0.0726496
0-3 months     JiVitA-4     BANGLADESH   1                    NA                 0.0724606    0.0553881    0.0895331
0-3 months     JiVitA-4     BANGLADESH   0                    NA                 0.0603011    0.0196824    0.1009198
0-3 months     MAL-ED       BANGLADESH   1                    NA                -0.1222740   -0.1577628   -0.0867852
0-3 months     MAL-ED       BANGLADESH   0                    NA                -0.0933926   -0.1950519    0.0082668
0-3 months     MAL-ED       INDIA        1                    NA                -0.0790412   -0.1450211   -0.0130613
0-3 months     MAL-ED       INDIA        0                    NA                -0.0666644   -0.1335051    0.0001764
0-3 months     MAL-ED       PERU         1                    NA                -0.2739769   -0.3575469   -0.1904070
0-3 months     MAL-ED       PERU         0                    NA                -0.2493978   -0.2867101   -0.2120856
0-3 months     NIH-Birth    BANGLADESH   1                    NA                -0.2288324   -0.2762090   -0.1814557
0-3 months     NIH-Birth    BANGLADESH   0                    NA                -0.2355729   -0.2681857   -0.2029602
0-3 months     NIH-Crypto   BANGLADESH   1                    NA                -0.2255832   -0.2445674   -0.2065990
0-3 months     NIH-Crypto   BANGLADESH   0                    NA                -0.2594483   -0.3051713   -0.2137254
3-6 months     COHORTS      GUATEMALA    1                    NA                -0.0788046   -0.1273293   -0.0302800
3-6 months     COHORTS      GUATEMALA    0                    NA                -0.0997213   -0.1189745   -0.0804680
3-6 months     COHORTS      INDIA        1                    NA                -0.0558210   -0.0668984   -0.0447437
3-6 months     COHORTS      INDIA        0                    NA                -0.0670885   -0.0757002   -0.0584769
3-6 months     CONTENT      PERU         1                    NA                 0.0197638   -0.0032984    0.0428260
3-6 months     CONTENT      PERU         0                    NA                -0.0436867   -0.1370404    0.0496671
3-6 months     JiVitA-3     BANGLADESH   1                    NA                -0.0034091   -0.0092512    0.0024330
3-6 months     JiVitA-3     BANGLADESH   0                    NA                -0.0031172   -0.0139453    0.0077109
3-6 months     JiVitA-4     BANGLADESH   1                    NA                -0.0092202   -0.0245601    0.0061197
3-6 months     JiVitA-4     BANGLADESH   0                    NA                -0.0077143   -0.0362854    0.0208568
3-6 months     MAL-ED       BANGLADESH   1                    NA                -0.0144918   -0.0406637    0.0116801
3-6 months     MAL-ED       BANGLADESH   0                    NA                -0.0636799   -0.1171747   -0.0101852
3-6 months     MAL-ED       INDIA        1                    NA                -0.0376008   -0.0790729    0.0038714
3-6 months     MAL-ED       INDIA        0                    NA                -0.0566955   -0.0953320   -0.0180590
3-6 months     MAL-ED       PERU         1                    NA                -0.0188156   -0.0834266    0.0457953
3-6 months     MAL-ED       PERU         0                    NA                 0.0422431    0.0060747    0.0784114
3-6 months     NIH-Birth    BANGLADESH   1                    NA                -0.0508111   -0.0898430   -0.0117792
3-6 months     NIH-Birth    BANGLADESH   0                    NA                -0.0524716   -0.0797818   -0.0251615
3-6 months     NIH-Crypto   BANGLADESH   1                    NA                 0.0202369    0.0022908    0.0381831
3-6 months     NIH-Crypto   BANGLADESH   0                    NA                 0.0477997   -0.0088509    0.1044504
6-9 months     COHORTS      GUATEMALA    1                    NA                -0.0761109   -0.1268023   -0.0254195
6-9 months     COHORTS      GUATEMALA    0                    NA                -0.1220703   -0.1368585   -0.1072821
6-9 months     COHORTS      INDIA        1                    NA                -0.1108828   -0.1217533   -0.1000124
6-9 months     COHORTS      INDIA        0                    NA                -0.0958923   -0.1034804   -0.0883042
6-9 months     CONTENT      PERU         1                    NA                -0.0233303   -0.0444735   -0.0021870
6-9 months     CONTENT      PERU         0                    NA                -0.0353542   -0.1149880    0.0442797
6-9 months     JiVitA-4     BANGLADESH   1                    NA                -0.0272877   -0.0380220   -0.0165534
6-9 months     JiVitA-4     BANGLADESH   0                    NA                -0.0374239   -0.0603541   -0.0144937
6-9 months     MAL-ED       BANGLADESH   1                    NA                -0.0705014   -0.0891809   -0.0518218
6-9 months     MAL-ED       BANGLADESH   0                    NA                -0.0656961   -0.1083203   -0.0230719
6-9 months     MAL-ED       INDIA        1                    NA                -0.0380823   -0.0703651   -0.0057995
6-9 months     MAL-ED       INDIA        0                    NA                -0.0862106   -0.1150166   -0.0574047
6-9 months     MAL-ED       PERU         1                    NA                -0.0620171   -0.1080237   -0.0160105
6-9 months     MAL-ED       PERU         0                    NA                -0.0245081   -0.0537140    0.0046977
6-9 months     NIH-Birth    BANGLADESH   1                    NA                -0.0373302   -0.0690765   -0.0055839
6-9 months     NIH-Birth    BANGLADESH   0                    NA                -0.0737461   -0.0959151   -0.0515771
6-9 months     NIH-Crypto   BANGLADESH   1                    NA                -0.0318120   -0.0458128   -0.0178112
6-9 months     NIH-Crypto   BANGLADESH   0                    NA                -0.0230788   -0.0542833    0.0081257
9-12 months    COHORTS      GUATEMALA    1                    NA                -0.0861122   -0.1267185   -0.0455060
9-12 months    COHORTS      GUATEMALA    0                    NA                -0.0923216   -0.1048818   -0.0797614
9-12 months    COHORTS      INDIA        1                    NA                -0.0835877   -0.0933490   -0.0738264
9-12 months    COHORTS      INDIA        0                    NA                -0.0963268   -0.1040992   -0.0885543
9-12 months    CONTENT      PERU         1                    NA                -0.0221182   -0.0391537   -0.0050827
9-12 months    CONTENT      PERU         0                    NA                -0.0103864   -0.0613236    0.0405508
9-12 months    JiVitA-4     BANGLADESH   1                    NA                -0.0509390   -0.0602519   -0.0416260
9-12 months    JiVitA-4     BANGLADESH   0                    NA                -0.0567799   -0.0745672   -0.0389925
9-12 months    MAL-ED       BANGLADESH   1                    NA                -0.0863097   -0.1039703   -0.0686492
9-12 months    MAL-ED       BANGLADESH   0                    NA                -0.0923318   -0.1336839   -0.0509797
9-12 months    MAL-ED       INDIA        1                    NA                -0.0837795   -0.1056287   -0.0619303
9-12 months    MAL-ED       INDIA        0                    NA                -0.0985261   -0.1222649   -0.0747872
9-12 months    MAL-ED       PERU         1                    NA                -0.0097223   -0.0569823    0.0375377
9-12 months    MAL-ED       PERU         0                    NA                -0.0553690   -0.0817667   -0.0289714
9-12 months    NIH-Birth    BANGLADESH   1                    NA                -0.0555284   -0.0786582   -0.0323987
9-12 months    NIH-Birth    BANGLADESH   0                    NA                -0.0347625   -0.0535462   -0.0159787
9-12 months    NIH-Crypto   BANGLADESH   1                    NA                -0.0338083   -0.0458523   -0.0217642
9-12 months    NIH-Crypto   BANGLADESH   0                    NA                -0.0320584   -0.0595979   -0.0045189
12-15 months   COHORTS      GUATEMALA    1                    NA                -0.0646728   -0.1169785   -0.0123670
12-15 months   COHORTS      GUATEMALA    0                    NA                -0.0860387   -0.0979261   -0.0741513
12-15 months   CONTENT      PERU         1                    NA                -0.0731271   -0.0900699   -0.0561844
12-15 months   CONTENT      PERU         0                    NA                -0.0967656   -0.1783460   -0.0151852
12-15 months   JiVitA-4     BANGLADESH   1                    NA                -0.0445504   -0.0514598   -0.0376409
12-15 months   JiVitA-4     BANGLADESH   0                    NA                -0.0574772   -0.0722207   -0.0427338
12-15 months   MAL-ED       BANGLADESH   1                    NA                -0.0522503   -0.0695862   -0.0349145
12-15 months   MAL-ED       BANGLADESH   0                    NA                -0.0778406   -0.1095152   -0.0461660
12-15 months   MAL-ED       INDIA        1                    NA                -0.0454250   -0.0669212   -0.0239287
12-15 months   MAL-ED       INDIA        0                    NA                -0.0639204   -0.0842662   -0.0435746
12-15 months   MAL-ED       PERU         1                    NA                -0.0754213   -0.1169496   -0.0338930
12-15 months   MAL-ED       PERU         0                    NA                -0.0643989   -0.0854906   -0.0433073
12-15 months   NIH-Birth    BANGLADESH   1                    NA                -0.1168581   -0.1413526   -0.0923636
12-15 months   NIH-Birth    BANGLADESH   0                    NA                -0.1326480   -0.1580736   -0.1072223
12-15 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0355452   -0.0458064   -0.0252841
12-15 months   NIH-Crypto   BANGLADESH   0                    NA                -0.0564897   -0.0839225   -0.0290569
15-18 months   COHORTS      GUATEMALA    1                    NA                -0.0693143   -0.1313118   -0.0073169
15-18 months   COHORTS      GUATEMALA    0                    NA                -0.0602261   -0.0730779   -0.0473744
15-18 months   CONTENT      PERU         1                    NA                -0.0082130   -0.0252444    0.0088183
15-18 months   CONTENT      PERU         0                    NA                -0.0467686   -0.1277819    0.0342447
15-18 months   JiVitA-4     BANGLADESH   1                    NA                -0.0299473   -0.0368293   -0.0230654
15-18 months   JiVitA-4     BANGLADESH   0                    NA                -0.0286558   -0.0436044   -0.0137071
15-18 months   MAL-ED       BANGLADESH   1                    NA                -0.0485167   -0.0631272   -0.0339061
15-18 months   MAL-ED       BANGLADESH   0                    NA                -0.0349370   -0.0723364    0.0024623
15-18 months   MAL-ED       INDIA        1                    NA                -0.0488553   -0.0666926   -0.0310181
15-18 months   MAL-ED       INDIA        0                    NA                -0.0296891   -0.0481762   -0.0112020
15-18 months   MAL-ED       PERU         1                    NA                -0.0183564   -0.0560922    0.0193794
15-18 months   MAL-ED       PERU         0                    NA                -0.0395224   -0.0567052   -0.0223397
15-18 months   NIH-Birth    BANGLADESH   1                    NA                -0.0617751   -0.0846524   -0.0388977
15-18 months   NIH-Birth    BANGLADESH   0                    NA                -0.0576055   -0.0765353   -0.0386756
15-18 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0174877   -0.0263369   -0.0086386
15-18 months   NIH-Crypto   BANGLADESH   0                    NA                -0.0134771   -0.0392571    0.0123030
18-21 months   COHORTS      GUATEMALA    1                    NA                -0.0390964   -0.0881619    0.0099690
18-21 months   COHORTS      GUATEMALA    0                    NA                -0.0190077   -0.0307235   -0.0072919
18-21 months   CONTENT      PERU         1                    NA                -0.0059889   -0.0218251    0.0098473
18-21 months   CONTENT      PERU         0                    NA                -0.0042034   -0.0477659    0.0393591
18-21 months   MAL-ED       BANGLADESH   1                    NA                -0.0099741   -0.0225941    0.0026459
18-21 months   MAL-ED       BANGLADESH   0                    NA                -0.0419033   -0.0724235   -0.0113830
18-21 months   MAL-ED       INDIA        1                    NA                 0.0180115    0.0015955    0.0344275
18-21 months   MAL-ED       INDIA        0                    NA                -0.0033358   -0.0194735    0.0128019
18-21 months   MAL-ED       PERU         1                    NA                 0.0138300   -0.0169232    0.0445833
18-21 months   MAL-ED       PERU         0                    NA                -0.0156073   -0.0333991    0.0021846
18-21 months   NIH-Birth    BANGLADESH   1                    NA                -0.0404643   -0.0601836   -0.0207451
18-21 months   NIH-Birth    BANGLADESH   0                    NA                -0.0372306   -0.0535728   -0.0208883
18-21 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0283331   -0.0371840   -0.0194821
18-21 months   NIH-Crypto   BANGLADESH   0                    NA                -0.0249080   -0.0464415   -0.0033744
21-24 months   COHORTS      GUATEMALA    1                    NA                 0.0019602   -0.0320717    0.0359921
21-24 months   COHORTS      GUATEMALA    0                    NA                -0.0094098   -0.0186639   -0.0001557
21-24 months   MAL-ED       BANGLADESH   1                    NA                 0.0270942    0.0139094    0.0402789
21-24 months   MAL-ED       BANGLADESH   0                    NA                 0.0158145   -0.0140578    0.0456868
21-24 months   MAL-ED       INDIA        1                    NA                 0.0181787    0.0029546    0.0334029
21-24 months   MAL-ED       INDIA        0                    NA                 0.0352048    0.0195348    0.0508748
21-24 months   MAL-ED       PERU         1                    NA                 0.0422353    0.0121119    0.0723588
21-24 months   MAL-ED       PERU         0                    NA                 0.0627069    0.0449346    0.0804792
21-24 months   NIH-Birth    BANGLADESH   1                    NA                 0.0347370    0.0168069    0.0526671
21-24 months   NIH-Birth    BANGLADESH   0                    NA                 0.0445327    0.0288780    0.0601874
21-24 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0552128    0.0461945    0.0642311
21-24 months   NIH-Crypto   BANGLADESH   0                    NA                 0.0809966    0.0586710    0.1033222


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
0-3 months     COHORTS      GUATEMALA    0                    1                  0.0335628   -0.0762129    0.1433385
0-3 months     COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS      INDIA        0                    1                 -0.0129390   -0.0308848    0.0050069
0-3 months     JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3     BANGLADESH   0                    1                 -0.0126215   -0.0239168   -0.0013262
0-3 months     JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4     BANGLADESH   0                    1                 -0.0121595   -0.0562938    0.0319748
0-3 months     MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BANGLADESH   0                    1                  0.0288815   -0.0788330    0.1365960
0-3 months     MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       INDIA        0                    1                  0.0123769   -0.0817491    0.1065028
0-3 months     MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU         0                    1                  0.0245791   -0.0671188    0.1162770
0-3 months     NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH   0                    1                 -0.0067406   -0.0644536    0.0509725
0-3 months     NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH   0                    1                 -0.0338651   -0.0833455    0.0156152
3-6 months     COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS      GUATEMALA    0                    1                 -0.0209166   -0.0732160    0.0313828
3-6 months     COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS      INDIA        0                    1                 -0.0112675   -0.0252762    0.0027412
3-6 months     CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CONTENT      PERU         0                    1                 -0.0634504   -0.1596303    0.0327295
3-6 months     JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3     BANGLADESH   0                    1                  0.0002919   -0.0117582    0.0123420
3-6 months     JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4     BANGLADESH   0                    1                  0.0015059   -0.0310122    0.0340240
3-6 months     MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BANGLADESH   0                    1                 -0.0491881   -0.1088367    0.0104604
3-6 months     MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA        0                    1                 -0.0190948   -0.0759314    0.0377418
3-6 months     MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU         0                    1                  0.0610587   -0.0132932    0.1354106
3-6 months     NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH   0                    1                 -0.0016605   -0.0492416    0.0459206
3-6 months     NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH   0                    1                  0.0275628   -0.0317711    0.0868967
6-9 months     COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS      GUATEMALA    0                    1                 -0.0459594   -0.0988391    0.0069203
6-9 months     COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS      INDIA        0                    1                  0.0149905    0.0017372    0.0282438
6-9 months     CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CONTENT      PERU         0                    1                 -0.0120239   -0.0944104    0.0703626
6-9 months     JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4     BANGLADESH   0                    1                 -0.0101362   -0.0353343    0.0150619
6-9 months     MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BANGLADESH   0                    1                  0.0048053   -0.0416811    0.0512916
6-9 months     MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA        0                    1                 -0.0481283   -0.0920611   -0.0041955
6-9 months     MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU         0                    1                  0.0375090   -0.0172693    0.0922872
6-9 months     NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH   0                    1                 -0.0364159   -0.0755150    0.0026832
6-9 months     NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH   0                    1                  0.0087332   -0.0254664    0.0429328
9-12 months    COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS      GUATEMALA    0                    1                 -0.0062093   -0.0488397    0.0364211
9-12 months    COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS      INDIA        0                    1                 -0.0127391   -0.0252129   -0.0002652
9-12 months    CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CONTENT      PERU         0                    1                  0.0117318   -0.0419765    0.0654401
9-12 months    JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4     BANGLADESH   0                    1                 -0.0058409   -0.0260172    0.0143353
9-12 months    MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BANGLADESH   0                    1                 -0.0060221   -0.0512054    0.0391613
9-12 months    MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA        0                    1                 -0.0147466   -0.0471650    0.0176718
9-12 months    MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU         0                    1                 -0.0456468   -0.0999524    0.0086588
9-12 months    NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH   0                    1                  0.0207660   -0.0088236    0.0503555
9-12 months    NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH   0                    1                  0.0017499   -0.0283510    0.0318508
12-15 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS      GUATEMALA    0                    1                 -0.0213660   -0.0749898    0.0322579
12-15 months   CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CONTENT      PERU         0                    1                 -0.0236384   -0.1069340    0.0596571
12-15 months   JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4     BANGLADESH   0                    1                 -0.0129269   -0.0290080    0.0031542
12-15 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BANGLADESH   0                    1                 -0.0255902   -0.0616987    0.0105182
12-15 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA        0                    1                 -0.0184955   -0.0481900    0.0111991
12-15 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU         0                    1                  0.0110224   -0.0357469    0.0577917
12-15 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH   0                    1                 -0.0157898   -0.0514128    0.0198331
12-15 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH   0                    1                 -0.0209445   -0.0501801    0.0082912
15-18 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS      GUATEMALA    0                    1                  0.0090882   -0.0543871    0.0725634
15-18 months   CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CONTENT      PERU         0                    1                 -0.0385555   -0.1214304    0.0443193
15-18 months   JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4     BANGLADESH   0                    1                  0.0012916   -0.0149964    0.0175795
15-18 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BANGLADESH   0                    1                  0.0135797   -0.0268138    0.0539731
15-18 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA        0                    1                  0.0191663   -0.0065435    0.0448760
15-18 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU         0                    1                 -0.0211660   -0.0626948    0.0203628
15-18 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH   0                    1                  0.0041696   -0.0255800    0.0339191
15-18 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH   0                    1                  0.0040107   -0.0232943    0.0313157
18-21 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS      GUATEMALA    0                    1                  0.0200887   -0.0304185    0.0705959
18-21 months   CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CONTENT      PERU         0                    1                  0.0017855   -0.0444182    0.0479893
18-21 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BANGLADESH   0                    1                 -0.0319292   -0.0650212    0.0011628
18-21 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA        0                    1                 -0.0213473   -0.0444348    0.0017403
18-21 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU         0                    1                 -0.0294373   -0.0650595    0.0061850
18-21 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH   0                    1                  0.0032338   -0.0224066    0.0288742
18-21 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH   0                    1                  0.0034251   -0.0198256    0.0266757
21-24 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS      GUATEMALA    0                    1                 -0.0113701   -0.0466649    0.0239247
21-24 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BANGLADESH   0                    1                 -0.0112797   -0.0438991    0.0213397
21-24 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA        0                    1                  0.0170260   -0.0049346    0.0389867
21-24 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU         0                    1                  0.0204716   -0.0146075    0.0555507
21-24 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH   0                    1                  0.0097957   -0.0141406    0.0337320
21-24 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH   0                    1                  0.0257838    0.0016895    0.0498780


### Parameter: PAR


agecat         studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS      GUATEMALA    1                    NA                 0.0304148   -0.0706412    0.1314707
0-3 months     COHORTS      INDIA        1                    NA                -0.0069460   -0.0188614    0.0049695
0-3 months     JiVitA-3     BANGLADESH   1                    NA                -0.0007051   -0.0042839    0.0028737
0-3 months     JiVitA-4     BANGLADESH   1                    NA                -0.0048777   -0.0137425    0.0039871
0-3 months     MAL-ED       BANGLADESH   1                    NA                 0.0047214   -0.0124708    0.0219135
0-3 months     MAL-ED       INDIA        1                    NA                 0.0071059   -0.0443260    0.0585379
0-3 months     MAL-ED       PERU         1                    NA                 0.0214035   -0.0502654    0.0930724
0-3 months     NIH-Birth    BANGLADESH   1                    NA                -0.0031541   -0.0396976    0.0333894
0-3 months     NIH-Crypto   BANGLADESH   1                    NA                -0.0036760   -0.0092158    0.0018637
3-6 months     COHORTS      GUATEMALA    1                    NA                -0.0186728   -0.0657592    0.0284136
3-6 months     COHORTS      INDIA        1                    NA                -0.0072896   -0.0165061    0.0019269
3-6 months     CONTENT      PERU         1                    NA                -0.0023809   -0.0087521    0.0039902
3-6 months     JiVitA-3     BANGLADESH   1                    NA                -0.0000100   -0.0032638    0.0032438
3-6 months     JiVitA-4     BANGLADESH   1                    NA                 0.0003732   -0.0072210    0.0079673
3-6 months     MAL-ED       BANGLADESH   1                    NA                -0.0079490   -0.0179894    0.0020915
3-6 months     MAL-ED       INDIA        1                    NA                -0.0050385   -0.0357199    0.0256430
3-6 months     MAL-ED       PERU         1                    NA                 0.0456674   -0.0111905    0.1025253
3-6 months     NIH-Birth    BANGLADESH   1                    NA                -0.0000896   -0.0302141    0.0300349
3-6 months     NIH-Crypto   BANGLADESH   1                    NA                 0.0049617   -0.0018713    0.0117948
6-9 months     COHORTS      GUATEMALA    1                    NA                -0.0444448   -0.0936246    0.0047351
6-9 months     COHORTS      INDIA        1                    NA                 0.0097500    0.0006770    0.0188230
6-9 months     CONTENT      PERU         1                    NA                -0.0002828   -0.0053333    0.0047678
6-9 months     JiVitA-4     BANGLADESH   1                    NA                -0.0016979   -0.0067910    0.0033952
6-9 months     MAL-ED       BANGLADESH   1                    NA                 0.0004782   -0.0076274    0.0085839
6-9 months     MAL-ED       INDIA        1                    NA                -0.0270594   -0.0512791   -0.0028398
6-9 months     MAL-ED       PERU         1                    NA                 0.0285504   -0.0150592    0.0721601
6-9 months     NIH-Birth    BANGLADESH   1                    NA                -0.0222246   -0.0462870    0.0018379
6-9 months     NIH-Crypto   BANGLADESH   1                    NA                 0.0002904   -0.0042900    0.0048708
9-12 months    COHORTS      GUATEMALA    1                    NA                -0.0050685   -0.0447280    0.0345910
9-12 months    COHORTS      INDIA        1                    NA                -0.0074457   -0.0155293    0.0006380
9-12 months    CONTENT      PERU         1                    NA                -0.0005820   -0.0041864    0.0030225
9-12 months    JiVitA-4     BANGLADESH   1                    NA                -0.0011972   -0.0058926    0.0034983
9-12 months    MAL-ED       BANGLADESH   1                    NA                -0.0008956   -0.0078912    0.0060999
9-12 months    MAL-ED       INDIA        1                    NA                -0.0077615   -0.0252569    0.0097339
9-12 months    MAL-ED       PERU         1                    NA                -0.0343742   -0.0774177    0.0086693
9-12 months    NIH-Birth    BANGLADESH   1                    NA                 0.0130536   -0.0052641    0.0313714
9-12 months    NIH-Crypto   BANGLADESH   1                    NA                 0.0002988   -0.0035600    0.0041576
12-15 months   COHORTS      GUATEMALA    1                    NA                -0.0207527   -0.0718150    0.0303095
12-15 months   CONTENT      PERU         1                    NA                -0.0020714   -0.0061506    0.0020078
12-15 months   JiVitA-4     BANGLADESH   1                    NA                -0.0005615   -0.0041680    0.0030449
12-15 months   MAL-ED       BANGLADESH   1                    NA                -0.0034620   -0.0088390    0.0019150
12-15 months   MAL-ED       INDIA        1                    NA                -0.0101392   -0.0262566    0.0059782
12-15 months   MAL-ED       PERU         1                    NA                 0.0091898   -0.0282151    0.0465947
12-15 months   NIH-Birth    BANGLADESH   1                    NA                -0.0091007   -0.0303146    0.0121132
12-15 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0026501   -0.0064166    0.0011163
15-18 months   COHORTS      GUATEMALA    1                    NA                 0.0110408   -0.0488215    0.0709032
15-18 months   CONTENT      PERU         1                    NA                -0.0024239   -0.0074496    0.0026018
15-18 months   JiVitA-4     BANGLADESH   1                    NA                -0.0029483   -0.0061207    0.0002241
15-18 months   MAL-ED       BANGLADESH   1                    NA                 0.0027224   -0.0030520    0.0084968
15-18 months   MAL-ED       INDIA        1                    NA                 0.0112736   -0.0025941    0.0251413
15-18 months   MAL-ED       PERU         1                    NA                -0.0159316   -0.0479597    0.0160966
15-18 months   NIH-Birth    BANGLADESH   1                    NA                 0.0040845   -0.0138367    0.0220056
15-18 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0000777   -0.0037003    0.0038556
18-21 months   COHORTS      GUATEMALA    1                    NA                 0.0182616   -0.0296300    0.0661532
18-21 months   CONTENT      PERU         1                    NA                -0.0008201   -0.0042275    0.0025872
18-21 months   MAL-ED       BANGLADESH   1                    NA                -0.0055478   -0.0107863   -0.0003092
18-21 months   MAL-ED       INDIA        1                    NA                -0.0124060   -0.0249670    0.0001550
18-21 months   MAL-ED       PERU         1                    NA                -0.0223128   -0.0496738    0.0050482
18-21 months   NIH-Birth    BANGLADESH   1                    NA                 0.0020753   -0.0133689    0.0175196
18-21 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0004266   -0.0025141    0.0033672
21-24 months   COHORTS      GUATEMALA    1                    NA                -0.0106072   -0.0435074    0.0222930
21-24 months   MAL-ED       BANGLADESH   1                    NA                -0.0014760   -0.0063595    0.0034076
21-24 months   MAL-ED       INDIA        1                    NA                 0.0113264   -0.0007087    0.0233614
21-24 months   MAL-ED       PERU         1                    NA                 0.0152918   -0.0113982    0.0419818
21-24 months   NIH-Birth    BANGLADESH   1                    NA                 0.0059545   -0.0085473    0.0204563
21-24 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0038356    0.0002829    0.0073882
