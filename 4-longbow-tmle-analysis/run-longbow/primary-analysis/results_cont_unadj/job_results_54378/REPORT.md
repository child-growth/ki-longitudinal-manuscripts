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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                 country                        perdiar6    n_cell     n
-------------  ----------------------  -----------------------------  ---------  -------  ----
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%              70   243
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        96   243
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             77   243
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0%             154   168
0-3 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        12   168
0-3 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   168
0-3 months     ki0047075b-MAL-ED       INDIA                          0%              38   183
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       101   183
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%             44   183
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%              54   156
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        45   156
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%             57   156
0-3 months     ki0047075b-MAL-ED       PERU                           0%              66   265
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        86   265
0-3 months     ki0047075b-MAL-ED       PERU                           >5%            113   265
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             160   211
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        43   211
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   211
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   228
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        91   228
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   228
0-3 months     ki1000109-EE            PAKISTAN                       0%             270   303
0-3 months     ki1000109-EE            PAKISTAN                       (0%, 5%]        31   303
0-3 months     ki1000109-EE            PAKISTAN                       >5%              2   303
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%             137   566
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       177   566
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            252   566
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%             172   640
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       258   640
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            210   640
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   721
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       169   721
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            211   721
0-3 months     ki1114097-CMIN          BANGLADESH                     0%              17    43
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        13    43
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%             13    43
0-3 months     ki1114097-CONTENT       PERU                           0%              16    29
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]         6    29
0-3 months     ki1114097-CONTENT       PERU                           >5%              7    29
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%              68   231
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        88   231
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             75   231
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0%             191   208
3-6 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   208
3-6 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   208
3-6 months     ki0047075b-MAL-ED       INDIA                          0%              49   230
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   230
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%             59   230
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%              78   233
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   233
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%             80   233
3-6 months     ki0047075b-MAL-ED       PERU                           0%              66   267
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        86   267
3-6 months     ki0047075b-MAL-ED       PERU                           >5%            115   267
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             182   243
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        53   243
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   243
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             101   239
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        94   239
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             44   239
3-6 months     ki1000109-EE            PAKISTAN                       0%             248   280
3-6 months     ki1000109-EE            PAKISTAN                       (0%, 5%]        30   280
3-6 months     ki1000109-EE            PAKISTAN                       >5%              2   280
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%             124   523
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       164   523
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            235   523
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%             155   598
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       245   598
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            198   598
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             331   695
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       164   695
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            200   695
3-6 months     ki1114097-CMIN          BANGLADESH                     0%              60   185
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        46   185
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%             79   185
3-6 months     ki1114097-CONTENT       PERU                           0%             115   214
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]        43   214
3-6 months     ki1114097-CONTENT       PERU                           >5%             56   214
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%              68   224
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   224
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             73   224
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0%             181   198
6-9 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   198
6-9 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   198
6-9 months     ki0047075b-MAL-ED       INDIA                          0%              49   230
6-9 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   230
6-9 months     ki0047075b-MAL-ED       INDIA                          >5%             59   230
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%              76   230
6-9 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   230
6-9 months     ki0047075b-MAL-ED       NEPAL                          >5%             78   230
6-9 months     ki0047075b-MAL-ED       PERU                           0%              61   245
6-9 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        79   245
6-9 months     ki0047075b-MAL-ED       PERU                           >5%            105   245
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             177   231
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   231
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   231
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   225
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        90   225
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   225
6-9 months     ki1000109-EE            PAKISTAN                       0%             274   304
6-9 months     ki1000109-EE            PAKISTAN                       (0%, 5%]        28   304
6-9 months     ki1000109-EE            PAKISTAN                       >5%              2   304
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%             120   498
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       156   498
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            222   498
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%             145   565
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       231   565
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            189   565
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             332   688
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       160   688
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            196   688
6-9 months     ki1114097-CMIN          BANGLADESH                     0%              56   177
6-9 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        41   177
6-9 months     ki1114097-CMIN          BANGLADESH                     >5%             80   177
6-9 months     ki1114097-CONTENT       PERU                           0%             115   214
6-9 months     ki1114097-CONTENT       PERU                           (0%, 5%]        43   214
6-9 months     ki1114097-CONTENT       PERU                           >5%             56   214
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%              67   225
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        86   225
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%             72   225
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0%             177   194
9-12 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   194
9-12 months    ki0047075b-MAL-ED       BRAZIL                         >5%              2   194
9-12 months    ki0047075b-MAL-ED       INDIA                          0%              46   227
9-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]       123   227
9-12 months    ki0047075b-MAL-ED       INDIA                          >5%             58   227
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%              76   229
9-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   229
9-12 months    ki0047075b-MAL-ED       NEPAL                          >5%             77   229
9-12 months    ki0047075b-MAL-ED       PERU                           0%              58   235
9-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]        77   235
9-12 months    ki0047075b-MAL-ED       PERU                           >5%            100   235
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%             179   233
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   233
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   233
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   224
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        87   224
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   224
9-12 months    ki1000109-EE            PAKISTAN                       0%             296   326
9-12 months    ki1000109-EE            PAKISTAN                       (0%, 5%]        28   326
9-12 months    ki1000109-EE            PAKISTAN                       >5%              2   326
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%             118   482
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       150   482
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            214   482
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%             148   566
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       226   566
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            192   566
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             330   674
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       155   674
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            189   674
9-12 months    ki1114097-CMIN          BANGLADESH                     0%              49   160
9-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        36   160
9-12 months    ki1114097-CMIN          BANGLADESH                     >5%             75   160
9-12 months    ki1114097-CONTENT       PERU                           0%             115   212
9-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]        41   212
9-12 months    ki1114097-CONTENT       PERU                           >5%             56   212
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%              63   212
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        84   212
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0%             167   184
12-15 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   184
12-15 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   184
12-15 months   ki0047075b-MAL-ED       INDIA                          0%              46   226
12-15 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       123   226
12-15 months   ki0047075b-MAL-ED       INDIA                          >5%             57   226
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%              77   230
12-15 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   230
12-15 months   ki0047075b-MAL-ED       NEPAL                          >5%             77   230
12-15 months   ki0047075b-MAL-ED       PERU                           0%              57   224
12-15 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        69   224
12-15 months   ki0047075b-MAL-ED       PERU                           >5%             98   224
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             173   228
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   228
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   228
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              97   226
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        86   226
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             43   226
12-15 months   ki1000109-EE            PAKISTAN                       0%             269   297
12-15 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        26   297
12-15 months   ki1000109-EE            PAKISTAN                       >5%              2   297
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%             114   461
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       145   461
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            202   461
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%             139   532
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       212   532
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            181   532
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             324   660
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       147   660
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            189   660
12-15 months   ki1114097-CMIN          BANGLADESH                     0%              54   160
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        36   160
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%             70   160
12-15 months   ki1114097-CONTENT       PERU                           0%             106   199
12-15 months   ki1114097-CONTENT       PERU                           (0%, 5%]        39   199
12-15 months   ki1114097-CONTENT       PERU                           >5%             54   199
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%              63   212
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        84   212
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0%             159   175
15-18 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        14   175
15-18 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   175
15-18 months   ki0047075b-MAL-ED       INDIA                          0%              48   226
15-18 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   226
15-18 months   ki0047075b-MAL-ED       INDIA                          >5%             56   226
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%              75   227
15-18 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   227
15-18 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   227
15-18 months   ki0047075b-MAL-ED       PERU                           0%              54   213
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        67   213
15-18 months   ki0047075b-MAL-ED       PERU                           >5%             92   213
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             171   225
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        45   225
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   225
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              93   217
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   217
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   217
15-18 months   ki1000109-EE            PAKISTAN                       0%             251   278
15-18 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        25   278
15-18 months   ki1000109-EE            PAKISTAN                       >5%              2   278
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%             112   449
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       138   449
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            199   449
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%             143   528
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       206   528
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            179   528
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             304   604
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       131   604
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            169   604
15-18 months   ki1114097-CMIN          BANGLADESH                     0%              59   163
15-18 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        40   163
15-18 months   ki1114097-CMIN          BANGLADESH                     >5%             64   163
15-18 months   ki1114097-CONTENT       PERU                           0%              98   189
15-18 months   ki1114097-CONTENT       PERU                           (0%, 5%]        38   189
15-18 months   ki1114097-CONTENT       PERU                           >5%             53   189
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%              63   209
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        82   209
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             64   209
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0%             152   167
18-21 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   167
18-21 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   167
18-21 months   ki0047075b-MAL-ED       INDIA                          0%              48   226
18-21 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   226
18-21 months   ki0047075b-MAL-ED       INDIA                          >5%             56   226
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%              75   227
18-21 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   227
18-21 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   227
18-21 months   ki0047075b-MAL-ED       PERU                           0%              54   202
18-21 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        65   202
18-21 months   ki0047075b-MAL-ED       PERU                           >5%             83   202
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             174   233
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        50   233
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   233
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              86   204
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        81   204
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             37   204
18-21 months   ki1000109-EE            PAKISTAN                       0%             229   254
18-21 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        23   254
18-21 months   ki1000109-EE            PAKISTAN                       >5%              2   254
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%             102   422
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       127   422
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            193   422
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%             143   541
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       218   541
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            180   541
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             289   546
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       112   546
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            145   546
18-21 months   ki1114097-CMIN          BANGLADESH                     0%              52   165
18-21 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        40   165
18-21 months   ki1114097-CMIN          BANGLADESH                     >5%             73   165
18-21 months   ki1114097-CONTENT       PERU                           0%              94   183
18-21 months   ki1114097-CONTENT       PERU                           (0%, 5%]        38   183
18-21 months   ki1114097-CONTENT       PERU                           >5%             51   183
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%              64   207
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        79   207
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             64   207
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0%             151   165
21-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        12   165
21-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   165
21-24 months   ki0047075b-MAL-ED       INDIA                          0%              48   226
21-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   226
21-24 months   ki0047075b-MAL-ED       INDIA                          >5%             56   226
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%              76   227
21-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   227
21-24 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   227
21-24 months   ki0047075b-MAL-ED       PERU                           0%              49   189
21-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        63   189
21-24 months   ki0047075b-MAL-ED       PERU                           >5%             77   189
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             175   235
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        51   235
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   235
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              86   204
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        80   204
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             38   204
21-24 months   ki1000109-EE            PAKISTAN                       0%              97   106
21-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]         8   106
21-24 months   ki1000109-EE            PAKISTAN                       >5%              1   106
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             102   411
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       124   411
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            185   411
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             118   471
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       190   471
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            163   471
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             271   490
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]        98   490
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            121   490
21-24 months   ki1114097-CMIN          BANGLADESH                     0%              47   133
21-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        30   133
21-24 months   ki1114097-CMIN          BANGLADESH                     >5%             56   133
21-24 months   ki1114097-CONTENT       PERU                           0%              23    38
21-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]         7    38
21-24 months   ki1114097-CONTENT       PERU                           >5%              8    38


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/22baabf7-0608-408a-8962-dce5295fcbaf/e6a2d5a4-b9c3-4c19-9c01-a773638351e5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/22baabf7-0608-408a-8962-dce5295fcbaf/e6a2d5a4-b9c3-4c19-9c01-a773638351e5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/22baabf7-0608-408a-8962-dce5295fcbaf/e6a2d5a4-b9c3-4c19-9c01-a773638351e5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                3.3113872   3.1952649   3.4275096
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                3.3415390   3.2241332   3.4589449
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                3.3613254   3.2598249   3.4628260
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                3.5439128   3.2573504   3.8304752
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                3.3604176   3.2564486   3.4643865
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                3.1512345   2.9482200   3.3542490
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                3.6226407   3.4442301   3.8010512
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                3.6787252   3.5271452   3.8303051
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                3.5804895   3.4382552   3.7227238
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   NA                3.0571557   2.9478225   3.1664889
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                2.9960267   2.8654944   3.1265591
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                3.0914791   2.9904071   3.1925512
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                3.1224953   3.0128650   3.2321256
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                3.3286464   3.1134993   3.5437935
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                3.5778345   3.0967818   4.0588873
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                3.2899178   3.1738573   3.4059782
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                3.2546982   3.1254584   3.3839380
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                3.2267357   3.0621949   3.3912765
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                3.0365827   2.9356628   3.1375025
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                3.1444350   3.0521732   3.2366969
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                3.1257529   3.0413766   3.2101292
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                3.2571512   3.1850858   3.3292166
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                3.2806033   3.2243977   3.3368089
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                3.2299533   3.1633246   3.2965820
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                3.0985768   3.0526161   3.1445376
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                3.1565101   3.0732075   3.2398126
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                3.1569699   3.0831833   3.2307566
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                3.3886370   3.1801039   3.5971701
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                3.5356796   3.3129334   3.7584258
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                3.3655920   3.0843279   3.6468562
0-3 months     ki1114097-CONTENT       PERU                           0%                   NA                3.6473680   3.3611984   3.9335377
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                3.7655246   3.4862186   4.0448306
0-3 months     ki1114097-CONTENT       PERU                           >5%                  NA                3.5233247   3.2884390   3.7582104
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                1.9648840   1.8673113   2.0624566
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                1.9363119   1.8616927   2.0109311
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                1.8836994   1.7927137   1.9746850
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                1.9629363   1.8070100   2.1188626
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                1.8890428   1.8074921   1.9705935
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                1.8403634   1.7144497   1.9662771
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                1.9799069   1.8879622   2.0718515
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                2.0135083   1.9140584   2.1129581
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                1.9034168   1.8048552   2.0019784
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   NA                1.9407149   1.8229724   2.0584574
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                2.0473999   1.9269147   2.1678852
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                2.0349874   1.9310451   2.1389296
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                1.9854255   1.8909681   2.0798829
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                1.9538505   1.7821119   2.1255891
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                1.7390054   1.4875737   1.9904371
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                1.7990791   1.6893726   1.9087857
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                1.8119393   1.7120341   1.9118444
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                1.9400515   1.7802744   2.0998286
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                1.8459147   1.7458427   1.9459867
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                1.8431956   1.7651992   1.9211920
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                1.8183836   1.7431288   1.8936384
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                1.9522924   1.8860082   2.0185765
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                1.9592336   1.9067487   2.0117184
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                1.9843354   1.9247576   2.0439132
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                2.0582317   2.0035905   2.1128729
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                1.9137516   1.8412340   1.9862693
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                1.9944957   1.9306235   2.0583680
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                1.9530667   1.8146987   2.0914347
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                1.9131016   1.7728339   2.0533694
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                1.9641157   1.8675420   2.0606895
3-6 months     ki1114097-CONTENT       PERU                           0%                   NA                2.0405041   1.9755626   2.1054456
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                2.1527777   2.0511978   2.2543576
3-6 months     ki1114097-CONTENT       PERU                           >5%                  NA                2.1212140   2.0259868   2.2164411
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                1.1783951   1.1125543   1.2442360
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                1.2438580   1.1752219   1.3124940
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                1.3176853   1.2505265   1.3848441
6-9 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                1.2283817   1.0899539   1.3668095
6-9 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                1.2564948   1.1949153   1.3180743
6-9 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                1.2398029   1.1330520   1.3465538
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                1.3373732   1.2632416   1.4115048
6-9 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                1.3600683   1.2844788   1.4356579
6-9 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                1.3735492   1.2943240   1.4527744
6-9 months     ki0047075b-MAL-ED       PERU                           0%                   NA                1.3994526   1.2955236   1.5033816
6-9 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                1.3104781   1.2235078   1.3974484
6-9 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                1.2809978   1.1918153   1.3701803
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                1.4094407   1.3356441   1.4832372
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                1.2565661   1.1116229   1.4015094
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                1.3496020   1.2288905   1.4703135
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                1.1700710   1.0567512   1.2833907
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                1.2208956   1.0816859   1.3601053
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                1.1721176   1.0300129   1.3142223
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                1.3363354   1.2512721   1.4213988
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                1.3030174   1.2250812   1.3809536
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                1.1786278   1.1242145   1.2330411
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                1.2785587   1.2273418   1.3297755
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                1.2865557   1.2456427   1.3274688
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                1.2803231   1.2397520   1.3208942
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                1.3048894   1.2638552   1.3459236
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                1.3263964   1.2668732   1.3859196
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                1.3694015   1.3107861   1.4280170
6-9 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                1.2418205   1.1347049   1.3489362
6-9 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                1.3600213   1.2133289   1.5067136
6-9 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                1.2344608   1.1539440   1.3149776
6-9 months     ki1114097-CONTENT       PERU                           0%                   NA                1.3790820   1.3168882   1.4412758
6-9 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                1.3324447   1.2171308   1.4477587
6-9 months     ki1114097-CONTENT       PERU                           >5%                  NA                1.4849839   1.3978704   1.5720973
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.9818254   0.9018279   1.0618229
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                1.0219270   0.9640099   1.0798441
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.9583612   0.8939158   1.0228066
9-12 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                0.9002314   0.8181942   0.9822686
9-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.9916500   0.9433070   1.0399929
9-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                1.0243130   0.9397850   1.1088409
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                1.0771626   1.0043609   1.1499644
9-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                1.1252287   1.0556600   1.1947974
9-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                1.0656307   0.9969479   1.1343136
9-12 months    ki0047075b-MAL-ED       PERU                           0%                   NA                1.0689748   0.9725449   1.1654046
9-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                1.0353694   0.9533827   1.1173561
9-12 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                1.1642643   1.0812051   1.2473235
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                1.0217910   0.9478057   1.0957762
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.9982666   0.8462483   1.1502848
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.9396342   0.7020528   1.1772157
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8614933   0.7531767   0.9698099
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7378824   0.5912910   0.8844739
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8594387   0.6761744   1.0427030
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                1.1009778   1.0373343   1.1646214
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                1.0815312   1.0169326   1.1461297
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                1.0866866   1.0321067   1.1412664
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                1.0378544   0.9822911   1.0934178
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                1.0515848   1.0096707   1.0934989
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                1.0574230   1.0121967   1.1026493
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                1.1256039   1.0893215   1.1618864
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                1.1402535   1.0829751   1.1975319
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                1.1059958   1.0556953   1.1562962
9-12 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.9843396   0.8915813   1.0770979
9-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.9927348   0.8409084   1.1445612
9-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.9342460   0.8499947   1.0184973
9-12 months    ki1114097-CONTENT       PERU                           0%                   NA                1.2071676   1.1547163   1.2596189
9-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                1.2124027   1.1221001   1.3027053
9-12 months    ki1114097-CONTENT       PERU                           >5%                  NA                1.1946625   1.1122947   1.2770302
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.9148291   0.8432526   0.9864057
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.8685940   0.8043524   0.9328357
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.9722025   0.8996852   1.0447198
12-15 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.8920536   0.8005419   0.9835652
12-15 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.8726208   0.8212672   0.9239744
12-15 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                1.0071006   0.9327865   1.0814147
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.9219679   0.8498869   0.9940490
12-15 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.9711486   0.9095521   1.0327451
12-15 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.9613770   0.8914772   1.0312769
12-15 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.8832277   0.7985028   0.9679526
12-15 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.8976682   0.8094028   0.9859337
12-15 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.8924895   0.8224745   0.9625046
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.9140520   0.8530018   0.9751021
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.9171654   0.7537877   1.0805431
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                1.0394347   0.8124921   1.2663772
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8546888   0.7645870   0.9447905
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.9004898   0.7802736   1.0207059
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7718485   0.6526450   0.8910520
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.6817402   0.6194514   0.7440289
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.7158982   0.6559827   0.7758138
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.7540356   0.6693423   0.8387288
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.9682062   0.9156362   1.0207761
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.9438610   0.9019570   0.9857651
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.9718665   0.9287063   1.0150266
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.9704290   0.9368396   1.0040184
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.9435876   0.8936089   0.9935663
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.9937866   0.9437282   1.0438450
12-15 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.8415775   0.7370824   0.9460726
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.8640846   0.7523105   0.9758587
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.9040036   0.8262141   0.9817931
12-15 months   ki1114097-CONTENT       PERU                           0%                   NA                0.9329518   0.8720502   0.9938534
12-15 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.9265475   0.8441291   1.0089658
12-15 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.9235460   0.8426379   1.0044541
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.8283822   0.7598817   0.8968827
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.8443377   0.7857103   0.9029650
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.7938699   0.7284918   0.8592480
15-18 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.8517067   0.7680008   0.9354127
15-18 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.8519107   0.8016149   0.9022064
15-18 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.8217279   0.7562599   0.8871960
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.8770437   0.7994942   0.9545932
15-18 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.8010766   0.7275081   0.8746451
15-18 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.8448646   0.7824160   0.9073133
15-18 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.8261254   0.7419393   0.9103114
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.8165448   0.7412502   0.8918394
15-18 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.8963204   0.8330674   0.9595733
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.8888941   0.8274101   0.9503782
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.8740729   0.7531060   0.9950398
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.9194027   0.8773385   0.9614668
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.6267412   0.5346223   0.7188600
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.6917330   0.5976688   0.7857972
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8127692   0.6638326   0.9617057
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.8059288   0.7233743   0.8884834
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.7559906   0.6785743   0.8334070
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.7657480   0.7094105   0.8220855
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.8631817   0.8172339   0.9091294
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.8677907   0.8289451   0.9066364
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.8369879   0.7958860   0.8780897
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.9190852   0.8862104   0.9519601
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.9441704   0.8962207   0.9921201
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.8947497   0.8520254   0.9374739
15-18 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.7353192   0.6495458   0.8210927
15-18 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.6924541   0.5780526   0.8068556
15-18 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7944274   0.7171826   0.8716722
15-18 months   ki1114097-CONTENT       PERU                           0%                   NA                0.9801210   0.9154947   1.0447472
15-18 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                1.0328699   0.9379103   1.1278296
15-18 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.9633484   0.8787640   1.0479327
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.7992803   0.7355801   0.8629805
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.7805273   0.7228267   0.8382279
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.8693674   0.8153183   0.9234165
18-21 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.8779723   0.7982466   0.9576979
18-21 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.8847683   0.8362888   0.9332478
18-21 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.8661443   0.7996497   0.9326388
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.8241772   0.7566425   0.8917118
18-21 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.8436129   0.7743331   0.9128926
18-21 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.7871269   0.7268759   0.8473778
18-21 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.8198320   0.7280156   0.9116484
18-21 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.8436048   0.7598249   0.9273846
18-21 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.8538124   0.7912563   0.9163684
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.7874877   0.7214880   0.8534875
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.7424027   0.6311935   0.8536119
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.9005741   0.6804818   1.1206663
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7959143   0.6860022   0.9058265
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7277823   0.6334385   0.8221261
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.6572051   0.4864876   0.8279226
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.7085962   0.6437302   0.7734622
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.7160696   0.6472630   0.7848761
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.7486130   0.6940507   0.8031753
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.8610672   0.8159093   0.9062252
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.8115160   0.7724559   0.8505761
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.8557700   0.8152758   0.8962641
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.8112771   0.7786953   0.8438590
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.7948507   0.7449867   0.8447147
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.7731246   0.7284273   0.8178218
18-21 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.8376230   0.7451511   0.9300949
18-21 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7849346   0.6811502   0.8887191
18-21 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7879082   0.7206570   0.8551593
18-21 months   ki1114097-CONTENT       PERU                           0%                   NA                0.9115960   0.8462887   0.9769034
18-21 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.9292582   0.8275911   1.0309253
18-21 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.9093361   0.8436315   0.9750407
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.8267329   0.7631675   0.8902983
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.7580857   0.7054895   0.8106820
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.7260922   0.6583611   0.7938233
21-24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.8069042   0.7490797   0.8647287
21-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.8450732   0.7991355   0.8910108
21-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.7990048   0.7450929   0.8529167
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.7317144   0.6531690   0.8102597
21-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.8063301   0.7397222   0.8729380
21-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.8123273   0.7481367   0.8765179
21-24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.7021017   0.6235690   0.7806344
21-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.7701554   0.6854903   0.8548205
21-24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.7911140   0.7150117   0.8672164
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.8391470   0.7774631   0.9008310
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.8469701   0.7439850   0.9499551
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.8039015   0.6399862   0.9678168
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7249358   0.6288447   0.8210268
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7326052   0.6192089   0.8460015
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.6765630   0.5524738   0.8006522
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.6905782   0.6299479   0.7512086
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.7386651   0.6739964   0.8033339
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.7175300   0.6608749   0.7741851
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.7814495   0.7305248   0.8323741
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.7540621   0.7132463   0.7948780
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.7604641   0.7185903   0.8023379
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.8066620   0.7740797   0.8392444
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.7923644   0.7384278   0.8463011
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.7885719   0.7373111   0.8398327
21-24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.8177511   0.7157926   0.9197097
21-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7331208   0.6125870   0.8536546
21-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7152254   0.6328394   0.7976114
21-24 months   ki1114097-CONTENT       PERU                           0%                   NA                0.9458028   0.8316305   1.0599751
21-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.8407072   0.6897053   0.9917090
21-24 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.9868314   0.8583863   1.1152765


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                3.0519536   2.9854854   3.1184219
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                3.1817712   3.0847973   3.2787451
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                3.4261247   3.2881156   3.5641338
0-3 months     ki1114097-CONTENT       PERU                           NA                   NA                3.6418727   3.4619177   3.8218277
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.9704262   1.8897530   2.0510994
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
3-6 months     ki1114097-CONTENT       PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     ki0047075b-MAL-ED       PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                1.2658739   1.2051613   1.3265866
6-9 months     ki1114097-CONTENT       PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                0.9627471   0.9031556   1.0223387
9-12 months    ki1114097-CONTENT       PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.8739530   0.8186981   0.9292079
12-15 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.7480083   0.6959380   0.8000786
15-18 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.8028550   0.7540631   0.8516469
18-21 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9146338   0.8709588   0.9583088
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.7554929   0.6980149   0.8129708
21-24 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9350807   0.8543561   1.0158053


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0301518   -0.1349800    0.1952836
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0499382   -0.1042914    0.2041677
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.1834953   -0.4883355    0.1213449
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.3926783   -0.7438661   -0.0414905
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0560845   -0.1780240    0.2901930
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0421512   -0.2703198    0.1860174
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0611289   -0.2314006    0.1091427
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0343234   -0.1145702    0.1832171
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.2061511   -0.0353175    0.4476196
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.4553392   -0.0380476    0.9487261
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0352196   -0.2089232    0.1384841
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0631820   -0.2645367    0.1381727
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.1078524   -0.0288849    0.2445896
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0891702   -0.0423751    0.2207156
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0234521   -0.0679398    0.1148440
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0271979   -0.1253448    0.0709489
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0579332   -0.0372072    0.1530737
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0583931   -0.0285370    0.1453233
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.1470426   -0.1580834    0.4521687
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0230450   -0.3731814    0.3270915
0-3 months     ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.1181566   -0.2817245    0.5180377
0-3 months     ki1114097-CONTENT       PERU                           >5%                  0%                -0.1240433   -0.4942654    0.2461788
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0285721   -0.1514071    0.0942629
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0811846   -0.2145968    0.0522276
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.0738935   -0.2498581    0.1020711
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.1225729   -0.3229907    0.0778449
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0336014   -0.1018389    0.1690418
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0764901   -0.2112795    0.0582994
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.1066850   -0.0617786    0.2751487
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0942725   -0.0627858    0.2513307
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0315750   -0.2275759    0.1644259
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.2464201   -0.5150092    0.0221690
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0128601   -0.1355197    0.1612400
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1409724   -0.0528426    0.3347874
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0027191   -0.1295963    0.1241582
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0275310   -0.1527416    0.0976795
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0069412   -0.0776061    0.0914885
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0320430   -0.0570810    0.1211671
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.1444800   -0.2352791   -0.0536809
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0637360   -0.1477915    0.0203195
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0399651   -0.2369949    0.1570647
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  0%                 0.0110490   -0.1576881    0.1797861
3-6 months     ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.1122736   -0.0082913    0.2328384
3-6 months     ki1114097-CONTENT       PERU                           >5%                  0%                 0.0807098   -0.0345534    0.1959731
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0654628   -0.0296473    0.1605729
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.1392901    0.0452405    0.2333398
6-9 months     ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0281131   -0.1233936    0.1796198
6-9 months     ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0114212   -0.1633873    0.1862297
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0226952   -0.0831787    0.1285690
6-9 months     ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0361760   -0.0723234    0.1446755
6-9 months     ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0889745   -0.2244923    0.0465432
6-9 months     ki0047075b-MAL-ED       PERU                           >5%                  0%                -0.1184548   -0.2554028    0.0184932
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.1528745   -0.3155229    0.0097738
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0598387   -0.2013208    0.0816434
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0508247   -0.1286766    0.2303259
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0020467   -0.1797089    0.1838022
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0333180   -0.1486863    0.0820502
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.1577076   -0.2586858   -0.0567295
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0079971   -0.0575548    0.0735490
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0017644   -0.0635746    0.0671034
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0215070   -0.0507898    0.0938038
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0645121   -0.0070391    0.1360633
6-9 months     ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.1182007   -0.0634374    0.2998389
6-9 months     ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0073597   -0.1413624    0.1266429
6-9 months     ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.0466373   -0.1776540    0.0843794
6-9 months     ki1114097-CONTENT       PERU                           >5%                  0%                 0.1059018   -0.0011347    0.2129384
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0401016   -0.0586607    0.1388638
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0234642   -0.1261911    0.0792626
9-12 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0914186   -0.0038030    0.1866401
9-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.1240816    0.0062890    0.2418741
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0480661   -0.0526310    0.1487631
9-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0115319   -0.1116190    0.0885552
9-12 months    ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0336053   -0.1601776    0.0929669
9-12 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0952895   -0.0319800    0.2225591
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0235244   -0.1925905    0.1455417
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0821567   -0.3309915    0.1666781
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.1236109   -0.3058787    0.0586569
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0020546   -0.2149355    0.2108263
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0194467   -0.1101300    0.0712367
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0142913   -0.0981331    0.0695505
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0137303   -0.0558691    0.0833297
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0195686   -0.0520743    0.0912115
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0146495   -0.0531533    0.0824524
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0196082   -0.0816288    0.0424124
9-12 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0083952   -0.1695243    0.1863147
9-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0500936   -0.1754028    0.0752155
9-12 months    ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0052351   -0.0991952    0.1096654
9-12 months    ki1114097-CONTENT       PERU                           >5%                  0%                -0.0125051   -0.1101554    0.0851452
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0462351   -0.1424130    0.0499428
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0573734   -0.0445186    0.1592653
12-15 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.0194327   -0.1243688    0.0855033
12-15 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.1150470   -0.0028384    0.2329324
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0491807   -0.0456340    0.1439953
12-15 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0394091   -0.0609984    0.1398166
12-15 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0144405   -0.1079078    0.1367888
12-15 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0092618   -0.1006491    0.1191728
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0031135   -0.1712981    0.1775250
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1253827   -0.1096280    0.3603934
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0458010   -0.1044330    0.1960349
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0828403   -0.2322652    0.0665846
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0341581   -0.0522697    0.1205859
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0722954   -0.0328371    0.1774279
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0243452   -0.0915727    0.0428824
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0036603   -0.0643573    0.0716779
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0268414   -0.0870587    0.0333758
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0233576   -0.0369258    0.0836410
12-15 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0225071   -0.1305050    0.1755191
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                 0.0624261   -0.0678445    0.1926967
12-15 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.0064043   -0.1088826    0.0960739
12-15 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0094058   -0.1106734    0.0918617
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0159555   -0.0742082    0.1061192
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0345123   -0.1292045    0.0601800
15-18 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0002039   -0.0974503    0.0978581
15-18 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0299788   -0.1362462    0.0762885
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0759671   -0.1828607    0.0309266
15-18 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0321790   -0.1317469    0.0673889
15-18 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0095806   -0.1225256    0.1033644
15-18 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0701950   -0.0351057    0.1754956
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0148212   -0.1505167    0.1208744
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0305085   -0.0439876    0.1050047
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0649918   -0.0666667    0.1966503
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1860280    0.0109053    0.3611507
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0499382   -0.1631131    0.0632366
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0401808   -0.1401267    0.0597650
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0046091   -0.0555589    0.0647770
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0261938   -0.0878424    0.0354548
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0250851   -0.0330520    0.0832223
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0243356   -0.0782440    0.0295728
15-18 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0428651   -0.1858504    0.1001201
15-18 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                 0.0591081   -0.0563208    0.1745371
15-18 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0527490   -0.0621157    0.1676136
15-18 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0167726   -0.1232201    0.0896749
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0187530   -0.1047011    0.0671951
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0700871   -0.0134534    0.1536277
18-21 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0067960   -0.0865123    0.1001044
18-21 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0118280   -0.1156438    0.0919878
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0194357   -0.0773146    0.1161860
18-21 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0370503   -0.1275550    0.0534544
18-21 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0237728   -0.1005225    0.1480681
18-21 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0339804   -0.0771210    0.1450818
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0450851   -0.1744043    0.0842341
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1130863   -0.1166887    0.3428613
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0681321   -0.2129818    0.0767176
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.1387093   -0.3417490    0.0643305
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0074734   -0.0870885    0.1020352
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0400168   -0.0447454    0.1247791
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0495513   -0.1092583    0.0101558
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0052973   -0.0659522    0.0553576
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0164264   -0.0759915    0.0431386
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0381526   -0.0934646    0.0171594
18-21 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0526883   -0.1916929    0.0863162
18-21 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0497148   -0.1640554    0.0646257
18-21 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0176622   -0.1031735    0.1384978
18-21 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0022599   -0.0948998    0.0903799
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0686472   -0.1511513    0.0138569
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.1006407   -0.1935281   -0.0077534
21-24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0381689   -0.0356818    0.1120197
21-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0078994   -0.0869574    0.0711585
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0746158   -0.0283696    0.1776011
21-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0806129   -0.0208257    0.1820516
21-24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0680537   -0.0474260    0.1835334
21-24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0890123   -0.0203447    0.1983693
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0078230   -0.1122221    0.1278682
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0352455   -0.2103830    0.1398919
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0076694   -0.1409651    0.1563039
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0483728   -0.2053174    0.1085718
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0480869   -0.0405590    0.1367327
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0269518   -0.0560292    0.1099327
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0273873   -0.0926503    0.0378756
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0209853   -0.0869151    0.0449444
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0142976   -0.0773117    0.0487165
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0180901   -0.0788296    0.0426493
21-24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0846303   -0.2425036    0.0732429
21-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.1025257   -0.2336097    0.0285582
21-24 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.1050956   -0.2944019    0.0842107
21-24 months   ki1114097-CONTENT       PERU                           >5%                  0%                 0.0410286   -0.1308244    0.2128816


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0277359   -0.0723960    0.1278677
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.1956878   -0.4356815    0.0443059
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0007768   -0.1343500    0.1359037
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0052020   -0.1072680    0.0968639
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0592759    0.0027500    0.1158017
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0254186   -0.1152001    0.0643629
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0734289   -0.0166096    0.1634674
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0005298   -0.0608803    0.0619399
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0306681   -0.0072637    0.0685998
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0374877   -0.1302867    0.2052621
0-3 months     ki1114097-CONTENT       PERU                           0%                   NA                -0.0054953   -0.1601307    0.1491401
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0372432   -0.1174854    0.0429989
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0706383   -0.2048063    0.0635297
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0154468   -0.0925599    0.0616663
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0749672   -0.0317756    0.1817100
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0149993   -0.0604463    0.0304476
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0310110   -0.0494029    0.1114250
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0132232   -0.1002374    0.0737910
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0134534   -0.0436764    0.0705831
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0524344   -0.0907511   -0.0141178
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0052190   -0.1132315    0.1027934
3-6 months     ki1114097-CONTENT       PERU                           0%                   NA                 0.0436800   -0.0008416    0.0882016
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0696500    0.0123694    0.1269305
6-9 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0178420   -0.0991463    0.1348302
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0197677   -0.0419836    0.0815189
6-9 months     ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0794561   -0.1709711    0.0120589
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0325149   -0.0673043    0.0022745
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0206846   -0.0684159    0.1097851
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0807404   -0.1541652   -0.0073156
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0038598   -0.0398850    0.0476046
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0233801   -0.0070414    0.0538016
6-9 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0240534   -0.0648260    0.1129329
6-9 months     ki1114097-CONTENT       PERU                           0%                   NA                 0.0183416   -0.0256936    0.0623768
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0078192   -0.0560839    0.0717222
9-12 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0812388    0.0073259    0.1551517
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0120745   -0.0466070    0.0707561
9-12 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0295376   -0.0559094    0.1149847
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0074651   -0.0430462    0.0281159
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0483856   -0.1392687    0.0424974
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0123970   -0.0698585    0.0450645
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0121205   -0.0347802    0.0590213
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0021295   -0.0288924    0.0246334
9-12 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0215925   -0.1045699    0.0613849
9-12 months    ki1114097-CONTENT       PERU                           0%                   NA                -0.0022908   -0.0391023    0.0345207
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0007287   -0.0616119    0.0601546
12-15 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0184401   -0.0621790    0.0990591
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0294445   -0.0277275    0.0866165
12-15 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0085002   -0.0667853    0.0837858
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0055775   -0.0317541    0.0429091
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0016670   -0.0710515    0.0743856
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0424221   -0.0203295    0.1051737
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0084561   -0.0532201    0.0363079
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0007104   -0.0242627    0.0256836
12-15 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0323755   -0.0488763    0.1136273
12-15 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0038074   -0.0432196    0.0356047
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0042596   -0.0614212    0.0529020
15-18 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0073183   -0.0804598    0.0658231
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0362075   -0.0974997    0.0250847
15-18 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0273054   -0.0453733    0.0999840
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0017439   -0.0301558    0.0266680
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0600068   -0.0102655    0.1302791
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0331569   -0.1040947    0.0377808
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0070819   -0.0464231    0.0322594
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0013685   -0.0241631    0.0214261
15-18 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0126891   -0.0561762    0.0815543
15-18 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0059022   -0.0377749    0.0495793
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0141045   -0.0387465    0.0669554
18-21 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0007378   -0.0692644    0.0707400
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0058974   -0.0606630    0.0488682
18-21 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0216119   -0.0553071    0.0985309
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0053068   -0.0359014    0.0252879
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0522105   -0.1325430    0.0281220
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0205506   -0.0383890    0.0794902
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0217295   -0.0609300    0.0174709
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0135016   -0.0354686    0.0084654
18-21 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0347680   -0.1092122    0.0396763
18-21 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0030377   -0.0392822    0.0453577
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0573147   -0.1102336   -0.0043957
21-24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0186471   -0.0349751    0.0722693
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0516421   -0.0091770    0.1124613
21-24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0589488   -0.0129419    0.1308396
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0003479   -0.0277227    0.0284186
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0060030   -0.0808973    0.0688913
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0266395   -0.0291440    0.0824231
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0183104   -0.0623417    0.0257209
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0073267   -0.0294444    0.0147910
21-24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0622583   -0.1419579    0.0174414
21-24 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0107221   -0.0721402    0.0506960
