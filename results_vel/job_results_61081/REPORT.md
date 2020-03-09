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

**Intervention Variable:** perdiar6

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
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

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




# Results Detail

## Results Plots
![](/tmp/18f8018b-4728-4eb8-9ff5-e4a98f2439ff/2c87481e-d7c1-4a62-a600-3a8c3422f488/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/18f8018b-4728-4eb8-9ff5-e4a98f2439ff/2c87481e-d7c1-4a62-a600-3a8c3422f488/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/18f8018b-4728-4eb8-9ff5-e4a98f2439ff/2c87481e-d7c1-4a62-a600-3a8c3422f488/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMIN         BANGLADESH                     0%                   NA                3.3582008   3.1423630   3.5740386
0-3 months     CMIN         BANGLADESH                     (0%, 5%]             NA                3.4635971   3.2379172   3.6892769
0-3 months     CMIN         BANGLADESH                     >5%                  NA                3.3423803   3.0526382   3.6321225
0-3 months     CONTENT      PERU                           0%                   NA                3.6473680   3.3611984   3.9335377
0-3 months     CONTENT      PERU                           (0%, 5%]             NA                3.7655246   3.4862186   4.0448306
0-3 months     CONTENT      PERU                           >5%                  NA                3.5233247   3.2884390   3.7582104
0-3 months     MAL-ED       BANGLADESH                     0%                   NA                3.3040908   3.1870489   3.4211328
0-3 months     MAL-ED       BANGLADESH                     (0%, 5%]             NA                3.3583917   3.2383064   3.4784770
0-3 months     MAL-ED       BANGLADESH                     >5%                  NA                3.3557428   3.2499755   3.4615102
0-3 months     MAL-ED       INDIA                          0%                   NA                3.5382547   3.2478811   3.8286284
0-3 months     MAL-ED       INDIA                          (0%, 5%]             NA                3.3585897   3.2546274   3.4625520
0-3 months     MAL-ED       INDIA                          >5%                  NA                3.1458695   2.9381278   3.3536111
0-3 months     MAL-ED       NEPAL                          0%                   NA                3.6095389   3.4288660   3.7902118
0-3 months     MAL-ED       NEPAL                          (0%, 5%]             NA                3.6393609   3.4800250   3.7986969
0-3 months     MAL-ED       NEPAL                          >5%                  NA                3.5666475   3.4232179   3.7100771
0-3 months     MAL-ED       PERU                           0%                   NA                3.0636938   2.9485420   3.1788456
0-3 months     MAL-ED       PERU                           (0%, 5%]             NA                3.0058757   2.8737668   3.1379845
0-3 months     MAL-ED       PERU                           >5%                  NA                3.1016517   2.9994266   3.2038768
0-3 months     MAL-ED       SOUTH AFRICA                   0%                   NA                3.1224953   3.0128650   3.2321256
0-3 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                3.3286464   3.1134993   3.5437935
0-3 months     MAL-ED       SOUTH AFRICA                   >5%                  NA                3.5778345   3.0967818   4.0588873
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                3.2969793   3.1800164   3.4139422
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                3.2561432   3.1240146   3.3882718
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                3.2384046   3.0706552   3.4061541
0-3 months     NIH-Birth    BANGLADESH                     0%                   NA                3.0350195   2.9339583   3.1360807
0-3 months     NIH-Birth    BANGLADESH                     (0%, 5%]             NA                3.1422904   3.0497572   3.2348235
0-3 months     NIH-Birth    BANGLADESH                     >5%                  NA                3.1290061   3.0457816   3.2122305
0-3 months     NIH-Crypto   BANGLADESH                     0%                   NA                3.1101716   3.0603136   3.1600297
0-3 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                3.1460445   3.0498044   3.2422847
0-3 months     NIH-Crypto   BANGLADESH                     >5%                  NA                3.1299616   3.0550091   3.2049141
0-3 months     PROVIDE      BANGLADESH                     0%                   NA                3.2512747   3.1785979   3.3239516
0-3 months     PROVIDE      BANGLADESH                     (0%, 5%]             NA                3.2766280   3.2201950   3.3330609
0-3 months     PROVIDE      BANGLADESH                     >5%                  NA                3.2254302   3.1586282   3.2922322
3-6 months     CMIN         BANGLADESH                     0%                   NA                1.9364783   1.7952392   2.0777174
3-6 months     CMIN         BANGLADESH                     (0%, 5%]             NA                1.9063116   1.7619385   2.0506846
3-6 months     CMIN         BANGLADESH                     >5%                  NA                1.9555016   1.8574115   2.0535918
3-6 months     CONTENT      PERU                           0%                   NA                2.0393242   1.9740662   2.1045821
3-6 months     CONTENT      PERU                           (0%, 5%]             NA                2.1371510   2.0318560   2.2424461
3-6 months     CONTENT      PERU                           >5%                  NA                2.1096928   2.0119850   2.2074006
3-6 months     MAL-ED       BANGLADESH                     0%                   NA                1.9593763   1.8639197   2.0548330
3-6 months     MAL-ED       BANGLADESH                     (0%, 5%]             NA                1.9373575   1.8607248   2.0139903
3-6 months     MAL-ED       BANGLADESH                     >5%                  NA                1.8842873   1.7907088   1.9778659
3-6 months     MAL-ED       INDIA                          0%                   NA                1.9762931   1.8144547   2.1381315
3-6 months     MAL-ED       INDIA                          (0%, 5%]             NA                1.8950507   1.8128318   1.9772696
3-6 months     MAL-ED       INDIA                          >5%                  NA                1.8322658   1.7055868   1.9589448
3-6 months     MAL-ED       NEPAL                          0%                   NA                1.9788359   1.8853387   2.0723331
3-6 months     MAL-ED       NEPAL                          (0%, 5%]             NA                1.9908303   1.8903413   2.0913193
3-6 months     MAL-ED       NEPAL                          >5%                  NA                1.8990863   1.8011740   1.9969987
3-6 months     MAL-ED       PERU                           0%                   NA                1.9295721   1.8092815   2.0498628
3-6 months     MAL-ED       PERU                           (0%, 5%]             NA                2.0479741   1.9252806   2.1706676
3-6 months     MAL-ED       PERU                           >5%                  NA                2.0325533   1.9286891   2.1364175
3-6 months     MAL-ED       SOUTH AFRICA                   0%                   NA                1.9854255   1.8909681   2.0798829
3-6 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                1.9538505   1.7821119   2.1255891
3-6 months     MAL-ED       SOUTH AFRICA                   >5%                  NA                1.7390054   1.4875737   1.9904371
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                1.8055427   1.6972463   1.9138391
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                1.8231649   1.7217007   1.9246291
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                1.9930594   1.8276987   2.1584200
3-6 months     NIH-Birth    BANGLADESH                     0%                   NA                1.8398898   1.7343364   1.9454432
3-6 months     NIH-Birth    BANGLADESH                     (0%, 5%]             NA                1.8434035   1.7622419   1.9245652
3-6 months     NIH-Birth    BANGLADESH                     >5%                  NA                1.8271873   1.7520517   1.9023230
3-6 months     NIH-Crypto   BANGLADESH                     0%                   NA                2.0324212   1.9794079   2.0854345
3-6 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                1.9310440   1.8471312   2.0149569
3-6 months     NIH-Crypto   BANGLADESH                     >5%                  NA                2.0064986   1.9369256   2.0760715
3-6 months     PROVIDE      BANGLADESH                     0%                   NA                1.9511618   1.8847755   2.0175480
3-6 months     PROVIDE      BANGLADESH                     (0%, 5%]             NA                1.9580338   1.9062721   2.0097955
3-6 months     PROVIDE      BANGLADESH                     >5%                  NA                1.9827728   1.9237552   2.0417904
6-9 months     CMIN         BANGLADESH                     0%                   NA                1.2237747   1.1295927   1.3179566
6-9 months     CMIN         BANGLADESH                     (0%, 5%]             NA                1.3478236   1.1993590   1.4962883
6-9 months     CMIN         BANGLADESH                     >5%                  NA                1.2345003   1.1545969   1.3144038
6-9 months     CONTENT      PERU                           0%                   NA                1.3808969   1.3184486   1.4433451
6-9 months     CONTENT      PERU                           (0%, 5%]             NA                1.3492618   1.2334274   1.4650962
6-9 months     CONTENT      PERU                           >5%                  NA                1.4890545   1.4002498   1.5778593
6-9 months     MAL-ED       BANGLADESH                     0%                   NA                1.1843659   1.1165570   1.2521749
6-9 months     MAL-ED       BANGLADESH                     (0%, 5%]             NA                1.2409304   1.1711942   1.3106666
6-9 months     MAL-ED       BANGLADESH                     >5%                  NA                1.3139931   1.2475215   1.3804646
6-9 months     MAL-ED       INDIA                          0%                   NA                1.2352175   1.0991995   1.3712355
6-9 months     MAL-ED       INDIA                          (0%, 5%]             NA                1.2554404   1.1931493   1.3177316
6-9 months     MAL-ED       INDIA                          >5%                  NA                1.2257596   1.1140746   1.3374446
6-9 months     MAL-ED       NEPAL                          0%                   NA                1.3310552   1.2559947   1.4061156
6-9 months     MAL-ED       NEPAL                          (0%, 5%]             NA                1.3605323   1.2833756   1.4376891
6-9 months     MAL-ED       NEPAL                          >5%                  NA                1.3725920   1.2924385   1.4527454
6-9 months     MAL-ED       PERU                           0%                   NA                1.4046645   1.2998705   1.5094585
6-9 months     MAL-ED       PERU                           (0%, 5%]             NA                1.3107656   1.2226794   1.3988518
6-9 months     MAL-ED       PERU                           >5%                  NA                1.2790540   1.1889330   1.3691749
6-9 months     MAL-ED       SOUTH AFRICA                   0%                   NA                1.4094407   1.3356441   1.4832372
6-9 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                1.2565661   1.1116229   1.4015094
6-9 months     MAL-ED       SOUTH AFRICA                   >5%                  NA                1.3496020   1.2288905   1.4703135
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                1.1615199   1.0459182   1.2771216
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                1.2329696   1.0924865   1.3734528
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                1.1621780   1.0150223   1.3093336
6-9 months     NIH-Birth    BANGLADESH                     0%                   NA                1.3367534   1.2523934   1.4211135
6-9 months     NIH-Birth    BANGLADESH                     (0%, 5%]             NA                1.2849013   1.2057610   1.3640416
6-9 months     NIH-Birth    BANGLADESH                     >5%                  NA                1.1838161   1.1290314   1.2386009
6-9 months     NIH-Crypto   BANGLADESH                     0%                   NA                1.3115071   1.2682353   1.3547789
6-9 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                1.3290749   1.2643483   1.3938016
6-9 months     NIH-Crypto   BANGLADESH                     >5%                  NA                1.3620181   1.2999961   1.4240400
6-9 months     PROVIDE      BANGLADESH                     0%                   NA                1.2733305   1.2231919   1.3234691
6-9 months     PROVIDE      BANGLADESH                     (0%, 5%]             NA                1.2817596   1.2410809   1.3224383
6-9 months     PROVIDE      BANGLADESH                     >5%                  NA                1.2796262   1.2391716   1.3200808
9-12 months    CMIN         BANGLADESH                     0%                   NA                0.9905997   0.8959810   1.0852184
9-12 months    CMIN         BANGLADESH                     (0%, 5%]             NA                0.9983154   0.8413749   1.1552559
9-12 months    CMIN         BANGLADESH                     >5%                  NA                0.9390674   0.8528723   1.0252625
9-12 months    CONTENT      PERU                           0%                   NA                1.2080995   1.1550927   1.2611063
9-12 months    CONTENT      PERU                           (0%, 5%]             NA                1.2002969   1.1059183   1.2946755
9-12 months    CONTENT      PERU                           >5%                  NA                1.1916112   1.1072553   1.2759670
9-12 months    MAL-ED       BANGLADESH                     0%                   NA                0.9744214   0.8918647   1.0569781
9-12 months    MAL-ED       BANGLADESH                     (0%, 5%]             NA                1.0278642   0.9652355   1.0904930
9-12 months    MAL-ED       BANGLADESH                     >5%                  NA                0.9517243   0.8865083   1.0169403
9-12 months    MAL-ED       INDIA                          0%                   NA                0.8919742   0.8083116   0.9756367
9-12 months    MAL-ED       INDIA                          (0%, 5%]             NA                0.9870832   0.9386414   1.0355250
9-12 months    MAL-ED       INDIA                          >5%                  NA                1.0383367   0.9501908   1.1264826
9-12 months    MAL-ED       NEPAL                          0%                   NA                1.0762314   1.0021342   1.1503285
9-12 months    MAL-ED       NEPAL                          (0%, 5%]             NA                1.1138485   1.0419106   1.1857865
9-12 months    MAL-ED       NEPAL                          >5%                  NA                1.0603968   0.9906526   1.1301409
9-12 months    MAL-ED       PERU                           0%                   NA                1.0729274   0.9759182   1.1699367
9-12 months    MAL-ED       PERU                           (0%, 5%]             NA                1.0412288   0.9568480   1.1256095
9-12 months    MAL-ED       PERU                           >5%                  NA                1.1673413   1.0831099   1.2515727
9-12 months    MAL-ED       SOUTH AFRICA                   0%                   NA                1.0217910   0.9478057   1.0957762
9-12 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.9982666   0.8462483   1.1502848
9-12 months    MAL-ED       SOUTH AFRICA                   >5%                  NA                0.9396342   0.7020528   1.1772157
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8762352   0.7647819   0.9876886
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7418168   0.5902070   0.8934266
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8524602   0.6577521   1.0471683
9-12 months    NIH-Birth    BANGLADESH                     0%                   NA                1.0917862   1.0279842   1.1555882
9-12 months    NIH-Birth    BANGLADESH                     (0%, 5%]             NA                1.0906977   1.0230061   1.1583894
9-12 months    NIH-Birth    BANGLADESH                     >5%                  NA                1.0845946   1.0285710   1.1406182
9-12 months    NIH-Crypto   BANGLADESH                     0%                   NA                1.1263513   1.0882535   1.1644491
9-12 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                1.1323740   1.0682073   1.1965408
9-12 months    NIH-Crypto   BANGLADESH                     >5%                  NA                1.1217331   1.0724846   1.1709817
9-12 months    PROVIDE      BANGLADESH                     0%                   NA                1.0318563   0.9776269   1.0860857
9-12 months    PROVIDE      BANGLADESH                     (0%, 5%]             NA                1.0501653   1.0089581   1.0913726
9-12 months    PROVIDE      BANGLADESH                     >5%                  NA                1.0629938   1.0185597   1.1074280
12-15 months   CMIN         BANGLADESH                     0%                   NA                0.8433966   0.7386810   0.9481122
12-15 months   CMIN         BANGLADESH                     (0%, 5%]             NA                0.8835813   0.7681960   0.9989667
12-15 months   CMIN         BANGLADESH                     >5%                  NA                0.9066185   0.8282641   0.9849729
12-15 months   CONTENT      PERU                           0%                   NA                0.9347093   0.8732508   0.9961677
12-15 months   CONTENT      PERU                           (0%, 5%]             NA                0.9323476   0.8467315   1.0179637
12-15 months   CONTENT      PERU                           >5%                  NA                0.9290851   0.8458846   1.0122856
12-15 months   MAL-ED       BANGLADESH                     0%                   NA                0.9273221   0.8507706   1.0038735
12-15 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.8742536   0.8095980   0.9389091
12-15 months   MAL-ED       BANGLADESH                     >5%                  NA                0.9720644   0.8962676   1.0478613
12-15 months   MAL-ED       INDIA                          0%                   NA                0.8723149   0.7790282   0.9656016
12-15 months   MAL-ED       INDIA                          (0%, 5%]             NA                0.8693135   0.8176782   0.9209487
12-15 months   MAL-ED       INDIA                          >5%                  NA                0.9987734   0.9233977   1.0741492
12-15 months   MAL-ED       NEPAL                          0%                   NA                0.9167611   0.8443373   0.9891849
12-15 months   MAL-ED       NEPAL                          (0%, 5%]             NA                0.9618018   0.8992914   1.0243123
12-15 months   MAL-ED       NEPAL                          >5%                  NA                0.9487836   0.8775264   1.0200408
12-15 months   MAL-ED       PERU                           0%                   NA                0.8762452   0.7910307   0.9614598
12-15 months   MAL-ED       PERU                           (0%, 5%]             NA                0.8835505   0.7947011   0.9723998
12-15 months   MAL-ED       PERU                           >5%                  NA                0.8839797   0.8134749   0.9544845
12-15 months   MAL-ED       SOUTH AFRICA                   0%                   NA                0.9140520   0.8530018   0.9751021
12-15 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.9171654   0.7537877   1.0805431
12-15 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                1.0394347   0.8124921   1.2663772
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8551942   0.7633579   0.9470304
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.9027929   0.7793757   1.0262101
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7738125   0.6532083   0.8944167
12-15 months   NIH-Birth    BANGLADESH                     0%                   NA                0.6912674   0.6240464   0.7584885
12-15 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.7053418   0.6451604   0.7655232
12-15 months   NIH-Birth    BANGLADESH                     >5%                  NA                0.7504489   0.6714812   0.8294166
12-15 months   NIH-Crypto   BANGLADESH                     0%                   NA                0.9655841   0.9315168   0.9996515
12-15 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.9530503   0.8960521   1.0100485
12-15 months   NIH-Crypto   BANGLADESH                     >5%                  NA                0.9891100   0.9397690   1.0384511
12-15 months   PROVIDE      BANGLADESH                     0%                   NA                0.9741530   0.9216152   1.0266908
12-15 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.9502585   0.9084732   0.9920438
12-15 months   PROVIDE      BANGLADESH                     >5%                  NA                0.9723320   0.9292608   1.0154031
15-18 months   CMIN         BANGLADESH                     0%                   NA                0.7215629   0.6346780   0.8084477
15-18 months   CMIN         BANGLADESH                     (0%, 5%]             NA                0.6796290   0.5598022   0.7994557
15-18 months   CMIN         BANGLADESH                     >5%                  NA                0.7854049   0.7063215   0.8644883
15-18 months   CONTENT      PERU                           0%                   NA                0.9833452   0.9183218   1.0483685
15-18 months   CONTENT      PERU                           (0%, 5%]             NA                1.0325665   0.9360202   1.1291128
15-18 months   CONTENT      PERU                           >5%                  NA                0.9649238   0.8799679   1.0498796
15-18 months   MAL-ED       BANGLADESH                     0%                   NA                0.8317514   0.7623412   0.9011615
15-18 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.8406167   0.7795947   0.9016387
15-18 months   MAL-ED       BANGLADESH                     >5%                  NA                0.7946807   0.7292451   0.8601164
15-18 months   MAL-ED       INDIA                          0%                   NA                0.8527450   0.7690325   0.9364576
15-18 months   MAL-ED       INDIA                          (0%, 5%]             NA                0.8514288   0.8010398   0.9018178
15-18 months   MAL-ED       INDIA                          >5%                  NA                0.8216617   0.7553334   0.8879900
15-18 months   MAL-ED       NEPAL                          0%                   NA                0.8791169   0.8008136   0.9574203
15-18 months   MAL-ED       NEPAL                          (0%, 5%]             NA                0.7924253   0.7177583   0.8670922
15-18 months   MAL-ED       NEPAL                          >5%                  NA                0.8426646   0.7773961   0.9079331
15-18 months   MAL-ED       PERU                           0%                   NA                0.8314369   0.7446601   0.9182136
15-18 months   MAL-ED       PERU                           (0%, 5%]             NA                0.8089673   0.7289241   0.8890104
15-18 months   MAL-ED       PERU                           >5%                  NA                0.8965730   0.8314177   0.9617282
15-18 months   MAL-ED       SOUTH AFRICA                   0%                   NA                0.8888941   0.8274101   0.9503782
15-18 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.8740729   0.7531060   0.9950398
15-18 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                0.9194027   0.8773385   0.9614668
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.6272104   0.5338866   0.7205342
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.6950152   0.6000080   0.7900224
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8149304   0.6621705   0.9676904
15-18 months   NIH-Birth    BANGLADESH                     0%                   NA                0.8179893   0.7349396   0.9010389
15-18 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.7593517   0.6828980   0.8358053
15-18 months   NIH-Birth    BANGLADESH                     >5%                  NA                0.7544608   0.6977396   0.8111820
15-18 months   NIH-Crypto   BANGLADESH                     0%                   NA                0.9140538   0.8810129   0.9470947
15-18 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.9444649   0.8913899   0.9975400
15-18 months   NIH-Crypto   BANGLADESH                     >5%                  NA                0.8885339   0.8480819   0.9289859
15-18 months   PROVIDE      BANGLADESH                     0%                   NA                0.8764490   0.8293954   0.9235025
15-18 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.8672880   0.8287096   0.9058665
15-18 months   PROVIDE      BANGLADESH                     >5%                  NA                0.8434314   0.8018499   0.8850129
18-21 months   CMIN         BANGLADESH                     0%                   NA                0.8363599   0.7415915   0.9311282
18-21 months   CMIN         BANGLADESH                     (0%, 5%]             NA                0.7784224   0.6719600   0.8848848
18-21 months   CMIN         BANGLADESH                     >5%                  NA                0.7851832   0.7168975   0.8534689
18-21 months   CONTENT      PERU                           0%                   NA                0.9143008   0.8486771   0.9799246
18-21 months   CONTENT      PERU                           (0%, 5%]             NA                0.9441174   0.8390084   1.0492264
18-21 months   CONTENT      PERU                           >5%                  NA                0.9183651   0.8518951   0.9848352
18-21 months   MAL-ED       BANGLADESH                     0%                   NA                0.7960964   0.7305708   0.8616220
18-21 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.7827830   0.7220409   0.8435252
18-21 months   MAL-ED       BANGLADESH                     >5%                  NA                0.8705261   0.8145902   0.9264620
18-21 months   MAL-ED       INDIA                          0%                   NA                0.8480569   0.7642440   0.9318699
18-21 months   MAL-ED       INDIA                          (0%, 5%]             NA                0.8855025   0.8366459   0.9343591
18-21 months   MAL-ED       INDIA                          >5%                  NA                0.8460851   0.7779775   0.9141927
18-21 months   MAL-ED       NEPAL                          0%                   NA                0.8177466   0.7490781   0.8864150
18-21 months   MAL-ED       NEPAL                          (0%, 5%]             NA                0.8412141   0.7709395   0.9114887
18-21 months   MAL-ED       NEPAL                          >5%                  NA                0.7841005   0.7231619   0.8450392
18-21 months   MAL-ED       PERU                           0%                   NA                0.8179560   0.7242887   0.9116233
18-21 months   MAL-ED       PERU                           (0%, 5%]             NA                0.8389838   0.7540231   0.9239444
18-21 months   MAL-ED       PERU                           >5%                  NA                0.8582743   0.7935007   0.9230478
18-21 months   MAL-ED       SOUTH AFRICA                   0%                   NA                0.7874877   0.7214880   0.8534875
18-21 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.7424027   0.6311935   0.8536119
18-21 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                0.9005741   0.6804818   1.1206663
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7930920   0.6830430   0.9031411
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7314136   0.6367158   0.8261113
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.6630030   0.4810529   0.8449532
18-21 months   NIH-Birth    BANGLADESH                     0%                   NA                0.7068187   0.6406150   0.7730223
18-21 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.7203330   0.6503303   0.7903356
18-21 months   NIH-Birth    BANGLADESH                     >5%                  NA                0.7452022   0.6903884   0.8000160
18-21 months   NIH-Crypto   BANGLADESH                     0%                   NA                0.8057335   0.7734020   0.8380651
18-21 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.8004570   0.7463402   0.8545738
18-21 months   NIH-Crypto   BANGLADESH                     >5%                  NA                0.7919230   0.7419333   0.8419126
18-21 months   PROVIDE      BANGLADESH                     0%                   NA                0.8615027   0.8162457   0.9067597
18-21 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.8119786   0.7730104   0.8509467
18-21 months   PROVIDE      BANGLADESH                     >5%                  NA                0.8560742   0.8155814   0.8965670
21-24 months   CMIN         BANGLADESH                     0%                   NA                0.8062582   0.7015987   0.9109177
21-24 months   CMIN         BANGLADESH                     (0%, 5%]             NA                0.7244526   0.6016163   0.8472889
21-24 months   CMIN         BANGLADESH                     >5%                  NA                0.7130388   0.6291337   0.7969439
21-24 months   CONTENT      PERU                           0%                   NA                0.9458028   0.8316305   1.0599751
21-24 months   CONTENT      PERU                           (0%, 5%]             NA                0.8407072   0.6897053   0.9917090
21-24 months   CONTENT      PERU                           >5%                  NA                0.9868314   0.8583863   1.1152765
21-24 months   MAL-ED       BANGLADESH                     0%                   NA                0.8315446   0.7655111   0.8975781
21-24 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.7567680   0.7042323   0.8093037
21-24 months   MAL-ED       BANGLADESH                     >5%                  NA                0.7255278   0.6593594   0.7916963
21-24 months   MAL-ED       INDIA                          0%                   NA                0.7908916   0.7325976   0.8491856
21-24 months   MAL-ED       INDIA                          (0%, 5%]             NA                0.8423979   0.7961543   0.8886415
21-24 months   MAL-ED       INDIA                          >5%                  NA                0.7872674   0.7344019   0.8401328
21-24 months   MAL-ED       NEPAL                          0%                   NA                0.7447672   0.6650979   0.8244365
21-24 months   MAL-ED       NEPAL                          (0%, 5%]             NA                0.8139461   0.7434124   0.8844799
21-24 months   MAL-ED       NEPAL                          >5%                  NA                0.8139275   0.7492163   0.8786388
21-24 months   MAL-ED       PERU                           0%                   NA                0.7108025   0.6308135   0.7907914
21-24 months   MAL-ED       PERU                           (0%, 5%]             NA                0.7744698   0.6845016   0.8644379
21-24 months   MAL-ED       PERU                           >5%                  NA                0.7826234   0.7038980   0.8613487
21-24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                0.8391470   0.7774631   0.9008310
21-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.8469701   0.7439850   0.9499551
21-24 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                0.8039015   0.6399862   0.9678168
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7312930   0.6324332   0.8301529
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7277118   0.6099899   0.8454337
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.6773012   0.5351248   0.8194775
21-24 months   NIH-Birth    BANGLADESH                     0%                   NA                0.6844722   0.6221571   0.7467872
21-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.7402306   0.6763979   0.8040633
21-24 months   NIH-Birth    BANGLADESH                     >5%                  NA                0.7210050   0.6639680   0.7780421
21-24 months   NIH-Crypto   BANGLADESH                     0%                   NA                0.8077646   0.7750262   0.8405030
21-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.7940543   0.7390557   0.8490530
21-24 months   NIH-Crypto   BANGLADESH                     >5%                  NA                0.7893112   0.7381202   0.8405022
21-24 months   PROVIDE      BANGLADESH                     0%                   NA                0.7867748   0.7350721   0.8384774
21-24 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.7549737   0.7140817   0.7958656
21-24 months   PROVIDE      BANGLADESH                     >5%                  NA                0.7615427   0.7194939   0.8035914


### Parameter: E(Y)


agecat         studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMIN         BANGLADESH                     NA                   NA                3.4261247   3.2881156   3.5641338
0-3 months     CONTENT      PERU                           NA                   NA                3.6418727   3.4619177   3.8218277
0-3 months     MAL-ED       BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     MAL-ED       INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     MAL-ED       NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     MAL-ED       PERU                           NA                   NA                3.0519536   2.9854854   3.1184219
0-3 months     MAL-ED       SOUTH AFRICA                   NA                   NA                3.1817712   3.0847973   3.2787451
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     NIH-Birth    BANGLADESH                     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     NIH-Crypto   BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROVIDE      BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
3-6 months     CMIN         BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
3-6 months     CONTENT      PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     MAL-ED       BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     MAL-ED       INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     MAL-ED       NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     MAL-ED       PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     MAL-ED       SOUTH AFRICA                   NA                   NA                1.9704262   1.8897530   2.0510994
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     NIH-Birth    BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     NIH-Crypto   BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROVIDE      BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
6-9 months     CMIN         BANGLADESH                     NA                   NA                1.2658739   1.2051613   1.3265866
6-9 months     CONTENT      PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     MAL-ED       BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     MAL-ED       INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     MAL-ED       NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     MAL-ED       PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     MAL-ED       SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     NIH-Birth    BANGLADESH                     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     NIH-Crypto   BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROVIDE      BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
9-12 months    CMIN         BANGLADESH                     NA                   NA                0.9627471   0.9031556   1.0223387
9-12 months    CONTENT      PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    MAL-ED       BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    MAL-ED       INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    MAL-ED       NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    MAL-ED       PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    MAL-ED       SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    NIH-Birth    BANGLADESH                     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    NIH-Crypto   BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROVIDE      BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
12-15 months   CMIN         BANGLADESH                     NA                   NA                0.8739530   0.8186981   0.9292079
12-15 months   CONTENT      PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   MAL-ED       BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   MAL-ED       INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   MAL-ED       NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   MAL-ED       PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   MAL-ED       SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   NIH-Birth    BANGLADESH                     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROVIDE      BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
15-18 months   CMIN         BANGLADESH                     NA                   NA                0.7480083   0.6959380   0.8000786
15-18 months   CONTENT      PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   MAL-ED       BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   MAL-ED       INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   MAL-ED       NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   MAL-ED       PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   MAL-ED       SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   NIH-Birth    BANGLADESH                     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROVIDE      BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
18-21 months   CMIN         BANGLADESH                     NA                   NA                0.8028550   0.7540631   0.8516469
18-21 months   CONTENT      PERU                           NA                   NA                0.9146338   0.8709588   0.9583088
18-21 months   MAL-ED       BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   MAL-ED       INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   MAL-ED       NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   MAL-ED       PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   MAL-ED       SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   NIH-Birth    BANGLADESH                     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROVIDE      BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   CMIN         BANGLADESH                     NA                   NA                0.7554929   0.6980149   0.8129708
21-24 months   CONTENT      PERU                           NA                   NA                0.9350807   0.8543561   1.0158053
21-24 months   MAL-ED       BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   MAL-ED       INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   MAL-ED       NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   MAL-ED       PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   MAL-ED       SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   NIH-Birth    BANGLADESH                     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROVIDE      BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     CMIN         BANGLADESH                     (0%, 5%]             0%                 0.1053963   -0.2123790    0.4231715
0-3 months     CMIN         BANGLADESH                     >5%                  0%                -0.0158205   -0.3791084    0.3474675
0-3 months     CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     CONTENT      PERU                           (0%, 5%]             0%                 0.1181566   -0.2817245    0.5180377
0-3 months     CONTENT      PERU                           >5%                  0%                -0.1240433   -0.4942654    0.2461788
0-3 months     MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0543009   -0.1126243    0.2212261
0-3 months     MAL-ED       BANGLADESH                     >5%                  0%                 0.0516520   -0.1059702    0.2092742
0-3 months     MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       INDIA                          (0%, 5%]             0%                -0.1796650   -0.4881337    0.1288036
0-3 months     MAL-ED       INDIA                          >5%                  0%                -0.3923853   -0.7495391   -0.0352314
0-3 months     MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0298220   -0.2123436    0.2719877
0-3 months     MAL-ED       NEPAL                          >5%                  0%                -0.0428914   -0.2737453    0.1879625
0-3 months     MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU                           (0%, 5%]             0%                -0.0578182   -0.2328177    0.1171814
0-3 months     MAL-ED       PERU                           >5%                  0%                 0.0379579   -0.1164134    0.1923292
0-3 months     MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.2061511   -0.0353175    0.4476196
0-3 months     MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.4553392   -0.0380476    0.9487261
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0408361   -0.2175045    0.1358323
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0585746   -0.2631891    0.1460398
0-3 months     NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.1072708   -0.0290661    0.2436078
0-3 months     NIH-Birth    BANGLADESH                     >5%                  0%                 0.0939865   -0.0358650    0.2238380
0-3 months     NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0358729   -0.0725926    0.1443384
0-3 months     NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0197900   -0.0702150    0.1097949
0-3 months     PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0253532   -0.0667012    0.1174076
0-3 months     PROVIDE      BANGLADESH                     >5%                  0%                -0.0258445   -0.1245690    0.0728800
3-6 months     CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0301667   -0.2330730    0.1727395
3-6 months     CMIN         BANGLADESH                     >5%                  0%                 0.0190233   -0.1525576    0.1906043
3-6 months     CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     CONTENT      PERU                           (0%, 5%]             0%                 0.0978269   -0.0265021    0.2221558
3-6 months     CONTENT      PERU                           >5%                  0%                 0.0703686   -0.0470965    0.1878338
3-6 months     MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0220188   -0.1444874    0.1004498
3-6 months     MAL-ED       BANGLADESH                     >5%                  0%                -0.0750890   -0.2089605    0.0587825
3-6 months     MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA                          (0%, 5%]             0%                -0.0812424   -0.2628104    0.1003256
3-6 months     MAL-ED       INDIA                          >5%                  0%                -0.1440273   -0.3489265    0.0608719
3-6 months     MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0119944   -0.1248953    0.1488841
3-6 months     MAL-ED       NEPAL                          >5%                  0%                -0.0797496   -0.2148651    0.0553660
3-6 months     MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU                           (0%, 5%]             0%                 0.1184020   -0.0556883    0.2924922
3-6 months     MAL-ED       PERU                           >5%                  0%                 0.1029812   -0.0559510    0.2619134
3-6 months     MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0315750   -0.2275759    0.1644259
3-6 months     MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.2464201   -0.5150092    0.0221690
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0176222   -0.1315727    0.1668172
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1875167   -0.0094302    0.3844637
3-6 months     NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0035137   -0.1300641    0.1370915
3-6 months     NIH-Birth    BANGLADESH                     >5%                  0%                -0.0127025   -0.1418823    0.1164774
3-6 months     NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1013772   -0.2007511   -0.0020033
3-6 months     NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0259226   -0.1132271    0.0613819
3-6 months     PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0068720   -0.0768185    0.0905625
3-6 months     PROVIDE      BANGLADESH                     >5%                  0%                 0.0316110   -0.0569378    0.1201598
6-9 months     CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     CMIN         BANGLADESH                     (0%, 5%]             0%                 0.1240490   -0.0519974    0.3000954
6-9 months     CMIN         BANGLADESH                     >5%                  0%                 0.0107257   -0.1123081    0.1337595
6-9 months     CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     CONTENT      PERU                           (0%, 5%]             0%                -0.0316351   -0.1641145    0.1008443
6-9 months     CONTENT      PERU                           >5%                  0%                 0.1081577   -0.0006083    0.2169236
6-9 months     MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0565645   -0.0408179    0.1539468
6-9 months     MAL-ED       BANGLADESH                     >5%                  0%                 0.1296271    0.0345359    0.2247183
6-9 months     MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA                          (0%, 5%]             0%                 0.0202229   -0.1297068    0.1701526
6-9 months     MAL-ED       INDIA                          >5%                  0%                -0.0094579   -0.1858855    0.1669697
6-9 months     MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0294771   -0.0781872    0.1371414
6-9 months     MAL-ED       NEPAL                          >5%                  0%                 0.0415368   -0.0682597    0.1513334
6-9 months     MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU                           (0%, 5%]             0%                -0.0938989   -0.2306652    0.0428674
6-9 months     MAL-ED       PERU                           >5%                  0%                -0.1256105   -0.2641705    0.0129494
6-9 months     MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.1528745   -0.3155229    0.0097738
6-9 months     MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0598387   -0.2013208    0.0816434
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0714497   -0.1118612    0.2547606
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0006581   -0.1869293    0.1882454
6-9 months     NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0518521   -0.1673556    0.0636514
6-9 months     NIH-Birth    BANGLADESH                     >5%                  0%                -0.1529373   -0.2531139   -0.0527608
6-9 months     NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0175679   -0.0604825    0.0956183
6-9 months     NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0505110   -0.0250736    0.1260956
6-9 months     PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0084291   -0.0555073    0.0723655
6-9 months     PROVIDE      BANGLADESH                     >5%                  0%                 0.0062957   -0.0577342    0.0703255
9-12 months    CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    CMIN         BANGLADESH                     (0%, 5%]             0%                 0.0077157   -0.1756003    0.1910317
9-12 months    CMIN         BANGLADESH                     >5%                  0%                -0.0515323   -0.1800410    0.0769763
9-12 months    CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    CONTENT      PERU                           (0%, 5%]             0%                -0.0078026   -0.1159773    0.1003720
9-12 months    CONTENT      PERU                           >5%                  0%                -0.0164883   -0.1162606    0.0832840
9-12 months    MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0534428   -0.0500746    0.1569603
9-12 months    MAL-ED       BANGLADESH                     >5%                  0%                -0.0226971   -0.1286742    0.0832800
9-12 months    MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA                          (0%, 5%]             0%                 0.0951090   -0.0025429    0.1927609
9-12 months    MAL-ED       INDIA                          >5%                  0%                 0.1463625    0.0249473    0.2677776
9-12 months    MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0376172   -0.0662953    0.1415297
9-12 months    MAL-ED       NEPAL                          >5%                  0%                -0.0158346   -0.1179085    0.0862393
9-12 months    MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU                           (0%, 5%]             0%                -0.0316987   -0.1605408    0.0971435
9-12 months    MAL-ED       PERU                           >5%                  0%                 0.0944139   -0.0342867    0.2231145
9-12 months    MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0235244   -0.1925905    0.1455417
9-12 months    MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0821567   -0.3309915    0.1666781
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.1344184   -0.3270224    0.0581855
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0237750   -0.2505788    0.2030287
9-12 months    NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0010885   -0.0935826    0.0914056
9-12 months    NIH-Birth    BANGLADESH                     >5%                  0%                -0.0071916   -0.0915724    0.0771891
9-12 months    NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0060228   -0.0686828    0.0807284
9-12 months    NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0046182   -0.0669285    0.0576921
9-12 months    PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0183090   -0.0490358    0.0856538
9-12 months    PROVIDE      BANGLADESH                     >5%                  0%                 0.0311375   -0.0381972    0.1004723
12-15 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   CMIN         BANGLADESH                     (0%, 5%]             0%                 0.0401847   -0.1161005    0.1964700
12-15 months   CMIN         BANGLADESH                     >5%                  0%                 0.0632219   -0.0679212    0.1943649
12-15 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   CONTENT      PERU                           (0%, 5%]             0%                -0.0023616   -0.1082604    0.1035372
12-15 months   CONTENT      PERU                           >5%                  0%                -0.0056242   -0.1090162    0.0977679
12-15 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0530685   -0.1537012    0.0475642
12-15 months   MAL-ED       BANGLADESH                     >5%                  0%                 0.0447424   -0.0629868    0.1524716
12-15 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA                          (0%, 5%]             0%                -0.0030014   -0.1096789    0.1036761
12-15 months   MAL-ED       INDIA                          >5%                  0%                 0.1264585    0.0062450    0.2466720
12-15 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0450408   -0.0508162    0.1408977
12-15 months   MAL-ED       NEPAL                          >5%                  0%                 0.0320225   -0.0697993    0.1338443
12-15 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.0073053   -0.1163484    0.1309589
12-15 months   MAL-ED       PERU                           >5%                  0%                 0.0077345   -0.1027284    0.1181974
12-15 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0031135   -0.1712981    0.1775250
12-15 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1253827   -0.1096280    0.3603934
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0475987   -0.1065730    0.2017705
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0813817   -0.2330650    0.0703015
12-15 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0140743   -0.0765538    0.1047025
12-15 months   NIH-Birth    BANGLADESH                     >5%                  0%                 0.0591815   -0.0455136    0.1638766
12-15 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0125339   -0.0787346    0.0536669
12-15 months   NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0235259   -0.0362655    0.0833173
12-15 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0238945   -0.0908511    0.0430621
12-15 months   PROVIDE      BANGLADESH                     >5%                  0%                -0.0018211   -0.0695840    0.0659419
15-18 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0419339   -0.1911706    0.1073028
15-18 months   CMIN         BANGLADESH                     >5%                  0%                 0.0638420   -0.0550356    0.1827197
15-18 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   CONTENT      PERU                           (0%, 5%]             0%                 0.0492214   -0.0670240    0.1654668
15-18 months   CONTENT      PERU                           >5%                  0%                -0.0184214   -0.1253134    0.0884706
15-18 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0088653   -0.0836135    0.1013441
15-18 months   MAL-ED       BANGLADESH                     >5%                  0%                -0.0370706   -0.1323026    0.0581613
15-18 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA                          (0%, 5%]             0%                -0.0013162   -0.0990267    0.0963942
15-18 months   MAL-ED       INDIA                          >5%                  0%                -0.0310833   -0.1379281    0.0757614
15-18 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0866917   -0.1954465    0.0220631
15-18 months   MAL-ED       NEPAL                          >5%                  0%                -0.0364524   -0.1393139    0.0664092
15-18 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU                           (0%, 5%]             0%                -0.0224696   -0.1410794    0.0961402
15-18 months   MAL-ED       PERU                           >5%                  0%                 0.0651361   -0.0438268    0.1740991
15-18 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0148212   -0.1505167    0.1208744
15-18 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0305085   -0.0439876    0.1050047
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0678048   -0.0656849    0.2012946
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1877201    0.0087577    0.3666824
15-18 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0586376   -0.1714511    0.0541759
15-18 months   NIH-Birth    BANGLADESH                     >5%                  0%                -0.0635285   -0.1643096    0.0372527
15-18 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0304111   -0.0321954    0.0930177
15-18 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0255199   -0.0777122    0.0266723
15-18 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0091609   -0.0704334    0.0521116
15-18 months   PROVIDE      BANGLADESH                     >5%                  0%                -0.0330176   -0.0961826    0.0301474
18-21 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0579375   -0.2002325    0.0843575
18-21 months   CMIN         BANGLADESH                     >5%                  0%                -0.0511766   -0.1679688    0.0656155
18-21 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   CONTENT      PERU                           (0%, 5%]             0%                 0.0298166   -0.0942453    0.1538785
18-21 months   CONTENT      PERU                           >5%                  0%                 0.0040643   -0.0893213    0.0974498
18-21 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0133133   -0.1034404    0.0768137
18-21 months   MAL-ED       BANGLADESH                     >5%                  0%                 0.0744298   -0.0119717    0.1608312
18-21 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA                          (0%, 5%]             0%                 0.0374456   -0.0591177    0.1340088
18-21 months   MAL-ED       INDIA                          >5%                  0%                -0.0019718   -0.1105173    0.1065736
18-21 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0234676   -0.0750454    0.1219805
18-21 months   MAL-ED       NEPAL                          >5%                  0%                -0.0336460   -0.1254632    0.0581711
18-21 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.0210278   -0.1059213    0.1479769
18-21 months   MAL-ED       PERU                           >5%                  0%                 0.0403183   -0.0739291    0.1545656
18-21 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0450851   -0.1744043    0.0842341
18-21 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1130863   -0.1166887    0.3428613
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0616785   -0.2055737    0.0822168
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.1300890   -0.3433751    0.0831971
18-21 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0135143   -0.0829604    0.1099889
18-21 months   NIH-Birth    BANGLADESH                     >5%                  0%                 0.0383835   -0.0475902    0.1243573
18-21 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0052765   -0.0680510    0.0574980
18-21 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0138106   -0.0733876    0.0457665
18-21 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0495241   -0.1091736    0.0101253
18-21 months   PROVIDE      BANGLADESH                     >5%                  0%                -0.0054285   -0.0660788    0.0552218
21-24 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0818056   -0.2428623    0.0792510
21-24 months   CMIN         BANGLADESH                     >5%                  0%                -0.0932194   -0.2277803    0.0413415
21-24 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   CONTENT      PERU                           (0%, 5%]             0%                -0.1050956   -0.2944019    0.0842107
21-24 months   CONTENT      PERU                           >5%                  0%                 0.0410286   -0.1308244    0.2128816
21-24 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0747766   -0.1592785    0.0097254
21-24 months   MAL-ED       BANGLADESH                     >5%                  0%                -0.1060168   -0.1995110   -0.0125225
21-24 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA                          (0%, 5%]             0%                 0.0515063   -0.0230032    0.1260158
21-24 months   MAL-ED       INDIA                          >5%                  0%                -0.0036242   -0.0826558    0.0754074
21-24 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0691789   -0.0381935    0.1765514
21-24 months   MAL-ED       NEPAL                          >5%                  0%                 0.0691603   -0.0337334    0.1720541
21-24 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.0636673   -0.0567149    0.1840496
21-24 months   MAL-ED       PERU                           >5%                  0%                 0.0718209   -0.0405368    0.1841786
21-24 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0078230   -0.1122221    0.1278682
21-24 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0352455   -0.2103830    0.1398919
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0035812   -0.1585600    0.1513976
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0539919   -0.2302084    0.1222247
21-24 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0557584   -0.0335753    0.1450921
21-24 months   NIH-Birth    BANGLADESH                     >5%                  0%                 0.0365329   -0.0480310    0.1210967
21-24 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0137103   -0.0777840    0.0503635
21-24 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0184534   -0.0792572    0.0423504
21-24 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0318011   -0.0978428    0.0342406
21-24 months   PROVIDE      BANGLADESH                     >5%                  0%                -0.0252321   -0.0919011    0.0414370


### Parameter: PAR


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMIN         BANGLADESH                     0%                   NA                 0.0679239   -0.1098351    0.2456829
0-3 months     CONTENT      PERU                           0%                   NA                -0.0054953   -0.1601307    0.1491401
0-3 months     MAL-ED       BANGLADESH                     0%                   NA                 0.0350323   -0.0665016    0.1365661
0-3 months     MAL-ED       INDIA                          0%                   NA                -0.1900297   -0.4337077    0.0536483
0-3 months     MAL-ED       NEPAL                          0%                   NA                 0.0138786   -0.1239612    0.1517184
0-3 months     MAL-ED       PERU                           0%                   NA                -0.0117402   -0.1183101    0.0948298
0-3 months     MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0592759    0.0027500    0.1158017
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0324802   -0.1232720    0.0583117
0-3 months     NIH-Birth    BANGLADESH                     0%                   NA                 0.0749920   -0.0145759    0.1645599
0-3 months     NIH-Crypto   BANGLADESH                     0%                   NA                 0.0190732   -0.0224252    0.0605717
0-3 months     PROVIDE      BANGLADESH                     0%                   NA                 0.0064063   -0.0555578    0.0683704
3-6 months     CMIN         BANGLADESH                     0%                   NA                 0.0113694   -0.0993999    0.1221387
3-6 months     CONTENT      PERU                           0%                   NA                 0.0448599   -0.0000472    0.0897671
3-6 months     MAL-ED       BANGLADESH                     0%                   NA                -0.0317356   -0.1105976    0.0471264
3-6 months     MAL-ED       INDIA                          0%                   NA                -0.0839951   -0.2236178    0.0556275
3-6 months     MAL-ED       NEPAL                          0%                   NA                -0.0143758   -0.0922502    0.0634986
3-6 months     MAL-ED       PERU                           0%                   NA                 0.0861100   -0.0236220    0.1958420
3-6 months     MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0149993   -0.0604463    0.0304476
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0245475   -0.0555701    0.1046651
3-6 months     NIH-Birth    BANGLADESH                     0%                   NA                -0.0071983   -0.0996395    0.0852429
3-6 months     NIH-Crypto   BANGLADESH                     0%                   NA                -0.0266239   -0.0647495    0.0115017
3-6 months     PROVIDE      BANGLADESH                     0%                   NA                 0.0145840   -0.0423966    0.0715645
6-9 months     CMIN         BANGLADESH                     0%                   NA                 0.0420993   -0.0384599    0.1226584
6-9 months     CONTENT      PERU                           0%                   NA                 0.0165267   -0.0281295    0.0611830
6-9 months     MAL-ED       BANGLADESH                     0%                   NA                 0.0636792    0.0047149    0.1226435
6-9 months     MAL-ED       INDIA                          0%                   NA                 0.0110062   -0.1040622    0.1260746
6-9 months     MAL-ED       NEPAL                          0%                   NA                 0.0260856   -0.0366107    0.0887820
6-9 months     MAL-ED       PERU                           0%                   NA                -0.0846680   -0.1773999    0.0080640
6-9 months     MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0325149   -0.0673043    0.0022745
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0292357   -0.0624387    0.1209100
6-9 months     NIH-Birth    BANGLADESH                     0%                   NA                -0.0811584   -0.1543456   -0.0079712
6-9 months     NIH-Crypto   BANGLADESH                     0%                   NA                 0.0167624   -0.0158497    0.0493746
6-9 months     PROVIDE      BANGLADESH                     0%                   NA                 0.0090880   -0.0336111    0.0517870
9-12 months    CMIN         BANGLADESH                     0%                   NA                -0.0278526   -0.1127007    0.0569955
9-12 months    CONTENT      PERU                           0%                   NA                -0.0032227   -0.0403838    0.0339384
9-12 months    MAL-ED       BANGLADESH                     0%                   NA                 0.0152232   -0.0515615    0.0820078
9-12 months    MAL-ED       INDIA                          0%                   NA                 0.0894960    0.0138028    0.1651893
9-12 months    MAL-ED       NEPAL                          0%                   NA                 0.0130058   -0.0469689    0.0729805
9-12 months    MAL-ED       PERU                           0%                   NA                 0.0255850   -0.0605925    0.1117624
9-12 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0074651   -0.0430462    0.0281159
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0631276   -0.1589640    0.0327089
9-12 months    NIH-Birth    BANGLADESH                     0%                   NA                -0.0032054   -0.0606800    0.0542693
9-12 months    NIH-Crypto   BANGLADESH                     0%                   NA                -0.0028768   -0.0316537    0.0259001
9-12 months    PROVIDE      BANGLADESH                     0%                   NA                 0.0181187   -0.0272318    0.0634691
12-15 months   CMIN         BANGLADESH                     0%                   NA                 0.0305564   -0.0509061    0.1120189
12-15 months   CONTENT      PERU                           0%                   NA                -0.0055649   -0.0455209    0.0343911
12-15 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0132216   -0.0789186    0.0524754
12-15 months   MAL-ED       INDIA                          0%                   NA                 0.0381787   -0.0442537    0.1206111
12-15 months   MAL-ED       NEPAL                          0%                   NA                 0.0346513   -0.0229643    0.0922669
12-15 months   MAL-ED       PERU                           0%                   NA                 0.0154827   -0.0603041    0.0912696
12-15 months   MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0055775   -0.0317541    0.0429091
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0011616   -0.0727418    0.0750651
12-15 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0328948   -0.0341678    0.0999574
12-15 months   NIH-Crypto   BANGLADESH                     0%                   NA                 0.0055553   -0.0203231    0.0314338
12-15 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0144030   -0.0590189    0.0302130
15-18 months   CMIN         BANGLADESH                     0%                   NA                 0.0264454   -0.0445300    0.0974209
15-18 months   CONTENT      PERU                           0%                   NA                 0.0026780   -0.0411365    0.0464925
15-18 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0076288   -0.0656107    0.0503531
15-18 months   MAL-ED       INDIA                          0%                   NA                -0.0083566   -0.0815200    0.0648068
15-18 months   MAL-ED       NEPAL                          0%                   NA                -0.0382808   -0.1006452    0.0240837
15-18 months   MAL-ED       PERU                           0%                   NA                 0.0219939   -0.0536060    0.0975938
15-18 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0017439   -0.0301558    0.0266680
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0595376   -0.0117764    0.1308516
15-18 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.0452174   -0.1167415    0.0263068
15-18 months   NIH-Crypto   BANGLADESH                     0%                   NA                 0.0036630   -0.0197174    0.0270433
15-18 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0203491   -0.0606855    0.0199872
18-21 months   CMIN         BANGLADESH                     0%                   NA                -0.0335048   -0.1098579    0.0428482
18-21 months   CONTENT      PERU                           0%                   NA                 0.0003329   -0.0421808    0.0428467
18-21 months   MAL-ED       BANGLADESH                     0%                   NA                 0.0172884   -0.0379968    0.0725736
18-21 months   MAL-ED       INDIA                          0%                   NA                 0.0306532   -0.0438672    0.1051735
18-21 months   MAL-ED       NEPAL                          0%                   NA                 0.0005332   -0.0553300    0.0563964
18-21 months   MAL-ED       PERU                           0%                   NA                 0.0234879   -0.0556473    0.1026231
18-21 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0053068   -0.0359014    0.0252879
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0493882   -0.1298115    0.0310351
18-21 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0223282   -0.0378934    0.0825497
18-21 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0079580   -0.0300265    0.0141105
18-21 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0221650   -0.0613922    0.0170622
21-24 months   CMIN         BANGLADESH                     0%                   NA                -0.0507653   -0.1328982    0.0313675
21-24 months   CONTENT      PERU                           0%                   NA                -0.0107221   -0.0721402    0.0506960
21-24 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0621263   -0.1174117   -0.0068409
21-24 months   MAL-ED       INDIA                          0%                   NA                 0.0346598   -0.0197925    0.0891120
21-24 months   MAL-ED       NEPAL                          0%                   NA                 0.0385893   -0.0238019    0.1009805
21-24 months   MAL-ED       PERU                           0%                   NA                 0.0502481   -0.0233522    0.1238484
21-24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0003479   -0.0277227    0.0284186
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0123603   -0.0904862    0.0657657
21-24 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0327456   -0.0246084    0.0900995
21-24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0084293   -0.0308028    0.0139443
21-24 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0236357   -0.0684500    0.0211785
