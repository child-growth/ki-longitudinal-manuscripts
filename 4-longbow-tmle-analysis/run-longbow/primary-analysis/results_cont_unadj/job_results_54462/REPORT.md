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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                 country                        perdiar6    n_cell     n
-------------  ----------------------  -----------------------------  ---------  -------  ----
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%              71   246
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        97   246
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             78   246
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0%             201   218
0-3 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   218
0-3 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   218
0-3 months     ki0047075b-MAL-ED       INDIA                          0%              51   238
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       127   238
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%             60   238
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%              77   232
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   232
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%             79   232
0-3 months     ki0047075b-MAL-ED       PERU                           0%              71   282
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        93   282
0-3 months     ki0047075b-MAL-ED       PERU                           >5%            118   282
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             203   272
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        59   272
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%             10   272
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              99   237
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        94   237
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             44   237
0-3 months     ki1000109-EE            PAKISTAN                       0%             285   320
0-3 months     ki1000109-EE            PAKISTAN                       (0%, 5%]        33   320
0-3 months     ki1000109-EE            PAKISTAN                       >5%              2   320
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%             137   565
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       177   565
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            251   565
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%             172   640
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       258   640
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            210   640
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             342   725
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       169   725
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            214   725
0-3 months     ki1114097-CMIN          BANGLADESH                     0%              17    43
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        13    43
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%             13    43
0-3 months     ki1114097-CONTENT       PERU                           0%              16    29
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]         6    29
0-3 months     ki1114097-CONTENT       PERU                           >5%              7    29
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%              68   233
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        89   233
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             76   233
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
3-6 months     ki1000109-EE            PAKISTAN                       0%             243   275
3-6 months     ki1000109-EE            PAKISTAN                       (0%, 5%]        30   275
3-6 months     ki1000109-EE            PAKISTAN                       >5%              2   275
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%             124   522
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       163   522
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            235   522
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%             155   601
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       246   601
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            200   601
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             332   702
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       164   702
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            206   702
3-6 months     ki1114097-CMIN          BANGLADESH                     0%              61   184
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        44   184
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%             79   184
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
6-9 months     ki1000109-EE            PAKISTAN                       0%             271   301
6-9 months     ki1000109-EE            PAKISTAN                       (0%, 5%]        28   301
6-9 months     ki1000109-EE            PAKISTAN                       >5%              2   301
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%             120   498
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       156   498
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            222   498
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%             148   576
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       233   576
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            195   576
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             332   693
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       161   693
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            200   693
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
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              97   224
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        86   224
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   224
9-12 months    ki1000109-EE            PAKISTAN                       0%             295   325
9-12 months    ki1000109-EE            PAKISTAN                       (0%, 5%]        28   325
9-12 months    ki1000109-EE            PAKISTAN                       >5%              2   325
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%             117   481
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       150   481
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            214   481
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%             148   569
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       227   569
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            194   569
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             330   683
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       157   683
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            196   683
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
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              98   226
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        85   226
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             43   226
12-15 months   ki1000109-EE            PAKISTAN                       0%             270   298
12-15 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        26   298
12-15 months   ki1000109-EE            PAKISTAN                       >5%              2   298
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%             114   461
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       145   461
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            202   461
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%             141   537
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       213   537
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            183   537
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             324   666
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       148   666
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            194   666
12-15 months   ki1114097-CMIN          BANGLADESH                     0%              54   159
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        36   159
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%             69   159
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
15-18 months   ki0047075b-MAL-ED       PERU                           0%              54   214
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        67   214
15-18 months   ki0047075b-MAL-ED       PERU                           >5%             93   214
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             171   225
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        45   225
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   225
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              94   220
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        84   220
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             42   220
15-18 months   ki1000109-EE            PAKISTAN                       0%             250   277
15-18 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        25   277
15-18 months   ki1000109-EE            PAKISTAN                       >5%              2   277
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%             112   449
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       138   449
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            199   449
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%             145   533
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       207   533
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            181   533
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             304   605
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       131   605
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            170   605
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
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              88   208
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        82   208
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             38   208
18-21 months   ki1000109-EE            PAKISTAN                       0%             230   255
18-21 months   ki1000109-EE            PAKISTAN                       (0%, 5%]        23   255
18-21 months   ki1000109-EE            PAKISTAN                       >5%              2   255
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%             102   422
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       127   422
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            193   422
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%             144   542
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       218   542
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            180   542
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             289   547
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       112   547
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            146   547
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
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              87   206
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        81   206
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             38   206
21-24 months   ki1000109-EE            PAKISTAN                       0%              97   106
21-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]         8   106
21-24 months   ki1000109-EE            PAKISTAN                       >5%              1   106
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             102   411
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       124   411
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            185   411
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             124   485
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       196   485
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            165   485
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             271   493
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]        98   493
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            124   493
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
![](/tmp/04dbdbe7-bdd7-40ed-9847-d21086aede20/9ba5be34-a2d8-4a51-805e-b936bc0a6c61/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/04dbdbe7-bdd7-40ed-9847-d21086aede20/9ba5be34-a2d8-4a51-805e-b936bc0a6c61/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/04dbdbe7-bdd7-40ed-9847-d21086aede20/9ba5be34-a2d8-4a51-805e-b936bc0a6c61/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.8694534   0.8294712   0.9094356
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.8732384   0.8346384   0.9118383
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.8940011   0.8533952   0.9346070
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                0.7359700   0.6866392   0.7853008
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.7741452   0.7442819   0.8040084
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.7482661   0.7042673   0.7922649
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.9485204   0.9012391   0.9958017
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.9520361   0.9091335   0.9949387
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.9698938   0.9215047   1.0182829
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   NA                0.9544459   0.9069936   1.0018983
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.9597952   0.9157040   1.0038864
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                0.9875725   0.9483330   1.0268119
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.9292645   0.8986758   0.9598532
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.9533487   0.9005909   1.0061064
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                1.1002741   0.9447541   1.2557941
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8674147   0.8181665   0.9166630
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8847120   0.8372308   0.9321933
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.9230346   0.8616765   0.9843927
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.8025174   0.7704651   0.8345697
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.8280674   0.7933605   0.8627743
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.8156371   0.7927278   0.8385464
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.8876455   0.8581824   0.9171086
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.9031405   0.8810226   0.9252584
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.9112805   0.8848822   0.9376789
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.8908603   0.8704771   0.9112435
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.8693527   0.8389912   0.8997142
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.8863719   0.8582927   0.9144511
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                0.9114142   0.7919520   1.0308763
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.8623653   0.7765000   0.9482306
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7804567   0.6717819   0.8891315
0-3 months     ki1114097-CONTENT       PERU                           0%                   NA                1.1452088   1.0395496   1.2508680
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                1.0482521   0.9401812   1.1563230
0-3 months     ki1114097-CONTENT       PERU                           >5%                  NA                1.1879858   0.9958539   1.3801178
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.4806679   0.4520361   0.5092996
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4693850   0.4450278   0.4937422
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.4754314   0.4416679   0.5091949
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                0.4546799   0.4191302   0.4902297
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.4423601   0.4187966   0.4659235
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.4432827   0.4055583   0.4810071
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.5058234   0.4753843   0.5362625
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.5327604   0.4970962   0.5684246
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.5268579   0.4889572   0.5647586
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   NA                0.4917317   0.4573290   0.5261345
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.4831710   0.4496594   0.5166825
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                0.5132290   0.4831499   0.5433081
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.4858614   0.4562289   0.5154939
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.4046193   0.3496258   0.4596128
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.4058270   0.3022917   0.5093623
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.4288847   0.3968540   0.4609154
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.4806626   0.4370151   0.5243100
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.4716901   0.4197243   0.5236558
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.4619237   0.4273561   0.4964913
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.4863148   0.4523912   0.5202384
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.4393942   0.4158499   0.4629384
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.4756187   0.4569384   0.4942990
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.4733722   0.4552584   0.4914861
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.5187763   0.4903589   0.5471938
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.4891914   0.4735202   0.5048626
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.4971251   0.4770489   0.5172012
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.5130782   0.4902326   0.5359239
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                0.4524629   0.4117112   0.4932145
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.4494988   0.3973547   0.5016429
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.4450441   0.4120049   0.4780834
3-6 months     ki1114097-CONTENT       PERU                           0%                   NA                0.5711148   0.5441703   0.5980593
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.6281189   0.5835497   0.6726880
3-6 months     ki1114097-CONTENT       PERU                           >5%                  NA                0.5932474   0.5469123   0.6395825
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.2257732   0.2009567   0.2505898
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.2451265   0.2187753   0.2714777
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.2561847   0.2331773   0.2791921
6-9 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                0.2175547   0.1874893   0.2476201
6-9 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.2369589   0.2178594   0.2560584
6-9 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.2330531   0.1983858   0.2677205
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.2636508   0.2405154   0.2867862
6-9 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.2826481   0.2565963   0.3087000
6-9 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.2626043   0.2369572   0.2882515
6-9 months     ki0047075b-MAL-ED       PERU                           0%                   NA                0.2469818   0.2235207   0.2704428
6-9 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.2615648   0.2273990   0.2957306
6-9 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                0.2696366   0.2483490   0.2909243
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.2539242   0.2309607   0.2768877
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.2730085   0.2210963   0.3249207
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.3019698   0.1581918   0.4457479
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.2675954   0.2347866   0.3004042
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1994619   0.1577456   0.2411782
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.2561630   0.2020193   0.3103067
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.2393296   0.2074059   0.2712533
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.2362326   0.2154055   0.2570597
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.2346191   0.2137232   0.2555149
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.2481286   0.2294464   0.2668108
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.2538250   0.2383739   0.2692760
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.2443845   0.2174690   0.2713000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.2740876   0.2579041   0.2902712
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2631043   0.2429724   0.2832363
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.2601366   0.2413953   0.2788778
6-9 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                0.2121269   0.1805874   0.2436664
6-9 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.2337825   0.1893110   0.2782541
6-9 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.2320371   0.2005566   0.2635176
6-9 months     ki1114097-CONTENT       PERU                           0%                   NA                0.3096152   0.2825424   0.3366880
6-9 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.3234954   0.2811918   0.3657990
6-9 months     ki1114097-CONTENT       PERU                           >5%                  NA                0.3400652   0.3032433   0.3768871
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1795878   0.1551133   0.2040622
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1724710   0.1499669   0.1949752
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.1676097   0.1435504   0.1916691
9-12 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1815410   0.1552006   0.2078815
9-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1645956   0.1447478   0.1844434
9-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.2069213   0.1797761   0.2340665
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.1780282   0.1473027   0.2087537
9-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1969443   0.1743763   0.2195123
9-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.1830423   0.1628042   0.2032804
9-12 months    ki0047075b-MAL-ED       PERU                           0%                   NA                0.1671740   0.1347772   0.1995708
9-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.1872851   0.1581436   0.2164267
9-12 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                0.1994091   0.1788332   0.2199849
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.2201382   0.1950872   0.2451891
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.1944508   0.1412736   0.2476280
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.2078374   0.1416863   0.2739885
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1642892   0.1357787   0.1927998
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1729998   0.1400372   0.2059624
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1602208   0.1065325   0.2139092
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1552105   0.1304448   0.1799761
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.1876468   0.1665745   0.2087192
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.1513795   0.1299380   0.1728210
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1867097   0.1679572   0.2054622
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1688663   0.1554670   0.1822656
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1806690   0.1634668   0.1978713
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.2063528   0.1910313   0.2216743
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1909111   0.1704288   0.2113935
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1890744   0.1697577   0.2083912
9-12 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.1838242   0.1490516   0.2185967
9-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.1474125   0.0927699   0.2020550
9-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.1624474   0.1283921   0.1965026
9-12 months    ki1114097-CONTENT       PERU                           0%                   NA                0.2130536   0.1889649   0.2371424
9-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.2517110   0.2138187   0.2896033
9-12 months    ki1114097-CONTENT       PERU                           >5%                  NA                0.2272827   0.1894324   0.2651331
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1433994   0.1103402   0.1764585
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1261028   0.1031398   0.1490657
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.1395268   0.1125505   0.1665031
12-15 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1679582   0.1373453   0.1985711
12-15 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1819672   0.1600281   0.2039062
12-15 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.1615096   0.1284164   0.1946027
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.1633333   0.1291270   0.1975397
12-15 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1503390   0.1261840   0.1744941
12-15 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.1443788   0.1176971   0.1710604
12-15 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.1500952   0.1188265   0.1813640
12-15 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.1335743   0.1040220   0.1631267
12-15 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.1426273   0.1163835   0.1688711
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.1917794   0.1615235   0.2220353
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.1858713   0.1369802   0.2347624
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.1623198   0.0735474   0.2510922
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1668420   0.1334537   0.2002304
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1404771   0.0951968   0.1857574
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1800759   0.1258531   0.2342988
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1393147   0.1156919   0.1629375
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.1059599   0.0847912   0.1271287
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.1431550   0.1249259   0.1613842
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1730596   0.1538025   0.1923166
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1793056   0.1600498   0.1985614
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1862508   0.1649037   0.2075979
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1618710   0.1457080   0.1780340
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1537713   0.1333770   0.1741656
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1755658   0.1572829   0.1938488
12-15 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.1450863   0.1086991   0.1814735
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.1933780   0.1566899   0.2300662
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.1830074   0.1533868   0.2126281
12-15 months   ki1114097-CONTENT       PERU                           0%                   NA                0.1864580   0.1596759   0.2132400
12-15 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.1600617   0.1316768   0.1884466
12-15 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.1856512   0.1468330   0.2244695
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1505011   0.1187492   0.1822530
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1417945   0.1197311   0.1638579
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.1365968   0.1078730   0.1653205
15-18 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1679616   0.1361175   0.1998058
15-18 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1566153   0.1374812   0.1757495
15-18 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.1709398   0.1371204   0.2047591
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.1720768   0.1409988   0.2031547
15-18 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1952367   0.1698310   0.2206425
15-18 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.1531410   0.1290164   0.1772656
15-18 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.1246007   0.0894141   0.1597872
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.1455310   0.1077685   0.1832935
15-18 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.1591979   0.1325890   0.1858069
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.2177733   0.1833649   0.2521817
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.2410630   0.1889355   0.2931905
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.2472531   0.1659575   0.3285486
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1343638   0.0959345   0.1727931
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1607493   0.1272679   0.1942308
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1257942   0.0758288   0.1757596
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1809202   0.1491020   0.2127384
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.1493785   0.1258773   0.1728798
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.1397620   0.1178940   0.1616300
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1682990   0.1472536   0.1893445
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1528868   0.1343649   0.1714088
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1507425   0.1291839   0.1723011
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1664080   0.1515106   0.1813054
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1742224   0.1497247   0.1987202
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1418423   0.1237530   0.1599317
15-18 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.1385608   0.1039657   0.1731559
15-18 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.1685363   0.1251443   0.2119283
15-18 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.1068953   0.0689815   0.1448091
15-18 months   ki1114097-CONTENT       PERU                           0%                   NA                0.1757134   0.1479429   0.2034839
15-18 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.1650589   0.1312834   0.1988343
15-18 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.1677957   0.1353107   0.2002807
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1288532   0.0993490   0.1583575
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1299616   0.1042328   0.1556905
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.1726993   0.1403759   0.2050227
18-21 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1633177   0.1227108   0.2039246
18-21 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1800167   0.1626238   0.1974096
18-21 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.1646668   0.1337231   0.1956105
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.1466138   0.1115809   0.1816467
18-21 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1254814   0.0959069   0.1550559
18-21 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.1703923   0.1447169   0.1960676
18-21 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.1942941   0.1595554   0.2290327
18-21 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.1371452   0.1033138   0.1709766
18-21 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.1593959   0.1299951   0.1887968
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.1696191   0.1370158   0.2022223
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.2136732   0.1680203   0.2593261
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.1180254   0.0410073   0.1950436
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1419554   0.1017715   0.1821392
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1497108   0.1125030   0.1869185
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1492958   0.0905534   0.2080381
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1426461   0.1130152   0.1722770
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.1706870   0.1437358   0.1976382
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.1893378   0.1635071   0.2151685
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1386818   0.1156804   0.1616832
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1315198   0.1132130   0.1498267
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1287060   0.1098289   0.1475831
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1386134   0.1229239   0.1543029
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1230952   0.1025014   0.1436890
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1656821   0.1462214   0.1851428
18-21 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.1527960   0.1146972   0.1908948
18-21 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.1504123   0.1048540   0.1959706
18-21 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.1741943   0.1353049   0.2130838
18-21 months   ki1114097-CONTENT       PERU                           0%                   NA                0.1767983   0.1510147   0.2025818
18-21 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.2051014   0.1589376   0.2512651
18-21 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.2106994   0.1781729   0.2432258
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1646319   0.1387866   0.1904771
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1632707   0.1381471   0.1883943
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.1258296   0.0993103   0.1523490
21-24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1542630   0.1282958   0.1802302
21-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1671790   0.1490149   0.1853431
21-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.1342255   0.1075848   0.1608662
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.1898311   0.1531113   0.2265509
21-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1498267   0.1139904   0.1856630
21-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.1672130   0.1372836   0.1971423
21-24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.1830120   0.1486170   0.2174070
21-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.1921396   0.1541454   0.2301339
21-24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.1717519   0.1418920   0.2016118
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.1889315   0.1595987   0.2182644
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.1849365   0.1441258   0.2257473
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.1782671   0.1027463   0.2537879
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1712219   0.1345919   0.2078518
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1273999   0.0810427   0.1737571
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1025253   0.0297640   0.1752867
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1364772   0.1069963   0.1659581
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.1385824   0.1094153   0.1677495
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.1472757   0.1250885   0.1694630
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1225833   0.0990037   0.1461629
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1457121   0.1289978   0.1624263
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1520957   0.1317836   0.1724077
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1994921   0.1821788   0.2168054
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1598344   0.1356934   0.1839755
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1336575   0.1092040   0.1581110
21-24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.1670721   0.1358517   0.1982925
21-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.1729467   0.1185217   0.2273716
21-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.1622361   0.1215490   0.2029233
21-24 months   ki1114097-CONTENT       PERU                           0%                   NA                0.2357758   0.1737848   0.2977668
21-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.2012298   0.0877905   0.3146691
21-24 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.1212188   0.0320881   0.2103494


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.8787293   0.8556572   0.9018013
0-3 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                0.7594406   0.7372368   0.7816445
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.9569501   0.9301779   0.9837223
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                0.9700715   0.9450349   0.9951081
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.9407758   0.9143190   0.9672326
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                0.8569936   0.7917724   0.9222149
0-3 months     ki1114097-CONTENT       PERU                           NA                   NA                1.1354743   1.0557030   1.2152455
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                0.4452214   0.4276818   0.4627610
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.4655071   0.4396676   0.4913465
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                0.4485689   0.4253428   0.4717949
3-6 months     ki1114097-CONTENT       PERU                           NA                   NA                0.5883606   0.5672514   0.6094698
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                0.2318230   0.2168658   0.2467803
6-9 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     ki0047075b-MAL-ED       PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.2593884   0.2383337   0.2804432
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                0.2261421   0.2058904   0.2463939
6-9 months     ki1114097-CONTENT       PERU                           NA                   NA                0.3203724   0.3008854   0.3398595
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1788440   0.1647878   0.1929001
9-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.2146445   0.1925652   0.2367238
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                0.1656112   0.1427254   0.1884969
9-12 months    ki1114097-CONTENT       PERU                           NA                   NA                0.2242885   0.2061680   0.2424089
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1739561   0.1580675   0.1898447
12-15 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.1894245   0.1641813   0.2146678
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.1724766   0.1525587   0.1923945
12-15 months   ki1114097-CONTENT       PERU                           NA                   NA                0.1810659   0.1624244   0.1997074
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1625746   0.1476285   0.1775207
15-18 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.2236104   0.1952383   0.2519826
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.1334837   0.1109948   0.1559725
15-18 months   ki1114097-CONTENT       PERU                           NA                   NA                0.1713509   0.1529966   0.1897053
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1726665   0.1577530   0.1875800
18-21 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.1770799   0.1505223   0.2036374
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.1616853   0.1379134   0.1854572
18-21 months   ki1114097-CONTENT       PERU                           NA                   NA                0.1921232   0.1732877   0.2109588
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1562703   0.1431057   0.1694349
21-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.1876561   0.1639063   0.2114059
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.1663610   0.1425615   0.1901605
21-24 months   ki1114097-CONTENT       PERU                           NA                   NA                0.2052948   0.1562051   0.2543845


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0037850   -0.0517896    0.0593595
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0245477   -0.0324384    0.0815338
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0381752   -0.0194906    0.0958410
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0122961   -0.0538055    0.0783977
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0035157   -0.0603290    0.0673605
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0213734   -0.0462803    0.0890271
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0053492   -0.0594254    0.0701239
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0331266   -0.0284483    0.0947014
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0240842   -0.0368998    0.0850682
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.1710096    0.0125100    0.3295092
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0172973   -0.0511122    0.0857068
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0556199   -0.0230580    0.1342977
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0255500   -0.0216932    0.0727932
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0131197   -0.0262781    0.0525175
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0154950   -0.0213462    0.0523362
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0236350   -0.0159244    0.0631944
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0215076   -0.0580767    0.0150614
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0044884   -0.0391858    0.0302091
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0490489   -0.1961681    0.0980703
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.1309574   -0.2924549    0.0305400
0-3 months     ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.0969566   -0.2480963    0.0541830
0-3 months     ki1114097-CONTENT       PERU                           >5%                  0%                 0.0427771   -0.1764911    0.2620452
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0112829   -0.0488734    0.0263077
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0052365   -0.0495056    0.0390326
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.0123199   -0.0549698    0.0303301
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0113972   -0.0632326    0.0404382
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0269370   -0.0199509    0.0738249
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0210345   -0.0275762    0.0696452
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0085608   -0.0565876    0.0394660
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0214973   -0.0242007    0.0671952
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0812421   -0.1437111   -0.0187732
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0800344   -0.1877268    0.0276579
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0517779   -0.0023614    0.1059172
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0428054   -0.0182389    0.1038497
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0243911   -0.0240416    0.0728238
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0225295   -0.0643536    0.0192945
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0022464   -0.0282669    0.0237740
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0431577    0.0091502    0.0771651
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0079336   -0.0175348    0.0334020
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0238868   -0.0038172    0.0515908
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0029641   -0.0691434    0.0632153
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0074187   -0.0598810    0.0450436
3-6 months     ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0570041    0.0049232    0.1090849
3-6 months     ki1114097-CONTENT       PERU                           >5%                  0%                 0.0221326   -0.0314673    0.0757325
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0193533   -0.0168440    0.0555506
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0304115   -0.0034293    0.0642523
6-9 months     ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0194042   -0.0162149    0.0550233
6-9 months     ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0154984   -0.0303901    0.0613869
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0189973   -0.0158444    0.0538390
6-9 months     ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0010465   -0.0355867    0.0334937
6-9 months     ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0145831   -0.0268623    0.0560284
6-9 months     ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0226549   -0.0090245    0.0543343
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0190843   -0.0376801    0.0758487
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0480457   -0.0975546    0.1936459
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0681335   -0.1212057   -0.0150612
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0114324   -0.0747408    0.0518760
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0030970   -0.0412138    0.0350198
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0047105   -0.0428650    0.0334439
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0056964   -0.0185473    0.0299401
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0037441   -0.0365079    0.0290197
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0109833   -0.0368136    0.0148470
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0139511   -0.0387128    0.0108106
6-9 months     ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0216556   -0.0328646    0.0761758
6-9 months     ki1114097-CMIN          BANGLADESH                     >5%                  0%                 0.0199102   -0.0246516    0.0644720
6-9 months     ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0138802   -0.0363446    0.0641050
6-9 months     ki1114097-CONTENT       PERU                           >5%                  0%                 0.0304500   -0.0152532    0.0761533
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0071167   -0.0403648    0.0261313
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0119780   -0.0462979    0.0223418
9-12 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.0169455   -0.0499266    0.0160357
9-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0253803   -0.0124440    0.0632046
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0189161   -0.0192070    0.0570392
9-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0050141   -0.0317777    0.0418059
9-12 months    ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0201111   -0.0234639    0.0636862
9-12 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0322351   -0.0061436    0.0706137
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0256873   -0.0844697    0.0330950
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0123008   -0.0830363    0.0584348
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0087105   -0.0348714    0.0522925
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0040684   -0.0648573    0.0567206
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0324364   -0.0000810    0.0649537
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0038309   -0.0365887    0.0289268
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0178435   -0.0408912    0.0052043
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0060407   -0.0314882    0.0194067
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0154417   -0.0410204    0.0101371
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0172783   -0.0419336    0.0073770
9-12 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0364117   -0.1011801    0.0283566
9-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0213768   -0.0700481    0.0272944
9-12 months    ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0386574   -0.0062436    0.0835583
9-12 months    ki1114097-CONTENT       PERU                           >5%                  0%                 0.0142291   -0.0306365    0.0590946
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0172966   -0.0575484    0.0229552
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0038726   -0.0465414    0.0387962
12-15 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0140089   -0.0236537    0.0516716
12-15 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0064486   -0.0515298    0.0386325
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0129943   -0.0548696    0.0288810
12-15 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0189546   -0.0623364    0.0244273
12-15 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0165209   -0.0595451    0.0265033
12-15 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                -0.0074679   -0.0482904    0.0333545
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0059081   -0.0634039    0.0515877
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0294596   -0.1232464    0.0643272
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0263649   -0.0826241    0.0298942
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0132339   -0.0504442    0.0769120
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0333548   -0.0650747   -0.0016348
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0038403   -0.0259982    0.0336789
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0062460   -0.0209867    0.0334788
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0131912   -0.0155583    0.0419407
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0080997   -0.0341221    0.0179228
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0136948   -0.0107082    0.0380979
12-15 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0482917   -0.0033808    0.0999643
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                 0.0379211   -0.0089981    0.0848403
12-15 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.0263963   -0.0654217    0.0126291
12-15 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0008067   -0.0479675    0.0463540
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0087066   -0.0473715    0.0299583
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0139043   -0.0567206    0.0289120
15-18 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                -0.0113463   -0.0484968    0.0258043
15-18 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0029782   -0.0434740    0.0494303
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                 0.0231600   -0.0169809    0.0633009
15-18 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0189358   -0.0582783    0.0204067
15-18 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0209303   -0.0306846    0.0725452
15-18 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                 0.0345972   -0.0095177    0.0787122
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0232897   -0.0391700    0.0857494
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                 0.0294798   -0.0587977    0.1177572
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0263855   -0.0245833    0.0773543
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0085696   -0.0716041    0.0544649
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                -0.0315416   -0.0710980    0.0080147
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                -0.0411582   -0.0797665   -0.0025498
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0154122   -0.0434474    0.0126230
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0175566   -0.0476843    0.0125712
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                 0.0078144   -0.0208574    0.0364862
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0245657   -0.0479998   -0.0011316
15-18 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0299755   -0.0255194    0.0854704
15-18 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0316655   -0.0829907    0.0196597
15-18 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.0106545   -0.0543807    0.0330717
15-18 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.0079177   -0.0506550    0.0348196
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                 0.0011084   -0.0380384    0.0402552
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                 0.0438460    0.0000818    0.0876102
18-21 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0166990   -0.0274760    0.0608740
18-21 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                 0.0013491   -0.0497041    0.0524023
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0211324   -0.0669794    0.0247147
18-21 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                 0.0237785   -0.0196557    0.0672126
18-21 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                -0.0571489   -0.1056394   -0.0086583
18-21 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                -0.0348981   -0.0804083    0.0106121
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                 0.0440541   -0.0120454    0.1001537
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0515937   -0.1352284    0.0320411
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0077554   -0.0470092    0.0625199
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0073404   -0.0638313    0.0785120
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0280409   -0.0120135    0.0680953
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0466917    0.0073825    0.0860009
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                -0.0071619   -0.0365593    0.0222354
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                -0.0099758   -0.0397316    0.0197801
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0155182   -0.0414077    0.0103712
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                 0.0270687    0.0020711    0.0520663
18-21 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                -0.0023837   -0.0617728    0.0570055
18-21 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                 0.0213984   -0.0330434    0.0758401
18-21 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                 0.0283031   -0.0245730    0.0811792
18-21 months   ki1114097-CONTENT       PERU                           >5%                  0%                 0.0339011   -0.0076051    0.0754072
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                -0.0013612   -0.0374052    0.0346829
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                -0.0388022   -0.0758327   -0.0017718
21-24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                 0.0129161   -0.0187736    0.0446057
21-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                -0.0200375   -0.0572399    0.0171650
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                -0.0400044   -0.0913131    0.0113043
21-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                -0.0226182   -0.0699902    0.0247539
21-24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                 0.0091276   -0.0421225    0.0603778
21-24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                -0.0112601   -0.0568082    0.0342880
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             0%                -0.0039950   -0.0542537    0.0462637
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  0%                -0.0106644   -0.0916817    0.0703530
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0438220   -0.1029045    0.0152606
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0686966   -0.1501580    0.0127649
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                 0.0021052   -0.0393658    0.0435762
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                 0.0107985   -0.0260986    0.0476957
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                 0.0231288   -0.0057739    0.0520314
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                 0.0295124   -0.0016096    0.0606343
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                -0.0396577   -0.0693653   -0.0099501
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                -0.0658346   -0.0957966   -0.0358725
21-24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                 0.0058745   -0.0568693    0.0686184
21-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                -0.0048360   -0.0561210    0.0464491
21-24 months   ki1114097-CONTENT       PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                -0.0345460   -0.1638184    0.0947264
21-24 months   ki1114097-CONTENT       PERU                           >5%                  0%                -0.1145570   -0.2231257   -0.0059883


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0092759   -0.0254825    0.0440342
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0234706   -0.0199298    0.0668711
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0084297   -0.0298893    0.0467488
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0156256   -0.0261442    0.0573953
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0115113   -0.0039487    0.0269712
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0171866   -0.0190517    0.0534248
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0138326   -0.0146620    0.0423272
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0140016   -0.0108824    0.0388857
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0063383   -0.0216720    0.0089954
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0544205   -0.1395135    0.0306725
0-3 months     ki1114097-CONTENT       PERU                           0%                   NA                -0.0097345   -0.0819049    0.0624359
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0060178   -0.0309036    0.0188680
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0094585   -0.0415979    0.0226808
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0158929   -0.0108159    0.0426016
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0065017   -0.0244450    0.0374485
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0203544   -0.0355346   -0.0051741
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0282450    0.0010813    0.0554087
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0025262   -0.0328942    0.0278417
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0134425   -0.0049803    0.0318652
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0088630   -0.0027875    0.0205134
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0038940   -0.0370457    0.0292576
3-6 months     ki1114097-CONTENT       PERU                           0%                   NA                 0.0172458   -0.0025359    0.0370275
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0170820   -0.0041974    0.0383614
6-9 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0142683   -0.0129804    0.0415171
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0059225   -0.0138546    0.0256996
6-9 months     ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0144115   -0.0083113    0.0371344
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0054643   -0.0072841    0.0182127
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0292350   -0.0563997   -0.0020703
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0030700   -0.0298378    0.0236978
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0010367   -0.0167090    0.0187825
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0065780   -0.0176427    0.0044868
6-9 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0140152   -0.0138314    0.0418618
6-9 months     ki1114097-CONTENT       PERU                           0%                   NA                 0.0107572   -0.0072690    0.0287835
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0065531   -0.0272659    0.0141596
9-12 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0026971   -0.0273993    0.0220051
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0079638   -0.0149468    0.0308744
9-12 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0203067   -0.0073684    0.0479818
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0054937   -0.0177749    0.0067875
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0025996   -0.0201700    0.0253691
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0084109   -0.0136695    0.0304912
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0091781   -0.0251738    0.0068175
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0085079   -0.0192775    0.0022618
9-12 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0182130   -0.0497137    0.0132877
9-12 months    ki1114097-CONTENT       PERU                           0%                   NA                 0.0112348   -0.0054710    0.0279406
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0080407   -0.0343489    0.0182675
12-15 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0059979   -0.0224293    0.0344251
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0106394   -0.0363751    0.0150963
12-15 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0083562   -0.0359028    0.0191903
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0023549   -0.0151397    0.0104300
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0073981   -0.0349327    0.0201366
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0088085   -0.0294636    0.0118466
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0069728   -0.0107220    0.0246676
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0021893   -0.0086810    0.0130595
12-15 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0273903   -0.0012699    0.0560506
12-15 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0053921   -0.0227312    0.0119471
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0077129   -0.0332577    0.0178320
15-18 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0053870   -0.0337893    0.0230152
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0014143   -0.0225794    0.0254080
15-18 months   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0215882   -0.0095413    0.0527177
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0058371   -0.0079227    0.0195969
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0084385   -0.0188103    0.0356872
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0279359   -0.0547463   -0.0011255
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0119476   -0.0303986    0.0065034
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0052107   -0.0156939    0.0052725
15-18 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0050771   -0.0339936    0.0238393
15-18 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0043625   -0.0219215    0.0131965
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0138614   -0.0112783    0.0390011
18-21 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0093488   -0.0248697    0.0435673
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0008859   -0.0260949    0.0278667
18-21 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0327288   -0.0630840   -0.0023736
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0074608   -0.0059802    0.0209018
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0043984   -0.0250642    0.0338611
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0297931    0.0030844    0.0565018
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0061936   -0.0256593    0.0132721
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0040475   -0.0060088    0.0141039
18-21 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0088893   -0.0243030    0.0420816
18-21 months   ki1114097-CONTENT       PERU                           0%                   NA                 0.0153250   -0.0030220    0.0336720
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0125163   -0.0345098    0.0094772
21-24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0020073   -0.0216818    0.0256965
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0207899   -0.0498033    0.0082235
21-24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0015449   -0.0325139    0.0294241
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0012754   -0.0132336    0.0106828
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0299032   -0.0611098    0.0013035
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0054958   -0.0203627    0.0313543
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0193872   -0.0006752    0.0394495
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0244421   -0.0357526   -0.0131315
21-24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0007111   -0.0299041    0.0284819
21-24 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0304810   -0.0704906    0.0095286
