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
0-3 months     EE           PAKISTAN                       0%             285   320
0-3 months     EE           PAKISTAN                       (0%, 5%]        33   320
0-3 months     EE           PAKISTAN                       >5%              2   320
0-3 months     MAL-ED       BANGLADESH                     0%              71   246
0-3 months     MAL-ED       BANGLADESH                     (0%, 5%]        97   246
0-3 months     MAL-ED       BANGLADESH                     >5%             78   246
0-3 months     MAL-ED       BRAZIL                         0%             201   218
0-3 months     MAL-ED       BRAZIL                         (0%, 5%]        15   218
0-3 months     MAL-ED       BRAZIL                         >5%              2   218
0-3 months     MAL-ED       INDIA                          0%              51   238
0-3 months     MAL-ED       INDIA                          (0%, 5%]       127   238
0-3 months     MAL-ED       INDIA                          >5%             60   238
0-3 months     MAL-ED       NEPAL                          0%              77   232
0-3 months     MAL-ED       NEPAL                          (0%, 5%]        76   232
0-3 months     MAL-ED       NEPAL                          >5%             79   232
0-3 months     MAL-ED       PERU                           0%              71   282
0-3 months     MAL-ED       PERU                           (0%, 5%]        93   282
0-3 months     MAL-ED       PERU                           >5%            118   282
0-3 months     MAL-ED       SOUTH AFRICA                   0%             203   272
0-3 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]        59   272
0-3 months     MAL-ED       SOUTH AFRICA                   >5%             10   272
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              99   237
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        94   237
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             44   237
0-3 months     NIH-Birth    BANGLADESH                     0%             137   565
0-3 months     NIH-Birth    BANGLADESH                     (0%, 5%]       177   565
0-3 months     NIH-Birth    BANGLADESH                     >5%            251   565
0-3 months     NIH-Crypto   BANGLADESH                     0%             342   725
0-3 months     NIH-Crypto   BANGLADESH                     (0%, 5%]       169   725
0-3 months     NIH-Crypto   BANGLADESH                     >5%            214   725
0-3 months     PROVIDE      BANGLADESH                     0%             172   640
0-3 months     PROVIDE      BANGLADESH                     (0%, 5%]       258   640
0-3 months     PROVIDE      BANGLADESH                     >5%            210   640
3-6 months     CMIN         BANGLADESH                     0%              61   184
3-6 months     CMIN         BANGLADESH                     (0%, 5%]        44   184
3-6 months     CMIN         BANGLADESH                     >5%             79   184
3-6 months     CONTENT      PERU                           0%             115   214
3-6 months     CONTENT      PERU                           (0%, 5%]        43   214
3-6 months     CONTENT      PERU                           >5%             56   214
3-6 months     EE           PAKISTAN                       0%             243   275
3-6 months     EE           PAKISTAN                       (0%, 5%]        30   275
3-6 months     EE           PAKISTAN                       >5%              2   275
3-6 months     MAL-ED       BANGLADESH                     0%              68   233
3-6 months     MAL-ED       BANGLADESH                     (0%, 5%]        89   233
3-6 months     MAL-ED       BANGLADESH                     >5%             76   233
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
3-6 months     NIH-Birth    BANGLADESH                     0%             124   522
3-6 months     NIH-Birth    BANGLADESH                     (0%, 5%]       163   522
3-6 months     NIH-Birth    BANGLADESH                     >5%            235   522
3-6 months     NIH-Crypto   BANGLADESH                     0%             332   702
3-6 months     NIH-Crypto   BANGLADESH                     (0%, 5%]       164   702
3-6 months     NIH-Crypto   BANGLADESH                     >5%            206   702
3-6 months     PROVIDE      BANGLADESH                     0%             155   601
3-6 months     PROVIDE      BANGLADESH                     (0%, 5%]       246   601
3-6 months     PROVIDE      BANGLADESH                     >5%            200   601
6-9 months     CMIN         BANGLADESH                     0%              56   177
6-9 months     CMIN         BANGLADESH                     (0%, 5%]        41   177
6-9 months     CMIN         BANGLADESH                     >5%             80   177
6-9 months     CONTENT      PERU                           0%             115   214
6-9 months     CONTENT      PERU                           (0%, 5%]        43   214
6-9 months     CONTENT      PERU                           >5%             56   214
6-9 months     EE           PAKISTAN                       0%             271   301
6-9 months     EE           PAKISTAN                       (0%, 5%]        28   301
6-9 months     EE           PAKISTAN                       >5%              2   301
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
6-9 months     NIH-Crypto   BANGLADESH                     0%             332   693
6-9 months     NIH-Crypto   BANGLADESH                     (0%, 5%]       161   693
6-9 months     NIH-Crypto   BANGLADESH                     >5%            200   693
6-9 months     PROVIDE      BANGLADESH                     0%             148   576
6-9 months     PROVIDE      BANGLADESH                     (0%, 5%]       233   576
6-9 months     PROVIDE      BANGLADESH                     >5%            195   576
9-12 months    CMIN         BANGLADESH                     0%              49   160
9-12 months    CMIN         BANGLADESH                     (0%, 5%]        36   160
9-12 months    CMIN         BANGLADESH                     >5%             75   160
9-12 months    CONTENT      PERU                           0%             115   212
9-12 months    CONTENT      PERU                           (0%, 5%]        41   212
9-12 months    CONTENT      PERU                           >5%             56   212
9-12 months    EE           PAKISTAN                       0%             295   325
9-12 months    EE           PAKISTAN                       (0%, 5%]        28   325
9-12 months    EE           PAKISTAN                       >5%              2   325
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
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              97   224
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        86   224
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   224
9-12 months    NIH-Birth    BANGLADESH                     0%             117   481
9-12 months    NIH-Birth    BANGLADESH                     (0%, 5%]       150   481
9-12 months    NIH-Birth    BANGLADESH                     >5%            214   481
9-12 months    NIH-Crypto   BANGLADESH                     0%             330   683
9-12 months    NIH-Crypto   BANGLADESH                     (0%, 5%]       157   683
9-12 months    NIH-Crypto   BANGLADESH                     >5%            196   683
9-12 months    PROVIDE      BANGLADESH                     0%             148   569
9-12 months    PROVIDE      BANGLADESH                     (0%, 5%]       227   569
9-12 months    PROVIDE      BANGLADESH                     >5%            194   569
12-15 months   CMIN         BANGLADESH                     0%              54   159
12-15 months   CMIN         BANGLADESH                     (0%, 5%]        36   159
12-15 months   CMIN         BANGLADESH                     >5%             69   159
12-15 months   CONTENT      PERU                           0%             106   199
12-15 months   CONTENT      PERU                           (0%, 5%]        39   199
12-15 months   CONTENT      PERU                           >5%             54   199
12-15 months   EE           PAKISTAN                       0%             270   298
12-15 months   EE           PAKISTAN                       (0%, 5%]        26   298
12-15 months   EE           PAKISTAN                       >5%              2   298
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
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              98   226
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        85   226
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             43   226
12-15 months   NIH-Birth    BANGLADESH                     0%             114   461
12-15 months   NIH-Birth    BANGLADESH                     (0%, 5%]       145   461
12-15 months   NIH-Birth    BANGLADESH                     >5%            202   461
12-15 months   NIH-Crypto   BANGLADESH                     0%             324   666
12-15 months   NIH-Crypto   BANGLADESH                     (0%, 5%]       148   666
12-15 months   NIH-Crypto   BANGLADESH                     >5%            194   666
12-15 months   PROVIDE      BANGLADESH                     0%             141   537
12-15 months   PROVIDE      BANGLADESH                     (0%, 5%]       213   537
12-15 months   PROVIDE      BANGLADESH                     >5%            183   537
15-18 months   CMIN         BANGLADESH                     0%              59   163
15-18 months   CMIN         BANGLADESH                     (0%, 5%]        40   163
15-18 months   CMIN         BANGLADESH                     >5%             64   163
15-18 months   CONTENT      PERU                           0%              98   189
15-18 months   CONTENT      PERU                           (0%, 5%]        38   189
15-18 months   CONTENT      PERU                           >5%             53   189
15-18 months   EE           PAKISTAN                       0%             250   277
15-18 months   EE           PAKISTAN                       (0%, 5%]        25   277
15-18 months   EE           PAKISTAN                       >5%              2   277
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
15-18 months   MAL-ED       PERU                           0%              54   214
15-18 months   MAL-ED       PERU                           (0%, 5%]        67   214
15-18 months   MAL-ED       PERU                           >5%             93   214
15-18 months   MAL-ED       SOUTH AFRICA                   0%             171   225
15-18 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]        45   225
15-18 months   MAL-ED       SOUTH AFRICA                   >5%              9   225
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              94   220
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        84   220
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             42   220
15-18 months   NIH-Birth    BANGLADESH                     0%             112   449
15-18 months   NIH-Birth    BANGLADESH                     (0%, 5%]       138   449
15-18 months   NIH-Birth    BANGLADESH                     >5%            199   449
15-18 months   NIH-Crypto   BANGLADESH                     0%             304   605
15-18 months   NIH-Crypto   BANGLADESH                     (0%, 5%]       131   605
15-18 months   NIH-Crypto   BANGLADESH                     >5%            170   605
15-18 months   PROVIDE      BANGLADESH                     0%             145   533
15-18 months   PROVIDE      BANGLADESH                     (0%, 5%]       207   533
15-18 months   PROVIDE      BANGLADESH                     >5%            181   533
18-21 months   CMIN         BANGLADESH                     0%              52   165
18-21 months   CMIN         BANGLADESH                     (0%, 5%]        40   165
18-21 months   CMIN         BANGLADESH                     >5%             73   165
18-21 months   CONTENT      PERU                           0%              94   183
18-21 months   CONTENT      PERU                           (0%, 5%]        38   183
18-21 months   CONTENT      PERU                           >5%             51   183
18-21 months   EE           PAKISTAN                       0%             230   255
18-21 months   EE           PAKISTAN                       (0%, 5%]        23   255
18-21 months   EE           PAKISTAN                       >5%              2   255
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
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              88   208
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        82   208
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             38   208
18-21 months   NIH-Birth    BANGLADESH                     0%             102   422
18-21 months   NIH-Birth    BANGLADESH                     (0%, 5%]       127   422
18-21 months   NIH-Birth    BANGLADESH                     >5%            193   422
18-21 months   NIH-Crypto   BANGLADESH                     0%             289   547
18-21 months   NIH-Crypto   BANGLADESH                     (0%, 5%]       112   547
18-21 months   NIH-Crypto   BANGLADESH                     >5%            146   547
18-21 months   PROVIDE      BANGLADESH                     0%             144   542
18-21 months   PROVIDE      BANGLADESH                     (0%, 5%]       218   542
18-21 months   PROVIDE      BANGLADESH                     >5%            180   542
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
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              87   206
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        81   206
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             38   206
21-24 months   NIH-Birth    BANGLADESH                     0%             102   411
21-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]       124   411
21-24 months   NIH-Birth    BANGLADESH                     >5%            185   411
21-24 months   NIH-Crypto   BANGLADESH                     0%             271   493
21-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]        98   493
21-24 months   NIH-Crypto   BANGLADESH                     >5%            124   493
21-24 months   PROVIDE      BANGLADESH                     0%             124   485
21-24 months   PROVIDE      BANGLADESH                     (0%, 5%]       196   485
21-24 months   PROVIDE      BANGLADESH                     >5%            165   485


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




# Results Detail

## Results Plots
![](/tmp/cc7079fe-998d-4695-97a5-a2ca5a145443/cd0812b7-590b-4460-bd86-36a1dbef2217/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cc7079fe-998d-4695-97a5-a2ca5a145443/cd0812b7-590b-4460-bd86-36a1dbef2217/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/cc7079fe-998d-4695-97a5-a2ca5a145443/cd0812b7-590b-4460-bd86-36a1dbef2217/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMIN         BANGLADESH                     0%                   NA                0.9048134   0.7761180   1.0335088
0-3 months     CMIN         BANGLADESH                     (0%, 5%]             NA                0.8603037   0.7626522   0.9579551
0-3 months     CMIN         BANGLADESH                     >5%                  NA                0.7729596   0.6469159   0.8990033
0-3 months     CONTENT      PERU                           0%                   NA                1.1449024   1.0394584   1.2503463
0-3 months     CONTENT      PERU                           (0%, 5%]             NA                1.0485017   0.9409253   1.1560780
0-3 months     CONTENT      PERU                           >5%                  NA                1.1863517   0.9941862   1.3785173
0-3 months     MAL-ED       BANGLADESH                     0%                   NA                0.8663918   0.8241345   0.9086492
0-3 months     MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.8783451   0.8393222   0.9173679
0-3 months     MAL-ED       BANGLADESH                     >5%                  NA                0.8928477   0.8512811   0.9344143
0-3 months     MAL-ED       INDIA                          0%                   NA                0.7360290   0.6860076   0.7860504
0-3 months     MAL-ED       INDIA                          (0%, 5%]             NA                0.7736915   0.7438037   0.8035792
0-3 months     MAL-ED       INDIA                          >5%                  NA                0.7473205   0.7026210   0.7920201
0-3 months     MAL-ED       NEPAL                          0%                   NA                0.9463589   0.8985972   0.9941205
0-3 months     MAL-ED       NEPAL                          (0%, 5%]             NA                0.9508739   0.9072087   0.9945392
0-3 months     MAL-ED       NEPAL                          >5%                  NA                0.9674861   0.9187918   1.0161804
0-3 months     MAL-ED       PERU                           0%                   NA                0.9505194   0.9033535   0.9976852
0-3 months     MAL-ED       PERU                           (0%, 5%]             NA                0.9645478   0.9196061   1.0094895
0-3 months     MAL-ED       PERU                           >5%                  NA                0.9878471   0.9492844   1.0264098
0-3 months     MAL-ED       SOUTH AFRICA                   0%                   NA                0.9294828   0.8990763   0.9598894
0-3 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.9569984   0.9020594   1.0119374
0-3 months     MAL-ED       SOUTH AFRICA                   >5%                  NA                1.0671241   0.9261991   1.2080492
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8633852   0.8122059   0.9145645
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8894097   0.8405946   0.9382248
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.9253934   0.8634047   0.9873822
0-3 months     NIH-Birth    BANGLADESH                     0%                   NA                0.8050996   0.7736673   0.8365319
0-3 months     NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.8232449   0.7883456   0.8581443
0-3 months     NIH-Birth    BANGLADESH                     >5%                  NA                0.8173996   0.7946593   0.8401400
0-3 months     NIH-Crypto   BANGLADESH                     0%                   NA                0.8873451   0.8673169   0.9073732
0-3 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.8726554   0.8391468   0.9061641
0-3 months     NIH-Crypto   BANGLADESH                     >5%                  NA                0.8851143   0.8563255   0.9139032
0-3 months     PROVIDE      BANGLADESH                     0%                   NA                0.8879798   0.8582588   0.9177007
0-3 months     PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.9032056   0.8810499   0.9253613
0-3 months     PROVIDE      BANGLADESH                     >5%                  NA                0.9111801   0.8847095   0.9376506
3-6 months     CMIN         BANGLADESH                     0%                   NA                0.4488044   0.4070426   0.4905662
3-6 months     CMIN         BANGLADESH                     (0%, 5%]             NA                0.4454526   0.3904329   0.5004724
3-6 months     CMIN         BANGLADESH                     >5%                  NA                0.4428244   0.4097633   0.4758854
3-6 months     CONTENT      PERU                           0%                   NA                0.5726380   0.5453537   0.5999223
3-6 months     CONTENT      PERU                           (0%, 5%]             NA                0.6315278   0.5846563   0.6783992
3-6 months     CONTENT      PERU                           >5%                  NA                0.6036241   0.5558005   0.6514477
3-6 months     MAL-ED       BANGLADESH                     0%                   NA                0.4836878   0.4556960   0.5116796
3-6 months     MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4678823   0.4428517   0.4929129
3-6 months     MAL-ED       BANGLADESH                     >5%                  NA                0.4749834   0.4385076   0.5114593
3-6 months     MAL-ED       INDIA                          0%                   NA                0.4549297   0.4183304   0.4915290
3-6 months     MAL-ED       INDIA                          (0%, 5%]             NA                0.4421807   0.4185267   0.4658348
3-6 months     MAL-ED       INDIA                          >5%                  NA                0.4401585   0.4011966   0.4791205
3-6 months     MAL-ED       NEPAL                          0%                   NA                0.5062652   0.4757962   0.5367343
3-6 months     MAL-ED       NEPAL                          (0%, 5%]             NA                0.5221359   0.4872385   0.5570333
3-6 months     MAL-ED       NEPAL                          >5%                  NA                0.5215744   0.4846612   0.5584876
3-6 months     MAL-ED       PERU                           0%                   NA                0.4937703   0.4581505   0.5293901
3-6 months     MAL-ED       PERU                           (0%, 5%]             NA                0.4806811   0.4461170   0.5152453
3-6 months     MAL-ED       PERU                           >5%                  NA                0.5140595   0.4836525   0.5444664
3-6 months     MAL-ED       SOUTH AFRICA                   0%                   NA                0.4858614   0.4562289   0.5154939
3-6 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.4046193   0.3496258   0.4596128
3-6 months     MAL-ED       SOUTH AFRICA                   >5%                  NA                0.4058270   0.3022917   0.5093623
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.4284213   0.3950394   0.4618033
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.4854684   0.4408278   0.5301090
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.4661190   0.4126369   0.5196011
3-6 months     NIH-Birth    BANGLADESH                     0%                   NA                0.4601449   0.4259423   0.4943475
3-6 months     NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.4756275   0.4382528   0.5130022
3-6 months     NIH-Birth    BANGLADESH                     >5%                  NA                0.4426226   0.4193357   0.4659095
3-6 months     NIH-Crypto   BANGLADESH                     0%                   NA                0.4878365   0.4721224   0.5035506
3-6 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.5019229   0.4790013   0.5248445
3-6 months     NIH-Crypto   BANGLADESH                     >5%                  NA                0.5116905   0.4874843   0.5358967
3-6 months     PROVIDE      BANGLADESH                     0%                   NA                0.4771683   0.4584290   0.4959075
3-6 months     PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.4741737   0.4560052   0.4923422
3-6 months     PROVIDE      BANGLADESH                     >5%                  NA                0.5195419   0.4911902   0.5478936
6-9 months     CMIN         BANGLADESH                     0%                   NA                0.2101024   0.1784237   0.2417811
6-9 months     CMIN         BANGLADESH                     (0%, 5%]             NA                0.2329148   0.1885722   0.2772575
6-9 months     CMIN         BANGLADESH                     >5%                  NA                0.2318499   0.1993864   0.2643134
6-9 months     CONTENT      PERU                           0%                   NA                0.3087153   0.2813750   0.3360555
6-9 months     CONTENT      PERU                           (0%, 5%]             NA                0.3171551   0.2726006   0.3617096
6-9 months     CONTENT      PERU                           >5%                  NA                0.3368554   0.2993200   0.3743908
6-9 months     MAL-ED       BANGLADESH                     0%                   NA                0.2266091   0.2017019   0.2515163
6-9 months     MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.2445420   0.2181506   0.2709333
6-9 months     MAL-ED       BANGLADESH                     >5%                  NA                0.2577478   0.2342626   0.2812330
6-9 months     MAL-ED       INDIA                          0%                   NA                0.2227471   0.1933562   0.2521380
6-9 months     MAL-ED       INDIA                          (0%, 5%]             NA                0.2398310   0.2203360   0.2593260
6-9 months     MAL-ED       INDIA                          >5%                  NA                0.2381156   0.2030378   0.2731934
6-9 months     MAL-ED       NEPAL                          0%                   NA                0.2702336   0.2470165   0.2934508
6-9 months     MAL-ED       NEPAL                          (0%, 5%]             NA                0.2858463   0.2591898   0.3125028
6-9 months     MAL-ED       NEPAL                          >5%                  NA                0.2662785   0.2393042   0.2932528
6-9 months     MAL-ED       PERU                           0%                   NA                0.2381298   0.2112619   0.2649978
6-9 months     MAL-ED       PERU                           (0%, 5%]             NA                0.2671514   0.2324572   0.3018457
6-9 months     MAL-ED       PERU                           >5%                  NA                0.2720123   0.2494346   0.2945900
6-9 months     MAL-ED       SOUTH AFRICA                   0%                   NA                0.2539242   0.2309607   0.2768877
6-9 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.2730085   0.2210963   0.3249207
6-9 months     MAL-ED       SOUTH AFRICA                   >5%                  NA                0.3019698   0.1581918   0.4457479
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.2683360   0.2333221   0.3033499
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.2024416   0.1589456   0.2459375
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.2453832   0.1891786   0.3015877
6-9 months     NIH-Birth    BANGLADESH                     0%                   NA                0.2394953   0.2075376   0.2714531
6-9 months     NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.2352329   0.2142022   0.2562635
6-9 months     NIH-Birth    BANGLADESH                     >5%                  NA                0.2363736   0.2151446   0.2576026
6-9 months     NIH-Crypto   BANGLADESH                     0%                   NA                0.2655435   0.2495394   0.2815476
6-9 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2694785   0.2461189   0.2928381
6-9 months     NIH-Crypto   BANGLADESH                     >5%                  NA                0.2637148   0.2440235   0.2834060
6-9 months     PROVIDE      BANGLADESH                     0%                   NA                0.2447255   0.2261991   0.2632519
6-9 months     PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.2574386   0.2424414   0.2724358
6-9 months     PROVIDE      BANGLADESH                     >5%                  NA                0.2449545   0.2176918   0.2722173
9-12 months    CMIN         BANGLADESH                     0%                   NA                0.1840647   0.1486667   0.2194626
9-12 months    CMIN         BANGLADESH                     (0%, 5%]             NA                0.1526279   0.0935602   0.2116957
9-12 months    CMIN         BANGLADESH                     >5%                  NA                0.1592422   0.1237855   0.1946988
9-12 months    CONTENT      PERU                           0%                   NA                0.2122694   0.1882750   0.2362638
9-12 months    CONTENT      PERU                           (0%, 5%]             NA                0.2470639   0.2087620   0.2853658
9-12 months    CONTENT      PERU                           >5%                  NA                0.2254028   0.1866721   0.2641334
9-12 months    MAL-ED       BANGLADESH                     0%                   NA                0.1782978   0.1540978   0.2024979
9-12 months    MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1725665   0.1488822   0.1962507
9-12 months    MAL-ED       BANGLADESH                     >5%                  NA                0.1683567   0.1438742   0.1928392
9-12 months    MAL-ED       INDIA                          0%                   NA                0.1771199   0.1495758   0.2046640
9-12 months    MAL-ED       INDIA                          (0%, 5%]             NA                0.1636326   0.1435966   0.1836686
9-12 months    MAL-ED       INDIA                          >5%                  NA                0.2053295   0.1777332   0.2329259
9-12 months    MAL-ED       NEPAL                          0%                   NA                0.1735378   0.1416903   0.2053854
9-12 months    MAL-ED       NEPAL                          (0%, 5%]             NA                0.1948428   0.1720641   0.2176215
9-12 months    MAL-ED       NEPAL                          >5%                  NA                0.1832318   0.1629839   0.2034796
9-12 months    MAL-ED       PERU                           0%                   NA                0.1672594   0.1336370   0.2008818
9-12 months    MAL-ED       PERU                           (0%, 5%]             NA                0.1880375   0.1589738   0.2171013
9-12 months    MAL-ED       PERU                           >5%                  NA                0.1983337   0.1772735   0.2193940
9-12 months    MAL-ED       SOUTH AFRICA                   0%                   NA                0.2201382   0.1950872   0.2451891
9-12 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.1944508   0.1412736   0.2476280
9-12 months    MAL-ED       SOUTH AFRICA                   >5%                  NA                0.2078374   0.1416863   0.2739885
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1645752   0.1353718   0.1937785
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1762666   0.1417219   0.2108113
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1510235   0.0932116   0.2088355
9-12 months    NIH-Birth    BANGLADESH                     0%                   NA                0.1570683   0.1319640   0.1821726
9-12 months    NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.1874932   0.1659649   0.2090215
9-12 months    NIH-Birth    BANGLADESH                     >5%                  NA                0.1507157   0.1286173   0.1728141
9-12 months    NIH-Crypto   BANGLADESH                     0%                   NA                0.1992955   0.1832022   0.2153889
9-12 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1919304   0.1701899   0.2136709
9-12 months    NIH-Crypto   BANGLADESH                     >5%                  NA                0.2009201   0.1805633   0.2212769
9-12 months    PROVIDE      BANGLADESH                     0%                   NA                0.1857938   0.1670652   0.2045224
9-12 months    PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1680251   0.1546654   0.1813848
9-12 months    PROVIDE      BANGLADESH                     >5%                  NA                0.1789290   0.1619002   0.1959579
12-15 months   CMIN         BANGLADESH                     0%                   NA                0.1463231   0.1091887   0.1834575
12-15 months   CMIN         BANGLADESH                     (0%, 5%]             NA                0.1952525   0.1573830   0.2331220
12-15 months   CMIN         BANGLADESH                     >5%                  NA                0.1835461   0.1534840   0.2136083
12-15 months   CONTENT      PERU                           0%                   NA                0.1834336   0.1567862   0.2100809
12-15 months   CONTENT      PERU                           (0%, 5%]             NA                0.1547519   0.1272954   0.1822084
12-15 months   CONTENT      PERU                           >5%                  NA                0.1761548   0.1361397   0.2161700
12-15 months   MAL-ED       BANGLADESH                     0%                   NA                0.1463055   0.1131268   0.1794842
12-15 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1263336   0.1030262   0.1496410
12-15 months   MAL-ED       BANGLADESH                     >5%                  NA                0.1374412   0.1101393   0.1647431
12-15 months   MAL-ED       INDIA                          0%                   NA                0.1613985   0.1298222   0.1929747
12-15 months   MAL-ED       INDIA                          (0%, 5%]             NA                0.1807616   0.1588520   0.2026712
12-15 months   MAL-ED       INDIA                          >5%                  NA                0.1589344   0.1267305   0.1911383
12-15 months   MAL-ED       NEPAL                          0%                   NA                0.1675052   0.1332493   0.2017611
12-15 months   MAL-ED       NEPAL                          (0%, 5%]             NA                0.1522932   0.1277831   0.1768034
12-15 months   MAL-ED       NEPAL                          >5%                  NA                0.1479392   0.1204357   0.1754428
12-15 months   MAL-ED       PERU                           0%                   NA                0.1388045   0.1069142   0.1706947
12-15 months   MAL-ED       PERU                           (0%, 5%]             NA                0.1296205   0.1004604   0.1587806
12-15 months   MAL-ED       PERU                           >5%                  NA                0.1377568   0.1114519   0.1640617
12-15 months   MAL-ED       SOUTH AFRICA                   0%                   NA                0.1917794   0.1615235   0.2220353
12-15 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.1858713   0.1369802   0.2347624
12-15 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                0.1623198   0.0735474   0.2510922
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1681816   0.1345520   0.2018111
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1435459   0.0980389   0.1890528
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1892704   0.1327054   0.2458354
12-15 months   NIH-Birth    BANGLADESH                     0%                   NA                0.1268459   0.1025732   0.1511187
12-15 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.1092443   0.0885754   0.1299131
12-15 months   NIH-Birth    BANGLADESH                     >5%                  NA                0.1471783   0.1285169   0.1658396
12-15 months   NIH-Crypto   BANGLADESH                     0%                   NA                0.1590270   0.1421170   0.1759369
12-15 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1584036   0.1350098   0.1817973
12-15 months   NIH-Crypto   BANGLADESH                     >5%                  NA                0.1758824   0.1560461   0.1957188
12-15 months   PROVIDE      BANGLADESH                     0%                   NA                0.1773908   0.1582519   0.1965298
12-15 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1812921   0.1620627   0.2005214
12-15 months   PROVIDE      BANGLADESH                     >5%                  NA                0.1889907   0.1676548   0.2103266
15-18 months   CMIN         BANGLADESH                     0%                   NA                0.1382262   0.1031919   0.1732604
15-18 months   CMIN         BANGLADESH                     (0%, 5%]             NA                0.1705712   0.1266975   0.2144449
15-18 months   CMIN         BANGLADESH                     >5%                  NA                0.1091273   0.0712460   0.1470086
15-18 months   CONTENT      PERU                           0%                   NA                0.1689175   0.1390500   0.1987851
15-18 months   CONTENT      PERU                           (0%, 5%]             NA                0.1881558   0.1343327   0.2419789
15-18 months   CONTENT      PERU                           >5%                  NA                0.1615734   0.1279095   0.1952372
15-18 months   MAL-ED       BANGLADESH                     0%                   NA                0.1569217   0.1202489   0.1935946
15-18 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1365704   0.1142200   0.1589209
15-18 months   MAL-ED       BANGLADESH                     >5%                  NA                0.1361236   0.1047796   0.1674676
15-18 months   MAL-ED       INDIA                          0%                   NA                0.1698669   0.1383288   0.2014049
15-18 months   MAL-ED       INDIA                          (0%, 5%]             NA                0.1567410   0.1380160   0.1754660
15-18 months   MAL-ED       INDIA                          >5%                  NA                0.1720339   0.1382731   0.2057946
15-18 months   MAL-ED       NEPAL                          0%                   NA                0.1668201   0.1357485   0.1978917
15-18 months   MAL-ED       NEPAL                          (0%, 5%]             NA                0.1912142   0.1655880   0.2168404
15-18 months   MAL-ED       NEPAL                          >5%                  NA                0.1532066   0.1285425   0.1778706
15-18 months   MAL-ED       PERU                           0%                   NA                0.1260506   0.0886253   0.1634759
15-18 months   MAL-ED       PERU                           (0%, 5%]             NA                0.1477011   0.1111512   0.1842510
15-18 months   MAL-ED       PERU                           >5%                  NA                0.1587788   0.1308380   0.1867196
15-18 months   MAL-ED       SOUTH AFRICA                   0%                   NA                0.2177733   0.1833649   0.2521817
15-18 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.2410630   0.1889355   0.2931905
15-18 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                0.2472531   0.1659575   0.3285486
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1343574   0.0955693   0.1731455
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1605502   0.1265473   0.1945531
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1294447   0.0790628   0.1798266
15-18 months   NIH-Birth    BANGLADESH                     0%                   NA                0.1771178   0.1429107   0.2113248
15-18 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.1478427   0.1243890   0.1712963
15-18 months   NIH-Birth    BANGLADESH                     >5%                  NA                0.1384860   0.1160624   0.1609096
15-18 months   NIH-Crypto   BANGLADESH                     0%                   NA                0.1655300   0.1502947   0.1807653
15-18 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1753884   0.1494261   0.2013507
15-18 months   NIH-Crypto   BANGLADESH                     >5%                  NA                0.1438958   0.1257192   0.1620724
15-18 months   PROVIDE      BANGLADESH                     0%                   NA                0.1617752   0.1412154   0.1823350
15-18 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1546382   0.1363754   0.1729010
15-18 months   PROVIDE      BANGLADESH                     >5%                  NA                0.1548011   0.1339561   0.1756460
18-21 months   CMIN         BANGLADESH                     0%                   NA                0.1452873   0.1049693   0.1856053
18-21 months   CMIN         BANGLADESH                     (0%, 5%]             NA                0.1569478   0.1094531   0.2044424
18-21 months   CMIN         BANGLADESH                     >5%                  NA                0.1765937   0.1362377   0.2169498
18-21 months   CONTENT      PERU                           0%                   NA                0.1784466   0.1527838   0.2041095
18-21 months   CONTENT      PERU                           (0%, 5%]             NA                0.2068187   0.1611315   0.2525058
18-21 months   CONTENT      PERU                           >5%                  NA                0.2051157   0.1722156   0.2380158
18-21 months   MAL-ED       BANGLADESH                     0%                   NA                0.1262875   0.0959307   0.1566444
18-21 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1309816   0.1049007   0.1570625
18-21 months   MAL-ED       BANGLADESH                     >5%                  NA                0.1731770   0.1407904   0.2055635
18-21 months   MAL-ED       INDIA                          0%                   NA                0.1658854   0.1247477   0.2070232
18-21 months   MAL-ED       INDIA                          (0%, 5%]             NA                0.1793515   0.1619739   0.1967292
18-21 months   MAL-ED       INDIA                          >5%                  NA                0.1664236   0.1347776   0.1980695
18-21 months   MAL-ED       NEPAL                          0%                   NA                0.1390390   0.1024874   0.1755907
18-21 months   MAL-ED       NEPAL                          (0%, 5%]             NA                0.1300911   0.0985976   0.1615846
18-21 months   MAL-ED       NEPAL                          >5%                  NA                0.1693380   0.1421066   0.1965694
18-21 months   MAL-ED       PERU                           0%                   NA                0.1975598   0.1636864   0.2314333
18-21 months   MAL-ED       PERU                           (0%, 5%]             NA                0.1364372   0.1005042   0.1723703
18-21 months   MAL-ED       PERU                           >5%                  NA                0.1604340   0.1300144   0.1908537
18-21 months   MAL-ED       SOUTH AFRICA                   0%                   NA                0.1696191   0.1370158   0.2022223
18-21 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.2136732   0.1680203   0.2593261
18-21 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                0.1180254   0.0410073   0.1950436
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1384909   0.0975408   0.1794410
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1477729   0.1090503   0.1864955
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1324329   0.0674534   0.1974123
18-21 months   NIH-Birth    BANGLADESH                     0%                   NA                0.1467767   0.1151254   0.1784280
18-21 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.1801435   0.1516994   0.2085875
18-21 months   NIH-Birth    BANGLADESH                     >5%                  NA                0.1832990   0.1578531   0.2087449
18-21 months   NIH-Crypto   BANGLADESH                     0%                   NA                0.1349087   0.1192598   0.1505576
18-21 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1244360   0.1010688   0.1478033
18-21 months   NIH-Crypto   BANGLADESH                     >5%                  NA                0.1600308   0.1396633   0.1803983
18-21 months   PROVIDE      BANGLADESH                     0%                   NA                0.1363568   0.1132085   0.1595052
18-21 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1314538   0.1131277   0.1497798
18-21 months   PROVIDE      BANGLADESH                     >5%                  NA                0.1283228   0.1094640   0.1471816
21-24 months   CMIN         BANGLADESH                     0%                   NA                0.1711515   0.1387646   0.2035385
21-24 months   CMIN         BANGLADESH                     (0%, 5%]             NA                0.1778858   0.1214143   0.2343573
21-24 months   CMIN         BANGLADESH                     >5%                  NA                0.1622835   0.1206989   0.2038682
21-24 months   CONTENT      PERU                           0%                   NA                0.2353121   0.1731305   0.2974937
21-24 months   CONTENT      PERU                           (0%, 5%]             NA                0.2030282   0.0889858   0.3170707
21-24 months   CONTENT      PERU                           >5%                  NA                0.1216049   0.0339684   0.2092414
21-24 months   MAL-ED       BANGLADESH                     0%                   NA                0.1635941   0.1370629   0.1901254
21-24 months   MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1637668   0.1381060   0.1894276
21-24 months   MAL-ED       BANGLADESH                     >5%                  NA                0.1267893   0.0990246   0.1545540
21-24 months   MAL-ED       INDIA                          0%                   NA                0.1545485   0.1277461   0.1813510
21-24 months   MAL-ED       INDIA                          (0%, 5%]             NA                0.1672034   0.1490412   0.1853656
21-24 months   MAL-ED       INDIA                          >5%                  NA                0.1360521   0.1085986   0.1635056
21-24 months   MAL-ED       NEPAL                          0%                   NA                0.1835233   0.1449441   0.2221024
21-24 months   MAL-ED       NEPAL                          (0%, 5%]             NA                0.1527154   0.1162219   0.1892089
21-24 months   MAL-ED       NEPAL                          >5%                  NA                0.1656475   0.1340492   0.1972458
21-24 months   MAL-ED       PERU                           0%                   NA                0.1892920   0.1558367   0.2227473
21-24 months   MAL-ED       PERU                           (0%, 5%]             NA                0.1926679   0.1507762   0.2345596
21-24 months   MAL-ED       PERU                           >5%                  NA                0.1695330   0.1379207   0.2011453
21-24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                0.1889315   0.1595987   0.2182644
21-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.1849365   0.1441258   0.2257473
21-24 months   MAL-ED       SOUTH AFRICA                   >5%                  NA                0.1782671   0.1027463   0.2537879
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1709457   0.1340495   0.2078418
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1204492   0.0730115   0.1678870
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.0892545   0.0133071   0.1652020
21-24 months   NIH-Birth    BANGLADESH                     0%                   NA                0.1370346   0.1064355   0.1676337
21-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             NA                0.1365295   0.1066414   0.1664177
21-24 months   NIH-Birth    BANGLADESH                     >5%                  NA                0.1478867   0.1259532   0.1698203
21-24 months   NIH-Crypto   BANGLADESH                     0%                   NA                0.1968748   0.1799529   0.2137967
21-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1601411   0.1343183   0.1859638
21-24 months   NIH-Crypto   BANGLADESH                     >5%                  NA                0.1484918   0.1232124   0.1737713
21-24 months   PROVIDE      BANGLADESH                     0%                   NA                0.1225847   0.0996243   0.1455450
21-24 months   PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1448468   0.1286255   0.1610681
21-24 months   PROVIDE      BANGLADESH                     >5%                  NA                0.1492390   0.1292647   0.1692133


### Parameter: E(Y)


agecat         studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMIN         BANGLADESH                     NA                   NA                0.8569936   0.7917724   0.9222149
0-3 months     CONTENT      PERU                           NA                   NA                1.1349624   1.0553477   1.2145771
0-3 months     MAL-ED       BANGLADESH                     NA                   NA                0.8787293   0.8556572   0.9018013
0-3 months     MAL-ED       INDIA                          NA                   NA                0.7594406   0.7372368   0.7816445
0-3 months     MAL-ED       NEPAL                          NA                   NA                0.9569501   0.9301779   0.9837223
0-3 months     MAL-ED       PERU                           NA                   NA                0.9700715   0.9450349   0.9951081
0-3 months     MAL-ED       SOUTH AFRICA                   NA                   NA                0.9407758   0.9143190   0.9672326
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     NIH-Birth    BANGLADESH                     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     NIH-Crypto   BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROVIDE      BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
3-6 months     CMIN         BANGLADESH                     NA                   NA                0.4485689   0.4253428   0.4717949
3-6 months     CONTENT      PERU                           NA                   NA                0.5883623   0.5672770   0.6094476
3-6 months     MAL-ED       BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     MAL-ED       INDIA                          NA                   NA                0.4452214   0.4276818   0.4627610
3-6 months     MAL-ED       NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     MAL-ED       PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     MAL-ED       SOUTH AFRICA                   NA                   NA                0.4655071   0.4396676   0.4913465
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     NIH-Birth    BANGLADESH                     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     NIH-Crypto   BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROVIDE      BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
6-9 months     CMIN         BANGLADESH                     NA                   NA                0.2261421   0.2058904   0.2463939
6-9 months     CONTENT      PERU                           NA                   NA                0.3201718   0.3007014   0.3396422
6-9 months     MAL-ED       BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     MAL-ED       INDIA                          NA                   NA                0.2318230   0.2168658   0.2467803
6-9 months     MAL-ED       NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     MAL-ED       PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     MAL-ED       SOUTH AFRICA                   NA                   NA                0.2593884   0.2383337   0.2804432
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     NIH-Birth    BANGLADESH                     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     NIH-Crypto   BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROVIDE      BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
9-12 months    CMIN         BANGLADESH                     NA                   NA                0.1656112   0.1427254   0.1884969
9-12 months    CONTENT      PERU                           NA                   NA                0.2245187   0.2063866   0.2426509
9-12 months    MAL-ED       BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    MAL-ED       INDIA                          NA                   NA                0.1788440   0.1647878   0.1929001
9-12 months    MAL-ED       NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    MAL-ED       PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    MAL-ED       SOUTH AFRICA                   NA                   NA                0.2146445   0.1925652   0.2367238
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    NIH-Birth    BANGLADESH                     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    NIH-Crypto   BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROVIDE      BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
12-15 months   CMIN         BANGLADESH                     NA                   NA                0.1724766   0.1525587   0.1923945
12-15 months   CONTENT      PERU                           NA                   NA                0.1810771   0.1624014   0.1997528
12-15 months   MAL-ED       BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   MAL-ED       INDIA                          NA                   NA                0.1739561   0.1580675   0.1898447
12-15 months   MAL-ED       NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   MAL-ED       PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   MAL-ED       SOUTH AFRICA                   NA                   NA                0.1894245   0.1641813   0.2146678
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   NIH-Birth    BANGLADESH                     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROVIDE      BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
15-18 months   CMIN         BANGLADESH                     NA                   NA                0.1334837   0.1109948   0.1559725
15-18 months   CONTENT      PERU                           NA                   NA                0.1711673   0.1527815   0.1895531
15-18 months   MAL-ED       BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   MAL-ED       INDIA                          NA                   NA                0.1625746   0.1476285   0.1775207
15-18 months   MAL-ED       NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   MAL-ED       PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   MAL-ED       SOUTH AFRICA                   NA                   NA                0.2236104   0.1952383   0.2519826
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   NIH-Birth    BANGLADESH                     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROVIDE      BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
18-21 months   CMIN         BANGLADESH                     NA                   NA                0.1616853   0.1379134   0.1854572
18-21 months   CONTENT      PERU                           NA                   NA                0.1921646   0.1732990   0.2110302
18-21 months   MAL-ED       BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   MAL-ED       INDIA                          NA                   NA                0.1726665   0.1577530   0.1875800
18-21 months   MAL-ED       NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   MAL-ED       PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   MAL-ED       SOUTH AFRICA                   NA                   NA                0.1770799   0.1505223   0.2036374
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   NIH-Birth    BANGLADESH                     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROVIDE      BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
21-24 months   CMIN         BANGLADESH                     NA                   NA                0.1663610   0.1425615   0.1901605
21-24 months   CONTENT      PERU                           NA                   NA                0.2054267   0.1563552   0.2544983
21-24 months   MAL-ED       BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   MAL-ED       INDIA                          NA                   NA                0.1562703   0.1431057   0.1694349
21-24 months   MAL-ED       NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   MAL-ED       PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   MAL-ED       SOUTH AFRICA                   NA                   NA                0.1876561   0.1639063   0.2114059
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   NIH-Birth    BANGLADESH                     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROVIDE      BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075


### Parameter: ATE


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0445098   -0.2067162    0.1176967
0-3 months     CMIN         BANGLADESH                     >5%                  0%                -0.1318538   -0.3133578    0.0496501
0-3 months     CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     CONTENT      PERU                           (0%, 5%]             0%                -0.0964007   -0.2470364    0.0542350
0-3 months     CONTENT      PERU                           >5%                  0%                 0.0414494   -0.1777446    0.2606434
0-3 months     MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0119533   -0.0455512    0.0694577
0-3 months     MAL-ED       BANGLADESH                     >5%                  0%                 0.0264558   -0.0329671    0.0858788
0-3 months     MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       INDIA                          (0%, 5%]             0%                 0.0376625   -0.0206558    0.0959807
0-3 months     MAL-ED       INDIA                          >5%                  0%                 0.0112915   -0.0558410    0.0784241
0-3 months     MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0045151   -0.0603551    0.0693852
0-3 months     MAL-ED       NEPAL                          >5%                  0%                 0.0211273   -0.0472895    0.0895440
0-3 months     MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU                           (0%, 5%]             0%                 0.0140284   -0.0514727    0.0795295
0-3 months     MAL-ED       PERU                           >5%                  0%                 0.0373277   -0.0236189    0.0982744
0-3 months     MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0275156   -0.0352703    0.0903015
0-3 months     MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1376413   -0.0064690    0.2817516
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0260245   -0.0450324    0.0970813
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0620082   -0.0187622    0.1427786
0-3 months     NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0181454   -0.0282826    0.0645733
0-3 months     NIH-Birth    BANGLADESH                     >5%                  0%                 0.0123001   -0.0260123    0.0506124
0-3 months     NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0146896   -0.0535235    0.0241443
0-3 months     NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0022307   -0.0370727    0.0326112
0-3 months     PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0152258   -0.0218536    0.0523052
0-3 months     PROVIDE      BANGLADESH                     >5%                  0%                 0.0232003   -0.0166180    0.0630186
3-6 months     CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0033518   -0.0730936    0.0663900
3-6 months     CMIN         BANGLADESH                     >5%                  0%                -0.0059801   -0.0592821    0.0473219
3-6 months     CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     CONTENT      PERU                           (0%, 5%]             0%                 0.0588898    0.0046875    0.1130921
3-6 months     CONTENT      PERU                           >5%                  0%                 0.0309861   -0.0241052    0.0860774
3-6 months     MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0158055   -0.0535620    0.0219510
3-6 months     MAL-ED       BANGLADESH                     >5%                  0%                -0.0087043   -0.0547398    0.0373312
3-6 months     MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA                          (0%, 5%]             0%                -0.0127490   -0.0563791    0.0308812
3-6 months     MAL-ED       INDIA                          >5%                  0%                -0.0147712   -0.0682718    0.0387295
3-6 months     MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0158707   -0.0306165    0.0623579
3-6 months     MAL-ED       NEPAL                          >5%                  0%                 0.0153092   -0.0321322    0.0627506
3-6 months     MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU                           (0%, 5%]             0%                -0.0130892   -0.0627913    0.0366130
3-6 months     MAL-ED       PERU                           >5%                  0%                 0.0202891   -0.0265858    0.0671640
3-6 months     MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0812421   -0.1437111   -0.0187732
3-6 months     MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0800344   -0.1877268    0.0276579
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0570470    0.0010047    0.1130894
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0376977   -0.0256804    0.1010757
3-6 months     NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0154826   -0.0350534    0.0660187
3-6 months     NIH-Birth    BANGLADESH                     >5%                  0%                -0.0175223   -0.0584004    0.0233558
3-6 months     NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0140863   -0.0136587    0.0418313
3-6 months     NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0238539   -0.0049073    0.0526152
3-6 months     PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0029945   -0.0290826    0.0230935
3-6 months     PROVIDE      BANGLADESH                     >5%                  0%                 0.0423736    0.0083450    0.0764023
6-9 months     CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     CMIN         BANGLADESH                     (0%, 5%]             0%                 0.0228124   -0.0318062    0.0774310
6-9 months     CMIN         BANGLADESH                     >5%                  0%                 0.0217475   -0.0238226    0.0673176
6-9 months     CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     CONTENT      PERU                           (0%, 5%]             0%                 0.0084398   -0.0439411    0.0608207
6-9 months     CONTENT      PERU                           >5%                  0%                 0.0281401   -0.0183572    0.0746374
6-9 months     MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0179329   -0.0184495    0.0543153
6-9 months     MAL-ED       BANGLADESH                     >5%                  0%                 0.0311387   -0.0035268    0.0658042
6-9 months     MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA                          (0%, 5%]             0%                 0.0170839   -0.0182249    0.0523928
6-9 months     MAL-ED       INDIA                          >5%                  0%                 0.0153686   -0.0301728    0.0609099
6-9 months     MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0156127   -0.0197453    0.0509707
6-9 months     MAL-ED       NEPAL                          >5%                  0%                -0.0039551   -0.0397765    0.0318662
6-9 months     MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU                           (0%, 5%]             0%                 0.0290216   -0.0153153    0.0733585
6-9 months     MAL-ED       PERU                           >5%                  0%                 0.0338825   -0.0018191    0.0695840
6-9 months     MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0190843   -0.0376801    0.0758487
6-9 months     MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0480457   -0.0975546    0.1936459
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0658944   -0.1219406   -0.0098481
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0229528   -0.0897051    0.0437995
6-9 months     NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0042625   -0.0423428    0.0338179
6-9 months     NIH-Birth    BANGLADESH                     >5%                  0%                -0.0031217   -0.0412383    0.0349949
6-9 months     NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0039350   -0.0243596    0.0322295
6-9 months     NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0018287   -0.0269763    0.0233188
6-9 months     PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0127131   -0.0108471    0.0362733
6-9 months     PROVIDE      BANGLADESH                     >5%                  0%                 0.0002290   -0.0326629    0.0331210
9-12 months    CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    CMIN         BANGLADESH                     (0%, 5%]             0%                -0.0314368   -0.1004972    0.0376237
9-12 months    CMIN         BANGLADESH                     >5%                  0%                -0.0248225   -0.0752278    0.0255828
9-12 months    CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    CONTENT      PERU                           (0%, 5%]             0%                 0.0347945   -0.0101388    0.0797278
9-12 months    CONTENT      PERU                           >5%                  0%                 0.0131334   -0.0320333    0.0583002
9-12 months    MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0057314   -0.0395591    0.0280963
9-12 months    MAL-ED       BANGLADESH                     >5%                  0%                -0.0099411   -0.0444047    0.0245224
9-12 months    MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA                          (0%, 5%]             0%                -0.0134873   -0.0476254    0.0206509
9-12 months    MAL-ED       INDIA                          >5%                  0%                 0.0282097   -0.0107617    0.0671810
9-12 months    MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0213050   -0.0178365    0.0604465
9-12 months    MAL-ED       NEPAL                          >5%                  0%                 0.0096939   -0.0279828    0.0473707
9-12 months    MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU                           (0%, 5%]             0%                 0.0207781   -0.0237035    0.0652598
9-12 months    MAL-ED       PERU                           >5%                  0%                 0.0310744   -0.0087110    0.0708597
9-12 months    MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0256873   -0.0844697    0.0330950
9-12 months    MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0123008   -0.0830363    0.0584348
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0116915   -0.0337678    0.0571507
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0135516   -0.0786413    0.0515381
9-12 months    NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0304249   -0.0026709    0.0635207
9-12 months    NIH-Birth    BANGLADESH                     >5%                  0%                -0.0063526   -0.0398222    0.0271171
9-12 months    NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0073651   -0.0342620    0.0195317
9-12 months    NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0016246   -0.0243276    0.0275768
9-12 months    PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0177687   -0.0406768    0.0051395
9-12 months    PROVIDE      BANGLADESH                     >5%                  0%                -0.0068647   -0.0320859    0.0183564
12-15 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   CMIN         BANGLADESH                     (0%, 5%]             0%                 0.0489294   -0.0041424    0.1020012
12-15 months   CMIN         BANGLADESH                     >5%                  0%                 0.0372230   -0.0106830    0.0851290
12-15 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   CONTENT      PERU                           (0%, 5%]             0%                -0.0286817   -0.0667036    0.0093403
12-15 months   CONTENT      PERU                           >5%                  0%                -0.0072787   -0.0552241    0.0406666
12-15 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0199719   -0.0605805    0.0206367
12-15 months   MAL-ED       BANGLADESH                     >5%                  0%                -0.0088643   -0.0518063    0.0340777
12-15 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA                          (0%, 5%]             0%                 0.0193632   -0.0191488    0.0578751
12-15 months   MAL-ED       INDIA                          >5%                  0%                -0.0024641   -0.0473399    0.0424117
12-15 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0152120   -0.0573571    0.0269331
12-15 months   MAL-ED       NEPAL                          >5%                  0%                -0.0195660   -0.0634863    0.0243543
12-15 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU                           (0%, 5%]             0%                -0.0091840   -0.0524194    0.0340515
12-15 months   MAL-ED       PERU                           >5%                  0%                -0.0010477   -0.0425703    0.0404750
12-15 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0059081   -0.0634039    0.0515877
12-15 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0294596   -0.1232464    0.0643272
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0246357   -0.0812414    0.0319700
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0210888   -0.0447014    0.0868790
12-15 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0176017   -0.0493408    0.0141375
12-15 months   NIH-Birth    BANGLADESH                     >5%                  0%                 0.0203323   -0.0100901    0.0507548
12-15 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0006234   -0.0294917    0.0282449
12-15 months   NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0168555   -0.0091942    0.0429052
12-15 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0039012   -0.0232503    0.0310527
12-15 months   PROVIDE      BANGLADESH                     >5%                  0%                 0.0115999   -0.0170868    0.0402865
15-18 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   CMIN         BANGLADESH                     (0%, 5%]             0%                 0.0323450   -0.0239758    0.0886659
15-18 months   CMIN         BANGLADESH                     >5%                  0%                -0.0290989   -0.0807728    0.0225751
15-18 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   CONTENT      PERU                           (0%, 5%]             0%                 0.0192382   -0.0476035    0.0860800
15-18 months   CONTENT      PERU                           >5%                  0%                -0.0073442   -0.0500295    0.0353411
15-18 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0203513   -0.0645733    0.0238706
15-18 months   MAL-ED       BANGLADESH                     >5%                  0%                -0.0207981   -0.0709397    0.0293434
15-18 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA                          (0%, 5%]             0%                -0.0131259   -0.0494417    0.0231899
15-18 months   MAL-ED       INDIA                          >5%                  0%                 0.0021670   -0.0435854    0.0479194
15-18 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0243941   -0.0157517    0.0645399
15-18 months   MAL-ED       NEPAL                          >5%                  0%                -0.0136135   -0.0532048    0.0259778
15-18 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.0216505   -0.0304724    0.0737734
15-18 months   MAL-ED       PERU                           >5%                  0%                 0.0327282   -0.0140192    0.0794757
15-18 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0232897   -0.0391700    0.0857494
15-18 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0294798   -0.0587977    0.1177572
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0261928   -0.0254140    0.0777996
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0049127   -0.0685148    0.0586893
15-18 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0292751   -0.0709285    0.0123783
15-18 months   NIH-Birth    BANGLADESH                     >5%                  0%                -0.0386318   -0.0797521    0.0024885
15-18 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0098584   -0.0202456    0.0399625
15-18 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0216342   -0.0453495    0.0020812
15-18 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0071369   -0.0343309    0.0200570
15-18 months   PROVIDE      BANGLADESH                     >5%                  0%                -0.0069741   -0.0357268    0.0217786
18-21 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   CMIN         BANGLADESH                     (0%, 5%]             0%                 0.0116605   -0.0513166    0.0746375
18-21 months   CMIN         BANGLADESH                     >5%                  0%                 0.0313064   -0.0264091    0.0890219
18-21 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   CONTENT      PERU                           (0%, 5%]             0%                 0.0283721   -0.0234044    0.0801485
18-21 months   CONTENT      PERU                           >5%                  0%                 0.0266691   -0.0148453    0.0681836
18-21 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0046941   -0.0354648    0.0448529
18-21 months   MAL-ED       BANGLADESH                     >5%                  0%                 0.0468894    0.0024785    0.0913004
18-21 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA                          (0%, 5%]             0%                 0.0134661   -0.0311545    0.0580867
18-21 months   MAL-ED       INDIA                          >5%                  0%                 0.0005381   -0.0513699    0.0524461
18-21 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0089479   -0.0580836    0.0401877
18-21 months   MAL-ED       NEPAL                          >5%                  0%                 0.0302990   -0.0154497    0.0760476
18-21 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU                           (0%, 5%]             0%                -0.0611226   -0.1107069   -0.0115383
18-21 months   MAL-ED       PERU                           >5%                  0%                -0.0371258   -0.0827531    0.0085015
18-21 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0440541   -0.0120454    0.1001537
18-21 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0515937   -0.1352284    0.0320411
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0092820   -0.0479062    0.0664702
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0060581   -0.0836629    0.0715467
18-21 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                 0.0333668   -0.0096442    0.0763777
18-21 months   NIH-Birth    BANGLADESH                     >5%                  0%                 0.0365223   -0.0042264    0.0772711
18-21 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0104726   -0.0387214    0.0177762
18-21 months   NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0251221   -0.0006901    0.0509344
18-21 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0049031   -0.0343729    0.0245667
18-21 months   PROVIDE      BANGLADESH                     >5%                  0%                -0.0080340   -0.0378280    0.0217600
21-24 months   CMIN         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   CMIN         BANGLADESH                     (0%, 5%]             0%                 0.0067343   -0.0581765    0.0716450
21-24 months   CMIN         BANGLADESH                     >5%                  0%                -0.0088680   -0.0615956    0.0438596
21-24 months   CONTENT      PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   CONTENT      PERU                           (0%, 5%]             0%                -0.0322839   -0.1621771    0.0976093
21-24 months   CONTENT      PERU                           >5%                  0%                -0.1137072   -0.2211628   -0.0062516
21-24 months   MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0001727   -0.0367756    0.0371210
21-24 months   MAL-ED       BANGLADESH                     >5%                  0%                -0.0368048   -0.0752798    0.0016702
21-24 months   MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA                          (0%, 5%]             0%                 0.0126548   -0.0197421    0.0450518
21-24 months   MAL-ED       INDIA                          >5%                  0%                -0.0184965   -0.0569505    0.0199575
21-24 months   MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0308079   -0.0840858    0.0224699
21-24 months   MAL-ED       NEPAL                          >5%                  0%                -0.0178758   -0.0680160    0.0322644
21-24 months   MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU                           (0%, 5%]             0%                 0.0033759   -0.0503993    0.0571511
21-24 months   MAL-ED       PERU                           >5%                  0%                -0.0197590   -0.0656591    0.0261411
21-24 months   MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0039950   -0.0542537    0.0462637
21-24 months   MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0106644   -0.0916817    0.0703530
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0504964   -0.1112947    0.0103018
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0816911   -0.1663003    0.0029181
21-24 months   NIH-Birth    BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]             0%                -0.0005051   -0.0433154    0.0423053
21-24 months   NIH-Birth    BANGLADESH                     >5%                  0%                 0.0108521   -0.0268300    0.0485343
21-24 months   NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0367337   -0.0675775   -0.0058899
21-24 months   NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0483829   -0.0790126   -0.0177533
21-24 months   PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0222621   -0.0053285    0.0498527
21-24 months   PROVIDE      BANGLADESH                     >5%                  0%                 0.0266544   -0.0033744    0.0566831


### Parameter: PAR


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMIN         BANGLADESH                     0%                   NA                -0.0478198   -0.1415105    0.0458709
0-3 months     CONTENT      PERU                           0%                   NA                -0.0099399   -0.0819699    0.0620900
0-3 months     MAL-ED       BANGLADESH                     0%                   NA                 0.0123374   -0.0244823    0.0491571
0-3 months     MAL-ED       INDIA                          0%                   NA                 0.0234117   -0.0206484    0.0674717
0-3 months     MAL-ED       NEPAL                          0%                   NA                 0.0105912   -0.0282776    0.0494600
0-3 months     MAL-ED       PERU                           0%                   NA                 0.0195521   -0.0223281    0.0614324
0-3 months     MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0112929   -0.0041471    0.0267330
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0212161   -0.0169844    0.0594166
0-3 months     NIH-Birth    BANGLADESH                     0%                   NA                 0.0112504   -0.0164537    0.0389544
0-3 months     NIH-Crypto   BANGLADESH                     0%                   NA                -0.0028231   -0.0182011    0.0125549
0-3 months     PROVIDE      BANGLADESH                     0%                   NA                 0.0136674   -0.0114522    0.0387870
3-6 months     CMIN         BANGLADESH                     0%                   NA                -0.0002356   -0.0345441    0.0340730
3-6 months     CONTENT      PERU                           0%                   NA                 0.0157243   -0.0042141    0.0356628
3-6 months     MAL-ED       BANGLADESH                     0%                   NA                -0.0090377   -0.0336375    0.0155621
3-6 months     MAL-ED       INDIA                          0%                   NA                -0.0097083   -0.0428032    0.0233867
3-6 months     MAL-ED       NEPAL                          0%                   NA                 0.0154510   -0.0110964    0.0419985
3-6 months     MAL-ED       PERU                           0%                   NA                 0.0044631   -0.0275789    0.0365052
3-6 months     MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0203544   -0.0355346   -0.0051741
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0287084    0.0005377    0.0568790
3-6 months     NIH-Birth    BANGLADESH                     0%                   NA                -0.0007474   -0.0309125    0.0294177
3-6 months     NIH-Crypto   BANGLADESH                     0%                   NA                 0.0102179   -0.0016942    0.0221299
3-6 months     PROVIDE      BANGLADESH                     0%                   NA                 0.0118928   -0.0066254    0.0304111
6-9 months     CMIN         BANGLADESH                     0%                   NA                 0.0160397   -0.0121476    0.0442271
6-9 months     CONTENT      PERU                           0%                   NA                 0.0114565   -0.0068386    0.0297517
6-9 months     MAL-ED       BANGLADESH                     0%                   NA                 0.0162461   -0.0053060    0.0377982
6-9 months     MAL-ED       INDIA                          0%                   NA                 0.0090760   -0.0177415    0.0358935
6-9 months     MAL-ED       NEPAL                          0%                   NA                -0.0006603   -0.0207675    0.0194468
6-9 months     MAL-ED       PERU                           0%                   NA                 0.0232634   -0.0026748    0.0492016
6-9 months     MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0054643   -0.0072841    0.0182127
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0299756   -0.0585840   -0.0013671
6-9 months     NIH-Birth    BANGLADESH                     0%                   NA                -0.0032357   -0.0300899    0.0236185
6-9 months     NIH-Crypto   BANGLADESH                     0%                   NA                 0.0019662   -0.0090778    0.0130102
6-9 months     PROVIDE      BANGLADESH                     0%                   NA                 0.0044398   -0.0130286    0.0219082
9-12 months    CMIN         BANGLADESH                     0%                   NA                -0.0184535   -0.0506868    0.0137797
9-12 months    CONTENT      PERU                           0%                   NA                 0.0122494   -0.0042645    0.0287632
9-12 months    MAL-ED       BANGLADESH                     0%                   NA                -0.0052632   -0.0259004    0.0153740
9-12 months    MAL-ED       INDIA                          0%                   NA                 0.0017241   -0.0241171    0.0275653
9-12 months    MAL-ED       NEPAL                          0%                   NA                 0.0124542   -0.0114300    0.0363383
9-12 months    MAL-ED       PERU                           0%                   NA                 0.0202213   -0.0085995    0.0490421
9-12 months    MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0054937   -0.0177749    0.0067875
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0023136   -0.0211364    0.0257637
9-12 months    NIH-Birth    BANGLADESH                     0%                   NA                 0.0065530   -0.0158923    0.0289984
9-12 months    NIH-Crypto   BANGLADESH                     0%                   NA                -0.0014507   -0.0130810    0.0101797
9-12 months    PROVIDE      BANGLADESH                     0%                   NA                -0.0082622   -0.0242047    0.0076804
12-15 months   CMIN         BANGLADESH                     0%                   NA                 0.0261535   -0.0031737    0.0554807
12-15 months   CONTENT      PERU                           0%                   NA                -0.0023565   -0.0195701    0.0148570
12-15 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0109469   -0.0374242    0.0155305
12-15 months   MAL-ED       INDIA                          0%                   NA                 0.0125576   -0.0166485    0.0417638
12-15 months   MAL-ED       NEPAL                          0%                   NA                -0.0148113   -0.0406610    0.0110383
12-15 months   MAL-ED       PERU                           0%                   NA                 0.0029345   -0.0255773    0.0314464
12-15 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0023549   -0.0151397    0.0104300
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0087376   -0.0364242    0.0189490
12-15 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0036603   -0.0175299    0.0248505
12-15 months   NIH-Crypto   BANGLADESH                     0%                   NA                 0.0050333   -0.0067819    0.0168485
12-15 months   PROVIDE      BANGLADESH                     0%                   NA                 0.0026415   -0.0150414    0.0203244
15-18 months   CMIN         BANGLADESH                     0%                   NA                -0.0047425   -0.0340286    0.0245436
15-18 months   CONTENT      PERU                           0%                   NA                 0.0022497   -0.0177373    0.0222368
15-18 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0141335   -0.0446074    0.0163403
15-18 months   MAL-ED       INDIA                          0%                   NA                -0.0072923   -0.0351992    0.0206146
15-18 months   MAL-ED       NEPAL                          0%                   NA                 0.0066709   -0.0173342    0.0306760
15-18 months   MAL-ED       PERU                           0%                   NA                 0.0201383   -0.0130355    0.0533121
15-18 months   MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0058371   -0.0079227    0.0195969
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0084448   -0.0190952    0.0359848
15-18 months   NIH-Birth    BANGLADESH                     0%                   NA                -0.0241335   -0.0532293    0.0049623
15-18 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0043327   -0.0153028    0.0066374
15-18 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0054237   -0.0231783    0.0123308
18-21 months   CMIN         BANGLADESH                     0%                   NA                 0.0163980   -0.0189040    0.0516999
18-21 months   CONTENT      PERU                           0%                   NA                 0.0137180   -0.0042276    0.0316635
18-21 months   MAL-ED       BANGLADESH                     0%                   NA                 0.0164271   -0.0095572    0.0424114
18-21 months   MAL-ED       INDIA                          0%                   NA                 0.0067810   -0.0279233    0.0414854
18-21 months   MAL-ED       NEPAL                          0%                   NA                 0.0084607   -0.0201684    0.0370898
18-21 months   MAL-ED       PERU                           0%                   NA                -0.0359946   -0.0659726   -0.0060166
18-21 months   MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0074608   -0.0059802    0.0209018
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0078629   -0.0230089    0.0387346
18-21 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0256625   -0.0029274    0.0542524
18-21 months   NIH-Crypto   BANGLADESH                     0%                   NA                 0.0077523   -0.0027237    0.0182282
18-21 months   PROVIDE      BANGLADESH                     0%                   NA                -0.0038687   -0.0234552    0.0157179
21-24 months   CMIN         BANGLADESH                     0%                   NA                -0.0047905   -0.0347388    0.0251577
21-24 months   CONTENT      PERU                           0%                   NA                -0.0298854   -0.0698104    0.0100396
21-24 months   MAL-ED       BANGLADESH                     0%                   NA                -0.0114786   -0.0341865    0.0112294
21-24 months   MAL-ED       INDIA                          0%                   NA                 0.0017218   -0.0226423    0.0260859
21-24 months   MAL-ED       NEPAL                          0%                   NA                -0.0144821   -0.0452830    0.0163189
21-24 months   MAL-ED       PERU                           0%                   NA                -0.0078249   -0.0383648    0.0227149
21-24 months   MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0012754   -0.0132336    0.0106828
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0296269   -0.0617869    0.0025331
21-24 months   NIH-Birth    BANGLADESH                     0%                   NA                 0.0049384   -0.0219695    0.0318464
21-24 months   NIH-Crypto   BANGLADESH                     0%                   NA                -0.0218247   -0.0332535   -0.0103960
21-24 months   PROVIDE      BANGLADESH                     0%                   NA                 0.0193858    0.0000509    0.0387207
