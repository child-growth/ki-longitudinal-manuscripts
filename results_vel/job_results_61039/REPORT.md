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
![](/tmp/4c199246-4deb-4630-9e05-70d216f9b7f5/7bf74a03-7c2e-4f75-922f-e48ceb517643/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4c199246-4deb-4630-9e05-70d216f9b7f5/7bf74a03-7c2e-4f75-922f-e48ceb517643/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4c199246-4deb-4630-9e05-70d216f9b7f5/7bf74a03-7c2e-4f75-922f-e48ceb517643/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMIN         BANGLADESH                     0%                   NA                -0.0263096   -0.1475097    0.0948905
0-3 months     CMIN         BANGLADESH                     (0%, 5%]             NA                 0.1443758   -0.0005726    0.2893242
0-3 months     CMIN         BANGLADESH                     >5%                  NA                -0.0709500   -0.2315308    0.0896309
0-3 months     CONTENT      PERU                           0%                   NA                 0.0381126   -0.0815494    0.1577746
0-3 months     CONTENT      PERU                           (0%, 5%]             NA                 0.0805962   -0.0080103    0.1692027
0-3 months     CONTENT      PERU                           >5%                  NA                -0.0530227   -0.1682368    0.0621914
0-3 months     MAL-ED       BANGLADESH                     0%                   NA                -0.1321528   -0.1922201   -0.0720856
0-3 months     MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.1188366   -0.1733975   -0.0642757
0-3 months     MAL-ED       BANGLADESH                     >5%                  NA                -0.1177157   -0.1711011   -0.0643304
0-3 months     MAL-ED       INDIA                          0%                   NA                 0.0514568   -0.0942784    0.1971920
0-3 months     MAL-ED       INDIA                          (0%, 5%]             NA                -0.0606752   -0.1157264   -0.0056240
0-3 months     MAL-ED       INDIA                          >5%                  NA                -0.1571332   -0.2629212   -0.0513453
0-3 months     MAL-ED       NEPAL                          0%                   NA                 0.0544186   -0.0298357    0.1386729
0-3 months     MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0709412   -0.0026035    0.1444859
0-3 months     MAL-ED       NEPAL                          >5%                  NA                 0.0431504   -0.0269928    0.1132936
0-3 months     MAL-ED       PERU                           0%                   NA                -0.2810091   -0.3347803   -0.2272379
0-3 months     MAL-ED       PERU                           (0%, 5%]             NA                -0.2895314   -0.3567534   -0.2223094
0-3 months     MAL-ED       PERU                           >5%                  NA                -0.2432620   -0.2954108   -0.1911132
0-3 months     MAL-ED       SOUTH AFRICA                   0%                   NA                -0.2038407   -0.2590258   -0.1486556
0-3 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.1132958   -0.2244504   -0.0021412
0-3 months     MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.0303247   -0.2963167    0.2356674
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1209760   -0.1798840   -0.0620680
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.1522311   -0.2177767   -0.0866855
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1761138   -0.2638296   -0.0883980
0-3 months     NIH-Birth    BANGLADESH                     0%                   NA                -0.2575576   -0.3080033   -0.2071119
0-3 months     NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.2253053   -0.2712187   -0.1793919
0-3 months     NIH-Birth    BANGLADESH                     >5%                  NA                -0.2232732   -0.2652858   -0.1812606
0-3 months     NIH-Crypto   BANGLADESH                     0%                   NA                -0.2337665   -0.2582987   -0.2092343
0-3 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.2278306   -0.2711134   -0.1845478
0-3 months     NIH-Crypto   BANGLADESH                     >5%                  NA                -0.2295015   -0.2636708   -0.1953323
0-3 months     PROVIDE      BANGLADESH                     0%                   NA                -0.1807124   -0.2129816   -0.1484433
0-3 months     PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.1844973   -0.2099780   -0.1590167
0-3 months     PROVIDE      BANGLADESH                     >5%                  NA                -0.2083735   -0.2410481   -0.1756989
3-6 months     CMIN         BANGLADESH                     0%                   NA                -0.0065254   -0.0750769    0.0620260
3-6 months     CMIN         BANGLADESH                     (0%, 5%]             NA                 0.0049794   -0.0656140    0.0755728
3-6 months     CMIN         BANGLADESH                     >5%                  NA                -0.0225120   -0.0704145    0.0253905
3-6 months     CONTENT      PERU                           0%                   NA                -0.0008460   -0.0312087    0.0295167
3-6 months     CONTENT      PERU                           (0%, 5%]             NA                 0.0476342   -0.0004665    0.0957349
3-6 months     CONTENT      PERU                           >5%                  NA                 0.0311811   -0.0148264    0.0771886
3-6 months     MAL-ED       BANGLADESH                     0%                   NA                -0.0051538   -0.0525703    0.0422626
3-6 months     MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0186248   -0.0539243    0.0166746
3-6 months     MAL-ED       BANGLADESH                     >5%                  NA                -0.0428808   -0.0864400    0.0006783
3-6 months     MAL-ED       INDIA                          0%                   NA                 0.0009014   -0.0751956    0.0769985
3-6 months     MAL-ED       INDIA                          (0%, 5%]             NA                -0.0389825   -0.0772870   -0.0006780
3-6 months     MAL-ED       INDIA                          >5%                  NA                -0.0580772   -0.1194670    0.0033125
3-6 months     MAL-ED       NEPAL                          0%                   NA                -0.0148723   -0.0586932    0.0289487
3-6 months     MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0014682   -0.0500780    0.0471417
3-6 months     MAL-ED       NEPAL                          >5%                  NA                -0.0501561   -0.0967154   -0.0035969
3-6 months     MAL-ED       PERU                           0%                   NA                -0.0085608   -0.0655071    0.0483855
3-6 months     MAL-ED       PERU                           (0%, 5%]             NA                 0.0456351   -0.0105956    0.1018658
3-6 months     MAL-ED       PERU                           >5%                  NA                 0.0330080   -0.0160892    0.0821053
3-6 months     MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0029171   -0.0415252    0.0473595
3-6 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0115740   -0.0924982    0.0693502
3-6 months     MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.1395719   -0.2546049   -0.0245388
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0795781   -0.1321254   -0.0270308
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0810603   -0.1284736   -0.0336471
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0236491   -0.1015461    0.0542478
3-6 months     NIH-Birth    BANGLADESH                     0%                   NA                -0.0516820   -0.1002907   -0.0030734
3-6 months     NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.0506016   -0.0892162   -0.0119869
3-6 months     NIH-Birth    BANGLADESH                     >5%                  NA                -0.0430499   -0.0787430   -0.0073568
3-6 months     NIH-Crypto   BANGLADESH                     0%                   NA                 0.0416715    0.0170086    0.0663343
3-6 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0085891   -0.0453089    0.0281307
3-6 months     NIH-Crypto   BANGLADESH                     >5%                  NA                 0.0309903    0.0003804    0.0616002
3-6 months     PROVIDE      BANGLADESH                     0%                   NA                -0.0314072   -0.0618850   -0.0009294
3-6 months     PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0322452   -0.0564107   -0.0080797
3-6 months     PROVIDE      BANGLADESH                     >5%                  NA                -0.0205039   -0.0483113    0.0073035
6-9 months     CMIN         BANGLADESH                     0%                   NA                -0.0729976   -0.1195008   -0.0264943
6-9 months     CMIN         BANGLADESH                     (0%, 5%]             NA                 0.0004014   -0.0620538    0.0628566
6-9 months     CMIN         BANGLADESH                     >5%                  NA                -0.0666009   -0.1021910   -0.0310108
6-9 months     CONTENT      PERU                           0%                   NA                -0.0298365   -0.0566177   -0.0030553
6-9 months     CONTENT      PERU                           (0%, 5%]             NA                -0.0652699   -0.1160430   -0.0144967
6-9 months     CONTENT      PERU                           >5%                  NA                 0.0096425   -0.0278892    0.0471741
6-9 months     MAL-ED       BANGLADESH                     0%                   NA                -0.1034150   -0.1321478   -0.0746822
6-9 months     MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0701972   -0.1008020   -0.0395923
6-9 months     MAL-ED       BANGLADESH                     >5%                  NA                -0.0377395   -0.0675096   -0.0079694
6-9 months     MAL-ED       INDIA                          0%                   NA                -0.0780423   -0.1381911   -0.0178936
6-9 months     MAL-ED       INDIA                          (0%, 5%]             NA                -0.0683946   -0.0955952   -0.0411940
6-9 months     MAL-ED       INDIA                          >5%                  NA                -0.0728801   -0.1222601   -0.0235000
6-9 months     MAL-ED       NEPAL                          0%                   NA                -0.0443324   -0.0779096   -0.0107552
6-9 months     MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0312126   -0.0649126    0.0024874
6-9 months     MAL-ED       NEPAL                          >5%                  NA                -0.0128176   -0.0476853    0.0220502
6-9 months     MAL-ED       PERU                           0%                   NA                 0.0015396   -0.0468367    0.0499160
6-9 months     MAL-ED       PERU                           (0%, 5%]             NA                -0.0430293   -0.0821188   -0.0039397
6-9 months     MAL-ED       PERU                           >5%                  NA                -0.0553136   -0.0950643   -0.0155628
6-9 months     MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0042039   -0.0366034    0.0281957
6-9 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0677469   -0.1311773   -0.0043164
6-9 months     MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.0309229   -0.0902187    0.0283730
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0916468   -0.1414608   -0.0418329
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0844339   -0.1449798   -0.0238880
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1316594   -0.2040413   -0.0592776
6-9 months     NIH-Birth    BANGLADESH                     0%                   NA                -0.0225828   -0.0599240    0.0147584
6-9 months     NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.0469265   -0.0817405   -0.0121125
6-9 months     NIH-Birth    BANGLADESH                     >5%                  NA                -0.0895901   -0.1138780   -0.0653022
6-9 months     NIH-Crypto   BANGLADESH                     0%                   NA                -0.0402992   -0.0588355   -0.0217629
6-9 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0325689   -0.0629928   -0.0021449
6-9 months     NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0173657   -0.0443288    0.0095974
6-9 months     PROVIDE      BANGLADESH                     0%                   NA                -0.0650471   -0.0867046   -0.0433896
6-9 months     PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0604290   -0.0779667   -0.0428913
6-9 months     PROVIDE      BANGLADESH                     >5%                  NA                -0.0624217   -0.0800562   -0.0447872
9-12 months    CMIN         BANGLADESH                     0%                   NA                -0.0868157   -0.1258894   -0.0477419
9-12 months    CMIN         BANGLADESH                     (0%, 5%]             NA                -0.0856120   -0.1504296   -0.0207943
9-12 months    CMIN         BANGLADESH                     >5%                  NA                -0.0991160   -0.1339990   -0.0642330
9-12 months    CONTENT      PERU                           0%                   NA                -0.0200082   -0.0415048    0.0014884
9-12 months    CONTENT      PERU                           (0%, 5%]             NA                -0.0257178   -0.0651745    0.0137389
9-12 months    CONTENT      PERU                           >5%                  NA                -0.0344098   -0.0688512    0.0000316
9-12 months    MAL-ED       BANGLADESH                     0%                   NA                -0.0917753   -0.1256209   -0.0579297
9-12 months    MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0750334   -0.0999906   -0.0500762
9-12 months    MAL-ED       BANGLADESH                     >5%                  NA                -0.0970716   -0.1253224   -0.0688208
9-12 months    MAL-ED       INDIA                          0%                   NA                -0.1197313   -0.1557837   -0.0836790
9-12 months    MAL-ED       INDIA                          (0%, 5%]             NA                -0.0904297   -0.1106418   -0.0702177
9-12 months    MAL-ED       INDIA                          >5%                  NA                -0.0684844   -0.1030643   -0.0339045
9-12 months    MAL-ED       NEPAL                          0%                   NA                -0.0657485   -0.0964977   -0.0349992
9-12 months    MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0467814   -0.0762031   -0.0173597
9-12 months    MAL-ED       NEPAL                          >5%                  NA                -0.0723084   -0.1004576   -0.0441591
9-12 months    MAL-ED       PERU                           0%                   NA                -0.0466003   -0.0878358   -0.0053649
9-12 months    MAL-ED       PERU                           (0%, 5%]             NA                -0.0600918   -0.0939888   -0.0261948
9-12 months    MAL-ED       PERU                           >5%                  NA                -0.0177674   -0.0524227    0.0168880
9-12 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0827680   -0.1133771   -0.0521588
9-12 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0870312   -0.1503594   -0.0237031
9-12 months    MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.1192457   -0.2232053   -0.0152862
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1329632   -0.1775050   -0.0884214
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.1852727   -0.2472405   -0.1233048
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1242755   -0.2042094   -0.0443417
9-12 months    NIH-Birth    BANGLADESH                     0%                   NA                -0.0418187   -0.0685256   -0.0151117
9-12 months    NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.0459002   -0.0727877   -0.0190127
9-12 months    NIH-Birth    BANGLADESH                     >5%                  NA                -0.0406015   -0.0631732   -0.0180298
9-12 months    NIH-Crypto   BANGLADESH                     0%                   NA                -0.0341295   -0.0497706   -0.0184885
9-12 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0246870   -0.0505260    0.0011520
9-12 months    NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0391371   -0.0604542   -0.0178199
9-12 months    PROVIDE      BANGLADESH                     0%                   NA                -0.0709524   -0.0930002   -0.0489046
9-12 months    PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0616091   -0.0787194   -0.0444989
9-12 months    PROVIDE      BANGLADESH                     >5%                  NA                -0.0581894   -0.0763761   -0.0400026
12-15 months   CMIN         BANGLADESH                     0%                   NA                -0.0706339   -0.1113069   -0.0299610
12-15 months   CMIN         BANGLADESH                     (0%, 5%]             NA                -0.0649596   -0.1115912   -0.0183280
12-15 months   CMIN         BANGLADESH                     >5%                  NA                -0.0453367   -0.0766465   -0.0140270
12-15 months   CONTENT      PERU                           0%                   NA                -0.0687150   -0.0928984   -0.0445315
12-15 months   CONTENT      PERU                           (0%, 5%]             NA                -0.0687967   -0.1010647   -0.0365286
12-15 months   CONTENT      PERU                           >5%                  NA                -0.0789153   -0.1091489   -0.0486818
12-15 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0488997   -0.0766272   -0.0211721
12-15 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0773188   -0.1012837   -0.0533538
12-15 months   MAL-ED       BANGLADESH                     >5%                  NA                -0.0305418   -0.0607684   -0.0003153
12-15 months   MAL-ED       INDIA                          0%                   NA                -0.0636802   -0.1020968   -0.0252635
12-15 months   MAL-ED       INDIA                          (0%, 5%]             NA                -0.0722456   -0.0918635   -0.0526277
12-15 months   MAL-ED       INDIA                          >5%                  NA                -0.0188821   -0.0506859    0.0129217
12-15 months   MAL-ED       NEPAL                          0%                   NA                -0.0635261   -0.0925224   -0.0345298
12-15 months   MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0486290   -0.0728201   -0.0244379
12-15 months   MAL-ED       NEPAL                          >5%                  NA                -0.0535200   -0.0806420   -0.0263981
12-15 months   MAL-ED       PERU                           0%                   NA                -0.0686570   -0.1014206   -0.0358935
12-15 months   MAL-ED       PERU                           (0%, 5%]             NA                -0.0563826   -0.0918802   -0.0208850
12-15 months   MAL-ED       PERU                           >5%                  NA                -0.0699200   -0.0970270   -0.0428130
12-15 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0626305   -0.0866229   -0.0386382
12-15 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0557666   -0.1216830    0.0101498
12-15 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.0101942   -0.1012493    0.0808608
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0712208   -0.1065303   -0.0359114
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0500942   -0.0974219   -0.0027664
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1005537   -0.1492585   -0.0518489
12-15 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.1425233   -0.1685110   -0.1165357
12-15 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.1275020   -0.1514966   -0.1035074
12-15 months   NIH-Birth    BANGLADESH                     >5%                  NA                -0.1165135   -0.1466141   -0.0864130
12-15 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0394773   -0.0526182   -0.0263363
12-15 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0438796   -0.0659615   -0.0217977
12-15 months   NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0277366   -0.0465421   -0.0089311
12-15 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0362018   -0.0566465   -0.0157572
12-15 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0449324   -0.0609857   -0.0288791
12-15 months   PROVIDE      BANGLADESH                     >5%                  NA                -0.0356558   -0.0522678   -0.0190438
15-18 months   CMIN         BANGLADESH                     0%                   NA                -0.0671065   -0.1006103   -0.0336027
15-18 months   CMIN         BANGLADESH                     (0%, 5%]             NA                -0.0842864   -0.1288034   -0.0397694
15-18 months   CMIN         BANGLADESH                     >5%                  NA                -0.0465913   -0.0743679   -0.0188147
15-18 months   CONTENT      PERU                           0%                   NA                -0.0083389   -0.0318019    0.0151242
15-18 months   CONTENT      PERU                           (0%, 5%]             NA                 0.0125851   -0.0241649    0.0493351
15-18 months   CONTENT      PERU                           >5%                  NA                -0.0185638   -0.0518128    0.0146852
15-18 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0456073   -0.0704173   -0.0207972
15-18 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0389982   -0.0609367   -0.0170597
15-18 months   MAL-ED       BANGLADESH                     >5%                  NA                -0.0558534   -0.0808885   -0.0308183
15-18 months   MAL-ED       INDIA                          0%                   NA                -0.0337455   -0.0644298   -0.0030611
15-18 months   MAL-ED       INDIA                          (0%, 5%]             NA                -0.0355278   -0.0531955   -0.0178600
15-18 months   MAL-ED       INDIA                          >5%                  NA                -0.0471180   -0.0702116   -0.0240244
15-18 months   MAL-ED       NEPAL                          0%                   NA                -0.0434190   -0.0715125   -0.0153255
15-18 months   MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0707046   -0.0983674   -0.0430418
15-18 months   MAL-ED       NEPAL                          >5%                  NA                -0.0550019   -0.0778512   -0.0321526
15-18 months   MAL-ED       PERU                           0%                   NA                -0.0537429   -0.0855147   -0.0219711
15-18 months   MAL-ED       PERU                           (0%, 5%]             NA                -0.0504994   -0.0783124   -0.0226864
15-18 months   MAL-ED       PERU                           >5%                  NA                -0.0244450   -0.0479761   -0.0009139
15-18 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0289522   -0.0511533   -0.0067510
15-18 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0292705   -0.0725821    0.0140411
15-18 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.0172464   -0.0374974    0.0030046
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1078699   -0.1421960   -0.0735437
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0836768   -0.1186002   -0.0487533
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0370464   -0.0922088    0.0181161
15-18 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.0478786   -0.0773853   -0.0183720
15-18 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.0672601   -0.0948064   -0.0397138
15-18 months   NIH-Birth    BANGLADESH                     >5%                  NA                -0.0573304   -0.0781892   -0.0364716
15-18 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0182753   -0.0302436   -0.0063070
15-18 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0062999   -0.0257393    0.0131395
15-18 months   NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0263132   -0.0412156   -0.0114108
15-18 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0352417   -0.0518030   -0.0186803
15-18 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0329787   -0.0472561   -0.0187014
15-18 months   PROVIDE      BANGLADESH                     >5%                  NA                -0.0426838   -0.0577150   -0.0276527
18-21 months   CMIN         BANGLADESH                     0%                   NA                 0.0033890   -0.0282641    0.0350420
18-21 months   CMIN         BANGLADESH                     (0%, 5%]             NA                 0.0005470   -0.0349393    0.0360332
18-21 months   CMIN         BANGLADESH                     >5%                  NA                -0.0100190   -0.0344706    0.0144327
18-21 months   CONTENT      PERU                           0%                   NA                -0.0059838   -0.0294330    0.0174655
18-21 months   CONTENT      PERU                           (0%, 5%]             NA                -0.0039343   -0.0376009    0.0297324
18-21 months   CONTENT      PERU                           >5%                  NA                -0.0122434   -0.0365955    0.0121088
18-21 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0162870   -0.0379323    0.0053583
18-21 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0303704   -0.0502255   -0.0105154
18-21 months   MAL-ED       BANGLADESH                     >5%                  NA                 0.0043686   -0.0157338    0.0244710
18-21 months   MAL-ED       INDIA                          0%                   NA                 0.0071226   -0.0198513    0.0340964
18-21 months   MAL-ED       INDIA                          (0%, 5%]             NA                 0.0074156   -0.0080746    0.0229057
18-21 months   MAL-ED       INDIA                          >5%                  NA                 0.0011818   -0.0207098    0.0230733
18-21 months   MAL-ED       NEPAL                          0%                   NA                -0.0294431   -0.0533264   -0.0055598
18-21 months   MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0213234   -0.0456694    0.0030226
18-21 months   MAL-ED       NEPAL                          >5%                  NA                -0.0405151   -0.0603603   -0.0206698
18-21 months   MAL-ED       PERU                           0%                   NA                 0.0020428   -0.0333024    0.0373881
18-21 months   MAL-ED       PERU                           (0%, 5%]             NA                -0.0092198   -0.0373566    0.0189170
18-21 months   MAL-ED       PERU                           >5%                  NA                -0.0107327   -0.0334558    0.0119904
18-21 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0313231   -0.0542249   -0.0084214
18-21 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0420689   -0.0794828   -0.0046550
18-21 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.0065420   -0.0714208    0.0845049
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0175080   -0.0551056    0.0200896
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0333733   -0.0658486   -0.0008981
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0719690   -0.1325112   -0.0114268
18-21 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.0487999   -0.0707075   -0.0268922
18-21 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                -0.0441936   -0.0682501   -0.0201371
18-21 months   NIH-Birth    BANGLADESH                     >5%                  NA                -0.0294764   -0.0485084   -0.0104444
18-21 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0269712   -0.0383524   -0.0155900
18-21 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0272248   -0.0474386   -0.0070111
18-21 months   NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0339774   -0.0496264   -0.0183285
18-21 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0042884   -0.0195183    0.0109414
18-21 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0198564   -0.0331814   -0.0065314
18-21 months   PROVIDE      BANGLADESH                     >5%                  NA                -0.0039963   -0.0177949    0.0098024
21-24 months   CMIN         BANGLADESH                     0%                   NA                 0.0300928   -0.0022173    0.0624028
21-24 months   CMIN         BANGLADESH                     (0%, 5%]             NA                 0.0023864   -0.0382650    0.0430378
21-24 months   CMIN         BANGLADESH                     >5%                  NA                 0.0105776   -0.0182463    0.0394016
21-24 months   CONTENT      PERU                           0%                   NA                 0.0252402   -0.0122606    0.0627409
21-24 months   CONTENT      PERU                           (0%, 5%]             NA                -0.0061683   -0.0528009    0.0404642
21-24 months   CONTENT      PERU                           >5%                  NA                 0.0534781    0.0024198    0.1045365
21-24 months   MAL-ED       BANGLADESH                     0%                   NA                 0.0476855    0.0259449    0.0694261
21-24 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.0171389   -0.0007881    0.0350659
21-24 months   MAL-ED       BANGLADESH                     >5%                  NA                 0.0106109   -0.0127093    0.0339311
21-24 months   MAL-ED       INDIA                          0%                   NA                 0.0262100    0.0054535    0.0469664
21-24 months   MAL-ED       INDIA                          (0%, 5%]             NA                 0.0357827    0.0192779    0.0522875
21-24 months   MAL-ED       INDIA                          >5%                  NA                 0.0170264   -0.0018283    0.0358811
21-24 months   MAL-ED       NEPAL                          0%                   NA                -0.0052772   -0.0295177    0.0189633
21-24 months   MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0163230   -0.0080868    0.0407327
21-24 months   MAL-ED       NEPAL                          >5%                  NA                 0.0103357   -0.0110875    0.0317589
21-24 months   MAL-ED       PERU                           0%                   NA                 0.0560508    0.0246129    0.0874887
21-24 months   MAL-ED       PERU                           (0%, 5%]             NA                 0.0576536    0.0278910    0.0874162
21-24 months   MAL-ED       PERU                           >5%                  NA                 0.0584245    0.0324067    0.0844423
21-24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0424024    0.0220391    0.0627657
21-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                 0.0484143    0.0171607    0.0796679
21-24 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.0467120   -0.0115728    0.1049968
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0147714   -0.0182607    0.0478035
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0136494   -0.0245594    0.0518582
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0028354   -0.0449110    0.0392402
21-24 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0332473    0.0106120    0.0558826
21-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                 0.0450948    0.0229619    0.0672277
21-24 months   NIH-Birth    BANGLADESH                     >5%                  NA                 0.0443725    0.0254079    0.0633371
21-24 months   NIH-Crypto   BANGLADESH                     0%                   NA                 0.0634944    0.0524720    0.0745168
21-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0525975    0.0345509    0.0706441
21-24 months   NIH-Crypto   BANGLADESH                     >5%                  NA                 0.0517631    0.0349055    0.0686207
21-24 months   PROVIDE      BANGLADESH                     0%                   NA                 0.0481151    0.0298036    0.0664266
21-24 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                 0.0445827    0.0304536    0.0587118
21-24 months   PROVIDE      BANGLADESH                     >5%                  NA                 0.0458719    0.0316969    0.0600469


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
0-3 months     CMIN         BANGLADESH                     (0%, 5%]             0%                 0.1706854   -0.0170095    0.3583802
0-3 months     CMIN         BANGLADESH                     >5%                  0%                -0.0446404   -0.2499790    0.1606983
0-3 months     CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     CONTENT      PERU                           (0%, 5%]             0%                 0.0424836   -0.1064127    0.1913799
0-3 months     CONTENT      PERU                           >5%                  0%                -0.0911353   -0.2572476    0.0749770
0-3 months     MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0133162   -0.0665181    0.0931506
0-3 months     MAL-ED       BANGLADESH                     >5%                  0%                 0.0144371   -0.0650477    0.0939220
0-3 months     MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       INDIA                          (0%, 5%]             0%                -0.1121320   -0.2670588    0.0427949
0-3 months     MAL-ED       INDIA                          >5%                  0%                -0.2085900   -0.3855263   -0.0316538
0-3 months     MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0165226   -0.0946633    0.1277085
0-3 months     MAL-ED       NEPAL                          >5%                  0%                -0.0112682   -0.1202613    0.0977249
0-3 months     MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU                           (0%, 5%]             0%                -0.0085223   -0.0941042    0.0770597
0-3 months     MAL-ED       PERU                           >5%                  0%                 0.0377471   -0.0371867    0.1126809
0-3 months     MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0905449   -0.0335548    0.2146446
0-3 months     MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1735160   -0.0981403    0.4451724
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0312551   -0.1195590    0.0570487
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0551378   -0.1607766    0.0505009
0-3 months     NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0322524   -0.0358232    0.1003279
0-3 months     NIH-Birth    BANGLADESH                     >5%                  0%                 0.0342844   -0.0311494    0.0997183
0-3 months     NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0059359   -0.0438297    0.0557015
0-3 months     NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0042650   -0.0378276    0.0463576
0-3 months     PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0037849   -0.0447059    0.0371362
0-3 months     PROVIDE      BANGLADESH                     >5%                  0%                -0.0276611   -0.0734708    0.0181487
3-6 months     CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     CMIN         BANGLADESH                     (0%, 5%]             0%                 0.0115049   -0.0904132    0.1134229
3-6 months     CMIN         BANGLADESH                     >5%                  0%                -0.0159865   -0.0990339    0.0670608
3-6 months     CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     CONTENT      PERU                           (0%, 5%]             0%                 0.0484802   -0.0084348    0.1053951
3-6 months     CONTENT      PERU                           >5%                  0%                 0.0320271   -0.0231519    0.0872061
3-6 months     MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0134710   -0.0725922    0.0456502
3-6 months     MAL-ED       BANGLADESH                     >5%                  0%                -0.0377270   -0.1021911    0.0267372
3-6 months     MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA                          (0%, 5%]             0%                -0.0398839   -0.1252966    0.0455288
3-6 months     MAL-ED       INDIA                          >5%                  0%                -0.0589787   -0.1566975    0.0387402
3-6 months     MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0134041   -0.0521128    0.0789210
3-6 months     MAL-ED       NEPAL                          >5%                  0%                -0.0352839   -0.0992507    0.0286829
3-6 months     MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU                           (0%, 5%]             0%                 0.0541959   -0.0258441    0.1342359
3-6 months     MAL-ED       PERU                           >5%                  0%                 0.0415688   -0.0336260    0.1167637
3-6 months     MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0144911   -0.1068158    0.0778336
3-6 months     MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.1424890   -0.2658086   -0.0191693
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0014822   -0.0724177    0.0694532
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0559289   -0.0382110    0.1500689
3-6 months     NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0010805   -0.0616101    0.0637711
3-6 months     NIH-Birth    BANGLADESH                     >5%                  0%                 0.0086321   -0.0520898    0.0693541
3-6 months     NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0502605   -0.0943056   -0.0062155
3-6 months     NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0106812   -0.0497852    0.0284229
3-6 months     PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0008381   -0.0393472    0.0376711
3-6 months     PROVIDE      BANGLADESH                     >5%                  0%                 0.0109033   -0.0300176    0.0518241
6-9 months     CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     CMIN         BANGLADESH                     (0%, 5%]             0%                 0.0733989   -0.0047710    0.1515688
6-9 months     CMIN         BANGLADESH                     >5%                  0%                 0.0063966   -0.0522676    0.0650609
6-9 months     CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     CONTENT      PERU                           (0%, 5%]             0%                -0.0354333   -0.0930025    0.0221359
6-9 months     CONTENT      PERU                           >5%                  0%                 0.0394790   -0.0068502    0.0858082
6-9 months     MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0332179   -0.0088703    0.0753060
6-9 months     MAL-ED       BANGLADESH                     >5%                  0%                 0.0656755    0.0241687    0.1071823
6-9 months     MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA                          (0%, 5%]             0%                 0.0096477   -0.0564550    0.0757504
6-9 months     MAL-ED       INDIA                          >5%                  0%                 0.0051623   -0.0727857    0.0831103
6-9 months     MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0131198   -0.0351206    0.0613602
6-9 months     MAL-ED       NEPAL                          >5%                  0%                 0.0315149   -0.0173625    0.0803922
6-9 months     MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU                           (0%, 5%]             0%                -0.0445689   -0.1065538    0.0174160
6-9 months     MAL-ED       PERU                           >5%                  0%                -0.0568532   -0.1194535    0.0057471
6-9 months     MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0635430   -0.1347691    0.0076830
6-9 months     MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0267190   -0.0942892    0.0408512
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0072130   -0.0709313    0.0853572
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0400126   -0.1286764    0.0486513
6-9 months     NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0243437   -0.0753295    0.0266421
6-9 months     NIH-Birth    BANGLADESH                     >5%                  0%                -0.0670073   -0.1115144   -0.0225002
6-9 months     NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0077304   -0.0279727    0.0434334
6-9 months     NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0229335   -0.0098975    0.0557645
6-9 months     PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0046181   -0.0231595    0.0323957
6-9 months     PROVIDE      BANGLADESH                     >5%                  0%                 0.0026254   -0.0252053    0.0304561
9-12 months    CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    CMIN         BANGLADESH                     (0%, 5%]             0%                 0.0012037   -0.0744231    0.0768306
9-12 months    CMIN         BANGLADESH                     >5%                  0%                -0.0123003   -0.0648459    0.0402453
9-12 months    CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    CONTENT      PERU                           (0%, 5%]             0%                -0.0057096   -0.0507710    0.0393517
9-12 months    CONTENT      PERU                           >5%                  0%                -0.0144016   -0.0549555    0.0261522
9-12 months    MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0167419   -0.0250835    0.0585673
9-12 months    MAL-ED       BANGLADESH                     >5%                  0%                -0.0052963   -0.0494987    0.0389062
9-12 months    MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA                          (0%, 5%]             0%                 0.0293016   -0.0120843    0.0706874
9-12 months    MAL-ED       INDIA                          >5%                  0%                 0.0512469    0.0013178    0.1011760
9-12 months    MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0189670   -0.0236363    0.0615704
9-12 months    MAL-ED       NEPAL                          >5%                  0%                -0.0065599   -0.0483165    0.0351966
9-12 months    MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU                           (0%, 5%]             0%                -0.0134914   -0.0662432    0.0392603
9-12 months    MAL-ED       PERU                           >5%                  0%                 0.0288330   -0.0244689    0.0821348
9-12 months    MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0042633   -0.0746008    0.0660743
9-12 months    MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0364778   -0.1448498    0.0718943
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0523094   -0.1287865    0.0241676
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0086877   -0.0828274    0.1002028
9-12 months    NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0040815   -0.0418566    0.0336935
9-12 months    NIH-Birth    BANGLADESH                     >5%                  0%                 0.0012172   -0.0335820    0.0360163
9-12 months    NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0094426   -0.0207972    0.0396823
9-12 months    NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0050075   -0.0314604    0.0214454
9-12 months    PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0093433   -0.0183773    0.0370639
9-12 months    PROVIDE      BANGLADESH                     >5%                  0%                 0.0127631   -0.0156359    0.0411620
12-15 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   CMIN         BANGLADESH                     (0%, 5%]             0%                 0.0056744   -0.0567650    0.0681138
12-15 months   CMIN         BANGLADESH                     >5%                  0%                 0.0252972   -0.0263173    0.0769117
12-15 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   CONTENT      PERU                           (0%, 5%]             0%                -0.0000817   -0.0404977    0.0403343
12-15 months   CONTENT      PERU                           >5%                  0%                -0.0102004   -0.0491450    0.0287443
12-15 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0284191   -0.0650739    0.0082357
12-15 months   MAL-ED       BANGLADESH                     >5%                  0%                 0.0183578   -0.0227076    0.0594232
12-15 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA                          (0%, 5%]             0%                -0.0085654   -0.0517360    0.0346051
12-15 months   MAL-ED       INDIA                          >5%                  0%                 0.0447981   -0.0050873    0.0946835
12-15 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0148971   -0.0228914    0.0526856
12-15 months   MAL-ED       NEPAL                          >5%                  0%                 0.0100061   -0.0295513    0.0495634
12-15 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.0122744   -0.0360515    0.0606004
12-15 months   MAL-ED       PERU                           >5%                  0%                -0.0012630   -0.0435655    0.0410396
12-15 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0068639   -0.0632831    0.0770109
12-15 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0524363   -0.0417266    0.1465992
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0211266   -0.0381083    0.0803616
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0293329   -0.0895860    0.0309203
12-15 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0150213   -0.0205602    0.0506029
12-15 months   NIH-Birth    BANGLADESH                     >5%                  0%                 0.0260098   -0.0142114    0.0662311
12-15 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0044023   -0.0301224    0.0213177
12-15 months   NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0117406   -0.0112056    0.0346869
12-15 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0087306   -0.0346953    0.0172341
12-15 months   PROVIDE      BANGLADESH                     >5%                  0%                 0.0005460   -0.0256840    0.0267761
15-18 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0171799   -0.0732645    0.0389047
15-18 months   CMIN         BANGLADESH                     >5%                  0%                 0.0205152   -0.0232099    0.0642404
15-18 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   CONTENT      PERU                           (0%, 5%]             0%                 0.0209240   -0.0231171    0.0649651
15-18 months   CONTENT      PERU                           >5%                  0%                -0.0102250   -0.0513630    0.0309131
15-18 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0066090   -0.0265257    0.0397438
15-18 months   MAL-ED       BANGLADESH                     >5%                  0%                -0.0102461   -0.0454569    0.0249646
15-18 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA                          (0%, 5%]             0%                -0.0017823   -0.0372211    0.0336565
15-18 months   MAL-ED       INDIA                          >5%                  0%                -0.0133725   -0.0516925    0.0249476
15-18 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0272856   -0.0668154    0.0122442
15-18 months   MAL-ED       NEPAL                          >5%                  0%                -0.0115829   -0.0479474    0.0247816
15-18 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.0032435   -0.0390994    0.0455864
15-18 months   MAL-ED       PERU                           >5%                  0%                 0.0292979   -0.0103568    0.0689526
15-18 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0003183   -0.0489885    0.0483519
15-18 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0117058   -0.0183441    0.0417556
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0241931   -0.0249584    0.0733446
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0708235    0.0057670    0.1358800
15-18 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0193815   -0.0597425    0.0209796
15-18 months   NIH-Birth    BANGLADESH                     >5%                  0%                -0.0094518   -0.0455243    0.0266207
15-18 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0119754   -0.0109184    0.0348691
15-18 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0080379   -0.0271598    0.0110840
15-18 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0022629   -0.0195835    0.0241094
15-18 months   PROVIDE      BANGLADESH                     >5%                  0%                -0.0074422   -0.0298327    0.0149484
18-21 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0028420   -0.0507870    0.0451030
18-21 months   CMIN         BANGLADESH                     >5%                  0%                -0.0134079   -0.0533068    0.0264910
18-21 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   CONTENT      PERU                           (0%, 5%]             0%                 0.0020495   -0.0391293    0.0432283
18-21 months   CONTENT      PERU                           >5%                  0%                -0.0062596   -0.0401923    0.0276731
18-21 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0140834   -0.0435633    0.0153965
18-21 months   MAL-ED       BANGLADESH                     >5%                  0%                 0.0206556   -0.0092347    0.0505459
18-21 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA                          (0%, 5%]             0%                 0.0002930   -0.0309037    0.0314897
18-21 months   MAL-ED       INDIA                          >5%                  0%                -0.0059408   -0.0407048    0.0288231
18-21 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0081197   -0.0262173    0.0424567
18-21 months   MAL-ED       NEPAL                          >5%                  0%                -0.0110720   -0.0422260    0.0200821
18-21 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU                           (0%, 5%]             0%                -0.0112626   -0.0576489    0.0351237
18-21 months   MAL-ED       PERU                           >5%                  0%                -0.0127755   -0.0560649    0.0305139
18-21 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0107458   -0.0546125    0.0331209
18-21 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0378652   -0.0433918    0.1191221
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0158653   -0.0654769    0.0337462
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0544610   -0.1258487    0.0169267
18-21 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0046063   -0.0279540    0.0371665
18-21 months   NIH-Birth    BANGLADESH                     >5%                  0%                 0.0193234   -0.0097090    0.0483558
18-21 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0002536   -0.0234287    0.0229215
18-21 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0070062   -0.0263796    0.0123671
18-21 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0155680   -0.0357867    0.0046507
18-21 months   PROVIDE      BANGLADESH                     >5%                  0%                 0.0002922   -0.0202232    0.0208075
21-24 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0277064   -0.0795228    0.0241101
21-24 months   CMIN         BANGLADESH                     >5%                  0%                -0.0195151   -0.0627655    0.0237352
21-24 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   CONTENT      PERU                           (0%, 5%]             0%                -0.0314085   -0.0912491    0.0284321
21-24 months   CONTENT      PERU                           >5%                  0%                 0.0282380   -0.0351123    0.0915883
21-24 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0305467   -0.0584839   -0.0026094
21-24 months   MAL-ED       BANGLADESH                     >5%                  0%                -0.0370746   -0.0688149   -0.0053344
21-24 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA                          (0%, 5%]             0%                 0.0095727   -0.0170048    0.0361503
21-24 months   MAL-ED       INDIA                          >5%                  0%                -0.0091836   -0.0372403    0.0188732
21-24 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0216002   -0.0122469    0.0554472
21-24 months   MAL-ED       NEPAL                          >5%                  0%                 0.0156129   -0.0162349    0.0474607
21-24 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.0016028   -0.0441299    0.0473356
21-24 months   MAL-ED       PERU                           >5%                  0%                 0.0023737   -0.0403598    0.0451073
21-24 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0060119   -0.0312902    0.0433141
21-24 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0043096   -0.0574300    0.0660493
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0011220   -0.0518178    0.0495737
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0176068   -0.0710954    0.0358818
21-24 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0118475   -0.0199643    0.0436593
21-24 months   NIH-Birth    BANGLADESH                     >5%                  0%                 0.0111252   -0.0186028    0.0408533
21-24 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0108968   -0.0319869    0.0101932
21-24 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0117313   -0.0319083    0.0084458
21-24 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0035324   -0.0267195    0.0196547
21-24 months   PROVIDE      BANGLADESH                     >5%                  0%                -0.0022431   -0.0255017    0.0210154


### Parameter: PAR


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMIN         BANGLADESH                     0%                   NA                 0.0385683   -0.0609477    0.1380844
0-3 months     CONTENT      PERU                           0%                   NA                -0.0132085   -0.0787009    0.0522839
0-3 months     MAL-ED       BANGLADESH                     0%                   NA                 0.0099101   -0.0400588    0.0598791
0-3 months     MAL-ED       INDIA                          0%                   NA                -0.1104951   -0.2328507    0.0118605
0-3 months     MAL-ED       NEPAL                          0%                   NA                 0.0003440   -0.0637591    0.0644471
0-3 months     MAL-ED       PERU                           0%                   NA                 0.0182085   -0.0330835    0.0695005
0-3 months     MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0250311   -0.0038261    0.0538883
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0166106   -0.0626235    0.0294023
0-3 months     NIH-Birth    BANGLADESH                     0%                   NA                 0.0255712   -0.0194085    0.0705508
0-3 months     NIH-Crypto   BANGLADESH                     0%                   NA                 0.0025058   -0.0175067    0.0225182
0-3 months     PROVIDE      BANGLADESH                     0%                   NA                -0.0073278   -0.0351583    0.0205028
3-6 months     CMIN         BANGLADESH                     0%                   NA                -0.0020552   -0.0570194    0.0529090
3-6 months     CONTENT      PERU                           0%                   NA                 0.0182289   -0.0026549    0.0391126
3-6 months     MAL-ED       BANGLADESH                     0%                   NA                -0.0172869   -0.0563913    0.0218174
3-6 months     MAL-ED       INDIA                          0%                   NA                -0.0369416   -0.1026309    0.0287476
3-6 months     MAL-ED       NEPAL                          0%                   NA                -0.0082062   -0.0453429    0.0289305
3-6 months     MAL-ED       PERU                           0%                   NA                 0.0343069   -0.0170425    0.0856562
3-6 months     MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0078516   -0.0293153    0.0136121
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0090333   -0.0295849    0.0476514
3-6 months     NIH-Birth    BANGLADESH                     0%                   NA                 0.0007813   -0.0421493    0.0437120
3-6 months     NIH-Crypto   BANGLADESH                     0%                   NA                -0.0148974   -0.0322292    0.0024344
3-6 months     PROVIDE      BANGLADESH                     0%                   NA                 0.0044447   -0.0216353    0.0305246
6-9 months     CMIN         BANGLADESH                     0%                   NA                 0.0211595   -0.0174888    0.0598079
6-9 months     CONTENT      PERU                           0%                   NA                 0.0062235   -0.0129186    0.0253656
6-9 months     MAL-ED       BANGLADESH                     0%                   NA                 0.0333919    0.0082339    0.0585499
6-9 months     MAL-ED       INDIA                          0%                   NA                 0.0077068   -0.0432329    0.0586464
6-9 months     MAL-ED       NEPAL                          0%                   NA                 0.0097728   -0.0185112    0.0380569
6-9 months     MAL-ED       PERU                           0%                   NA                -0.0351181   -0.0773665    0.0071304
6-9 months     MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0135789   -0.0288069    0.0016490
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0017630   -0.0407592    0.0372332
6-9 months     NIH-Birth    BANGLADESH                     0%                   NA                -0.0369720   -0.0693077   -0.0046363
6-9 months     NIH-Crypto   BANGLADESH                     0%                   NA                 0.0089355   -0.0051431    0.0230140
6-9 months     PROVIDE      BANGLADESH                     0%                   NA                 0.0036207   -0.0148830    0.0221244
9-12 months    CMIN         BANGLADESH                     0%                   NA                -0.0032300   -0.0381446    0.0316847
9-12 months    CONTENT      PERU                           0%                   NA                -0.0026920   -0.0179256    0.0125416
9-12 months    MAL-ED       BANGLADESH                     0%                   NA                 0.0045699   -0.0226721    0.0318120
9-12 months    MAL-ED       INDIA                          0%                   NA                 0.0284914   -0.0039394    0.0609222
9-12 months    MAL-ED       NEPAL                          0%                   NA                 0.0034520   -0.0212471    0.0281510
9-12 months    MAL-ED       PERU                           0%                   NA                 0.0046743   -0.0311956    0.0405441
9-12 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0020941   -0.0169306    0.0127424
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0220029   -0.0598318    0.0158261
9-12 months    NIH-Birth    BANGLADESH                     0%                   NA                -0.0006562   -0.0246037    0.0232914
9-12 months    NIH-Crypto   BANGLADESH                     0%                   NA                -0.0001699   -0.0119698    0.0116299
9-12 months    PROVIDE      BANGLADESH                     0%                   NA                 0.0079054   -0.0106938    0.0265046
12-15 months   CMIN         BANGLADESH                     0%                   NA                 0.0097541   -0.0229214    0.0424296
12-15 months   CONTENT      PERU                           0%                   NA                -0.0064835   -0.0222360    0.0092689
12-15 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0068126   -0.0306196    0.0169943
12-15 months   MAL-ED       INDIA                          0%                   NA                 0.0071578   -0.0267616    0.0410772
12-15 months   MAL-ED       NEPAL                          0%                   NA                 0.0060711   -0.0168729    0.0290151
12-15 months   MAL-ED       PERU                           0%                   NA                 0.0033039   -0.0258921    0.0324998
12-15 months   MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0034547   -0.0115477    0.0184571
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0018645   -0.0268477    0.0305766
12-15 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0165645   -0.0091545    0.0422835
12-15 months   NIH-Crypto   BANGLADESH                     0%                   NA                 0.0011459   -0.0087803    0.0110722
12-15 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0047089   -0.0220460    0.0126282
15-18 months   CMIN         BANGLADESH                     0%                   NA                 0.0043731   -0.0223420    0.0310881
15-18 months   CONTENT      PERU                           0%                   NA                -0.0022981   -0.0194977    0.0149015
15-18 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0001870   -0.0210741    0.0207001
15-18 months   MAL-ED       INDIA                          0%                   NA                -0.0042580   -0.0310341    0.0225182
15-18 months   MAL-ED       NEPAL                          0%                   NA                -0.0115155   -0.0340181    0.0109870
15-18 months   MAL-ED       PERU                           0%                   NA                 0.0176864   -0.0099978    0.0453705
15-18 months   MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0004046   -0.0098020    0.0106111
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0222357   -0.0038839    0.0483552
15-18 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.0098120   -0.0353081    0.0156842
15-18 months   NIH-Crypto   BANGLADESH                     0%                   NA                 0.0013680   -0.0071997    0.0099356
15-18 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0024021   -0.0166430    0.0118389
18-21 months   CMIN         BANGLADESH                     0%                   NA                -0.0098833   -0.0352691    0.0155026
18-21 months   CONTENT      PERU                           0%                   NA                -0.0008253   -0.0158878    0.0142372
18-21 months   MAL-ED       BANGLADESH                     0%                   NA                 0.0007651   -0.0176327    0.0191629
18-21 months   MAL-ED       INDIA                          0%                   NA                -0.0013485   -0.0249573    0.0222602
18-21 months   MAL-ED       NEPAL                          0%                   NA                 0.0013378   -0.0181193    0.0207949
18-21 months   MAL-ED       PERU                           0%                   NA                -0.0101569   -0.0403194    0.0200056
18-21 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0008434   -0.0112585    0.0095718
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0106952   -0.0387541    0.0173636
18-21 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0104108   -0.0097535    0.0305752
18-21 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0009976   -0.0090175    0.0070223
18-21 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0066515   -0.0199024    0.0065995
21-24 months   CMIN         BANGLADESH                     0%                   NA                -0.0144766   -0.0401593    0.0112060
21-24 months   CONTENT      PERU                           0%                   NA                 0.0001591   -0.0209302    0.0212483
21-24 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0220673   -0.0405547   -0.0035799
21-24 months   MAL-ED       INDIA                          0%                   NA                 0.0035786   -0.0157536    0.0229109
21-24 months   MAL-ED       NEPAL                          0%                   NA                 0.0107320   -0.0082093    0.0296733
21-24 months   MAL-ED       PERU                           0%                   NA                 0.0009236   -0.0278895    0.0297367
21-24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0014698   -0.0073690    0.0103085
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0059317   -0.0314688    0.0196054
21-24 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0074442   -0.0130868    0.0279751
21-24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0047323   -0.0122101    0.0027455
21-24 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0018808   -0.0176499    0.0138882
