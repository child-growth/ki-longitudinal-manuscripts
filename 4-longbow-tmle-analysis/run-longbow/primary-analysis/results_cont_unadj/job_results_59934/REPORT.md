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
0-3 months     COHORTS      GUATEMALA                      1             55     514
0-3 months     COHORTS      GUATEMALA                      0            459     514
0-3 months     COHORTS      INDIA                          1           1808    4802
0-3 months     COHORTS      INDIA                          0           2994    4802
0-3 months     CONTENT      PERU                           1             25      29
0-3 months     CONTENT      PERU                           0              4      29
0-3 months     JiVitA-3     BANGLADESH                     1          13894   20270
0-3 months     JiVitA-3     BANGLADESH                     0           6376   20270
0-3 months     JiVitA-4     BANGLADESH                     1           1386    1793
0-3 months     JiVitA-4     BANGLADESH                     0            407    1793
0-3 months     MAL-ED       BANGLADESH                     1            201     239
0-3 months     MAL-ED       BANGLADESH                     0             38     239
0-3 months     MAL-ED       BRAZIL                         1            206     210
0-3 months     MAL-ED       BRAZIL                         0              4     210
0-3 months     MAL-ED       INDIA                          1            106     230
0-3 months     MAL-ED       INDIA                          0            124     230
0-3 months     MAL-ED       NEPAL                          1            229     230
0-3 months     MAL-ED       NEPAL                          0              1     230
0-3 months     MAL-ED       PERU                           1             64     262
0-3 months     MAL-ED       PERU                           0            198     262
0-3 months     MAL-ED       SOUTH AFRICA                   1              4     248
0-3 months     MAL-ED       SOUTH AFRICA                   0            244     248
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     224
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            224     224
0-3 months     NIH-Birth    BANGLADESH                     1            217     565
0-3 months     NIH-Birth    BANGLADESH                     0            348     565
0-3 months     NIH-Crypto   BANGLADESH                     1            629     714
0-3 months     NIH-Crypto   BANGLADESH                     0             85     714
0-3 months     PROVIDE      BANGLADESH                     1             13      13
0-3 months     PROVIDE      BANGLADESH                     0              0      13
3-6 months     COHORTS      GUATEMALA                      1             58     553
3-6 months     COHORTS      GUATEMALA                      0            495     553
3-6 months     COHORTS      INDIA                          1           1844    4859
3-6 months     COHORTS      INDIA                          0           3015    4859
3-6 months     CONTENT      PERU                           1            200     214
3-6 months     CONTENT      PERU                           0             14     214
3-6 months     JiVitA-3     BANGLADESH                     1           9100   12710
3-6 months     JiVitA-3     BANGLADESH                     0           3610   12710
3-6 months     JiVitA-4     BANGLADESH                     1           1414    1817
3-6 months     JiVitA-4     BANGLADESH                     0            403    1817
3-6 months     MAL-ED       BANGLADESH                     1            195     233
3-6 months     MAL-ED       BANGLADESH                     0             38     233
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
3-6 months     NIH-Birth    BANGLADESH                     1            198     522
3-6 months     NIH-Birth    BANGLADESH                     0            324     522
3-6 months     NIH-Crypto   BANGLADESH                     1            607     691
3-6 months     NIH-Crypto   BANGLADESH                     0             84     691
3-6 months     PROVIDE      BANGLADESH                     1             11      11
3-6 months     PROVIDE      BANGLADESH                     0              0      11
6-9 months     COHORTS      GUATEMALA                      1             63     601
6-9 months     COHORTS      GUATEMALA                      0            538     601
6-9 months     COHORTS      INDIA                          1           1669    4345
6-9 months     COHORTS      INDIA                          0           2676    4345
6-9 months     CONTENT      PERU                           1            200     214
6-9 months     CONTENT      PERU                           0             14     214
6-9 months     JiVitA-4     BANGLADESH                     1           2394    3071
6-9 months     JiVitA-4     BANGLADESH                     0            677    3071
6-9 months     LCNI-5       MALAWI                         1              3     553
6-9 months     LCNI-5       MALAWI                         0            550     553
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
6-9 months     NIH-Crypto   BANGLADESH                     1            594     683
6-9 months     NIH-Crypto   BANGLADESH                     0             89     683
6-9 months     PROVIDE      BANGLADESH                     1              6       6
6-9 months     PROVIDE      BANGLADESH                     0              0       6
9-12 months    COHORTS      GUATEMALA                      1             67     680
9-12 months    COHORTS      GUATEMALA                      0            613     680
9-12 months    COHORTS      INDIA                          1           1475    3747
9-12 months    COHORTS      INDIA                          0           2272    3747
9-12 months    CONTENT      PERU                           1            198     212
9-12 months    CONTENT      PERU                           0             14     212
9-12 months    JiVitA-4     BANGLADESH                     1           2747    3516
9-12 months    JiVitA-4     BANGLADESH                     0            769    3516
9-12 months    LCNI-5       MALAWI                         1              3     378
9-12 months    LCNI-5       MALAWI                         0            375     378
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
9-12 months    NIH-Birth    BANGLADESH                     1            189     481
9-12 months    NIH-Birth    BANGLADESH                     0            292     481
9-12 months    NIH-Crypto   BANGLADESH                     1            585     673
9-12 months    NIH-Crypto   BANGLADESH                     0             88     673
9-12 months    PROVIDE      BANGLADESH                     1              6       6
9-12 months    PROVIDE      BANGLADESH                     0              0       6
12-15 months   COHORTS      GUATEMALA                      1             67     705
12-15 months   COHORTS      GUATEMALA                      0            638     705
12-15 months   CONTENT      PERU                           1            186     199
12-15 months   CONTENT      PERU                           0             13     199
12-15 months   JiVitA-4     BANGLADESH                     1           2761    3549
12-15 months   JiVitA-4     BANGLADESH                     0            788    3549
12-15 months   LCNI-5       MALAWI                         1              0     125
12-15 months   LCNI-5       MALAWI                         0            125     125
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
12-15 months   NIH-Crypto   BANGLADESH                     1            568     655
12-15 months   NIH-Crypto   BANGLADESH                     0             87     655
12-15 months   PROVIDE      BANGLADESH                     1              8       8
12-15 months   PROVIDE      BANGLADESH                     0              0       8
15-18 months   COHORTS      GUATEMALA                      1             59     652
15-18 months   COHORTS      GUATEMALA                      0            593     652
15-18 months   CONTENT      PERU                           1            176     189
15-18 months   CONTENT      PERU                           0             13     189
15-18 months   JiVitA-4     BANGLADESH                     1           2734    3508
15-18 months   JiVitA-4     BANGLADESH                     0            774    3508
15-18 months   LCNI-5       MALAWI                         1              0     118
15-18 months   LCNI-5       MALAWI                         0            118     118
15-18 months   MAL-ED       BANGLADESH                     1            179     212
15-18 months   MAL-ED       BANGLADESH                     0             33     212
15-18 months   MAL-ED       BRAZIL                         1            172     175
15-18 months   MAL-ED       BRAZIL                         0              3     175
15-18 months   MAL-ED       INDIA                          1            104     224
15-18 months   MAL-ED       INDIA                          0            120     224
15-18 months   MAL-ED       NEPAL                          1            226     227
15-18 months   MAL-ED       NEPAL                          0              1     227
15-18 months   MAL-ED       PERU                           1             50     209
15-18 months   MAL-ED       PERU                           0            159     209
15-18 months   MAL-ED       SOUTH AFRICA                   1              4     222
15-18 months   MAL-ED       SOUTH AFRICA                   0            218     222
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     214
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            214     214
15-18 months   NIH-Birth    BANGLADESH                     1            180     449
15-18 months   NIH-Birth    BANGLADESH                     0            269     449
15-18 months   NIH-Crypto   BANGLADESH                     1            511     594
15-18 months   NIH-Crypto   BANGLADESH                     0             83     594
15-18 months   PROVIDE      BANGLADESH                     1             10      10
15-18 months   PROVIDE      BANGLADESH                     0              0      10
18-21 months   COHORTS      GUATEMALA                      1             63     674
18-21 months   COHORTS      GUATEMALA                      0            611     674
18-21 months   CONTENT      PERU                           1            171     183
18-21 months   CONTENT      PERU                           0             12     183
18-21 months   LCNI-5       MALAWI                         1              3     451
18-21 months   LCNI-5       MALAWI                         0            448     451
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
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     202
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            202     202
18-21 months   NIH-Birth    BANGLADESH                     1            169     422
18-21 months   NIH-Birth    BANGLADESH                     0            253     422
18-21 months   NIH-Crypto   BANGLADESH                     1            464     536
18-21 months   NIH-Crypto   BANGLADESH                     0             72     536
18-21 months   PROVIDE      BANGLADESH                     1              9       9
18-21 months   PROVIDE      BANGLADESH                     0              0       9
21-24 months   COHORTS      GUATEMALA                      1             68     733
21-24 months   COHORTS      GUATEMALA                      0            665     733
21-24 months   CONTENT      PERU                           1             36      38
21-24 months   CONTENT      PERU                           0              2      38
21-24 months   LCNI-5       MALAWI                         1              3     382
21-24 months   LCNI-5       MALAWI                         0            379     382
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
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     200
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            200     200
21-24 months   NIH-Birth    BANGLADESH                     1            163     411
21-24 months   NIH-Birth    BANGLADESH                     0            248     411
21-24 months   NIH-Crypto   BANGLADESH                     1            412     482
21-24 months   NIH-Crypto   BANGLADESH                     0             70     482
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
![](/tmp/4ccbe70e-f98c-40e1-b8c3-915a900d9ed2/96c27d16-cc06-4cce-988a-aa6892050175/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4ccbe70e-f98c-40e1-b8c3-915a900d9ed2/96c27d16-cc06-4cce-988a-aa6892050175/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4ccbe70e-f98c-40e1-b8c3-915a900d9ed2/96c27d16-cc06-4cce-988a-aa6892050175/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS      GUATEMALA    1                    NA                0.8056445   0.7445857   0.8667032
0-3 months     COHORTS      GUATEMALA    0                    NA                0.7817363   0.7594057   0.8040670
0-3 months     COHORTS      INDIA        1                    NA                0.8365663   0.8278444   0.8452882
0-3 months     COHORTS      INDIA        0                    NA                0.7868571   0.7799844   0.7937299
0-3 months     JiVitA-3     BANGLADESH   1                    NA                0.8789711   0.8753584   0.8825837
0-3 months     JiVitA-3     BANGLADESH   0                    NA                0.8538187   0.8487928   0.8588445
0-3 months     JiVitA-4     BANGLADESH   1                    NA                0.8935179   0.8823015   0.9047343
0-3 months     JiVitA-4     BANGLADESH   0                    NA                0.8769264   0.8519533   0.9018994
0-3 months     MAL-ED       BANGLADESH   1                    NA                0.8816978   0.8558420   0.9075535
0-3 months     MAL-ED       BANGLADESH   0                    NA                0.8536546   0.7953468   0.9119623
0-3 months     MAL-ED       INDIA        1                    NA                0.7617555   0.7313728   0.7921382
0-3 months     MAL-ED       INDIA        0                    NA                0.7622248   0.7293517   0.7950979
0-3 months     MAL-ED       PERU         1                    NA                0.9725875   0.9194827   1.0256922
0-3 months     MAL-ED       PERU         0                    NA                0.9677461   0.9380054   0.9974869
0-3 months     NIH-Birth    BANGLADESH   1                    NA                0.8422352   0.8179717   0.8664987
0-3 months     NIH-Birth    BANGLADESH   0                    NA                0.8002089   0.7776464   0.8227714
0-3 months     NIH-Crypto   BANGLADESH   1                    NA                0.8828827   0.8674958   0.8982696
0-3 months     NIH-Crypto   BANGLADESH   0                    NA                0.8965353   0.8484395   0.9446310
3-6 months     COHORTS      GUATEMALA    1                    NA                0.4577013   0.4220769   0.4933256
3-6 months     COHORTS      GUATEMALA    0                    NA                0.4498866   0.4359045   0.4638686
3-6 months     COHORTS      INDIA        1                    NA                0.5025427   0.4953289   0.5097565
3-6 months     COHORTS      INDIA        0                    NA                0.4595766   0.4539677   0.4651855
3-6 months     CONTENT      PERU         1                    NA                0.5911256   0.5690120   0.6132393
3-6 months     CONTENT      PERU         0                    NA                0.5488862   0.4887070   0.6090655
3-6 months     JiVitA-3     BANGLADESH   1                    NA                0.4451631   0.4416727   0.4486534
3-6 months     JiVitA-3     BANGLADESH   0                    NA                0.4319021   0.4266845   0.4371197
3-6 months     JiVitA-4     BANGLADESH   1                    NA                0.4424431   0.4324024   0.4524839
3-6 months     JiVitA-4     BANGLADESH   0                    NA                0.4276902   0.4093701   0.4460104
3-6 months     MAL-ED       BANGLADESH   1                    NA                0.4752853   0.4573938   0.4931768
3-6 months     MAL-ED       BANGLADESH   0                    NA                0.4713904   0.4264237   0.5163572
3-6 months     MAL-ED       INDIA        1                    NA                0.4494567   0.4220908   0.4768227
3-6 months     MAL-ED       INDIA        0                    NA                0.4411569   0.4181798   0.4641340
3-6 months     MAL-ED       PERU         1                    NA                0.4826222   0.4483035   0.5169409
3-6 months     MAL-ED       PERU         0                    NA                0.5031023   0.4801477   0.5260570
3-6 months     NIH-Birth    BANGLADESH   1                    NA                0.4775071   0.4537920   0.5012223
3-6 months     NIH-Birth    BANGLADESH   0                    NA                0.4483305   0.4248392   0.4718218
3-6 months     NIH-Crypto   BANGLADESH   1                    NA                0.4960825   0.4842805   0.5078846
3-6 months     NIH-Crypto   BANGLADESH   0                    NA                0.5139361   0.4803355   0.5475367
6-9 months     COHORTS      GUATEMALA    1                    NA                0.2542291   0.2181816   0.2902767
6-9 months     COHORTS      GUATEMALA    0                    NA                0.2084774   0.1964916   0.2204632
6-9 months     COHORTS      INDIA        1                    NA                0.2942543   0.2868568   0.3016517
6-9 months     COHORTS      INDIA        0                    NA                0.2601635   0.2542094   0.2661176
6-9 months     CONTENT      PERU         1                    NA                0.3226037   0.3026377   0.3425697
6-9 months     CONTENT      PERU         0                    NA                0.2854305   0.2025728   0.3682881
6-9 months     JiVitA-4     BANGLADESH   1                    NA                0.2400253   0.2339655   0.2460850
6-9 months     JiVitA-4     BANGLADESH   0                    NA                0.2392417   0.2283654   0.2501179
6-9 months     MAL-ED       BANGLADESH   1                    NA                0.2458602   0.2293499   0.2623705
6-9 months     MAL-ED       BANGLADESH   0                    NA                0.2281466   0.2003994   0.2558937
6-9 months     MAL-ED       INDIA        1                    NA                0.2471296   0.2247587   0.2695005
6-9 months     MAL-ED       INDIA        0                    NA                0.2209930   0.2010823   0.2409037
6-9 months     MAL-ED       PERU         1                    NA                0.2680900   0.2359294   0.3002506
6-9 months     MAL-ED       PERU         0                    NA                0.2570545   0.2390954   0.2750136
6-9 months     NIH-Birth    BANGLADESH   1                    NA                0.2490912   0.2257905   0.2723919
6-9 months     NIH-Birth    BANGLADESH   0                    NA                0.2281399   0.2113147   0.2449651
6-9 months     NIH-Crypto   BANGLADESH   1                    NA                0.2664878   0.2548049   0.2781706
6-9 months     NIH-Crypto   BANGLADESH   0                    NA                0.2689019   0.2451508   0.2926530
9-12 months    COHORTS      GUATEMALA    1                    NA                0.1646697   0.1300916   0.1992478
9-12 months    COHORTS      GUATEMALA    0                    NA                0.1491718   0.1382502   0.1600934
9-12 months    COHORTS      INDIA        1                    NA                0.2279259   0.2203413   0.2355106
9-12 months    COHORTS      INDIA        0                    NA                0.2046250   0.1983954   0.2108545
9-12 months    CONTENT      PERU         1                    NA                0.2274345   0.2087828   0.2460863
9-12 months    CONTENT      PERU         0                    NA                0.1832816   0.1104572   0.2561059
9-12 months    JiVitA-4     BANGLADESH   1                    NA                0.1542405   0.1494931   0.1589879
9-12 months    JiVitA-4     BANGLADESH   0                    NA                0.1554835   0.1462045   0.1647625
9-12 months    MAL-ED       BANGLADESH   1                    NA                0.1776926   0.1624089   0.1929764
9-12 months    MAL-ED       BANGLADESH   0                    NA                0.1477483   0.1203482   0.1751484
9-12 months    MAL-ED       INDIA        1                    NA                0.1757032   0.1525491   0.1988573
9-12 months    MAL-ED       INDIA        0                    NA                0.1812467   0.1638948   0.1985986
9-12 months    MAL-ED       PERU         1                    NA                0.1986981   0.1693399   0.2280563
9-12 months    MAL-ED       PERU         0                    NA                0.1844897   0.1663319   0.2026474
9-12 months    NIH-Birth    BANGLADESH   1                    NA                0.1714873   0.1512894   0.1916852
9-12 months    NIH-Birth    BANGLADESH   0                    NA                0.1585300   0.1413101   0.1757499
9-12 months    NIH-Crypto   BANGLADESH   1                    NA                0.1984662   0.1870530   0.2098794
9-12 months    NIH-Crypto   BANGLADESH   0                    NA                0.1969927   0.1708996   0.2230857
12-15 months   COHORTS      GUATEMALA    1                    NA                0.1708504   0.1391393   0.2025615
12-15 months   COHORTS      GUATEMALA    0                    NA                0.1488591   0.1377353   0.1599829
12-15 months   CONTENT      PERU         1                    NA                0.1821174   0.1624842   0.2017506
12-15 months   CONTENT      PERU         0                    NA                0.1661923   0.1137519   0.2186327
12-15 months   JiVitA-4     BANGLADESH   1                    NA                0.1329046   0.1280909   0.1377182
12-15 months   JiVitA-4     BANGLADESH   0                    NA                0.1218837   0.1142165   0.1295510
12-15 months   MAL-ED       BANGLADESH   1                    NA                0.1409635   0.1242334   0.1576937
12-15 months   MAL-ED       BANGLADESH   0                    NA                0.1038312   0.0599969   0.1476654
12-15 months   MAL-ED       INDIA        1                    NA                0.1906250   0.1659433   0.2153067
12-15 months   MAL-ED       INDIA        0                    NA                0.1593930   0.1397517   0.1790344
12-15 months   MAL-ED       PERU         1                    NA                0.1353609   0.1027880   0.1679338
12-15 months   MAL-ED       PERU         0                    NA                0.1431119   0.1231262   0.1630976
12-15 months   NIH-Birth    BANGLADESH   1                    NA                0.1212911   0.1027156   0.1398666
12-15 months   NIH-Birth    BANGLADESH   0                    NA                0.1364632   0.1207625   0.1521638
12-15 months   NIH-Crypto   BANGLADESH   1                    NA                0.1651240   0.1535841   0.1766639
12-15 months   NIH-Crypto   BANGLADESH   0                    NA                0.1635574   0.1360903   0.1910245
15-18 months   COHORTS      GUATEMALA    1                    NA                0.1164801   0.0779467   0.1550136
15-18 months   COHORTS      GUATEMALA    0                    NA                0.1397236   0.1268663   0.1525808
15-18 months   CONTENT      PERU         1                    NA                0.1676773   0.1487768   0.1865778
15-18 months   CONTENT      PERU         0                    NA                0.2184158   0.1458818   0.2909499
15-18 months   JiVitA-4     BANGLADESH   1                    NA                0.1597767   0.1542564   0.1652970
15-18 months   JiVitA-4     BANGLADESH   0                    NA                0.1586630   0.1497197   0.1676064
15-18 months   MAL-ED       BANGLADESH   1                    NA                0.1359352   0.1191473   0.1527231
15-18 months   MAL-ED       BANGLADESH   0                    NA                0.1799605   0.1403588   0.2195621
15-18 months   MAL-ED       INDIA        1                    NA                0.1629641   0.1384071   0.1875212
15-18 months   MAL-ED       INDIA        0                    NA                0.1612169   0.1429949   0.1794389
15-18 months   MAL-ED       PERU         1                    NA                0.1397251   0.1053385   0.1741116
15-18 months   MAL-ED       PERU         0                    NA                0.1465770   0.1237667   0.1693873
15-18 months   NIH-Birth    BANGLADESH   1                    NA                0.1646894   0.1427840   0.1865949
15-18 months   NIH-Birth    BANGLADESH   0                    NA                0.1451518   0.1258614   0.1644422
15-18 months   NIH-Crypto   BANGLADESH   1                    NA                0.1595933   0.1482148   0.1709717
15-18 months   NIH-Crypto   BANGLADESH   0                    NA                0.1682426   0.1378176   0.1986675
18-21 months   COHORTS      GUATEMALA    1                    NA                0.1640003   0.1224059   0.2055948
18-21 months   COHORTS      GUATEMALA    0                    NA                0.1623156   0.1502428   0.1743883
18-21 months   CONTENT      PERU         1                    NA                0.1911379   0.1713784   0.2108974
18-21 months   CONTENT      PERU         0                    NA                0.2067950   0.1483600   0.2652300
18-21 months   MAL-ED       BANGLADESH   1                    NA                0.1504503   0.1337949   0.1671057
18-21 months   MAL-ED       BANGLADESH   0                    NA                0.0965586   0.0357345   0.1573828
18-21 months   MAL-ED       INDIA        1                    NA                0.1804073   0.1570656   0.2037489
18-21 months   MAL-ED       INDIA        0                    NA                0.1687529   0.1496425   0.1878633
18-21 months   MAL-ED       PERU         1                    NA                0.1619131   0.1244871   0.1993391
18-21 months   MAL-ED       PERU         0                    NA                0.1636731   0.1411986   0.1861477
18-21 months   NIH-Birth    BANGLADESH   1                    NA                0.1620744   0.1373748   0.1867739
18-21 months   NIH-Birth    BANGLADESH   0                    NA                0.1793627   0.1581786   0.2005469
18-21 months   NIH-Crypto   BANGLADESH   1                    NA                0.1406653   0.1288855   0.1524450
18-21 months   NIH-Crypto   BANGLADESH   0                    NA                0.1485800   0.1205524   0.1766075
21-24 months   COHORTS      GUATEMALA    1                    NA                0.2116108   0.1830439   0.2401777
21-24 months   COHORTS      GUATEMALA    0                    NA                0.1847636   0.1726669   0.1968604
21-24 months   MAL-ED       BANGLADESH   1                    NA                0.1535248   0.1368357   0.1702138
21-24 months   MAL-ED       BANGLADESH   0                    NA                0.1434659   0.1095258   0.1774059
21-24 months   MAL-ED       INDIA        1                    NA                0.1629402   0.1424350   0.1834455
21-24 months   MAL-ED       INDIA        0                    NA                0.1503195   0.1333651   0.1672740
21-24 months   MAL-ED       PERU         1                    NA                0.1808473   0.1414542   0.2202403
21-24 months   MAL-ED       PERU         0                    NA                0.1783159   0.1548804   0.2017514
21-24 months   NIH-Birth    BANGLADESH   1                    NA                0.1529366   0.1292502   0.1766229
21-24 months   NIH-Birth    BANGLADESH   0                    NA                0.1347671   0.1150226   0.1545117
21-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.1681730   0.1542954   0.1820507
21-24 months   NIH-Crypto   BANGLADESH   0                    NA                0.2153043   0.1837978   0.2468108


### Parameter: E(Y)


agecat         studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS      GUATEMALA    NA                   NA                0.7842946   0.7633006   0.8052885
0-3 months     COHORTS      INDIA        NA                   NA                0.8055731   0.8001316   0.8110146
0-3 months     JiVitA-3     BANGLADESH   NA                   NA                0.8710593   0.8679755   0.8741431
0-3 months     JiVitA-4     BANGLADESH   NA                   NA                0.8897517   0.8792503   0.9002532
0-3 months     MAL-ED       BANGLADESH   NA                   NA                0.8772390   0.8535646   0.9009134
0-3 months     MAL-ED       INDIA        NA                   NA                0.7620085   0.7394216   0.7845954
0-3 months     MAL-ED       PERU         NA                   NA                0.9689288   0.9429768   0.9948807
0-3 months     NIH-Birth    BANGLADESH   NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     NIH-Crypto   BANGLADESH   NA                   NA                0.8845080   0.8697896   0.8992264
3-6 months     COHORTS      GUATEMALA    NA                   NA                0.4507062   0.4376433   0.4637691
3-6 months     COHORTS      INDIA        NA                   NA                0.4758823   0.4714157   0.4803490
3-6 months     CONTENT      PERU         NA                   NA                0.5883623   0.5672770   0.6094476
3-6 months     JiVitA-3     BANGLADESH   NA                   NA                0.4413966   0.4384254   0.4443678
3-6 months     JiVitA-4     BANGLADESH   NA                   NA                0.4391710   0.4303780   0.4479640
3-6 months     MAL-ED       BANGLADESH   NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     MAL-ED       INDIA        NA                   NA                0.4449792   0.4272939   0.4626645
3-6 months     MAL-ED       PERU         NA                   NA                0.4981398   0.4788320   0.5174477
3-6 months     NIH-Birth    BANGLADESH   NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     NIH-Crypto   BANGLADESH   NA                   NA                0.4982529   0.4871014   0.5094044
6-9 months     COHORTS      GUATEMALA    NA                   NA                0.2132733   0.2018429   0.2247038
6-9 months     COHORTS      INDIA        NA                   NA                0.2732584   0.2685932   0.2779236
6-9 months     CONTENT      PERU         NA                   NA                0.3201718   0.3007014   0.3396422
6-9 months     JiVitA-4     BANGLADESH   NA                   NA                0.2398525   0.2345783   0.2451267
6-9 months     MAL-ED       BANGLADESH   NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     MAL-ED       INDIA        NA                   NA                0.2329150   0.2179398   0.2478901
6-9 months     MAL-ED       PERU         NA                   NA                0.2596511   0.2439596   0.2753427
6-9 months     NIH-Birth    BANGLADESH   NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     NIH-Crypto   BANGLADESH   NA                   NA                0.2668023   0.2561807   0.2774240
9-12 months    COHORTS      GUATEMALA    NA                   NA                0.1506988   0.1402747   0.1611229
9-12 months    COHORTS      INDIA        NA                   NA                0.2137973   0.2089688   0.2186259
9-12 months    CONTENT      PERU         NA                   NA                0.2245187   0.2063866   0.2426509
9-12 months    JiVitA-4     BANGLADESH   NA                   NA                0.1545123   0.1502488   0.1587759
9-12 months    MAL-ED       BANGLADESH   NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    MAL-ED       INDIA        NA                   NA                0.1787090   0.1645315   0.1928865
9-12 months    MAL-ED       PERU         NA                   NA                0.1877302   0.1721772   0.2032832
9-12 months    NIH-Birth    BANGLADESH   NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    NIH-Crypto   BANGLADESH   NA                   NA                0.1982735   0.1877823   0.2087647
12-15 months   COHORTS      GUATEMALA    NA                   NA                0.1509490   0.1404302   0.1614679
12-15 months   CONTENT      PERU         NA                   NA                0.1810771   0.1624014   0.1997528
12-15 months   JiVitA-4     BANGLADESH   NA                   NA                0.1304576   0.1263404   0.1345747
12-15 months   MAL-ED       BANGLADESH   NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   MAL-ED       INDIA        NA                   NA                0.1737542   0.1580843   0.1894241
12-15 months   MAL-ED       PERU         NA                   NA                0.1412986   0.1241913   0.1584059
12-15 months   NIH-Birth    BANGLADESH   NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   NIH-Crypto   BANGLADESH   NA                   NA                0.1649159   0.1542644   0.1755674
15-18 months   COHORTS      GUATEMALA    NA                   NA                0.1376203   0.1254069   0.1498336
15-18 months   CONTENT      PERU         NA                   NA                0.1711673   0.1527815   0.1895531
15-18 months   JiVitA-4     BANGLADESH   NA                   NA                0.1595310   0.1548323   0.1642296
15-18 months   MAL-ED       BANGLADESH   NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   MAL-ED       INDIA        NA                   NA                0.1620281   0.1470182   0.1770381
15-18 months   MAL-ED       PERU         NA                   NA                0.1449378   0.1257292   0.1641464
15-18 months   NIH-Birth    BANGLADESH   NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   NIH-Crypto   BANGLADESH   NA                   NA                0.1608018   0.1501273   0.1714764
18-21 months   COHORTS      GUATEMALA    NA                   NA                0.1624730   0.1508586   0.1740875
18-21 months   CONTENT      PERU         NA                   NA                0.1921646   0.1732990   0.2110302
18-21 months   MAL-ED       BANGLADESH   NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   MAL-ED       INDIA        NA                   NA                0.1741118   0.1592007   0.1890230
18-21 months   MAL-ED       PERU         NA                   NA                0.1632287   0.1439532   0.1825042
18-21 months   NIH-Birth    BANGLADESH   NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   NIH-Crypto   BANGLADESH   NA                   NA                0.1417284   0.1308558   0.1526011
21-24 months   COHORTS      GUATEMALA    NA                   NA                0.1872542   0.1759502   0.1985583
21-24 months   MAL-ED       BANGLADESH   NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   MAL-ED       INDIA        NA                   NA                0.1561228   0.1429524   0.1692932
21-24 months   MAL-ED       PERU         NA                   NA                0.1789625   0.1588192   0.1991058
21-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.1750178   0.1622174   0.1878182


### Parameter: ATE


agecat         studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS      GUATEMALA    0                    1                 -0.0239081   -0.0889222    0.0411059
0-3 months     COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS      INDIA        0                    1                 -0.0497091   -0.0608135   -0.0386048
0-3 months     JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3     BANGLADESH   0                    1                 -0.0251524   -0.0310357   -0.0192691
0-3 months     JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4     BANGLADESH   0                    1                 -0.0165915   -0.0437827    0.0105997
0-3 months     MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BANGLADESH   0                    1                 -0.0280432   -0.0918265    0.0357402
0-3 months     MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       INDIA        0                    1                  0.0004694   -0.0442939    0.0452326
0-3 months     MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU         0                    1                 -0.0048414   -0.0657070    0.0560243
0-3 months     NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH   0                    1                 -0.0420263   -0.0751591   -0.0088935
0-3 months     NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH   0                    1                  0.0136526   -0.0368445    0.0641496
3-6 months     COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS      GUATEMALA    0                    1                 -0.0078147   -0.0460847    0.0304553
3-6 months     COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS      INDIA        0                    1                 -0.0429661   -0.0521039   -0.0338283
3-6 months     CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CONTENT      PERU         0                    1                 -0.0422394   -0.1063530    0.0218742
3-6 months     JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3     BANGLADESH   0                    1                 -0.0132610   -0.0194180   -0.0071039
3-6 months     JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4     BANGLADESH   0                    1                 -0.0147529   -0.0357225    0.0062167
3-6 months     MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BANGLADESH   0                    1                 -0.0038948   -0.0522902    0.0445005
3-6 months     MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA        0                    1                 -0.0082998   -0.0440328    0.0274331
3-6 months     MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU         0                    1                  0.0204801   -0.0208077    0.0617680
3-6 months     NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH   0                    1                 -0.0291767   -0.0625570    0.0042037
3-6 months     NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH   0                    1                  0.0178536   -0.0177595    0.0534666
6-9 months     COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS      GUATEMALA    0                    1                 -0.0457518   -0.0837397   -0.0077638
6-9 months     COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS      INDIA        0                    1                 -0.0340908   -0.0435867   -0.0245948
6-9 months     CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CONTENT      PERU         0                    1                 -0.0371733   -0.1224026    0.0480561
6-9 months     JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4     BANGLADESH   0                    1                 -0.0007836   -0.0132947    0.0117274
6-9 months     MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BANGLADESH   0                    1                 -0.0177136   -0.0500013    0.0145740
6-9 months     MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA        0                    1                 -0.0261366   -0.0560848    0.0038116
6-9 months     MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU         0                    1                 -0.0110355   -0.0478707    0.0257997
6-9 months     NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH   0                    1                 -0.0209513   -0.0496917    0.0077891
6-9 months     NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH   0                    1                  0.0024142   -0.0240548    0.0288831
9-12 months    COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS      GUATEMALA    0                    1                 -0.0154980   -0.0517599    0.0207640
9-12 months    COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS      INDIA        0                    1                 -0.0233010   -0.0331160   -0.0134860
9-12 months    CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CONTENT      PERU         0                    1                 -0.0441530   -0.1193279    0.0310220
9-12 months    JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4     BANGLADESH   0                    1                  0.0012430   -0.0090969    0.0115829
9-12 months    MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BANGLADESH   0                    1                 -0.0299443   -0.0613188    0.0014302
9-12 months    MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA        0                    1                  0.0055435   -0.0233909    0.0344780
9-12 months    MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU         0                    1                 -0.0142085   -0.0487281    0.0203112
9-12 months    NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH   0                    1                 -0.0129573   -0.0394993    0.0135848
9-12 months    NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH   0                    1                 -0.0014736   -0.0299535    0.0270064
12-15 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS      GUATEMALA    0                    1                 -0.0219913   -0.0555968    0.0116142
12-15 months   CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CONTENT      PERU         0                    1                 -0.0159251   -0.0719203    0.0400701
12-15 months   JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4     BANGLADESH   0                    1                 -0.0110208   -0.0200618   -0.0019798
12-15 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BANGLADESH   0                    1                 -0.0371323   -0.0840508    0.0097861
12-15 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA        0                    1                 -0.0312320   -0.0627751    0.0003112
12-15 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU         0                    1                  0.0077510   -0.0304644    0.0459664
12-15 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH   0                    1                  0.0151721   -0.0091499    0.0394941
12-15 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH   0                    1                 -0.0015666   -0.0313595    0.0282262
15-18 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS      GUATEMALA    0                    1                  0.0232434   -0.0173785    0.0638653
15-18 months   CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CONTENT      PERU         0                    1                  0.0507385   -0.0242175    0.1256946
15-18 months   JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4     BANGLADESH   0                    1                 -0.0011137   -0.0117146    0.0094873
15-18 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BANGLADESH   0                    1                  0.0440253    0.0010122    0.0870384
15-18 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA        0                    1                 -0.0017473   -0.0323265    0.0288320
15-18 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU         0                    1                  0.0068520   -0.0344124    0.0481163
15-18 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH   0                    1                 -0.0195376   -0.0487261    0.0096509
15-18 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH   0                    1                  0.0086493   -0.0238337    0.0411323
18-21 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS      GUATEMALA    0                    1                 -0.0016848   -0.0449959    0.0416263
18-21 months   CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CONTENT      PERU         0                    1                  0.0156571   -0.0460282    0.0773425
18-21 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BANGLADESH   0                    1                 -0.0538917   -0.1169549    0.0091716
18-21 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA        0                    1                 -0.0116544   -0.0418213    0.0185124
18-21 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU         0                    1                  0.0017600   -0.0418956    0.0454156
18-21 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH   0                    1                  0.0172884   -0.0152514    0.0498281
18-21 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH   0                    1                  0.0079147   -0.0224878    0.0383171
21-24 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS      GUATEMALA    0                    1                 -0.0268472   -0.0578698    0.0041754
21-24 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BANGLADESH   0                    1                 -0.0100589   -0.0478802    0.0277624
21-24 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA        0                    1                 -0.0126207   -0.0392274    0.0139860
21-24 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU         0                    1                 -0.0025314   -0.0483684    0.0433056
21-24 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH   0                    1                 -0.0181694   -0.0490059    0.0126671
21-24 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH   0                    1                  0.0471313    0.0127038    0.0815587


### Parameter: PAR


agecat         studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS      GUATEMALA    1                    NA                -0.0213499   -0.0794107    0.0367109
0-3 months     COHORTS      INDIA        1                    NA                -0.0309932   -0.0379500   -0.0240363
0-3 months     JiVitA-3     BANGLADESH   1                    NA                -0.0079118   -0.0097608   -0.0060627
0-3 months     JiVitA-4     BANGLADESH   1                    NA                -0.0037662   -0.0100457    0.0025133
0-3 months     MAL-ED       BANGLADESH   1                    NA                -0.0044587   -0.0146834    0.0057659
0-3 months     MAL-ED       INDIA        1                    NA                 0.0002530   -0.0238802    0.0243863
0-3 months     MAL-ED       PERU         1                    NA                -0.0036587   -0.0496571    0.0423397
0-3 months     NIH-Birth    BANGLADESH   1                    NA                -0.0258852   -0.0463623   -0.0054082
0-3 months     NIH-Crypto   BANGLADESH   1                    NA                 0.0016253   -0.0043950    0.0076456
3-6 months     COHORTS      GUATEMALA    1                    NA                -0.0069951   -0.0412518    0.0272617
3-6 months     COHORTS      INDIA        1                    NA                -0.0266604   -0.0323606   -0.0209602
3-6 months     CONTENT      PERU         1                    NA                -0.0027633   -0.0071860    0.0016593
3-6 months     JiVitA-3     BANGLADESH   1                    NA                -0.0037665   -0.0055204   -0.0020126
3-6 months     JiVitA-4     BANGLADESH   1                    NA                -0.0032721   -0.0079150    0.0013708
3-6 months     MAL-ED       BANGLADESH   1                    NA                -0.0006352   -0.0085302    0.0072598
3-6 months     MAL-ED       INDIA        1                    NA                -0.0044775   -0.0237620    0.0148070
3-6 months     MAL-ED       PERU         1                    NA                 0.0155176   -0.0157841    0.0468194
3-6 months     NIH-Birth    BANGLADESH   1                    NA                -0.0181096   -0.0388641    0.0026448
3-6 months     NIH-Crypto   BANGLADESH   1                    NA                 0.0021703   -0.0021807    0.0065214
6-9 months     COHORTS      GUATEMALA    1                    NA                -0.0409558   -0.0749802   -0.0069315
6-9 months     COHORTS      INDIA        1                    NA                -0.0209958   -0.0268650   -0.0151267
6-9 months     CONTENT      PERU         1                    NA                -0.0024319   -0.0081427    0.0032789
6-9 months     JiVitA-4     BANGLADESH   1                    NA                -0.0001727   -0.0029305    0.0025850
6-9 months     MAL-ED       BANGLADESH   1                    NA                -0.0030050   -0.0085514    0.0025415
6-9 months     MAL-ED       INDIA        1                    NA                -0.0142147   -0.0305901    0.0021607
6-9 months     MAL-ED       PERU         1                    NA                -0.0084389   -0.0366133    0.0197355
6-9 months     NIH-Birth    BANGLADESH   1                    NA                -0.0128316   -0.0304566    0.0047933
6-9 months     NIH-Crypto   BANGLADESH   1                    NA                 0.0003146   -0.0031351    0.0037642
9-12 months    COHORTS      GUATEMALA    1                    NA                -0.0139709   -0.0466618    0.0187199
9-12 months    COHORTS      INDIA        1                    NA                -0.0141286   -0.0200911   -0.0081661
9-12 months    CONTENT      PERU         1                    NA                -0.0029158   -0.0080959    0.0022644
9-12 months    JiVitA-4     BANGLADESH   1                    NA                 0.0002719   -0.0019873    0.0025310
9-12 months    MAL-ED       BANGLADESH   1                    NA                -0.0046580   -0.0097412    0.0004252
9-12 months    MAL-ED       INDIA        1                    NA                 0.0030058   -0.0126873    0.0186989
9-12 months    MAL-ED       PERU         1                    NA                -0.0109679   -0.0376260    0.0156901
9-12 months    NIH-Birth    BANGLADESH   1                    NA                -0.0078659   -0.0239887    0.0082568
9-12 months    NIH-Crypto   BANGLADESH   1                    NA                -0.0001927   -0.0039168    0.0035315
12-15 months   COHORTS      GUATEMALA    1                    NA                -0.0199013   -0.0503169    0.0105142
12-15 months   CONTENT      PERU         1                    NA                -0.0010403   -0.0047391    0.0026585
12-15 months   JiVitA-4     BANGLADESH   1                    NA                -0.0024470   -0.0044547   -0.0004394
12-15 months   MAL-ED       BANGLADESH   1                    NA                -0.0056049   -0.0129105    0.0017007
12-15 months   MAL-ED       INDIA        1                    NA                -0.0168708   -0.0340318    0.0002901
12-15 months   MAL-ED       PERU         1                    NA                 0.0059377   -0.0233407    0.0352161
12-15 months   NIH-Birth    BANGLADESH   1                    NA                 0.0092151   -0.0055729    0.0240032
12-15 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0002081   -0.0041655    0.0037493
15-18 months   COHORTS      GUATEMALA    1                    NA                 0.0211401   -0.0158094    0.0580897
15-18 months   CONTENT      PERU         1                    NA                 0.0034900   -0.0019828    0.0089627
15-18 months   JiVitA-4     BANGLADESH   1                    NA                -0.0002457   -0.0025829    0.0020915
15-18 months   MAL-ED       BANGLADESH   1                    NA                 0.0068530   -0.0001803    0.0138862
15-18 months   MAL-ED       INDIA        1                    NA                -0.0009360   -0.0173181    0.0154461
15-18 months   MAL-ED       PERU         1                    NA                 0.0052127   -0.0261823    0.0366077
15-18 months   NIH-Birth    BANGLADESH   1                    NA                -0.0117052   -0.0292147    0.0058044
15-18 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0012086   -0.0033367    0.0057539
18-21 months   COHORTS      GUATEMALA    1                    NA                -0.0015273   -0.0407901    0.0377354
18-21 months   CONTENT      PERU         1                    NA                 0.0010267   -0.0030572    0.0051106
18-21 months   MAL-ED       BANGLADESH   1                    NA                -0.0077356   -0.0171450    0.0016737
18-21 months   MAL-ED       INDIA        1                    NA                -0.0062955   -0.0226088    0.0100178
18-21 months   MAL-ED       PERU         1                    NA                 0.0013155   -0.0313161    0.0339472
18-21 months   NIH-Birth    BANGLADESH   1                    NA                 0.0103648   -0.0091604    0.0298900
18-21 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0010632   -0.0030271    0.0051535
21-24 months   COHORTS      GUATEMALA    1                    NA                -0.0243566   -0.0525069    0.0037937
21-24 months   MAL-ED       BANGLADESH   1                    NA                -0.0014092   -0.0067293    0.0039108
21-24 months   MAL-ED       INDIA        1                    NA                -0.0068174   -0.0212135    0.0075786
21-24 months   MAL-ED       PERU         1                    NA                -0.0018848   -0.0360138    0.0322442
21-24 months   NIH-Birth    BANGLADESH   1                    NA                -0.0109635   -0.0295904    0.0076633
21-24 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0068448    0.0016294    0.0120602
