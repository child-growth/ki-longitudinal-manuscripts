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







# Results Detail

## Results Plots
![](/tmp/57dc3274-d844-4083-a1e7-5e277bffe660/ef0c1f11-dfd3-4dd3-9f1a-c89a77dfc248/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/57dc3274-d844-4083-a1e7-5e277bffe660/ef0c1f11-dfd3-4dd3-9f1a-c89a77dfc248/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/57dc3274-d844-4083-a1e7-5e277bffe660/ef0c1f11-dfd3-4dd3-9f1a-c89a77dfc248/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS      GUATEMALA    1                    NA                0.8378424   0.7805614   0.8951233
0-3 months     COHORTS      GUATEMALA    0                    NA                0.7795414   0.7567757   0.8023071
0-3 months     COHORTS      INDIA        1                    NA                0.8250454   0.8152248   0.8348659
0-3 months     COHORTS      INDIA        0                    NA                0.7936526   0.7863180   0.8009873
0-3 months     JiVitA-3     BANGLADESH   1                    NA                0.8723977   0.8686726   0.8761228
0-3 months     JiVitA-3     BANGLADESH   0                    NA                0.8633758   0.8568799   0.8698717
0-3 months     JiVitA-4     BANGLADESH   1                    NA                0.8942601   0.8827288   0.9057914
0-3 months     JiVitA-4     BANGLADESH   0                    NA                0.8891319   0.8637830   0.9144808
0-3 months     MAL-ED       BANGLADESH   1                    NA                0.8808465   0.8548713   0.9068216
0-3 months     MAL-ED       BANGLADESH   0                    NA                0.8644225   0.7981198   0.9307253
0-3 months     MAL-ED       INDIA        1                    NA                0.7641970   0.7337726   0.7946215
0-3 months     MAL-ED       INDIA        0                    NA                0.7652844   0.7319639   0.7986049
0-3 months     MAL-ED       PERU         1                    NA                0.9739759   0.9173528   1.0305990
0-3 months     MAL-ED       PERU         0                    NA                0.9668394   0.9364084   0.9972704
0-3 months     NIH-Birth    BANGLADESH   1                    NA                0.8383046   0.8150392   0.8615700
0-3 months     NIH-Birth    BANGLADESH   0                    NA                0.8013837   0.7792084   0.8235591
0-3 months     NIH-Crypto   BANGLADESH   1                    NA                0.8827077   0.8673700   0.8980454
0-3 months     NIH-Crypto   BANGLADESH   0                    NA                0.8961319   0.8473258   0.9449380
3-6 months     COHORTS      GUATEMALA    1                    NA                0.4524411   0.4117024   0.4931799
3-6 months     COHORTS      GUATEMALA    0                    NA                0.4500362   0.4358940   0.4641785
3-6 months     COHORTS      INDIA        1                    NA                0.4890142   0.4812600   0.4967684
3-6 months     COHORTS      INDIA        0                    NA                0.4680538   0.4622527   0.4738550
3-6 months     CONTENT      PERU         1                    NA                0.5907543   0.5685922   0.6129163
3-6 months     CONTENT      PERU         0                    NA                0.5433311   0.4815811   0.6050811
3-6 months     JiVitA-3     BANGLADESH   1                    NA                0.4420363   0.4384887   0.4455839
3-6 months     JiVitA-3     BANGLADESH   0                    NA                0.4345710   0.4278975   0.4412445
3-6 months     JiVitA-4     BANGLADESH   1                    NA                0.4404151   0.4300643   0.4507659
3-6 months     JiVitA-4     BANGLADESH   0                    NA                0.4283993   0.4059853   0.4508132
3-6 months     MAL-ED       BANGLADESH   1                    NA                0.4755712   0.4576048   0.4935376
3-6 months     MAL-ED       BANGLADESH   0                    NA                0.4722408   0.4228873   0.5215944
3-6 months     MAL-ED       INDIA        1                    NA                0.4487554   0.4213098   0.4762010
3-6 months     MAL-ED       INDIA        0                    NA                0.4426038   0.4183804   0.4668273
3-6 months     MAL-ED       PERU         1                    NA                0.4817873   0.4442785   0.5192960
3-6 months     MAL-ED       PERU         0                    NA                0.5025763   0.4800383   0.5251143
3-6 months     NIH-Birth    BANGLADESH   1                    NA                0.4745387   0.4499881   0.4990893
3-6 months     NIH-Birth    BANGLADESH   0                    NA                0.4519859   0.4283139   0.4756579
3-6 months     NIH-Crypto   BANGLADESH   1                    NA                0.4956851   0.4839665   0.5074037
3-6 months     NIH-Crypto   BANGLADESH   0                    NA                0.5144476   0.4772951   0.5516000
6-9 months     COHORTS      GUATEMALA    1                    NA                0.2495976   0.2007468   0.2984485
6-9 months     COHORTS      GUATEMALA    0                    NA                0.2099249   0.1979017   0.2219480
6-9 months     COHORTS      INDIA        1                    NA                0.2780976   0.2699923   0.2862028
6-9 months     COHORTS      INDIA        0                    NA                0.2695214   0.2633467   0.2756960
6-9 months     CONTENT      PERU         1                    NA                0.3233349   0.3032244   0.3434453
6-9 months     CONTENT      PERU         0                    NA                0.2701552   0.1739834   0.3663269
6-9 months     JiVitA-4     BANGLADESH   1                    NA                0.2386449   0.2324969   0.2447929
6-9 months     JiVitA-4     BANGLADESH   0                    NA                0.2489848   0.2343753   0.2635942
6-9 months     MAL-ED       BANGLADESH   1                    NA                0.2467467   0.2302592   0.2632343
6-9 months     MAL-ED       BANGLADESH   0                    NA                0.2247245   0.1914265   0.2580224
6-9 months     MAL-ED       INDIA        1                    NA                0.2509054   0.2285798   0.2732310
6-9 months     MAL-ED       INDIA        0                    NA                0.2191076   0.1987617   0.2394534
6-9 months     MAL-ED       PERU         1                    NA                0.2646845   0.2305729   0.2987961
6-9 months     MAL-ED       PERU         0                    NA                0.2554676   0.2378711   0.2730641
6-9 months     NIH-Birth    BANGLADESH   1                    NA                0.2450439   0.2215778   0.2685100
6-9 months     NIH-Birth    BANGLADESH   0                    NA                0.2313566   0.2142657   0.2484474
6-9 months     NIH-Crypto   BANGLADESH   1                    NA                0.2658446   0.2541512   0.2775380
6-9 months     NIH-Crypto   BANGLADESH   0                    NA                0.2700277   0.2453226   0.2947328
9-12 months    COHORTS      GUATEMALA    1                    NA                0.1800197   0.1473198   0.2127196
9-12 months    COHORTS      GUATEMALA    0                    NA                0.1482002   0.1368378   0.1595626
9-12 months    COHORTS      INDIA        1                    NA                0.2160137   0.2077267   0.2243006
9-12 months    COHORTS      INDIA        0                    NA                0.2095984   0.2030176   0.2161792
9-12 months    CONTENT      PERU         1                    NA                0.2274771   0.2088185   0.2461356
9-12 months    CONTENT      PERU         0                    NA                0.1800908   0.1046164   0.2555653
9-12 months    JiVitA-4     BANGLADESH   1                    NA                0.1534209   0.1487137   0.1581280
9-12 months    JiVitA-4     BANGLADESH   0                    NA                0.1536758   0.1417261   0.1656255
9-12 months    MAL-ED       BANGLADESH   1                    NA                0.1783121   0.1629047   0.1937195
9-12 months    MAL-ED       BANGLADESH   0                    NA                0.1453555   0.1140201   0.1766908
9-12 months    MAL-ED       INDIA        1                    NA                0.1750461   0.1509431   0.1991492
9-12 months    MAL-ED       INDIA        0                    NA                0.1802277   0.1618378   0.1986175
9-12 months    MAL-ED       PERU         1                    NA                0.2012781   0.1674125   0.2351438
9-12 months    MAL-ED       PERU         0                    NA                0.1820882   0.1638932   0.2002833
9-12 months    NIH-Birth    BANGLADESH   1                    NA                0.1676965   0.1478465   0.1875466
9-12 months    NIH-Birth    BANGLADESH   0                    NA                0.1589318   0.1414043   0.1764593
9-12 months    NIH-Crypto   BANGLADESH   1                    NA                0.1981047   0.1867356   0.2094738
9-12 months    NIH-Crypto   BANGLADESH   0                    NA                0.2003212   0.1737276   0.2269148
12-15 months   COHORTS      GUATEMALA    1                    NA                0.1859688   0.1319358   0.2400019
12-15 months   COHORTS      GUATEMALA    0                    NA                0.1497696   0.1388306   0.1607086
12-15 months   CONTENT      PERU         1                    NA                0.1826813   0.1630442   0.2023183
12-15 months   CONTENT      PERU         0                    NA                0.2137764   0.1632640   0.2642887
12-15 months   JiVitA-4     BANGLADESH   1                    NA                0.1329565   0.1281322   0.1377808
12-15 months   JiVitA-4     BANGLADESH   0                    NA                0.1210154   0.1131978   0.1288329
12-15 months   MAL-ED       BANGLADESH   1                    NA                0.1421340   0.1253422   0.1589258
12-15 months   MAL-ED       BANGLADESH   0                    NA                0.1070260   0.0600124   0.1540396
12-15 months   MAL-ED       INDIA        1                    NA                0.1877398   0.1632432   0.2122365
12-15 months   MAL-ED       INDIA        0                    NA                0.1590165   0.1392193   0.1788138
12-15 months   MAL-ED       PERU         1                    NA                0.1399375   0.0945747   0.1853002
12-15 months   MAL-ED       PERU         0                    NA                0.1427447   0.1229737   0.1625156
12-15 months   NIH-Birth    BANGLADESH   1                    NA                0.1175644   0.0986098   0.1365189
12-15 months   NIH-Birth    BANGLADESH   0                    NA                0.1386377   0.1223563   0.1549192
12-15 months   NIH-Crypto   BANGLADESH   1                    NA                0.1644595   0.1529655   0.1759536
12-15 months   NIH-Crypto   BANGLADESH   0                    NA                0.1668639   0.1379863   0.1957415
15-18 months   COHORTS      GUATEMALA    1                    NA                0.1019510   0.0523778   0.1515241
15-18 months   COHORTS      GUATEMALA    0                    NA                0.1400400   0.1272321   0.1528480
15-18 months   CONTENT      PERU         1                    NA                0.1680301   0.1489818   0.1870783
15-18 months   CONTENT      PERU         0                    NA                0.1644530   0.0902828   0.2386232
15-18 months   JiVitA-4     BANGLADESH   1                    NA                0.1596944   0.1539840   0.1654049
15-18 months   JiVitA-4     BANGLADESH   0                    NA                0.1612873   0.1520805   0.1704942
15-18 months   MAL-ED       BANGLADESH   1                    NA                0.1365578   0.1197474   0.1533682
15-18 months   MAL-ED       BANGLADESH   0                    NA                0.1909191   0.1531066   0.2287316
15-18 months   MAL-ED       INDIA        1                    NA                0.1613449   0.1367502   0.1859397
15-18 months   MAL-ED       INDIA        0                    NA                0.1557203   0.1373207   0.1741199
15-18 months   MAL-ED       PERU         1                    NA                0.1331634   0.0934547   0.1728722
15-18 months   MAL-ED       PERU         0                    NA                0.1473418   0.1244171   0.1702665
15-18 months   NIH-Birth    BANGLADESH   1                    NA                0.1627137   0.1401623   0.1852652
15-18 months   NIH-Birth    BANGLADESH   0                    NA                0.1457406   0.1266409   0.1648403
15-18 months   NIH-Crypto   BANGLADESH   1                    NA                0.1589780   0.1476588   0.1702973
15-18 months   NIH-Crypto   BANGLADESH   0                    NA                0.1715563   0.1405302   0.2025824
18-21 months   COHORTS      GUATEMALA    1                    NA                0.1714400   0.1122357   0.2306444
18-21 months   COHORTS      GUATEMALA    0                    NA                0.1626865   0.1507406   0.1746323
18-21 months   CONTENT      PERU         1                    NA                0.1912080   0.1713835   0.2110324
18-21 months   CONTENT      PERU         0                    NA                0.2372239   0.1602271   0.3142206
18-21 months   MAL-ED       BANGLADESH   1                    NA                0.1478856   0.1311364   0.1646347
18-21 months   MAL-ED       BANGLADESH   0                    NA                0.1222597   0.0604092   0.1841102
18-21 months   MAL-ED       INDIA        1                    NA                0.1822357   0.1581065   0.2063649
18-21 months   MAL-ED       INDIA        0                    NA                0.1680189   0.1483107   0.1877271
18-21 months   MAL-ED       PERU         1                    NA                0.1566223   0.1214972   0.1917474
18-21 months   MAL-ED       PERU         0                    NA                0.1679952   0.1458915   0.1900989
18-21 months   NIH-Birth    BANGLADESH   1                    NA                0.1629427   0.1379439   0.1879416
18-21 months   NIH-Birth    BANGLADESH   0                    NA                0.1774876   0.1559247   0.1990506
18-21 months   NIH-Crypto   BANGLADESH   1                    NA                0.1411954   0.1294062   0.1529847
18-21 months   NIH-Crypto   BANGLADESH   0                    NA                0.1401296   0.1102723   0.1699869
21-24 months   COHORTS      GUATEMALA    1                    NA                0.1820993   0.1382004   0.2259981
21-24 months   COHORTS      GUATEMALA    0                    NA                0.1826830   0.1704906   0.1948753
21-24 months   MAL-ED       BANGLADESH   1                    NA                0.1531842   0.1365236   0.1698448
21-24 months   MAL-ED       BANGLADESH   0                    NA                0.1462757   0.1073098   0.1852415
21-24 months   MAL-ED       INDIA        1                    NA                0.1670444   0.1461800   0.1879088
21-24 months   MAL-ED       INDIA        0                    NA                0.1472775   0.1296935   0.1648615
21-24 months   MAL-ED       PERU         1                    NA                0.1752400   0.1284421   0.2220379
21-24 months   MAL-ED       PERU         0                    NA                0.1784404   0.1553632   0.2015177
21-24 months   NIH-Birth    BANGLADESH   1                    NA                0.1518580   0.1279177   0.1757984
21-24 months   NIH-Birth    BANGLADESH   0                    NA                0.1355489   0.1160039   0.1550939
21-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.1689279   0.1551495   0.1827064
21-24 months   NIH-Crypto   BANGLADESH   0                    NA                0.2136729   0.1802851   0.2470607


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
6-9 months     NIH-Crypto   BANGLADESH   NA                   NA                0.2668023   0.2561807   0.2774239
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
0-3 months     COHORTS      GUATEMALA    0                    1                 -0.0583010   -0.1196125    0.0030105
0-3 months     COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS      INDIA        0                    1                 -0.0313927   -0.0435835   -0.0192019
0-3 months     JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3     BANGLADESH   0                    1                 -0.0090219   -0.0159087   -0.0021351
0-3 months     JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4     BANGLADESH   0                    1                 -0.0051282   -0.0321598    0.0219035
0-3 months     MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BANGLADESH   0                    1                 -0.0164239   -0.0876746    0.0548267
0-3 months     MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       INDIA        0                    1                  0.0010874   -0.0442596    0.0464343
0-3 months     MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU         0                    1                 -0.0071365   -0.0713686    0.0570956
0-3 months     NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH   0                    1                 -0.0369209   -0.0682115   -0.0056303
0-3 months     NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH   0                    1                  0.0134242   -0.0375430    0.0643914
3-6 months     COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS      GUATEMALA    0                    1                 -0.0024049   -0.0455362    0.0407264
3-6 months     COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS      INDIA        0                    1                 -0.0209604   -0.0305149   -0.0114059
3-6 months     CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CONTENT      PERU         0                    1                 -0.0474232   -0.1128962    0.0180498
3-6 months     JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3     BANGLADESH   0                    1                 -0.0074653   -0.0149425    0.0000119
3-6 months     JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4     BANGLADESH   0                    1                 -0.0120158   -0.0369200    0.0128883
3-6 months     MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BANGLADESH   0                    1                 -0.0033304   -0.0564499    0.0497892
3-6 months     MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA        0                    1                 -0.0061516   -0.0428604    0.0305573
3-6 months     MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU         0                    1                  0.0207891   -0.0230023    0.0645804
3-6 months     NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH   0                    1                 -0.0225528   -0.0569223    0.0118168
3-6 months     NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH   0                    1                  0.0187625   -0.0202191    0.0577440
6-9 months     COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS      GUATEMALA    0                    1                 -0.0396728   -0.0901614    0.0108159
6-9 months     COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS      INDIA        0                    1                 -0.0085762   -0.0186557    0.0015033
6-9 months     CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CONTENT      PERU         0                    1                 -0.0531797   -0.1513198    0.0449604
6-9 months     JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4     BANGLADESH   0                    1                  0.0103399   -0.0053867    0.0260665
6-9 months     MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BANGLADESH   0                    1                 -0.0220222   -0.0593315    0.0152870
6-9 months     MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA        0                    1                 -0.0317978   -0.0622357   -0.0013599
6-9 months     MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU         0                    1                 -0.0092169   -0.0477072    0.0292734
6-9 months     NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH   0                    1                 -0.0136873   -0.0428172    0.0154426
6-9 months     NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH   0                    1                  0.0041831   -0.0232003    0.0315665
9-12 months    COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS      GUATEMALA    0                    1                 -0.0318195   -0.0664367    0.0027976
9-12 months    COHORTS      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS      INDIA        0                    1                 -0.0064153   -0.0169774    0.0041468
9-12 months    CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CONTENT      PERU         0                    1                 -0.0473863   -0.1251943    0.0304218
9-12 months    JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4     BANGLADESH   0                    1                  0.0002549   -0.0125491    0.0130590
9-12 months    MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BANGLADESH   0                    1                 -0.0329567   -0.0680308    0.0021174
9-12 months    MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA        0                    1                  0.0051815   -0.0262473    0.0366104
9-12 months    MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU         0                    1                 -0.0191899   -0.0578376    0.0194578
9-12 months    NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH   0                    1                 -0.0087647   -0.0353040    0.0177745
9-12 months    NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH   0                    1                  0.0022165   -0.0265099    0.0309429
12-15 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS      GUATEMALA    0                    1                 -0.0361992   -0.0913264    0.0189280
12-15 months   CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CONTENT      PERU         0                    1                  0.0310951   -0.0232139    0.0854041
12-15 months   JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4     BANGLADESH   0                    1                 -0.0119411   -0.0211119   -0.0027703
12-15 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BANGLADESH   0                    1                 -0.0351079   -0.0855592    0.0153433
12-15 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA        0                    1                 -0.0287233   -0.0602069    0.0027603
12-15 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU         0                    1                  0.0028072   -0.0465419    0.0521562
12-15 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH   0                    1                  0.0210734   -0.0038861    0.0460328
12-15 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH   0                    1                  0.0024044   -0.0286789    0.0334877
15-18 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS      GUATEMALA    0                    1                  0.0380891   -0.0131136    0.0892917
15-18 months   CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CONTENT      PERU         0                    1                 -0.0035771   -0.0801382    0.0729841
15-18 months   JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4     BANGLADESH   0                    1                  0.0015929   -0.0092725    0.0124582
15-18 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BANGLADESH   0                    1                  0.0543613    0.0129476    0.0957750
15-18 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA        0                    1                 -0.0056246   -0.0365798    0.0253305
15-18 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU         0                    1                  0.0141783   -0.0317426    0.0600993
15-18 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH   0                    1                 -0.0169732   -0.0465601    0.0126137
15-18 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH   0                    1                  0.0125783   -0.0204406    0.0455972
18-21 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS      GUATEMALA    0                    1                 -0.0087536   -0.0690701    0.0515630
18-21 months   CONTENT      PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CONTENT      PERU         0                    1                  0.0460159   -0.0340031    0.1260349
18-21 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BANGLADESH   0                    1                 -0.0256259   -0.0894764    0.0382246
18-21 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA        0                    1                 -0.0142168   -0.0454588    0.0170253
18-21 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU         0                    1                  0.0113729   -0.0302153    0.0529611
18-21 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH   0                    1                  0.0145449   -0.0186129    0.0477027
18-21 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH   0                    1                 -0.0010658   -0.0333640    0.0312324
21-24 months   COHORTS      GUATEMALA    1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS      GUATEMALA    0                    1                  0.0005837   -0.0449953    0.0461627
21-24 months   MAL-ED       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BANGLADESH   0                    1                 -0.0069085   -0.0493374    0.0355204
21-24 months   MAL-ED       INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA        0                    1                 -0.0197670   -0.0471568    0.0076229
21-24 months   MAL-ED       PERU         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU         0                    1                  0.0032004   -0.0488909    0.0552917
21-24 months   NIH-Birth    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH   0                    1                 -0.0163092   -0.0473636    0.0147453
21-24 months   NIH-Crypto   BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH   0                    1                  0.0447450    0.0086685    0.0808215


### Parameter: PAR


agecat         studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS      GUATEMALA    1                    NA                -0.0535478   -0.1092889    0.0021933
0-3 months     COHORTS      INDIA        1                    NA                -0.0194722   -0.0276404   -0.0113041
0-3 months     JiVitA-3     BANGLADESH   1                    NA                -0.0013384   -0.0032846    0.0006078
0-3 months     JiVitA-4     BANGLADESH   1                    NA                -0.0045084   -0.0108440    0.0018273
0-3 months     MAL-ED       BANGLADESH   1                    NA                -0.0036075   -0.0142054    0.0069905
0-3 months     MAL-ED       INDIA        1                    NA                -0.0021885   -0.0264127    0.0220356
0-3 months     MAL-ED       PERU         1                    NA                -0.0050471   -0.0557313    0.0456370
0-3 months     NIH-Birth    BANGLADESH   1                    NA                -0.0219546   -0.0413576   -0.0025517
0-3 months     NIH-Crypto   BANGLADESH   1                    NA                 0.0018003   -0.0041063    0.0077069
3-6 months     COHORTS      GUATEMALA    1                    NA                -0.0017349   -0.0411060    0.0376361
3-6 months     COHORTS      INDIA        1                    NA                -0.0131319   -0.0195043   -0.0067595
3-6 months     CONTENT      PERU         1                    NA                -0.0023919   -0.0067112    0.0019273
3-6 months     JiVitA-3     BANGLADESH   1                    NA                -0.0006397   -0.0026015    0.0013221
3-6 months     JiVitA-4     BANGLADESH   1                    NA                -0.0012441   -0.0064079    0.0039197
3-6 months     MAL-ED       BANGLADESH   1                    NA                -0.0009211   -0.0092982    0.0074560
3-6 months     MAL-ED       INDIA        1                    NA                -0.0037762   -0.0233811    0.0158287
3-6 months     MAL-ED       PERU         1                    NA                 0.0163526   -0.0181890    0.0508941
3-6 months     NIH-Birth    BANGLADESH   1                    NA                -0.0151412   -0.0369318    0.0066494
3-6 months     NIH-Crypto   BANGLADESH   1                    NA                 0.0025678   -0.0018115    0.0069471
6-9 months     COHORTS      GUATEMALA    1                    NA                -0.0363243   -0.0835042    0.0108556
6-9 months     COHORTS      INDIA        1                    NA                -0.0048391   -0.0115946    0.0019163
6-9 months     CONTENT      PERU         1                    NA                -0.0031631   -0.0088174    0.0024913
6-9 months     JiVitA-4     BANGLADESH   1                    NA                 0.0012076   -0.0019531    0.0043684
6-9 months     MAL-ED       BANGLADESH   1                    NA                -0.0038915   -0.0095935    0.0018104
6-9 months     MAL-ED       INDIA        1                    NA                -0.0179904   -0.0346858   -0.0012950
6-9 months     MAL-ED       PERU         1                    NA                -0.0050334   -0.0354134    0.0253467
6-9 months     NIH-Birth    BANGLADESH   1                    NA                -0.0087843   -0.0268781    0.0093095
6-9 months     NIH-Crypto   BANGLADESH   1                    NA                 0.0009578   -0.0025820    0.0044975
9-12 months    COHORTS      GUATEMALA    1                    NA                -0.0293209   -0.0611259    0.0024841
9-12 months    COHORTS      INDIA        1                    NA                -0.0022163   -0.0090461    0.0046135
9-12 months    CONTENT      PERU         1                    NA                -0.0029583   -0.0081781    0.0022615
9-12 months    JiVitA-4     BANGLADESH   1                    NA                 0.0010915   -0.0012866    0.0034696
9-12 months    MAL-ED       BANGLADESH   1                    NA                -0.0052775   -0.0106031    0.0000481
9-12 months    MAL-ED       INDIA        1                    NA                 0.0036629   -0.0136444    0.0209701
9-12 months    MAL-ED       PERU         1                    NA                -0.0135479   -0.0448778    0.0177820
9-12 months    NIH-Birth    BANGLADESH   1                    NA                -0.0040752   -0.0200615    0.0119111
9-12 months    NIH-Crypto   BANGLADESH   1                    NA                 0.0001688   -0.0034311    0.0037687
12-15 months   COHORTS      GUATEMALA    1                    NA                -0.0350198   -0.0878249    0.0177853
12-15 months   CONTENT      PERU         1                    NA                -0.0016042   -0.0056308    0.0024224
12-15 months   JiVitA-4     BANGLADESH   1                    NA                -0.0024989   -0.0047668   -0.0002310
12-15 months   MAL-ED       BANGLADESH   1                    NA                -0.0067753   -0.0147522    0.0012015
12-15 months   MAL-ED       INDIA        1                    NA                -0.0139856   -0.0310748    0.0031035
12-15 months   MAL-ED       PERU         1                    NA                 0.0013611   -0.0397842    0.0425065
12-15 months   NIH-Birth    BANGLADESH   1                    NA                 0.0129419   -0.0022896    0.0281734
12-15 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0004564   -0.0034924    0.0044053
15-18 months   COHORTS      GUATEMALA    1                    NA                 0.0356693   -0.0122234    0.0835620
15-18 months   CONTENT      PERU         1                    NA                 0.0031372   -0.0024429    0.0087173
15-18 months   JiVitA-4     BANGLADESH   1                    NA                -0.0001635   -0.0028386    0.0025117
15-18 months   MAL-ED       BANGLADESH   1                    NA                 0.0062304   -0.0009638    0.0134246
15-18 months   MAL-ED       INDIA        1                    NA                 0.0006832   -0.0157708    0.0171372
15-18 months   MAL-ED       PERU         1                    NA                 0.0117743   -0.0244456    0.0479943
15-18 months   NIH-Birth    BANGLADESH   1                    NA                -0.0097295   -0.0278933    0.0084344
15-18 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0018238   -0.0027016    0.0063492
18-21 months   COHORTS      GUATEMALA    1                    NA                -0.0089670   -0.0662896    0.0483556
18-21 months   CONTENT      PERU         1                    NA                 0.0009566   -0.0033318    0.0052450
18-21 months   MAL-ED       BANGLADESH   1                    NA                -0.0051709   -0.0141851    0.0038433
18-21 months   MAL-ED       INDIA        1                    NA                -0.0081239   -0.0251218    0.0088740
18-21 months   MAL-ED       PERU         1                    NA                 0.0066064   -0.0248196    0.0380323
18-21 months   NIH-Birth    BANGLADESH   1                    NA                 0.0094965   -0.0105274    0.0295203
18-21 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0005330   -0.0036549    0.0047209
21-24 months   COHORTS      GUATEMALA    1                    NA                 0.0051549   -0.0384897    0.0487996
21-24 months   MAL-ED       BANGLADESH   1                    NA                -0.0010686   -0.0064436    0.0043064
21-24 months   MAL-ED       INDIA        1                    NA                -0.0109216   -0.0258137    0.0039704
21-24 months   MAL-ED       PERU         1                    NA                 0.0037224   -0.0372906    0.0447354
21-24 months   NIH-Birth    BANGLADESH   1                    NA                -0.0098850   -0.0287994    0.0090293
21-24 months   NIH-Crypto   BANGLADESH   1                    NA                 0.0060899    0.0009250    0.0112548
