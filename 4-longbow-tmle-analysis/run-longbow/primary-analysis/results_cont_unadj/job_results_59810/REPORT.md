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

**Intervention Variable:** perdiar6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid      country                        perdiar6    n_cell     n
-------------  -----------  -----------------------------  ---------  -------  ----
0-3 months     CMIN         BANGLADESH                     0%              17    43
0-3 months     CMIN         BANGLADESH                     (0%, 5%]        13    43
0-3 months     CMIN         BANGLADESH                     >5%             13    43
0-3 months     CONTENT      PERU                           0%              16    29
0-3 months     CONTENT      PERU                           (0%, 5%]         6    29
0-3 months     CONTENT      PERU                           >5%              7    29
0-3 months     EE           PAKISTAN                       0%             270   303
0-3 months     EE           PAKISTAN                       (0%, 5%]        31   303
0-3 months     EE           PAKISTAN                       >5%              2   303
0-3 months     MAL-ED       BANGLADESH                     0%              70   243
0-3 months     MAL-ED       BANGLADESH                     (0%, 5%]        96   243
0-3 months     MAL-ED       BANGLADESH                     >5%             77   243
0-3 months     MAL-ED       BRAZIL                         0%             154   168
0-3 months     MAL-ED       BRAZIL                         (0%, 5%]        12   168
0-3 months     MAL-ED       BRAZIL                         >5%              2   168
0-3 months     MAL-ED       INDIA                          0%              38   183
0-3 months     MAL-ED       INDIA                          (0%, 5%]       101   183
0-3 months     MAL-ED       INDIA                          >5%             44   183
0-3 months     MAL-ED       NEPAL                          0%              54   156
0-3 months     MAL-ED       NEPAL                          (0%, 5%]        45   156
0-3 months     MAL-ED       NEPAL                          >5%             57   156
0-3 months     MAL-ED       PERU                           0%              66   265
0-3 months     MAL-ED       PERU                           (0%, 5%]        86   265
0-3 months     MAL-ED       PERU                           >5%            113   265
0-3 months     MAL-ED       SOUTH AFRICA                   0%             160   211
0-3 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]        43   211
0-3 months     MAL-ED       SOUTH AFRICA                   >5%              8   211
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   228
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        91   228
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   228
0-3 months     NIH-Birth    BANGLADESH                     0%             137   566
0-3 months     NIH-Birth    BANGLADESH                     (0%, 5%]       177   566
0-3 months     NIH-Birth    BANGLADESH                     >5%            252   566
0-3 months     NIH-Crypto   BANGLADESH                     0%             341   721
0-3 months     NIH-Crypto   BANGLADESH                     (0%, 5%]       169   721
0-3 months     NIH-Crypto   BANGLADESH                     >5%            211   721
0-3 months     PROVIDE      BANGLADESH                     0%             172   640
0-3 months     PROVIDE      BANGLADESH                     (0%, 5%]       258   640
0-3 months     PROVIDE      BANGLADESH                     >5%            210   640
3-6 months     CMIN         BANGLADESH                     0%              60   185
3-6 months     CMIN         BANGLADESH                     (0%, 5%]        46   185
3-6 months     CMIN         BANGLADESH                     >5%             79   185
3-6 months     CONTENT      PERU                           0%             115   214
3-6 months     CONTENT      PERU                           (0%, 5%]        43   214
3-6 months     CONTENT      PERU                           >5%             56   214
3-6 months     EE           PAKISTAN                       0%             248   280
3-6 months     EE           PAKISTAN                       (0%, 5%]        30   280
3-6 months     EE           PAKISTAN                       >5%              2   280
3-6 months     MAL-ED       BANGLADESH                     0%              68   231
3-6 months     MAL-ED       BANGLADESH                     (0%, 5%]        88   231
3-6 months     MAL-ED       BANGLADESH                     >5%             75   231
3-6 months     MAL-ED       BRAZIL                         0%             191   208
3-6 months     MAL-ED       BRAZIL                         (0%, 5%]        15   208
3-6 months     MAL-ED       BRAZIL                         >5%              2   208
3-6 months     MAL-ED       INDIA                          0%              49   230
3-6 months     MAL-ED       INDIA                          (0%, 5%]       122   230
3-6 months     MAL-ED       INDIA                          >5%             59   230
3-6 months     MAL-ED       NEPAL                          0%              78   233
3-6 months     MAL-ED       NEPAL                          (0%, 5%]        75   233
3-6 months     MAL-ED       NEPAL                          >5%             80   233
3-6 months     MAL-ED       PERU                           0%              66   267
3-6 months     MAL-ED       PERU                           (0%, 5%]        86   267
3-6 months     MAL-ED       PERU                           >5%            115   267
3-6 months     MAL-ED       SOUTH AFRICA                   0%             182   243
3-6 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]        53   243
3-6 months     MAL-ED       SOUTH AFRICA                   >5%              8   243
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             101   239
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        94   239
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             44   239
3-6 months     NIH-Birth    BANGLADESH                     0%             124   523
3-6 months     NIH-Birth    BANGLADESH                     (0%, 5%]       164   523
3-6 months     NIH-Birth    BANGLADESH                     >5%            235   523
3-6 months     NIH-Crypto   BANGLADESH                     0%             331   695
3-6 months     NIH-Crypto   BANGLADESH                     (0%, 5%]       164   695
3-6 months     NIH-Crypto   BANGLADESH                     >5%            200   695
3-6 months     PROVIDE      BANGLADESH                     0%             155   598
3-6 months     PROVIDE      BANGLADESH                     (0%, 5%]       245   598
3-6 months     PROVIDE      BANGLADESH                     >5%            198   598
6-9 months     CMIN         BANGLADESH                     0%              56   177
6-9 months     CMIN         BANGLADESH                     (0%, 5%]        41   177
6-9 months     CMIN         BANGLADESH                     >5%             80   177
6-9 months     CONTENT      PERU                           0%             115   214
6-9 months     CONTENT      PERU                           (0%, 5%]        43   214
6-9 months     CONTENT      PERU                           >5%             56   214
6-9 months     EE           PAKISTAN                       0%             274   304
6-9 months     EE           PAKISTAN                       (0%, 5%]        28   304
6-9 months     EE           PAKISTAN                       >5%              2   304
6-9 months     MAL-ED       BANGLADESH                     0%              68   224
6-9 months     MAL-ED       BANGLADESH                     (0%, 5%]        83   224
6-9 months     MAL-ED       BANGLADESH                     >5%             73   224
6-9 months     MAL-ED       BRAZIL                         0%             181   198
6-9 months     MAL-ED       BRAZIL                         (0%, 5%]        15   198
6-9 months     MAL-ED       BRAZIL                         >5%              2   198
6-9 months     MAL-ED       INDIA                          0%              49   230
6-9 months     MAL-ED       INDIA                          (0%, 5%]       122   230
6-9 months     MAL-ED       INDIA                          >5%             59   230
6-9 months     MAL-ED       NEPAL                          0%              76   230
6-9 months     MAL-ED       NEPAL                          (0%, 5%]        76   230
6-9 months     MAL-ED       NEPAL                          >5%             78   230
6-9 months     MAL-ED       PERU                           0%              61   245
6-9 months     MAL-ED       PERU                           (0%, 5%]        79   245
6-9 months     MAL-ED       PERU                           >5%            105   245
6-9 months     MAL-ED       SOUTH AFRICA                   0%             177   231
6-9 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   231
6-9 months     MAL-ED       SOUTH AFRICA                   >5%              8   231
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   225
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        90   225
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   225
6-9 months     NIH-Birth    BANGLADESH                     0%             120   498
6-9 months     NIH-Birth    BANGLADESH                     (0%, 5%]       156   498
6-9 months     NIH-Birth    BANGLADESH                     >5%            222   498
6-9 months     NIH-Crypto   BANGLADESH                     0%             332   688
6-9 months     NIH-Crypto   BANGLADESH                     (0%, 5%]       160   688
6-9 months     NIH-Crypto   BANGLADESH                     >5%            196   688
6-9 months     PROVIDE      BANGLADESH                     0%             145   565
6-9 months     PROVIDE      BANGLADESH                     (0%, 5%]       231   565
6-9 months     PROVIDE      BANGLADESH                     >5%            189   565
9-12 months    CMIN         BANGLADESH                     0%              49   160
9-12 months    CMIN         BANGLADESH                     (0%, 5%]        36   160
9-12 months    CMIN         BANGLADESH                     >5%             75   160
9-12 months    CONTENT      PERU                           0%             115   212
9-12 months    CONTENT      PERU                           (0%, 5%]        41   212
9-12 months    CONTENT      PERU                           >5%             56   212
9-12 months    EE           PAKISTAN                       0%             296   326
9-12 months    EE           PAKISTAN                       (0%, 5%]        28   326
9-12 months    EE           PAKISTAN                       >5%              2   326
9-12 months    MAL-ED       BANGLADESH                     0%              67   225
9-12 months    MAL-ED       BANGLADESH                     (0%, 5%]        86   225
9-12 months    MAL-ED       BANGLADESH                     >5%             72   225
9-12 months    MAL-ED       BRAZIL                         0%             177   194
9-12 months    MAL-ED       BRAZIL                         (0%, 5%]        15   194
9-12 months    MAL-ED       BRAZIL                         >5%              2   194
9-12 months    MAL-ED       INDIA                          0%              46   227
9-12 months    MAL-ED       INDIA                          (0%, 5%]       123   227
9-12 months    MAL-ED       INDIA                          >5%             58   227
9-12 months    MAL-ED       NEPAL                          0%              76   229
9-12 months    MAL-ED       NEPAL                          (0%, 5%]        76   229
9-12 months    MAL-ED       NEPAL                          >5%             77   229
9-12 months    MAL-ED       PERU                           0%              58   235
9-12 months    MAL-ED       PERU                           (0%, 5%]        77   235
9-12 months    MAL-ED       PERU                           >5%            100   235
9-12 months    MAL-ED       SOUTH AFRICA                   0%             179   233
9-12 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   233
9-12 months    MAL-ED       SOUTH AFRICA                   >5%              8   233
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   224
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        87   224
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   224
9-12 months    NIH-Birth    BANGLADESH                     0%             118   482
9-12 months    NIH-Birth    BANGLADESH                     (0%, 5%]       150   482
9-12 months    NIH-Birth    BANGLADESH                     >5%            214   482
9-12 months    NIH-Crypto   BANGLADESH                     0%             330   674
9-12 months    NIH-Crypto   BANGLADESH                     (0%, 5%]       155   674
9-12 months    NIH-Crypto   BANGLADESH                     >5%            189   674
9-12 months    PROVIDE      BANGLADESH                     0%             148   566
9-12 months    PROVIDE      BANGLADESH                     (0%, 5%]       226   566
9-12 months    PROVIDE      BANGLADESH                     >5%            192   566
12-15 months   CMIN         BANGLADESH                     0%              54   160
12-15 months   CMIN         BANGLADESH                     (0%, 5%]        36   160
12-15 months   CMIN         BANGLADESH                     >5%             70   160
12-15 months   CONTENT      PERU                           0%             106   199
12-15 months   CONTENT      PERU                           (0%, 5%]        39   199
12-15 months   CONTENT      PERU                           >5%             54   199
12-15 months   EE           PAKISTAN                       0%             269   297
12-15 months   EE           PAKISTAN                       (0%, 5%]        26   297
12-15 months   EE           PAKISTAN                       >5%              2   297
12-15 months   MAL-ED       BANGLADESH                     0%              63   212
12-15 months   MAL-ED       BANGLADESH                     (0%, 5%]        84   212
12-15 months   MAL-ED       BANGLADESH                     >5%             65   212
12-15 months   MAL-ED       BRAZIL                         0%             167   184
12-15 months   MAL-ED       BRAZIL                         (0%, 5%]        15   184
12-15 months   MAL-ED       BRAZIL                         >5%              2   184
12-15 months   MAL-ED       INDIA                          0%              46   226
12-15 months   MAL-ED       INDIA                          (0%, 5%]       123   226
12-15 months   MAL-ED       INDIA                          >5%             57   226
12-15 months   MAL-ED       NEPAL                          0%              77   230
12-15 months   MAL-ED       NEPAL                          (0%, 5%]        76   230
12-15 months   MAL-ED       NEPAL                          >5%             77   230
12-15 months   MAL-ED       PERU                           0%              57   224
12-15 months   MAL-ED       PERU                           (0%, 5%]        69   224
12-15 months   MAL-ED       PERU                           >5%             98   224
12-15 months   MAL-ED       SOUTH AFRICA                   0%             173   228
12-15 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   228
12-15 months   MAL-ED       SOUTH AFRICA                   >5%              9   228
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              97   226
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        86   226
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             43   226
12-15 months   NIH-Birth    BANGLADESH                     0%             114   461
12-15 months   NIH-Birth    BANGLADESH                     (0%, 5%]       145   461
12-15 months   NIH-Birth    BANGLADESH                     >5%            202   461
12-15 months   NIH-Crypto   BANGLADESH                     0%             324   660
12-15 months   NIH-Crypto   BANGLADESH                     (0%, 5%]       147   660
12-15 months   NIH-Crypto   BANGLADESH                     >5%            189   660
12-15 months   PROVIDE      BANGLADESH                     0%             139   532
12-15 months   PROVIDE      BANGLADESH                     (0%, 5%]       212   532
12-15 months   PROVIDE      BANGLADESH                     >5%            181   532
15-18 months   CMIN         BANGLADESH                     0%              59   163
15-18 months   CMIN         BANGLADESH                     (0%, 5%]        40   163
15-18 months   CMIN         BANGLADESH                     >5%             64   163
15-18 months   CONTENT      PERU                           0%              98   189
15-18 months   CONTENT      PERU                           (0%, 5%]        38   189
15-18 months   CONTENT      PERU                           >5%             53   189
15-18 months   EE           PAKISTAN                       0%             251   278
15-18 months   EE           PAKISTAN                       (0%, 5%]        25   278
15-18 months   EE           PAKISTAN                       >5%              2   278
15-18 months   MAL-ED       BANGLADESH                     0%              63   212
15-18 months   MAL-ED       BANGLADESH                     (0%, 5%]        84   212
15-18 months   MAL-ED       BANGLADESH                     >5%             65   212
15-18 months   MAL-ED       BRAZIL                         0%             159   175
15-18 months   MAL-ED       BRAZIL                         (0%, 5%]        14   175
15-18 months   MAL-ED       BRAZIL                         >5%              2   175
15-18 months   MAL-ED       INDIA                          0%              48   226
15-18 months   MAL-ED       INDIA                          (0%, 5%]       122   226
15-18 months   MAL-ED       INDIA                          >5%             56   226
15-18 months   MAL-ED       NEPAL                          0%              75   227
15-18 months   MAL-ED       NEPAL                          (0%, 5%]        76   227
15-18 months   MAL-ED       NEPAL                          >5%             76   227
15-18 months   MAL-ED       PERU                           0%              54   213
15-18 months   MAL-ED       PERU                           (0%, 5%]        67   213
15-18 months   MAL-ED       PERU                           >5%             92   213
15-18 months   MAL-ED       SOUTH AFRICA                   0%             171   225
15-18 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]        45   225
15-18 months   MAL-ED       SOUTH AFRICA                   >5%              9   225
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              93   217
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   217
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   217
15-18 months   NIH-Birth    BANGLADESH                     0%             112   449
15-18 months   NIH-Birth    BANGLADESH                     (0%, 5%]       138   449
15-18 months   NIH-Birth    BANGLADESH                     >5%            199   449
15-18 months   NIH-Crypto   BANGLADESH                     0%             304   604
15-18 months   NIH-Crypto   BANGLADESH                     (0%, 5%]       131   604
15-18 months   NIH-Crypto   BANGLADESH                     >5%            169   604
15-18 months   PROVIDE      BANGLADESH                     0%             143   528
15-18 months   PROVIDE      BANGLADESH                     (0%, 5%]       206   528
15-18 months   PROVIDE      BANGLADESH                     >5%            179   528
18-21 months   CMIN         BANGLADESH                     0%              52   165
18-21 months   CMIN         BANGLADESH                     (0%, 5%]        40   165
18-21 months   CMIN         BANGLADESH                     >5%             73   165
18-21 months   CONTENT      PERU                           0%              94   183
18-21 months   CONTENT      PERU                           (0%, 5%]        38   183
18-21 months   CONTENT      PERU                           >5%             51   183
18-21 months   EE           PAKISTAN                       0%             229   254
18-21 months   EE           PAKISTAN                       (0%, 5%]        23   254
18-21 months   EE           PAKISTAN                       >5%              2   254
18-21 months   MAL-ED       BANGLADESH                     0%              63   209
18-21 months   MAL-ED       BANGLADESH                     (0%, 5%]        82   209
18-21 months   MAL-ED       BANGLADESH                     >5%             64   209
18-21 months   MAL-ED       BRAZIL                         0%             152   167
18-21 months   MAL-ED       BRAZIL                         (0%, 5%]        13   167
18-21 months   MAL-ED       BRAZIL                         >5%              2   167
18-21 months   MAL-ED       INDIA                          0%              48   226
18-21 months   MAL-ED       INDIA                          (0%, 5%]       122   226
18-21 months   MAL-ED       INDIA                          >5%             56   226
18-21 months   MAL-ED       NEPAL                          0%              75   227
18-21 months   MAL-ED       NEPAL                          (0%, 5%]        76   227
18-21 months   MAL-ED       NEPAL                          >5%             76   227
18-21 months   MAL-ED       PERU                           0%              54   202
18-21 months   MAL-ED       PERU                           (0%, 5%]        65   202
18-21 months   MAL-ED       PERU                           >5%             83   202
18-21 months   MAL-ED       SOUTH AFRICA                   0%             174   233
18-21 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]        50   233
18-21 months   MAL-ED       SOUTH AFRICA                   >5%              9   233
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              86   204
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        81   204
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             37   204
18-21 months   NIH-Birth    BANGLADESH                     0%             102   422
18-21 months   NIH-Birth    BANGLADESH                     (0%, 5%]       127   422
18-21 months   NIH-Birth    BANGLADESH                     >5%            193   422
18-21 months   NIH-Crypto   BANGLADESH                     0%             289   546
18-21 months   NIH-Crypto   BANGLADESH                     (0%, 5%]       112   546
18-21 months   NIH-Crypto   BANGLADESH                     >5%            145   546
18-21 months   PROVIDE      BANGLADESH                     0%             143   541
18-21 months   PROVIDE      BANGLADESH                     (0%, 5%]       218   541
18-21 months   PROVIDE      BANGLADESH                     >5%            180   541
21-24 months   CMIN         BANGLADESH                     0%              47   133
21-24 months   CMIN         BANGLADESH                     (0%, 5%]        30   133
21-24 months   CMIN         BANGLADESH                     >5%             56   133
21-24 months   CONTENT      PERU                           0%              23    38
21-24 months   CONTENT      PERU                           (0%, 5%]         7    38
21-24 months   CONTENT      PERU                           >5%              8    38
21-24 months   EE           PAKISTAN                       0%              97   106
21-24 months   EE           PAKISTAN                       (0%, 5%]         8   106
21-24 months   EE           PAKISTAN                       >5%              1   106
21-24 months   MAL-ED       BANGLADESH                     0%              64   207
21-24 months   MAL-ED       BANGLADESH                     (0%, 5%]        79   207
21-24 months   MAL-ED       BANGLADESH                     >5%             64   207
21-24 months   MAL-ED       BRAZIL                         0%             151   165
21-24 months   MAL-ED       BRAZIL                         (0%, 5%]        12   165
21-24 months   MAL-ED       BRAZIL                         >5%              2   165
21-24 months   MAL-ED       INDIA                          0%              48   226
21-24 months   MAL-ED       INDIA                          (0%, 5%]       122   226
21-24 months   MAL-ED       INDIA                          >5%             56   226
21-24 months   MAL-ED       NEPAL                          0%              76   227
21-24 months   MAL-ED       NEPAL                          (0%, 5%]        75   227
21-24 months   MAL-ED       NEPAL                          >5%             76   227
21-24 months   MAL-ED       PERU                           0%              49   189
21-24 months   MAL-ED       PERU                           (0%, 5%]        63   189
21-24 months   MAL-ED       PERU                           >5%             77   189
21-24 months   MAL-ED       SOUTH AFRICA                   0%             175   235
21-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]        51   235
21-24 months   MAL-ED       SOUTH AFRICA                   >5%              9   235
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              86   204
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        80   204
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             38   204
21-24 months   NIH-Birth    BANGLADESH                     0%             102   411
21-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]       124   411
21-24 months   NIH-Birth    BANGLADESH                     >5%            185   411
21-24 months   NIH-Crypto   BANGLADESH                     0%             271   490
21-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]        98   490
21-24 months   NIH-Crypto   BANGLADESH                     >5%            121   490
21-24 months   PROVIDE      BANGLADESH                     0%             118   471
21-24 months   PROVIDE      BANGLADESH                     (0%, 5%]       190   471
21-24 months   PROVIDE      BANGLADESH                     >5%            163   471


The following strata were considered:

* agecat: 0-3 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
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
* agecat: 12-15 months, studyid: CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
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
* agecat: 15-18 months, studyid: CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
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
* agecat: 18-21 months, studyid: CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
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
* agecat: 21-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: CONTENT, country: PERU
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
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
* agecat: 3-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
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
* agecat: 6-9 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
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
* agecat: 9-12 months, studyid: CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
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

* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/31de9a9f-f95e-477e-905d-ad0f4e7f08c9/4aee0427-f59c-4498-b342-bc87463e724e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/31de9a9f-f95e-477e-905d-ad0f4e7f08c9/4aee0427-f59c-4498-b342-bc87463e724e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/31de9a9f-f95e-477e-905d-ad0f4e7f08c9/4aee0427-f59c-4498-b342-bc87463e724e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMIN         BANGLADESH                     0%                   NA                -0.0201659   -0.1268520    0.0865202
0-3 months     CMIN         BANGLADESH                     (0%, 5%]             NA                 0.0915706   -0.0350377    0.2181790
0-3 months     CMIN         BANGLADESH                     >5%                  NA                -0.0246518   -0.1570813    0.1077776
0-3 months     CONTENT      PERU                           0%                   NA                 0.0381126   -0.0815494    0.1577746
0-3 months     CONTENT      PERU                           (0%, 5%]             NA                 0.0805962   -0.0080103    0.1692027
0-3 months     CONTENT      PERU                           >5%                  NA                -0.0530227   -0.1682368    0.0621914
0-3 months     MAL-ED       BANGLADESH                     0%                   NA                -0.1410331   -0.2050834   -0.0769827
0-3 months     MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.1205424   -0.1773465   -0.0637383
0-3 months     MAL-ED       BANGLADESH                     >5%                  NA                -0.1072805   -0.1611643   -0.0533966
0-3 months     MAL-ED       INDIA                          0%                   NA                 0.0312079   -0.1108422    0.1732580
0-3 months     MAL-ED       INDIA                          (0%, 5%]             NA                -0.0479665   -0.1029892    0.0070563
0-3 months     MAL-ED       INDIA                          >5%                  NA                -0.1623931   -0.2668556   -0.0579305
0-3 months     MAL-ED       NEPAL                          0%                   NA                 0.0593126   -0.0248437    0.1434688
0-3 months     MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0633797   -0.0082561    0.1350156
0-3 months     MAL-ED       NEPAL                          >5%                  NA                 0.0436491   -0.0279481    0.1152462
0-3 months     MAL-ED       PERU                           0%                   NA                -0.2664680   -0.3185334   -0.2144026
0-3 months     MAL-ED       PERU                           (0%, 5%]             NA                -0.2849297   -0.3530061   -0.2168532
0-3 months     MAL-ED       PERU                           >5%                  NA                -0.2438171   -0.2963334   -0.1913008
0-3 months     MAL-ED       SOUTH AFRICA                   0%                   NA                -0.2038407   -0.2590258   -0.1486556
0-3 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.1132958   -0.2244504   -0.0021412
0-3 months     MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.0303247   -0.2963167    0.2356674
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1149819   -0.1734542   -0.0565096
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.1468820   -0.2117967   -0.0819673
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1698834   -0.2577563   -0.0820105
0-3 months     NIH-Birth    BANGLADESH                     0%                   NA                -0.2551407   -0.3053284   -0.2049530
0-3 months     NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.2238059   -0.2692670   -0.1783447
0-3 months     NIH-Birth    BANGLADESH                     >5%                  NA                -0.2251446   -0.2675759   -0.1827133
0-3 months     NIH-Crypto   BANGLADESH                     0%                   NA                -0.2416144   -0.2640618   -0.2191671
0-3 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.2264677   -0.2659110   -0.1870244
0-3 months     NIH-Crypto   BANGLADESH                     >5%                  NA                -0.2183670   -0.2532888   -0.1834452
0-3 months     PROVIDE      BANGLADESH                     0%                   NA                -0.1733775   -0.2058802   -0.1408747
0-3 months     PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.1829459   -0.2086265   -0.1572653
0-3 months     PROVIDE      BANGLADESH                     >5%                  NA                -0.2063084   -0.2393041   -0.1733128
3-6 months     CMIN         BANGLADESH                     0%                   NA                -0.0050489   -0.0675698    0.0574719
3-6 months     CMIN         BANGLADESH                     (0%, 5%]             NA                -0.0149169   -0.0779687    0.0481349
3-6 months     CMIN         BANGLADESH                     >5%                  NA                -0.0075734   -0.0546180    0.0394712
3-6 months     CONTENT      PERU                           0%                   NA                -0.0005846   -0.0307893    0.0296200
3-6 months     CONTENT      PERU                           (0%, 5%]             NA                 0.0474512    0.0002649    0.0946376
3-6 months     CONTENT      PERU                           >5%                  NA                 0.0311922   -0.0138399    0.0762243
3-6 months     MAL-ED       BANGLADESH                     0%                   NA                -0.0075400   -0.0536274    0.0385475
3-6 months     MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0181678   -0.0534169    0.0170812
3-6 months     MAL-ED       BANGLADESH                     >5%                  NA                -0.0409644   -0.0833192    0.0013904
3-6 months     MAL-ED       INDIA                          0%                   NA                -0.0060111   -0.0796605    0.0676382
3-6 months     MAL-ED       INDIA                          (0%, 5%]             NA                -0.0383587   -0.0762982   -0.0004192
3-6 months     MAL-ED       INDIA                          >5%                  NA                -0.0561854   -0.1131548    0.0007841
3-6 months     MAL-ED       NEPAL                          0%                   NA                -0.0139079   -0.0570261    0.0292103
3-6 months     MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0042013   -0.0519415    0.0435389
3-6 months     MAL-ED       NEPAL                          >5%                  NA                -0.0497171   -0.0963774   -0.0030568
3-6 months     MAL-ED       PERU                           0%                   NA                -0.0109397   -0.0670616    0.0451822
3-6 months     MAL-ED       PERU                           (0%, 5%]             NA                 0.0453968   -0.0111768    0.1019704
3-6 months     MAL-ED       PERU                           >5%                  NA                 0.0321052   -0.0169332    0.0811435
3-6 months     MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0029171   -0.0415252    0.0473595
3-6 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0115740   -0.0924982    0.0693502
3-6 months     MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.1395719   -0.2546049   -0.0245388
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0805005   -0.1326342   -0.0283667
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0815630   -0.1287474   -0.0343785
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0241533   -0.1005685    0.0522619
3-6 months     NIH-Birth    BANGLADESH                     0%                   NA                -0.0399935   -0.0857035    0.0057165
3-6 months     NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.0523664   -0.0885662   -0.0161666
3-6 months     NIH-Birth    BANGLADESH                     >5%                  NA                -0.0556331   -0.0902696   -0.0209966
3-6 months     NIH-Crypto   BANGLADESH                     0%                   NA                 0.0541167    0.0287055    0.0795279
3-6 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0190093   -0.0527302    0.0147116
3-6 months     NIH-Crypto   BANGLADESH                     >5%                  NA                 0.0190642   -0.0096165    0.0477449
3-6 months     PROVIDE      BANGLADESH                     0%                   NA                -0.0281887   -0.0593109    0.0029336
3-6 months     PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0316100   -0.0561462   -0.0070737
3-6 months     PROVIDE      BANGLADESH                     >5%                  NA                -0.0202519   -0.0483478    0.0078439
6-9 months     CMIN         BANGLADESH                     0%                   NA                -0.0627008   -0.1120743   -0.0133274
6-9 months     CMIN         BANGLADESH                     (0%, 5%]             NA                -0.0075165   -0.0717652    0.0567321
6-9 months     CMIN         BANGLADESH                     >5%                  NA                -0.0669489   -0.1022382   -0.0316595
6-9 months     CONTENT      PERU                           0%                   NA                -0.0289196   -0.0556709   -0.0021683
6-9 months     CONTENT      PERU                           (0%, 5%]             NA                -0.0555522   -0.1058490   -0.0052554
6-9 months     CONTENT      PERU                           >5%                  NA                 0.0118091   -0.0254296    0.0490477
6-9 months     MAL-ED       BANGLADESH                     0%                   NA                -0.1019734   -0.1302934   -0.0736534
6-9 months     MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0726732   -0.1025962   -0.0427501
6-9 months     MAL-ED       BANGLADESH                     >5%                  NA                -0.0372483   -0.0662913   -0.0082052
6-9 months     MAL-ED       INDIA                          0%                   NA                -0.0779535   -0.1386091   -0.0172979
6-9 months     MAL-ED       INDIA                          (0%, 5%]             NA                -0.0678854   -0.0950802   -0.0406906
6-9 months     MAL-ED       INDIA                          >5%                  NA                -0.0690753   -0.1166706   -0.0214799
6-9 months     MAL-ED       NEPAL                          0%                   NA                -0.0420553   -0.0748798   -0.0092308
6-9 months     MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0334912   -0.0667138   -0.0002685
6-9 months     MAL-ED       NEPAL                          >5%                  NA                -0.0282970   -0.0622832    0.0056892
6-9 months     MAL-ED       PERU                           0%                   NA                 0.0019888   -0.0447162    0.0486939
6-9 months     MAL-ED       PERU                           (0%, 5%]             NA                -0.0361630   -0.0743752    0.0020492
6-9 months     MAL-ED       PERU                           >5%                  NA                -0.0522967   -0.0918301   -0.0127634
6-9 months     MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0042039   -0.0366034    0.0281957
6-9 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0677469   -0.1311773   -0.0043164
6-9 months     MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.0309229   -0.0902187    0.0283730
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1000608   -0.1491731   -0.0509485
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0817830   -0.1409632   -0.0226028
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1038694   -0.1667955   -0.0409434
6-9 months     NIH-Birth    BANGLADESH                     0%                   NA                -0.0239588   -0.0615008    0.0135831
6-9 months     NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.0408689   -0.0755791   -0.0061586
6-9 months     NIH-Birth    BANGLADESH                     >5%                  NA                -0.0919265   -0.1156730   -0.0681801
6-9 months     NIH-Crypto   BANGLADESH                     0%                   NA                -0.0419708   -0.0596192   -0.0243223
6-9 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0308225   -0.0569802   -0.0046648
6-9 months     NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0138387   -0.0392191    0.0115417
6-9 months     PROVIDE      BANGLADESH                     0%                   NA                -0.0644186   -0.0862818   -0.0425555
6-9 months     PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0594176   -0.0769801   -0.0418552
6-9 months     PROVIDE      BANGLADESH                     >5%                  NA                -0.0615859   -0.0791433   -0.0440285
9-12 months    CMIN         BANGLADESH                     0%                   NA                -0.0811697   -0.1193499   -0.0429896
9-12 months    CMIN         BANGLADESH                     (0%, 5%]             NA                -0.0782023   -0.1405422   -0.0158624
9-12 months    CMIN         BANGLADESH                     >5%                  NA                -0.1015294   -0.1362774   -0.0667815
9-12 months    CONTENT      PERU                           0%                   NA                -0.0192031   -0.0404115    0.0020052
9-12 months    CONTENT      PERU                           (0%, 5%]             NA                -0.0212948   -0.0591135    0.0165239
9-12 months    CONTENT      PERU                           >5%                  NA                -0.0309106   -0.0642498    0.0024285
9-12 months    MAL-ED       BANGLADESH                     0%                   NA                -0.0891834   -0.1224814   -0.0558854
9-12 months    MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0763866   -0.1009272   -0.0518459
9-12 months    MAL-ED       BANGLADESH                     >5%                  NA                -0.0982872   -0.1250700   -0.0715044
9-12 months    MAL-ED       INDIA                          0%                   NA                -0.1243042   -0.1582719   -0.0903365
9-12 months    MAL-ED       INDIA                          (0%, 5%]             NA                -0.0893396   -0.1093833   -0.0692960
9-12 months    MAL-ED       INDIA                          >5%                  NA                -0.0690464   -0.1038662   -0.0342267
9-12 months    MAL-ED       NEPAL                          0%                   NA                -0.0663736   -0.0968552   -0.0358921
9-12 months    MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0475636   -0.0766135   -0.0185136
9-12 months    MAL-ED       NEPAL                          >5%                  NA                -0.0728138   -0.1007498   -0.0448778
9-12 months    MAL-ED       PERU                           0%                   NA                -0.0536191   -0.0953338   -0.0119045
9-12 months    MAL-ED       PERU                           (0%, 5%]             NA                -0.0659438   -0.1003116   -0.0315759
9-12 months    MAL-ED       PERU                           >5%                  NA                -0.0166505   -0.0514753    0.0181744
9-12 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0827680   -0.1133771   -0.0521588
9-12 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0870312   -0.1503594   -0.0237031
9-12 months    MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.1192457   -0.2232053   -0.0152862
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1345800   -0.1791771   -0.0899829
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.1864206   -0.2475387   -0.1253026
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1359542   -0.2133265   -0.0585819
9-12 months    NIH-Birth    BANGLADESH                     0%                   NA                -0.0389574   -0.0652869   -0.0126279
9-12 months    NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.0479945   -0.0747885   -0.0212005
9-12 months    NIH-Birth    BANGLADESH                     >5%                  NA                -0.0405454   -0.0627961   -0.0182947
9-12 months    NIH-Crypto   BANGLADESH                     0%                   NA                -0.0339164   -0.0491156   -0.0187171
9-12 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0244752   -0.0482502   -0.0007003
9-12 months    NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0430253   -0.0638699   -0.0221808
9-12 months    PROVIDE      BANGLADESH                     0%                   NA                -0.0699221   -0.0922278   -0.0476165
9-12 months    PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0619227   -0.0791567   -0.0446887
9-12 months    PROVIDE      BANGLADESH                     >5%                  NA                -0.0590709   -0.0774507   -0.0406911
12-15 months   CMIN         BANGLADESH                     0%                   NA                -0.0760664   -0.1152805   -0.0368524
12-15 months   CMIN         BANGLADESH                     (0%, 5%]             NA                -0.0651969   -0.1103538   -0.0200401
12-15 months   CMIN         BANGLADESH                     >5%                  NA                -0.0469443   -0.0776806   -0.0162080
12-15 months   CONTENT      PERU                           0%                   NA                -0.0715648   -0.0950992   -0.0480305
12-15 months   CONTENT      PERU                           (0%, 5%]             NA                -0.0750206   -0.1069240   -0.0431173
12-15 months   CONTENT      PERU                           >5%                  NA                -0.0824598   -0.1127891   -0.0521306
12-15 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0540705   -0.0815701   -0.0265709
12-15 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0756400   -0.0995624   -0.0517177
12-15 months   MAL-ED       BANGLADESH                     >5%                  NA                -0.0315508   -0.0604736   -0.0026281
12-15 months   MAL-ED       INDIA                          0%                   NA                -0.0621585   -0.0983919   -0.0259251
12-15 months   MAL-ED       INDIA                          (0%, 5%]             NA                -0.0728542   -0.0925903   -0.0531180
12-15 months   MAL-ED       INDIA                          >5%                  NA                -0.0167316   -0.0455147    0.0120515
12-15 months   MAL-ED       NEPAL                          0%                   NA                -0.0672401   -0.0956381   -0.0388421
12-15 months   MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0505790   -0.0747300   -0.0264279
12-15 months   MAL-ED       NEPAL                          >5%                  NA                -0.0544565   -0.0817917   -0.0271212
12-15 months   MAL-ED       PERU                           0%                   NA                -0.0664000   -0.0990428   -0.0337573
12-15 months   MAL-ED       PERU                           (0%, 5%]             NA                -0.0603999   -0.0945129   -0.0262870
12-15 months   MAL-ED       PERU                           >5%                  NA                -0.0682318   -0.0952782   -0.0411854
12-15 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0626305   -0.0866229   -0.0386382
12-15 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0557666   -0.1216830    0.0101498
12-15 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.0101942   -0.1012493    0.0808608
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0708443   -0.1057113   -0.0359772
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0505545   -0.0974974   -0.0036117
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1036034   -0.1502253   -0.0569815
12-15 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.1443152   -0.1684890   -0.1201415
12-15 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.1310095   -0.1544729   -0.1075461
12-15 months   NIH-Birth    BANGLADESH                     >5%                  NA                -0.1119737   -0.1438333   -0.0801142
12-15 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0391330   -0.0522199   -0.0260461
12-15 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0464416   -0.0655808   -0.0273024
12-15 months   NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0306491   -0.0498764   -0.0114218
12-15 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0389032   -0.0592651   -0.0185414
12-15 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0464065   -0.0625426   -0.0302704
12-15 months   PROVIDE      BANGLADESH                     >5%                  NA                -0.0360153   -0.0526670   -0.0193636
15-18 months   CMIN         BANGLADESH                     0%                   NA                -0.0692771   -0.1014132   -0.0371410
15-18 months   CMIN         BANGLADESH                     (0%, 5%]             NA                -0.0812484   -0.1246862   -0.0378106
15-18 months   CMIN         BANGLADESH                     >5%                  NA                -0.0451291   -0.0731946   -0.0170636
15-18 months   CONTENT      PERU                           0%                   NA                -0.0115670   -0.0341998    0.0110659
15-18 months   CONTENT      PERU                           (0%, 5%]             NA                 0.0074134   -0.0291693    0.0439962
15-18 months   CONTENT      PERU                           >5%                  NA                -0.0218591   -0.0539529    0.0102347
15-18 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0423817   -0.0674741   -0.0172893
15-18 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0400015   -0.0613690   -0.0186340
15-18 months   MAL-ED       BANGLADESH                     >5%                  NA                -0.0565879   -0.0804183   -0.0327576
15-18 months   MAL-ED       INDIA                          0%                   NA                -0.0340025   -0.0641434   -0.0038617
15-18 months   MAL-ED       INDIA                          (0%, 5%]             NA                -0.0362472   -0.0538108   -0.0186836
15-18 months   MAL-ED       INDIA                          >5%                  NA                -0.0452590   -0.0686454   -0.0218726
15-18 months   MAL-ED       NEPAL                          0%                   NA                -0.0408517   -0.0685243   -0.0131792
15-18 months   MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0706808   -0.0979345   -0.0434271
15-18 months   MAL-ED       NEPAL                          >5%                  NA                -0.0530858   -0.0757078   -0.0304639
15-18 months   MAL-ED       PERU                           0%                   NA                -0.0446337   -0.0753646   -0.0139029
15-18 months   MAL-ED       PERU                           (0%, 5%]             NA                -0.0478072   -0.0751626   -0.0204518
15-18 months   MAL-ED       PERU                           >5%                  NA                -0.0224645   -0.0459246    0.0009956
15-18 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0289522   -0.0511533   -0.0067510
15-18 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0292705   -0.0725821    0.0140411
15-18 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.0172464   -0.0374974    0.0030046
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1077823   -0.1417694   -0.0737952
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0841872   -0.1184777   -0.0498967
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0383251   -0.0922322    0.0155819
15-18 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.0470242   -0.0767826   -0.0172657
15-18 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.0666873   -0.0949533   -0.0384213
15-18 months   NIH-Birth    BANGLADESH                     >5%                  NA                -0.0574549   -0.0782204   -0.0366893
15-18 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0167002   -0.0287409   -0.0046594
15-18 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0054917   -0.0228460    0.0118627
15-18 months   NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0261289   -0.0414880   -0.0107698
15-18 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0360405   -0.0524930   -0.0195880
15-18 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0332177   -0.0474872   -0.0189482
15-18 months   PROVIDE      BANGLADESH                     >5%                  NA                -0.0440182   -0.0589006   -0.0291358
18-21 months   CMIN         BANGLADESH                     0%                   NA                 0.0018788   -0.0304649    0.0342226
18-21 months   CMIN         BANGLADESH                     (0%, 5%]             NA                -0.0103686   -0.0441437    0.0234066
18-21 months   CMIN         BANGLADESH                     >5%                  NA                -0.0103359   -0.0345670    0.0138953
18-21 months   CONTENT      PERU                           0%                   NA                -0.0064867   -0.0294398    0.0164664
18-21 months   CONTENT      PERU                           (0%, 5%]             NA                -0.0032678   -0.0360850    0.0295493
18-21 months   CONTENT      PERU                           >5%                  NA                -0.0100416   -0.0335053    0.0134221
18-21 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0181807   -0.0389329    0.0025714
18-21 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0290914   -0.0490070   -0.0091759
18-21 months   MAL-ED       BANGLADESH                     >5%                  NA                 0.0044815   -0.0138006    0.0227635
18-21 months   MAL-ED       INDIA                          0%                   NA                 0.0074389   -0.0189783    0.0338560
18-21 months   MAL-ED       INDIA                          (0%, 5%]             NA                 0.0069696   -0.0085504    0.0224896
18-21 months   MAL-ED       INDIA                          >5%                  NA                 0.0017424   -0.0199453    0.0234301
18-21 months   MAL-ED       NEPAL                          0%                   NA                -0.0251781   -0.0485268   -0.0018294
18-21 months   MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0190711   -0.0430912    0.0049490
18-21 months   MAL-ED       NEPAL                          >5%                  NA                -0.0400280   -0.0598734   -0.0201827
18-21 months   MAL-ED       PERU                           0%                   NA                -0.0122021   -0.0439509    0.0195466
18-21 months   MAL-ED       PERU                           (0%, 5%]             NA                -0.0047436   -0.0324387    0.0229516
18-21 months   MAL-ED       PERU                           >5%                  NA                -0.0080940   -0.0299626    0.0137747
18-21 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0313231   -0.0542249   -0.0084214
18-21 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0420689   -0.0794828   -0.0046550
18-21 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.0065420   -0.0714208    0.0845049
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0099223   -0.0465233    0.0266787
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0327858   -0.0649675   -0.0006041
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0606620   -0.1203318   -0.0009922
18-21 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.0478456   -0.0695841   -0.0261071
18-21 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.0447082   -0.0688349   -0.0205815
18-21 months   NIH-Birth    BANGLADESH                     >5%                  NA                -0.0292330   -0.0479855   -0.0104805
18-21 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0239343   -0.0350335   -0.0128352
18-21 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0280141   -0.0455870   -0.0104413
18-21 months   NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0359747   -0.0514289   -0.0205205
18-21 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0048326   -0.0200637    0.0103986
18-21 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0202515   -0.0335943   -0.0069088
18-21 months   PROVIDE      BANGLADESH                     >5%                  NA                -0.0045144   -0.0182970    0.0092682
21-24 months   CMIN         BANGLADESH                     0%                   NA                 0.0335286    0.0007119    0.0663452
21-24 months   CMIN         BANGLADESH                     (0%, 5%]             NA                -0.0011047   -0.0383332    0.0361238
21-24 months   CMIN         BANGLADESH                     >5%                  NA                 0.0095402   -0.0191583    0.0382386
21-24 months   CONTENT      PERU                           0%                   NA                 0.0252402   -0.0122606    0.0627409
21-24 months   CONTENT      PERU                           (0%, 5%]             NA                -0.0061683   -0.0528009    0.0404642
21-24 months   CONTENT      PERU                           >5%                  NA                 0.0534781    0.0024198    0.1045365
21-24 months   MAL-ED       BANGLADESH                     0%                   NA                 0.0483267    0.0269272    0.0697261
21-24 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.0191431    0.0010619    0.0372243
21-24 months   MAL-ED       BANGLADESH                     >5%                  NA                 0.0109024   -0.0124132    0.0342180
21-24 months   MAL-ED       INDIA                          0%                   NA                 0.0283722    0.0081152    0.0486291
21-24 months   MAL-ED       INDIA                          (0%, 5%]             NA                 0.0358818    0.0194638    0.0522999
21-24 months   MAL-ED       INDIA                          >5%                  NA                 0.0177282   -0.0010809    0.0365374
21-24 months   MAL-ED       NEPAL                          0%                   NA                -0.0062042   -0.0320555    0.0196472
21-24 months   MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0144476   -0.0093910    0.0382862
21-24 months   MAL-ED       NEPAL                          >5%                  NA                 0.0082392   -0.0127371    0.0292156
21-24 months   MAL-ED       PERU                           0%                   NA                 0.0396429    0.0141000    0.0651857
21-24 months   MAL-ED       PERU                           (0%, 5%]             NA                 0.0643691    0.0364456    0.0922925
21-24 months   MAL-ED       PERU                           >5%                  NA                 0.0619533    0.0371899    0.0867167
21-24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0424024    0.0220391    0.0627657
21-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.0484143    0.0171607    0.0796679
21-24 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.0467120   -0.0115728    0.1049968
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0107949   -0.0222956    0.0438853
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0122957   -0.0252937    0.0498852
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0028609   -0.0441541    0.0384324
21-24 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0300932    0.0090506    0.0511359
21-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                 0.0459762    0.0242981    0.0676543
21-24 months   NIH-Birth    BANGLADESH                     >5%                  NA                 0.0429926    0.0247131    0.0612722
21-24 months   NIH-Crypto   BANGLADESH                     0%                   NA                 0.0649007    0.0539603    0.0758411
21-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0513428    0.0333815    0.0693040
21-24 months   NIH-Crypto   BANGLADESH                     >5%                  NA                 0.0510227    0.0339079    0.0681374
21-24 months   PROVIDE      BANGLADESH                     0%                   NA                 0.0472046    0.0295345    0.0648746
21-24 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                 0.0438895    0.0298639    0.0579152
21-24 months   PROVIDE      BANGLADESH                     >5%                  NA                 0.0482648    0.0343681    0.0621616


### Parameter: E(Y)


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMIN         BANGLADESH                     NA                   NA                 0.0122587   -0.0591325    0.0836499
0-3 months     CONTENT      PERU                           NA                   NA                 0.0249041   -0.0510599    0.1008681
0-3 months     MAL-ED       BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     MAL-ED       INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     MAL-ED       NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     MAL-ED       PERU                           NA                   NA                -0.2628007   -0.2968934   -0.2287079
0-3 months     MAL-ED       SOUTH AFRICA                   NA                   NA                -0.1788096   -0.2278601   -0.1297591
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     NIH-Birth    BANGLADESH                     NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     NIH-Crypto   BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROVIDE      BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
3-6 months     CMIN         BANGLADESH                     NA                   NA                -0.0085806   -0.0411510    0.0239898
3-6 months     CONTENT      PERU                           NA                   NA                 0.0173829   -0.0049673    0.0397330
3-6 months     MAL-ED       BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     MAL-ED       INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     MAL-ED       NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     MAL-ED       PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0049345   -0.0429370    0.0330680
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     NIH-Birth    BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     NIH-Crypto   BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROVIDE      BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
6-9 months     CMIN         BANGLADESH                     NA                   NA                -0.0518380   -0.0789102   -0.0247658
6-9 months     CONTENT      PERU                           NA                   NA                -0.0236130   -0.0439514   -0.0032747
6-9 months     MAL-ED       BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     MAL-ED       INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     MAL-ED       NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     MAL-ED       PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     NIH-Birth    BANGLADESH                     NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     NIH-Crypto   BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROVIDE      BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
9-12 months    CMIN         BANGLADESH                     NA                   NA                -0.0900457   -0.1145732   -0.0655181
9-12 months    CONTENT      PERU                           NA                   NA                -0.0227002   -0.0389439   -0.0064565
9-12 months    MAL-ED       BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    MAL-ED       INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    MAL-ED       NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    MAL-ED       PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    NIH-Birth    BANGLADESH                     NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    NIH-Crypto   BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROVIDE      BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
12-15 months   CMIN         BANGLADESH                     NA                   NA                -0.0608799   -0.0824031   -0.0393566
12-15 months   CONTENT      PERU                           NA                   NA                -0.0751985   -0.0914586   -0.0589385
12-15 months   MAL-ED       BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   MAL-ED       INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   MAL-ED       NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   MAL-ED       PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   NIH-Birth    BANGLADESH                     NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   NIH-Crypto   BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROVIDE      BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
15-18 months   CMIN         BANGLADESH                     NA                   NA                -0.0627334   -0.0821141   -0.0433527
15-18 months   CONTENT      PERU                           NA                   NA                -0.0106370   -0.0272168    0.0059428
15-18 months   MAL-ED       BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   MAL-ED       INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   MAL-ED       NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   MAL-ED       PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   NIH-Birth    BANGLADESH                     NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   NIH-Crypto   BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROVIDE      BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
18-21 months   CMIN         BANGLADESH                     NA                   NA                -0.0064943   -0.0234244    0.0104357
18-21 months   CONTENT      PERU                           NA                   NA                -0.0068090   -0.0219193    0.0083013
18-21 months   MAL-ED       BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   MAL-ED       INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   MAL-ED       NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   MAL-ED       PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   NIH-Birth    BANGLADESH                     NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   NIH-Crypto   BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROVIDE      BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
21-24 months   CMIN         BANGLADESH                     NA                   NA                 0.0156162   -0.0032678    0.0345001
21-24 months   CONTENT      PERU                           NA                   NA                 0.0253992   -0.0018188    0.0526172
21-24 months   MAL-ED       BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   MAL-ED       INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   MAL-ED       NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   MAL-ED       PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   MAL-ED       SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   NIH-Birth    BANGLADESH                     NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   NIH-Crypto   BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROVIDE      BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812


### Parameter: ATE


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     CMIN         BANGLADESH                     (0%, 5%]             0%                 0.1117365   -0.0538280    0.2773010
0-3 months     CMIN         BANGLADESH                     >5%                  0%                -0.0044860   -0.1745432    0.1655713
0-3 months     CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     CONTENT      PERU                           (0%, 5%]             0%                 0.0424836   -0.1064127    0.1913799
0-3 months     CONTENT      PERU                           >5%                  0%                -0.0911353   -0.2572476    0.0749770
0-3 months     MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0204907   -0.0651198    0.1061012
0-3 months     MAL-ED       BANGLADESH                     >5%                  0%                 0.0337526   -0.0499487    0.1174539
0-3 months     MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       INDIA                          (0%, 5%]             0%                -0.0791744   -0.2315087    0.0731599
0-3 months     MAL-ED       INDIA                          >5%                  0%                -0.1936010   -0.3699264   -0.0172756
0-3 months     MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0040671   -0.1064497    0.1145840
0-3 months     MAL-ED       NEPAL                          >5%                  0%                -0.0156635   -0.1261553    0.0948283
0-3 months     MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU                           (0%, 5%]             0%                -0.0184617   -0.1041659    0.0672425
0-3 months     MAL-ED       PERU                           >5%                  0%                 0.0226509   -0.0513002    0.0966020
0-3 months     MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0905449   -0.0335548    0.2146446
0-3 months     MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1735160   -0.0981403    0.4451724
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0319001   -0.1192667    0.0554665
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0549015   -0.1604508    0.0506479
0-3 months     NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0313349   -0.0363816    0.0990514
0-3 months     NIH-Birth    BANGLADESH                     >5%                  0%                 0.0299961   -0.0357246    0.0957169
0-3 months     NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0151467   -0.0302367    0.0605301
0-3 months     NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0232474   -0.0182666    0.0647615
0-3 months     PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0095684   -0.0509921    0.0318553
0-3 months     PROVIDE      BANGLADESH                     >5%                  0%                -0.0329309   -0.0792466    0.0133847
3-6 months     CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0098680   -0.0986621    0.0789261
3-6 months     CMIN         BANGLADESH                     >5%                  0%                -0.0025245   -0.0807680    0.0757190
3-6 months     CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     CONTENT      PERU                           (0%, 5%]             0%                 0.0480359   -0.0079898    0.1040615
3-6 months     CONTENT      PERU                           >5%                  0%                 0.0317768   -0.0224469    0.0860005
3-6 months     MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0106278   -0.0686498    0.0473941
3-6 months     MAL-ED       BANGLADESH                     >5%                  0%                -0.0334244   -0.0960182    0.0291694
3-6 months     MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA                          (0%, 5%]             0%                -0.0323476   -0.1151946    0.0504995
3-6 months     MAL-ED       INDIA                          >5%                  0%                -0.0501742   -0.1432857    0.0429372
3-6 months     MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0097066   -0.0546231    0.0740363
3-6 months     MAL-ED       NEPAL                          >5%                  0%                -0.0358091   -0.0993415    0.0277233
3-6 months     MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU                           (0%, 5%]             0%                 0.0563365   -0.0233519    0.1360249
3-6 months     MAL-ED       PERU                           >5%                  0%                 0.0430449   -0.0314832    0.1175729
3-6 months     MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0144911   -0.1068158    0.0778336
3-6 months     MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.1424890   -0.2658086   -0.0191693
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0010625   -0.0713782    0.0692532
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0563472   -0.0361580    0.1488523
3-6 months     NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0123729   -0.0706809    0.0459352
3-6 months     NIH-Birth    BANGLADESH                     >5%                  0%                -0.0156396   -0.0729902    0.0417111
3-6 months     NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0731260   -0.1153495   -0.0309024
3-6 months     NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0350525   -0.0733711    0.0032661
3-6 months     PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0034213   -0.0430524    0.0362098
3-6 months     PROVIDE      BANGLADESH                     >5%                  0%                 0.0079367   -0.0339915    0.0498649
6-9 months     CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     CMIN         BANGLADESH                     (0%, 5%]             0%                 0.0551843   -0.0258443    0.1362129
6-9 months     CMIN         BANGLADESH                     >5%                  0%                -0.0042480   -0.0649364    0.0564403
6-9 months     CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     CONTENT      PERU                           (0%, 5%]             0%                -0.0266326   -0.0836010    0.0303358
6-9 months     CONTENT      PERU                           >5%                  0%                 0.0407287   -0.0051227    0.0865800
6-9 months     MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0293002   -0.0118994    0.0704999
6-9 months     MAL-ED       BANGLADESH                     >5%                  0%                 0.0647251    0.0241601    0.1052902
6-9 months     MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA                          (0%, 5%]             0%                 0.0100681   -0.0564048    0.0765411
6-9 months     MAL-ED       INDIA                          >5%                  0%                 0.0088783   -0.0682218    0.0859783
6-9 months     MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0085641   -0.0381391    0.0552674
6-9 months     MAL-ED       NEPAL                          >5%                  0%                 0.0137583   -0.0334911    0.0610078
6-9 months     MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU                           (0%, 5%]             0%                -0.0381518   -0.0984969    0.0221933
6-9 months     MAL-ED       PERU                           >5%                  0%                -0.0542855   -0.1154758    0.0069047
6-9 months     MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0635430   -0.1347691    0.0076830
6-9 months     MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0267190   -0.0942892    0.0408512
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0182778   -0.0586268    0.0951824
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0038086   -0.0836316    0.0760143
6-9 months     NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0169100   -0.0680393    0.0342192
6-9 months     NIH-Birth    BANGLADESH                     >5%                  0%                -0.0679677   -0.1123894   -0.0235459
6-9 months     NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0111483   -0.0204063    0.0427029
6-9 months     NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0281321   -0.0027813    0.0590454
6-9 months     PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0050010   -0.0230425    0.0330445
6-9 months     PROVIDE      BANGLADESH                     >5%                  0%                 0.0028328   -0.0252076    0.0308731
9-12 months    CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    CMIN         BANGLADESH                     (0%, 5%]             0%                 0.0029674   -0.0701351    0.0760700
9-12 months    CMIN         BANGLADESH                     >5%                  0%                -0.0203597   -0.0719847    0.0312653
9-12 months    CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    CONTENT      PERU                           (0%, 5%]             0%                -0.0020916   -0.0454511    0.0412679
9-12 months    CONTENT      PERU                           >5%                  0%                -0.0117075   -0.0512207    0.0278057
9-12 months    MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0127968   -0.0285674    0.0541611
9-12 months    MAL-ED       BANGLADESH                     >5%                  0%                -0.0091039   -0.0518365    0.0336288
9-12 months    MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA                          (0%, 5%]             0%                 0.0349645   -0.0044759    0.0744050
9-12 months    MAL-ED       INDIA                          >5%                  0%                 0.0552577    0.0066140    0.1039015
9-12 months    MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0188101   -0.0232972    0.0609174
9-12 months    MAL-ED       NEPAL                          >5%                  0%                -0.0064402   -0.0477869    0.0349065
9-12 months    MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU                           (0%, 5%]             0%                -0.0123246   -0.0663734    0.0417241
9-12 months    MAL-ED       PERU                           >5%                  0%                 0.0369687   -0.0173718    0.0913091
9-12 months    MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0042633   -0.0746008    0.0660743
9-12 months    MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0364778   -0.1448498    0.0718943
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0518406   -0.1274999    0.0238186
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0013742   -0.0906791    0.0879307
9-12 months    NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0090371   -0.0466025    0.0285284
9-12 months    NIH-Birth    BANGLADESH                     >5%                  0%                -0.0015880   -0.0360602    0.0328843
9-12 months    NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0094411   -0.0187770    0.0376593
9-12 months    NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0091090   -0.0349065    0.0166886
9-12 months    PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0079995   -0.0201883    0.0361873
9-12 months    PROVIDE      BANGLADESH                     >5%                  0%                 0.0108513   -0.0180513    0.0397539
12-15 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   CMIN         BANGLADESH                     (0%, 5%]             0%                 0.0108695   -0.0489376    0.0706765
12-15 months   CMIN         BANGLADESH                     >5%                  0%                 0.0291221   -0.0207022    0.0789464
12-15 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   CONTENT      PERU                           (0%, 5%]             0%                -0.0034558   -0.0431003    0.0361887
12-15 months   CONTENT      PERU                           >5%                  0%                -0.0108950   -0.0492842    0.0274942
12-15 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0215695   -0.0580182    0.0148792
12-15 months   MAL-ED       BANGLADESH                     >5%                  0%                 0.0225197   -0.0173896    0.0624290
12-15 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA                          (0%, 5%]             0%                -0.0106956   -0.0519555    0.0305642
12-15 months   MAL-ED       INDIA                          >5%                  0%                 0.0454269   -0.0008475    0.0917014
12-15 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0166611   -0.0206178    0.0539401
12-15 months   MAL-ED       NEPAL                          >5%                  0%                 0.0127836   -0.0266329    0.0522002
12-15 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.0060001   -0.0412147    0.0532150
12-15 months   MAL-ED       PERU                           >5%                  0%                -0.0018317   -0.0442234    0.0405600
12-15 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0068639   -0.0632831    0.0770109
12-15 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0524363   -0.0417266    0.1465992
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0202897   -0.0381854    0.0787649
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0327591   -0.0909769    0.0254587
12-15 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0133057   -0.0203826    0.0469941
12-15 months   NIH-Birth    BANGLADESH                     >5%                  0%                 0.0323415   -0.0076510    0.0723340
12-15 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0073086   -0.0304943    0.0158771
12-15 months   NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0084839   -0.0147745    0.0317423
12-15 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0075033   -0.0334836    0.0184771
12-15 months   PROVIDE      BANGLADESH                     >5%                  0%                 0.0028879   -0.0234158    0.0291916
15-18 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0119713   -0.0660043    0.0420617
15-18 months   CMIN         BANGLADESH                     >5%                  0%                 0.0241480   -0.0185181    0.0668142
15-18 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   CONTENT      PERU                           (0%, 5%]             0%                 0.0189804   -0.0240375    0.0619984
15-18 months   CONTENT      PERU                           >5%                  0%                -0.0102921   -0.0495637    0.0289795
15-18 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0023802   -0.0305773    0.0353377
15-18 months   MAL-ED       BANGLADESH                     >5%                  0%                -0.0142062   -0.0488113    0.0203989
15-18 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA                          (0%, 5%]             0%                -0.0022446   -0.0371294    0.0326401
15-18 months   MAL-ED       INDIA                          >5%                  0%                -0.0112564   -0.0494061    0.0268932
15-18 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0298291   -0.0686689    0.0090108
15-18 months   MAL-ED       NEPAL                          >5%                  0%                -0.0122341   -0.0479765    0.0235083
15-18 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU                           (0%, 5%]             0%                -0.0031735   -0.0443159    0.0379690
15-18 months   MAL-ED       PERU                           >5%                  0%                 0.0221692   -0.0164929    0.0608314
15-18 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0003183   -0.0489885    0.0483519
15-18 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0117058   -0.0183441    0.0417556
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0235951   -0.0246849    0.0718752
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0694572    0.0057305    0.1331839
15-18 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0196631   -0.0607062    0.0213799
15-18 months   NIH-Birth    BANGLADESH                     >5%                  0%                -0.0104307   -0.0467181    0.0258567
15-18 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0112085   -0.0099138    0.0323309
15-18 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0094287   -0.0289450    0.0100875
15-18 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0028228   -0.0189556    0.0246013
15-18 months   PROVIDE      BANGLADESH                     >5%                  0%                -0.0079777   -0.0301626    0.0142072
18-21 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0122474   -0.0590115    0.0345167
18-21 months   CMIN         BANGLADESH                     >5%                  0%                -0.0122147   -0.0526285    0.0281990
18-21 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   CONTENT      PERU                           (0%, 5%]             0%                 0.0032188   -0.0368288    0.0432665
18-21 months   CONTENT      PERU                           >5%                  0%                -0.0035549   -0.0363785    0.0292687
18-21 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0109107   -0.0396732    0.0178518
18-21 months   MAL-ED       BANGLADESH                     >5%                  0%                 0.0226622   -0.0049944    0.0503188
18-21 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA                          (0%, 5%]             0%                -0.0004693   -0.0311081    0.0301696
18-21 months   MAL-ED       INDIA                          >5%                  0%                -0.0056965   -0.0398757    0.0284828
18-21 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0061070   -0.0273912    0.0396051
18-21 months   MAL-ED       NEPAL                          >5%                  0%                -0.0148499   -0.0454931    0.0157932
18-21 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.0074585   -0.0346723    0.0495894
18-21 months   MAL-ED       PERU                           >5%                  0%                 0.0041082   -0.0344434    0.0426597
18-21 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0107458   -0.0546125    0.0331209
18-21 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0378652   -0.0433918    0.1191221
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0228635   -0.0716004    0.0258735
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0507397   -0.1207405    0.0192611
18-21 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0031374   -0.0293381    0.0356129
18-21 months   NIH-Birth    BANGLADESH                     >5%                  0%                 0.0186126   -0.0100966    0.0473218
18-21 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0040798   -0.0248644    0.0167048
18-21 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0120403   -0.0310673    0.0069866
18-21 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0154190   -0.0356678    0.0048298
18-21 months   PROVIDE      BANGLADESH                     >5%                  0%                 0.0003182   -0.0202232    0.0208595
21-24 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0346333   -0.0842609    0.0149943
21-24 months   CMIN         BANGLADESH                     >5%                  0%                -0.0239884   -0.0675835    0.0196067
21-24 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   CONTENT      PERU                           (0%, 5%]             0%                -0.0314085   -0.0912491    0.0284321
21-24 months   CONTENT      PERU                           >5%                  0%                 0.0282380   -0.0351123    0.0915883
21-24 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0291836   -0.0571991   -0.0011680
21-24 months   MAL-ED       BANGLADESH                     >5%                  0%                -0.0374242   -0.0690716   -0.0057769
21-24 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA                          (0%, 5%]             0%                 0.0075097   -0.0185652    0.0335845
21-24 months   MAL-ED       INDIA                          >5%                  0%                -0.0106439   -0.0382868    0.0169990
21-24 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0206518   -0.0145131    0.0558166
21-24 months   MAL-ED       NEPAL                          >5%                  0%                 0.0144434   -0.0188477    0.0477345
21-24 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.0247262   -0.0131177    0.0625701
21-24 months   MAL-ED       PERU                           >5%                  0%                 0.0223105   -0.0132657    0.0578866
21-24 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0060119   -0.0312902    0.0433141
21-24 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0043096   -0.0574300    0.0660493
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0015009   -0.0485785    0.0515802
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0136557   -0.0665718    0.0392604
21-24 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0158830   -0.0143285    0.0460945
21-24 months   NIH-Birth    BANGLADESH                     >5%                  0%                 0.0128994   -0.0149742    0.0407729
21-24 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0135579   -0.0345888    0.0074730
21-24 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0138780   -0.0341907    0.0064348
21-24 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0033150   -0.0258750    0.0192449
21-24 months   PROVIDE      BANGLADESH                     >5%                  0%                 0.0010603   -0.0214198    0.0235403


### Parameter: PAR


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMIN         BANGLADESH                     0%                   NA                 0.0324246   -0.0540564    0.1189056
0-3 months     CONTENT      PERU                           0%                   NA                -0.0132085   -0.0787009    0.0522839
0-3 months     MAL-ED       BANGLADESH                     0%                   NA                 0.0187904   -0.0348494    0.0724301
0-3 months     MAL-ED       INDIA                          0%                   NA                -0.0902462   -0.2098817    0.0293893
0-3 months     MAL-ED       NEPAL                          0%                   NA                -0.0045500   -0.0689005    0.0598005
0-3 months     MAL-ED       PERU                           0%                   NA                 0.0036673   -0.0465605    0.0538951
0-3 months     MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0250311   -0.0038261    0.0538883
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0226047   -0.0681497    0.0229403
0-3 months     NIH-Birth    BANGLADESH                     0%                   NA                 0.0231542   -0.0216476    0.0679560
0-3 months     NIH-Crypto   BANGLADESH                     0%                   NA                 0.0103537   -0.0078246    0.0285319
0-3 months     PROVIDE      BANGLADESH                     0%                   NA                -0.0146627   -0.0427761    0.0134506
3-6 months     CMIN         BANGLADESH                     0%                   NA                -0.0035317   -0.0528694    0.0458061
3-6 months     CONTENT      PERU                           0%                   NA                 0.0179675   -0.0028007    0.0387357
3-6 months     MAL-ED       BANGLADESH                     0%                   NA                -0.0149008   -0.0527172    0.0229156
3-6 months     MAL-ED       INDIA                          0%                   NA                -0.0300291   -0.0931385    0.0330804
3-6 months     MAL-ED       NEPAL                          0%                   NA                -0.0091705   -0.0455294    0.0271884
3-6 months     MAL-ED       PERU                           0%                   NA                 0.0366857   -0.0140094    0.0873809
3-6 months     MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0078516   -0.0293153    0.0136121
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0099557   -0.0282058    0.0481171
3-6 months     NIH-Birth    BANGLADESH                     0%                   NA                -0.0109072   -0.0507499    0.0289356
3-6 months     NIH-Crypto   BANGLADESH                     0%                   NA                -0.0273427   -0.0450448   -0.0096405
3-6 months     PROVIDE      BANGLADESH                     0%                   NA                 0.0012262   -0.0255936    0.0280460
6-9 months     CMIN         BANGLADESH                     0%                   NA                 0.0108628   -0.0294872    0.0512127
6-9 months     CONTENT      PERU                           0%                   NA                 0.0053066   -0.0136709    0.0242840
6-9 months     MAL-ED       BANGLADESH                     0%                   NA                 0.0319502    0.0071929    0.0567075
6-9 months     MAL-ED       INDIA                          0%                   NA                 0.0076180   -0.0437229    0.0589588
6-9 months     MAL-ED       NEPAL                          0%                   NA                 0.0074958   -0.0196508    0.0346424
6-9 months     MAL-ED       PERU                           0%                   NA                -0.0355673   -0.0765135    0.0053790
6-9 months     MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0135789   -0.0288069    0.0016490
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0066509   -0.0317387    0.0450406
6-9 months     NIH-Birth    BANGLADESH                     0%                   NA                -0.0355960   -0.0679858   -0.0032061
6-9 months     NIH-Crypto   BANGLADESH                     0%                   NA                 0.0106070   -0.0025639    0.0237779
6-9 months     PROVIDE      BANGLADESH                     0%                   NA                 0.0029923   -0.0157218    0.0217063
9-12 months    CMIN         BANGLADESH                     0%                   NA                -0.0088759   -0.0430296    0.0252777
9-12 months    CONTENT      PERU                           0%                   NA                -0.0034971   -0.0185192    0.0115251
9-12 months    MAL-ED       BANGLADESH                     0%                   NA                 0.0019780   -0.0246612    0.0286172
9-12 months    MAL-ED       INDIA                          0%                   NA                 0.0330643    0.0024602    0.0636683
9-12 months    MAL-ED       NEPAL                          0%                   NA                 0.0040772   -0.0203742    0.0285285
9-12 months    MAL-ED       PERU                           0%                   NA                 0.0116931   -0.0249361    0.0483222
9-12 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0020941   -0.0169306    0.0127424
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0203860   -0.0581261    0.0173540
9-12 months    NIH-Birth    BANGLADESH                     0%                   NA                -0.0035174   -0.0272365    0.0202017
9-12 months    NIH-Crypto   BANGLADESH                     0%                   NA                -0.0003831   -0.0115405    0.0107743
9-12 months    PROVIDE      BANGLADESH                     0%                   NA                 0.0068751   -0.0120382    0.0257884
12-15 months   CMIN         BANGLADESH                     0%                   NA                 0.0151866   -0.0158459    0.0462191
12-15 months   CONTENT      PERU                           0%                   NA                -0.0036337   -0.0187402    0.0114728
12-15 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0016418   -0.0250549    0.0217714
12-15 months   MAL-ED       INDIA                          0%                   NA                 0.0056362   -0.0261490    0.0374213
12-15 months   MAL-ED       NEPAL                          0%                   NA                 0.0097852   -0.0126904    0.0322607
12-15 months   MAL-ED       PERU                           0%                   NA                 0.0010469   -0.0279857    0.0300794
12-15 months   MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0034547   -0.0115477    0.0184571
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0014879   -0.0267962    0.0297721
12-15 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0183564   -0.0057666    0.0424794
12-15 months   NIH-Crypto   BANGLADESH                     0%                   NA                 0.0008017   -0.0088452    0.0104485
12-15 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0020075   -0.0193237    0.0153087
15-18 months   CMIN         BANGLADESH                     0%                   NA                 0.0065437   -0.0191608    0.0322482
15-18 months   CONTENT      PERU                           0%                   NA                 0.0009300   -0.0150674    0.0169274
15-18 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0034126   -0.0243180    0.0174929
15-18 months   MAL-ED       INDIA                          0%                   NA                -0.0040009   -0.0302180    0.0222162
15-18 months   MAL-ED       NEPAL                          0%                   NA                -0.0140828   -0.0361399    0.0079742
15-18 months   MAL-ED       PERU                           0%                   NA                 0.0085772   -0.0179846    0.0351390
15-18 months   MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0004046   -0.0098020    0.0106111
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0221481   -0.0036243    0.0479205
15-18 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.0106664   -0.0363473    0.0150144
15-18 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0002072   -0.0084978    0.0080834
15-18 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0016032   -0.0157641    0.0125576
18-21 months   CMIN         BANGLADESH                     0%                   NA                -0.0083732   -0.0343226    0.0175763
18-21 months   CONTENT      PERU                           0%                   NA                -0.0003223   -0.0149486    0.0143039
18-21 months   MAL-ED       BANGLADESH                     0%                   NA                 0.0026589   -0.0148394    0.0201571
18-21 months   MAL-ED       INDIA                          0%                   NA                -0.0016648   -0.0247315    0.0214018
18-21 months   MAL-ED       NEPAL                          0%                   NA                -0.0029272   -0.0217573    0.0159030
18-21 months   MAL-ED       PERU                           0%                   NA                 0.0040880   -0.0223962    0.0305722
18-21 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0008434   -0.0112585    0.0095718
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0182809   -0.0453929    0.0088311
18-21 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0094566   -0.0105099    0.0294230
18-21 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0040344   -0.0116049    0.0035361
18-21 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0061073   -0.0193704    0.0071557
21-24 months   CMIN         BANGLADESH                     0%                   NA                -0.0179124   -0.0438430    0.0080182
21-24 months   CONTENT      PERU                           0%                   NA                 0.0001591   -0.0209302    0.0212483
21-24 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0227085   -0.0406708   -0.0047461
21-24 months   MAL-ED       INDIA                          0%                   NA                 0.0014165   -0.0174458    0.0202788
21-24 months   MAL-ED       NEPAL                          0%                   NA                 0.0116590   -0.0085484    0.0318663
21-24 months   MAL-ED       PERU                           0%                   NA                 0.0173315   -0.0060903    0.0407533
21-24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0014698   -0.0073690    0.0103085
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0019551   -0.0273209    0.0234106
21-24 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0105982   -0.0084050    0.0296015
21-24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0061386   -0.0135576    0.0012804
21-24 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0009703   -0.0161544    0.0142137
