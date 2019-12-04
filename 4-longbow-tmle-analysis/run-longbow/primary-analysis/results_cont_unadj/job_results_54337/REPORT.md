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

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        perdiar24    n_cell     n
-------------  -------------------------  -----------------------------  ----------  -------  ----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                8   243
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        143   243
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              92   243
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0%               91   168
0-3 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         75   168
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2   168
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                5   183
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        146   183
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%              32   183
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%               11   156
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]         95   156
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%              50   156
0-3 months     ki0047075b-MAL-ED          PERU                           0%               10   265
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]        107   265
0-3 months     ki0047075b-MAL-ED          PERU                           >5%             148   265
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               73   211
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        135   211
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3   211
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%               10   228
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        165   228
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              53   228
0-3 months     ki1000109-EE               PAKISTAN                       0%              204   303
0-3 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         99   303
0-3 months     ki1000109-EE               PAKISTAN                       >5%               0   303
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%               29   566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        340   566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             197   566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%               21   640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        425   640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             194   640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              135   721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        386   721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             200   721
0-3 months     ki1114097-CMIN             BANGLADESH                     0%                0    43
0-3 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         19    43
0-3 months     ki1114097-CMIN             BANGLADESH                     >5%              24    43
0-3 months     ki1114097-CONTENT          PERU                           0%                1    29
0-3 months     ki1114097-CONTENT          PERU                           (0%, 5%]         14    29
0-3 months     ki1114097-CONTENT          PERU                           >5%              14    29
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%               24   636
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        532   636
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%              80   636
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                6   231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        137   231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              88   231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0%              105   208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101   208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2   208
3-6 months     ki0047075b-MAL-ED          INDIA                          0%                3   230
3-6 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        185   230
3-6 months     ki0047075b-MAL-ED          INDIA                          >5%              42   230
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%               13   233
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141   233
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%              79   233
3-6 months     ki0047075b-MAL-ED          PERU                           0%                6   267
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]        106   267
3-6 months     ki0047075b-MAL-ED          PERU                           >5%             155   267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               75   243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        166   243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2   243
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9   239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        170   239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              60   239
3-6 months     ki1000109-EE               PAKISTAN                       0%              190   280
3-6 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         90   280
3-6 months     ki1000109-EE               PAKISTAN                       >5%               0   280
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%               15   523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        327   523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             181   523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%               12   598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        405   598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             181   598
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              128   695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        377   695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             190   695
3-6 months     ki1114097-CMIN             BANGLADESH                     0%                0   185
3-6 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         90   185
3-6 months     ki1114097-CMIN             BANGLADESH                     >5%              95   185
3-6 months     ki1114097-CONTENT          PERU                           0%                6   214
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]        142   214
3-6 months     ki1114097-CONTENT          PERU                           >5%              66   214
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%               13   432
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        369   432
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%              50   432
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0%                6   224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        133   224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              85   224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0%               95   198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101   198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2   198
6-9 months     ki0047075b-MAL-ED          INDIA                          0%                3   230
6-9 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        185   230
6-9 months     ki0047075b-MAL-ED          INDIA                          >5%              42   230
6-9 months     ki0047075b-MAL-ED          NEPAL                          0%               12   230
6-9 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141   230
6-9 months     ki0047075b-MAL-ED          NEPAL                          >5%              77   230
6-9 months     ki0047075b-MAL-ED          PERU                           0%                3   245
6-9 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]         99   245
6-9 months     ki0047075b-MAL-ED          PERU                           >5%             143   245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               73   231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        156   231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2   231
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                5   225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        163   225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              57   225
6-9 months     ki1000109-EE               PAKISTAN                       0%              208   304
6-9 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         96   304
6-9 months     ki1000109-EE               PAKISTAN                       >5%               0   304
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0%               53    74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]          0    74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >5%              21    74
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0%                9   498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        320   498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             169   498
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0%               10   565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        383   565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             172   565
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              131   688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        372   688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             185   688
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0%                9   213
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         57   213
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >5%             147   213
6-9 months     ki1114097-CMIN             BANGLADESH                     0%                0   177
6-9 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         75   177
6-9 months     ki1114097-CMIN             BANGLADESH                     >5%             102   177
6-9 months     ki1114097-CONTENT          PERU                           0%                6   214
6-9 months     ki1114097-CONTENT          PERU                           (0%, 5%]        141   214
6-9 months     ki1114097-CONTENT          PERU                           >5%              67   214
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0%               30   768
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        656   768
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%              82   768
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                6   225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        134   225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%              85   225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0%               93   194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         99   194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >5%               2   194
9-12 months    ki0047075b-MAL-ED          INDIA                          0%                3   227
9-12 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182   227
9-12 months    ki0047075b-MAL-ED          INDIA                          >5%              42   227
9-12 months    ki0047075b-MAL-ED          NEPAL                          0%               12   229
9-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140   229
9-12 months    ki0047075b-MAL-ED          NEPAL                          >5%              77   229
9-12 months    ki0047075b-MAL-ED          PERU                           0%                2   235
9-12 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]         96   235
9-12 months    ki0047075b-MAL-ED          PERU                           >5%             137   235
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%               70   233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        161   233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2   233
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                5   224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        164   224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              55   224
9-12 months    ki1000109-EE               PAKISTAN                       0%              226   326
9-12 months    ki1000109-EE               PAKISTAN                       (0%, 5%]        100   326
9-12 months    ki1000109-EE               PAKISTAN                       >5%               0   326
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               55    77
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]          0    77
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%              22    77
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                9   482
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        310   482
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             163   482
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                9   566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        383   566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             174   566
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              130   674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        366   674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             178   674
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                8   186
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         49   186
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             129   186
9-12 months    ki1114097-CMIN             BANGLADESH                     0%                0   160
9-12 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]         68   160
9-12 months    ki1114097-CMIN             BANGLADESH                     >5%              92   160
9-12 months    ki1114097-CONTENT          PERU                           0%                6   212
9-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]        140   212
9-12 months    ki1114097-CONTENT          PERU                           >5%              66   212
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%               39   866
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        728   866
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%              99   866
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6   212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        128   212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              78   212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0%               86   184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         96   184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2   184
12-15 months   ki0047075b-MAL-ED          INDIA                          0%                3   226
12-15 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        181   226
12-15 months   ki0047075b-MAL-ED          INDIA                          >5%              42   226
12-15 months   ki0047075b-MAL-ED          NEPAL                          0%               12   230
12-15 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141   230
12-15 months   ki0047075b-MAL-ED          NEPAL                          >5%              77   230
12-15 months   ki0047075b-MAL-ED          PERU                           0%                1   224
12-15 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         90   224
12-15 months   ki0047075b-MAL-ED          PERU                           >5%             133   224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               67   228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        160   228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1   228
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6   226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        164   226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              56   226
12-15 months   ki1000109-EE               PAKISTAN                       0%              201   297
12-15 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         96   297
12-15 months   ki1000109-EE               PAKISTAN                       >5%               0   297
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%               54    76
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]          0    76
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%              22    76
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0%                9   461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        299   461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             153   461
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0%                8   532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        356   532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             168   532
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              127   660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        354   660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             179   660
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                2    97
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         31    97
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%              64    97
12-15 months   ki1114097-CMIN             BANGLADESH                     0%                2   160
12-15 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         69   160
12-15 months   ki1114097-CMIN             BANGLADESH                     >5%              89   160
12-15 months   ki1114097-CONTENT          PERU                           0%                5   199
12-15 months   ki1114097-CONTENT          PERU                           (0%, 5%]        132   199
12-15 months   ki1114097-CONTENT          PERU                           >5%              62   199
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0%               44   873
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        726   873
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             103   873
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6   212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        127   212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              79   212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0%               79   175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         94   175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2   175
15-18 months   ki0047075b-MAL-ED          INDIA                          0%                3   226
15-18 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182   226
15-18 months   ki0047075b-MAL-ED          INDIA                          >5%              41   226
15-18 months   ki0047075b-MAL-ED          NEPAL                          0%               12   227
15-18 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        139   227
15-18 months   ki0047075b-MAL-ED          NEPAL                          >5%              76   227
15-18 months   ki0047075b-MAL-ED          PERU                           0%                1   213
15-18 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         86   213
15-18 months   ki0047075b-MAL-ED          PERU                           >5%             126   213
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               68   225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        156   225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1   225
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6   217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        158   217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              53   217
15-18 months   ki1000109-EE               PAKISTAN                       0%              189   278
15-18 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         89   278
15-18 months   ki1000109-EE               PAKISTAN                       >5%               0   278
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%               54    72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]          0    72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%              18    72
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0%                7   449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        295   449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             147   449
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0%                8   528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        355   528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             165   528
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              125   604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        321   604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             158   604
15-18 months   ki1114097-CMIN             BANGLADESH                     0%                3   163
15-18 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         70   163
15-18 months   ki1114097-CMIN             BANGLADESH                     >5%              90   163
15-18 months   ki1114097-CONTENT          PERU                           0%                5   189
15-18 months   ki1114097-CONTENT          PERU                           (0%, 5%]        124   189
15-18 months   ki1114097-CONTENT          PERU                           >5%              60   189
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0%               36   887
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]        749   887
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             102   887
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6   209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        129   209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              74   209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0%               75   167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         90   167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2   167
18-21 months   ki0047075b-MAL-ED          INDIA                          0%                3   226
18-21 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182   226
18-21 months   ki0047075b-MAL-ED          INDIA                          >5%              41   226
18-21 months   ki0047075b-MAL-ED          NEPAL                          0%               12   227
18-21 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        139   227
18-21 months   ki0047075b-MAL-ED          NEPAL                          >5%              76   227
18-21 months   ki0047075b-MAL-ED          PERU                           0%                1   202
18-21 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         86   202
18-21 months   ki0047075b-MAL-ED          PERU                           >5%             115   202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               69   233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        163   233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1   233
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6   204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        148   204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              50   204
18-21 months   ki1000109-EE               PAKISTAN                       0%              173   254
18-21 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         81   254
18-21 months   ki1000109-EE               PAKISTAN                       >5%               0   254
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5   422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        274   422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             143   422
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0%                7   541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        367   541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             167   541
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123   546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        290   546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             133   546
18-21 months   ki1114097-CMIN             BANGLADESH                     0%                2   165
18-21 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         72   165
18-21 months   ki1114097-CMIN             BANGLADESH                     >5%              91   165
18-21 months   ki1114097-CONTENT          PERU                           0%                4   183
18-21 months   ki1114097-CONTENT          PERU                           (0%, 5%]        122   183
18-21 months   ki1114097-CONTENT          PERU                           >5%              57   183
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6   207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        127   207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              74   207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0%               73   165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         91   165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               1   165
21-24 months   ki0047075b-MAL-ED          INDIA                          0%                3   226
21-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182   226
21-24 months   ki0047075b-MAL-ED          INDIA                          >5%              41   226
21-24 months   ki0047075b-MAL-ED          NEPAL                          0%               11   227
21-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140   227
21-24 months   ki0047075b-MAL-ED          NEPAL                          >5%              76   227
21-24 months   ki0047075b-MAL-ED          PERU                           0%                1   189
21-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         80   189
21-24 months   ki0047075b-MAL-ED          PERU                           >5%             108   189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               71   235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        163   235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1   235
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6   204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        148   204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              50   204
21-24 months   ki1000109-EE               PAKISTAN                       0%               75   106
21-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         31   106
21-24 months   ki1000109-EE               PAKISTAN                       >5%               0   106
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5   411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        267   411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             139   411
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                8   471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        320   471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             143   471
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              122   490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        260   490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             108   490
21-24 months   ki1114097-CMIN             BANGLADESH                     0%                2   133
21-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         61   133
21-24 months   ki1114097-CMIN             BANGLADESH                     >5%              70   133
21-24 months   ki1114097-CONTENT          PERU                           0%                0    38
21-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]         26    38
21-24 months   ki1114097-CONTENT          PERU                           >5%              12    38


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
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/cc4012bb-270d-4dc3-bd47-a73f9ecebc7f/498060ed-2ea2-4952-a265-11c683dff54a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cc4012bb-270d-4dc3-bd47-a73f9ecebc7f/498060ed-2ea2-4952-a265-11c683dff54a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/cc4012bb-270d-4dc3-bd47-a73f9ecebc7f/498060ed-2ea2-4952-a265-11c683dff54a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0%                   NA                -0.1699679   -0.3891484    0.0492125
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     (0%, 5%]             NA                -0.1217194   -0.1646292   -0.0788096
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     >5%                  NA                -0.1189061   -0.1747720   -0.0630402
0-3 months     ki0047075b-MAL-ED         INDIA                          0%                   NA                 0.2602543   -0.4826383    1.0031468
0-3 months     ki0047075b-MAL-ED         INDIA                          (0%, 5%]             NA                -0.0608086   -0.1096698   -0.0119474
0-3 months     ki0047075b-MAL-ED         INDIA                          >5%                  NA                -0.1008508   -0.2309497    0.0292481
0-3 months     ki0047075b-MAL-ED         NEPAL                          0%                   NA                 0.1474214   -0.0556950    0.3505379
0-3 months     ki0047075b-MAL-ED         NEPAL                          (0%, 5%]             NA                 0.0259919   -0.0311325    0.0831163
0-3 months     ki0047075b-MAL-ED         NEPAL                          >5%                  NA                 0.0890420    0.0186025    0.1594814
0-3 months     ki0047075b-MAL-ED         PERU                           0%                   NA                -0.2795368   -0.3833566   -0.1757171
0-3 months     ki0047075b-MAL-ED         PERU                           (0%, 5%]             NA                -0.2741871   -0.3276877   -0.2206865
0-3 months     ki0047075b-MAL-ED         PERU                           >5%                  NA                -0.2534377   -0.3000842   -0.2067913
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0552688   -0.2843847    0.1738471
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.1191817   -0.1613855   -0.0769779
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.2104165   -0.3037441   -0.1170889
0-3 months     ki1017093-NIH-Birth       BANGLADESH                     0%                   NA                -0.2345430   -0.3594210   -0.1096650
0-3 months     ki1017093-NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.2469128   -0.2804788   -0.2133467
0-3 months     ki1017093-NIH-Birth       BANGLADESH                     >5%                  NA                -0.2058490   -0.2519726   -0.1597255
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0%                   NA                -0.2300325   -0.3333027   -0.1267624
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     (0%, 5%]             NA                -0.1806529   -0.2011323   -0.1601735
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     >5%                  NA                -0.1996782   -0.2334050   -0.1659513
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0%                   NA                -0.2694554   -0.3004463   -0.2384645
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     (0%, 5%]             NA                -0.2326832   -0.2569565   -0.2084098
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     >5%                  NA                -0.2027341   -0.2384179   -0.1670502
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0%                   NA                -0.4646290   -1.1168994    0.1876414
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     (0%, 5%]             NA                -0.2628970   -0.3242365   -0.2015575
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     >5%                  NA                -0.3524547   -0.4809906   -0.2239187
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0%                   NA                -0.0686357   -0.1895569    0.0522855
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     (0%, 5%]             NA                -0.0105436   -0.0409002    0.0198130
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     >5%                  NA                -0.0378129   -0.0766346    0.0010089
3-6 months     ki0047075b-MAL-ED         NEPAL                          0%                   NA                 0.0220009   -0.0987531    0.1427549
3-6 months     ki0047075b-MAL-ED         NEPAL                          (0%, 5%]             NA                -0.0113780   -0.0428533    0.0200974
3-6 months     ki0047075b-MAL-ED         NEPAL                          >5%                  NA                -0.0513797   -0.1017459   -0.0010135
3-6 months     ki0047075b-MAL-ED         PERU                           0%                   NA                -0.0244631   -0.1645792    0.1156530
3-6 months     ki0047075b-MAL-ED         PERU                           (0%, 5%]             NA                 0.0338811   -0.0162510    0.0840133
3-6 months     ki0047075b-MAL-ED         PERU                           >5%                  NA                 0.0221263   -0.0189194    0.0631720
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1861760   -0.3660316   -0.0063204
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0689888   -0.1077479   -0.0302296
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0576089   -0.1167937    0.0015758
3-6 months     ki1017093-NIH-Birth       BANGLADESH                     0%                   NA                -0.0199552   -0.1432948    0.1033843
3-6 months     ki1017093-NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.0463931   -0.0737550   -0.0190311
3-6 months     ki1017093-NIH-Birth       BANGLADESH                     >5%                  NA                -0.0616089   -0.1007008   -0.0225170
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0%                   NA                -0.1086262   -0.2142967   -0.0029556
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     (0%, 5%]             NA                -0.0307851   -0.0506155   -0.0109547
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     >5%                  NA                -0.0129950   -0.0394598    0.0134697
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0%                   NA                 0.0856443    0.0461557    0.1251328
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     (0%, 5%]             NA                 0.0190689   -0.0046450    0.0427828
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     >5%                  NA                 0.0024026   -0.0258683    0.0306735
3-6 months     ki1114097-CONTENT         PERU                           0%                   NA                 0.0320500   -0.1094757    0.1735756
3-6 months     ki1114097-CONTENT         PERU                           (0%, 5%]             NA                 0.0086783   -0.0174770    0.0348337
3-6 months     ki1114097-CONTENT         PERU                           >5%                  NA                 0.0197760   -0.0247381    0.0642901
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0%                   NA                 0.1250928   -0.0154603    0.2656458
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     (0%, 5%]             NA                -0.0226528   -0.0559481    0.0106425
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     >5%                  NA                 0.0000073   -0.0458428    0.0458574
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0%                   NA                -0.1241995   -0.2070404   -0.0413586
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     (0%, 5%]             NA                -0.0792840   -0.1014059   -0.0571621
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     >5%                  NA                -0.0517085   -0.0800878   -0.0233291
6-9 months     ki0047075b-MAL-ED         NEPAL                          0%                   NA                -0.1033373   -0.1818969   -0.0247777
6-9 months     ki0047075b-MAL-ED         NEPAL                          (0%, 5%]             NA                -0.0312139   -0.0554646   -0.0069632
6-9 months     ki0047075b-MAL-ED         NEPAL                          >5%                  NA                -0.0299674   -0.0639392    0.0040044
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1196419   -0.3177752    0.0784913
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0764083   -0.1154432   -0.0373734
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1397272   -0.2060870   -0.0733673
6-9 months     ki1017093-NIH-Birth       BANGLADESH                     0%                   NA                -0.0170373   -0.0787189    0.0446443
6-9 months     ki1017093-NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.0472336   -0.0697009   -0.0247663
6-9 months     ki1017093-NIH-Birth       BANGLADESH                     >5%                  NA                -0.0851491   -0.1154029   -0.0548952
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     0%                   NA                -0.0103155   -0.0692259    0.0485949
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     (0%, 5%]             NA                -0.0597875   -0.0726278   -0.0469471
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     >5%                  NA                -0.0680474   -0.0886173   -0.0474776
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     0%                   NA                -0.0324169   -0.0598051   -0.0050287
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     (0%, 5%]             NA                -0.0353609   -0.0528937   -0.0178281
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     >5%                  NA                -0.0225806   -0.0476322    0.0024710
6-9 months     ki1112895-Guatemala BSC   GUATEMALA                      0%                   NA                -0.0964868   -0.1811437   -0.0118298
6-9 months     ki1112895-Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                -0.0835836   -0.1168646   -0.0503026
6-9 months     ki1112895-Guatemala BSC   GUATEMALA                      >5%                  NA                -0.0995576   -0.1241789   -0.0749363
6-9 months     ki1114097-CONTENT         PERU                           0%                   NA                -0.0920051   -0.1285856   -0.0554247
6-9 months     ki1114097-CONTENT         PERU                           (0%, 5%]             NA                -0.0309735   -0.0571809   -0.0047662
6-9 months     ki1114097-CONTENT         PERU                           >5%                  NA                -0.0039663   -0.0414793    0.0335467
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     0%                   NA                -0.0412323   -0.1219334    0.0394688
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     (0%, 5%]             NA                -0.0438357   -0.0614943   -0.0261772
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     >5%                  NA                -0.0621597   -0.1152197   -0.0090997
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0%                   NA                -0.0428483   -0.1819520    0.0962554
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     (0%, 5%]             NA                -0.0862417   -0.1071220   -0.0653615
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     >5%                  NA                -0.0918556   -0.1172131   -0.0664982
9-12 months    ki0047075b-MAL-ED         NEPAL                          0%                   NA                -0.0234012   -0.0994051    0.0526027
9-12 months    ki0047075b-MAL-ED         NEPAL                          (0%, 5%]             NA                -0.0552907   -0.0765691   -0.0340123
9-12 months    ki0047075b-MAL-ED         NEPAL                          >5%                  NA                -0.0810959   -0.1103146   -0.0518771
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1405450   -0.3458944    0.0648044
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.1587602   -0.1953272   -0.1221931
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1449637   -0.2260492   -0.0638783
9-12 months    ki1017093-NIH-Birth       BANGLADESH                     0%                   NA                 0.0046086   -0.0377590    0.0469761
9-12 months    ki1017093-NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.0416140   -0.0594274   -0.0238006
9-12 months    ki1017093-NIH-Birth       BANGLADESH                     >5%                  NA                -0.0467116   -0.0724943   -0.0209289
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     0%                   NA                -0.1769192   -0.2196225   -0.1342160
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     (0%, 5%]             NA                -0.0607245   -0.0740040   -0.0474449
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     >5%                  NA                -0.0622693   -0.0820703   -0.0424683
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0%                   NA                -0.0272712   -0.0525173   -0.0020250
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     (0%, 5%]             NA                -0.0359455   -0.0506968   -0.0211942
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     >5%                  NA                -0.0360481   -0.0573820   -0.0147142
9-12 months    ki1112895-Guatemala BSC   GUATEMALA                      0%                   NA                -0.0472234   -0.1032246    0.0087778
9-12 months    ki1112895-Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                -0.0612346   -0.0884043   -0.0340648
9-12 months    ki1112895-Guatemala BSC   GUATEMALA                      >5%                  NA                -0.0584856   -0.0785781   -0.0383930
9-12 months    ki1114097-CONTENT         PERU                           0%                   NA                -0.0067510   -0.1257218    0.1122197
9-12 months    ki1114097-CONTENT         PERU                           (0%, 5%]             NA                -0.0146825   -0.0357687    0.0064037
9-12 months    ki1114097-CONTENT         PERU                           >5%                  NA                -0.0404173   -0.0670881   -0.0137465
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0%                   NA                -0.0723461   -0.1577976    0.0131054
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     (0%, 5%]             NA                -0.0603601   -0.0751143   -0.0456059
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     >5%                  NA                -0.0407003   -0.0739406   -0.0074600
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0%                   NA                 0.0544392   -0.0500140    0.1588925
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     (0%, 5%]             NA                -0.0681257   -0.0859838   -0.0502675
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     >5%                  NA                -0.0438149   -0.0719969   -0.0156328
12-15 months   ki0047075b-MAL-ED         NEPAL                          0%                   NA                -0.0922199   -0.1670461   -0.0173937
12-15 months   ki0047075b-MAL-ED         NEPAL                          (0%, 5%]             NA                -0.0573609   -0.0763734   -0.0383484
12-15 months   ki0047075b-MAL-ED         NEPAL                          >5%                  NA                -0.0522093   -0.0799686   -0.0244501
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1170555   -0.2766061    0.0424950
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0644898   -0.0943649   -0.0346146
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0784977   -0.1259484   -0.0310471
12-15 months   ki1017093-NIH-Birth       BANGLADESH                     0%                   NA                -0.1716576   -0.2292772   -0.1140380
12-15 months   ki1017093-NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.1285232   -0.1519456   -0.1051008
12-15 months   ki1017093-NIH-Birth       BANGLADESH                     >5%                  NA                -0.1182591   -0.1402289   -0.0962894
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     0%                   NA                 0.0368531   -0.0323290    0.1060351
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     (0%, 5%]             NA                -0.0453049   -0.0573064   -0.0333035
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     >5%                  NA                -0.0353022   -0.0536547   -0.0169497
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     0%                   NA                -0.0457261   -0.0665268   -0.0249255
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     (0%, 5%]             NA                -0.0367150   -0.0492948   -0.0241353
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     >5%                  NA                -0.0362812   -0.0559045   -0.0166579
12-15 months   ki1114097-CONTENT         PERU                           0%                   NA                -0.1513467   -0.2123072   -0.0903861
12-15 months   ki1114097-CONTENT         PERU                           (0%, 5%]             NA                -0.0668607   -0.0887579   -0.0449636
12-15 months   ki1114097-CONTENT         PERU                           >5%                  NA                -0.0811295   -0.1047731   -0.0574859
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0%                   NA                -0.0524260   -0.1111522    0.0063001
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     (0%, 5%]             NA                -0.0445787   -0.0584756   -0.0306819
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     >5%                  NA                -0.0366978   -0.0646460   -0.0087496
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0%                   NA                -0.0589846   -0.1714593    0.0534900
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     (0%, 5%]             NA                -0.0472410   -0.0630272   -0.0314547
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     >5%                  NA                -0.0424669   -0.0667479   -0.0181858
15-18 months   ki0047075b-MAL-ED         NEPAL                          0%                   NA                -0.0279070   -0.0920227    0.0362087
15-18 months   ki0047075b-MAL-ED         NEPAL                          (0%, 5%]             NA                -0.0489582   -0.0683751   -0.0295414
15-18 months   ki0047075b-MAL-ED         NEPAL                          >5%                  NA                -0.0701325   -0.0954000   -0.0448649
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0491855   -0.2113655    0.1129945
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0928352   -0.1185335   -0.0671369
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0682932   -0.1143161   -0.0222702
15-18 months   ki1017093-NIH-Birth       BANGLADESH                     0%                   NA                 0.1144186    0.0128970    0.2159403
15-18 months   ki1017093-NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.0584344   -0.0766934   -0.0401754
15-18 months   ki1017093-NIH-Birth       BANGLADESH                     >5%                  NA                -0.0643936   -0.0883060   -0.0404812
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     0%                   NA                -0.0065762   -0.0542356    0.0410832
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     (0%, 5%]             NA                -0.0354485   -0.0460499   -0.0248470
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     >5%                  NA                -0.0438732   -0.0595570   -0.0281894
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     0%                   NA                -0.0140540   -0.0327508    0.0046428
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     (0%, 5%]             NA                -0.0143649   -0.0260518   -0.0026780
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     >5%                  NA                -0.0243301   -0.0396310   -0.0090293
15-18 months   ki1114097-CONTENT         PERU                           0%                   NA                 0.0762675   -0.0201719    0.1727070
15-18 months   ki1114097-CONTENT         PERU                           (0%, 5%]             NA                -0.0012263   -0.0229371    0.0204844
15-18 months   ki1114097-CONTENT         PERU                           >5%                  NA                -0.0326015   -0.0584473   -0.0067557
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0%                   NA                -0.0359174   -0.0855531    0.0137183
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     (0%, 5%]             NA                -0.0411786   -0.0540448   -0.0283125
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     >5%                  NA                -0.0431635   -0.0728815   -0.0134456
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0%                   NA                -0.0173173   -0.0820274    0.0473927
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     (0%, 5%]             NA                -0.0238155   -0.0386813   -0.0089497
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     >5%                  NA                -0.0009184   -0.0199363    0.0180995
18-21 months   ki0047075b-MAL-ED         NEPAL                          0%                   NA                -0.0283904   -0.1118257    0.0550449
18-21 months   ki0047075b-MAL-ED         NEPAL                          (0%, 5%]             NA                -0.0315640   -0.0484919   -0.0146362
18-21 months   ki0047075b-MAL-ED         NEPAL                          >5%                  NA                -0.0217343   -0.0411828   -0.0022857
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0072606   -0.2038434    0.1893221
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0179492   -0.0438659    0.0079675
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0610682   -0.1078138   -0.0143226
18-21 months   ki1017093-NIH-Birth       BANGLADESH                     0%                   NA                -0.1328520   -0.1621791   -0.1035249
18-21 months   ki1017093-NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.0425880   -0.0575093   -0.0276667
18-21 months   ki1017093-NIH-Birth       BANGLADESH                     >5%                  NA                -0.0270404   -0.0496448   -0.0044361
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     0%                   NA                 0.0194731   -0.0122865    0.0512328
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     (0%, 5%]             NA                -0.0127051   -0.0226683   -0.0027420
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     >5%                  NA                -0.0083354   -0.0228718    0.0062010
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     0%                   NA                -0.0229116   -0.0397803   -0.0060428
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     (0%, 5%]             NA                -0.0250962   -0.0359715   -0.0142209
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     >5%                  NA                -0.0389091   -0.0555592   -0.0222591
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0%                   NA                 0.0313450   -0.0309326    0.0936227
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     (0%, 5%]             NA                 0.0306186    0.0160224    0.0452149
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     >5%                  NA                 0.0165721   -0.0057319    0.0388760
21-24 months   ki0047075b-MAL-ED         NEPAL                          0%                   NA                -0.0409527   -0.0804502   -0.0014553
21-24 months   ki0047075b-MAL-ED         NEPAL                          (0%, 5%]             NA                 0.0090423   -0.0094501    0.0275347
21-24 months   ki0047075b-MAL-ED         NEPAL                          >5%                  NA                 0.0055631   -0.0159528    0.0270789
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0516348   -0.1672834    0.0640137
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0047101   -0.0215964    0.0310167
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.0283203   -0.0107756    0.0674161
21-24 months   ki1017093-NIH-Birth       BANGLADESH                     0%                   NA                 0.0825066    0.0285632    0.1364501
21-24 months   ki1017093-NIH-Birth       BANGLADESH                     (0%, 5%]             NA                 0.0386224    0.0242708    0.0529740
21-24 months   ki1017093-NIH-Birth       BANGLADESH                     >5%                  NA                 0.0431617    0.0224378    0.0638856
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     0%                   NA                -0.0101859   -0.0303158    0.0099441
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     (0%, 5%]             NA                 0.0498413    0.0390789    0.0606037
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     >5%                  NA                 0.0413188    0.0264141    0.0562235
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0%                   NA                 0.0712214    0.0561672    0.0862756
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     (0%, 5%]             NA                 0.0561664    0.0447341    0.0675987
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     >5%                  NA                 0.0509365    0.0325300    0.0693430


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                -0.2628007   -0.2968934   -0.2287079
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     ki1017093-NIH-Birth       BANGLADESH                     NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.2817746   -0.3395565   -0.2239928
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1017093-NIH-Birth       BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1114097-CONTENT         PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0155841   -0.0450436    0.0138754
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     ki1017093-NIH-Birth       BANGLADESH                     NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1112895-Guatemala BSC   GUATEMALA                      NA                   NA                -0.0951531   -0.1146913   -0.0756149
6-9 months     ki1114097-CONTENT         PERU                           NA                   NA                -0.0242292   -0.0452610   -0.0031973
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0456905   -0.0618720   -0.0295090
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    ki1017093-NIH-Birth       BANGLADESH                     NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1112895-Guatemala BSC   GUATEMALA                      NA                   NA                -0.0587254   -0.0745802   -0.0428705
9-12 months    ki1114097-CONTENT         PERU                           NA                   NA                -0.0224698   -0.0391090   -0.0058306
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0586524   -0.0721516   -0.0451533
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   ki1017093-NIH-Birth       BANGLADESH                     NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1114097-CONTENT         PERU                           NA                   NA                -0.0734290   -0.0899048   -0.0569533
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0440444   -0.0564983   -0.0315906
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   ki1017093-NIH-Birth       BANGLADESH                     NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1114097-CONTENT         PERU                           NA                   NA                -0.0091366   -0.0260209    0.0077477
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0411934   -0.0526508   -0.0297359
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   ki1017093-NIH-Birth       BANGLADESH                     NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   ki1017093-NIH-Birth       BANGLADESH                     NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927


### Parameter: ATE


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     (0%, 5%]             0%                 0.0482485   -0.1750927    0.2715898
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     >5%                  0%                 0.0510619   -0.1751262    0.2772500
0-3 months     ki0047075b-MAL-ED         INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          (0%, 5%]             0%                -0.3210628   -1.0655605    0.4234348
0-3 months     ki0047075b-MAL-ED         INDIA                          >5%                  0%                -0.3611051   -1.1153033    0.3930932
0-3 months     ki0047075b-MAL-ED         NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          (0%, 5%]             0%                -0.1214296   -0.3324260    0.0895669
0-3 months     ki0047075b-MAL-ED         NEPAL                          >5%                  0%                -0.0583795   -0.2733632    0.1566043
0-3 months     ki0047075b-MAL-ED         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           (0%, 5%]             0%                 0.0053497   -0.1114444    0.1221438
0-3 months     ki0047075b-MAL-ED         PERU                           >5%                  0%                 0.0260991   -0.0877185    0.1399166
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0639129   -0.2968834    0.1690576
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.1551476   -0.4025423    0.0922471
0-3 months     ki1017093-NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0123698   -0.1416802    0.1169407
0-3 months     ki1017093-NIH-Birth       BANGLADESH                     >5%                  0%                 0.0286940   -0.1044296    0.1618176
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     (0%, 5%]             0%                 0.0493796   -0.0559016    0.1546609
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     >5%                  0%                 0.0303544   -0.0782837    0.1389925
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     (0%, 5%]             0%                 0.0367722   -0.0025932    0.0761375
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     >5%                  0%                 0.0667213    0.0194585    0.1139841
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     (0%, 5%]             0%                 0.2017320   -0.4533259    0.8567899
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     >5%                  0%                 0.1121743   -0.5535863    0.7779349
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     (0%, 5%]             0%                 0.0580922   -0.0665812    0.1827656
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     >5%                  0%                 0.0308229   -0.0961774    0.1578231
3-6 months     ki0047075b-MAL-ED         NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          (0%, 5%]             0%                -0.0333789   -0.1581676    0.0914098
3-6 months     ki0047075b-MAL-ED         NEPAL                          >5%                  0%                -0.0733806   -0.2042175    0.0574563
3-6 months     ki0047075b-MAL-ED         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           (0%, 5%]             0%                 0.0583442   -0.0904702    0.2071587
3-6 months     ki0047075b-MAL-ED         PERU                           >5%                  0%                 0.0465894   -0.0994149    0.1925937
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1171873   -0.0667973    0.3011718
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1285671   -0.0607762    0.3179104
3-6 months     ki1017093-NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0264378   -0.1527759    0.0999003
3-6 months     ki1017093-NIH-Birth       BANGLADESH                     >5%                  0%                -0.0416536   -0.1710399    0.0877327
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     (0%, 5%]             0%                 0.0778411   -0.0296740    0.1853563
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     >5%                  0%                 0.0956312   -0.0133030    0.2045653
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     (0%, 5%]             0%                -0.0665753   -0.1126372   -0.0205135
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     >5%                  0%                -0.0832416   -0.1318070   -0.0346763
3-6 months     ki1114097-CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT         PERU                           (0%, 5%]             0%                -0.0233716   -0.1672938    0.1205506
3-6 months     ki1114097-CONTENT         PERU                           >5%                  0%                -0.0122739   -0.1606350    0.1360871
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     (0%, 5%]             0%                -0.1477456   -0.2919850   -0.0035061
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     >5%                  0%                -0.1250854   -0.2759788    0.0258079
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     (0%, 5%]             0%                 0.0449155   -0.0408282    0.1306593
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     >5%                  0%                 0.0724911   -0.0150761    0.1600582
6-9 months     ki0047075b-MAL-ED         NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         NEPAL                          (0%, 5%]             0%                 0.0721234   -0.0100940    0.1543408
6-9 months     ki0047075b-MAL-ED         NEPAL                          >5%                  0%                 0.0733699   -0.0122203    0.1589602
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0432336   -0.1587082    0.2451754
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0200853   -0.2290360    0.1888655
6-9 months     ki1017093-NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0301964   -0.0958424    0.0354496
6-9 months     ki1017093-NIH-Birth       BANGLADESH                     >5%                  0%                -0.0681118   -0.1368135    0.0005898
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     (0%, 5%]             0%                -0.0494719   -0.1097654    0.0108216
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     >5%                  0%                -0.0577319   -0.1201303    0.0046664
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     (0%, 5%]             0%                -0.0029439   -0.0354634    0.0295755
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     >5%                  0%                 0.0098363   -0.0272811    0.0469536
6-9 months     ki1112895-Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                 0.0129032   -0.0780606    0.1038670
6-9 months     ki1112895-Guatemala BSC   GUATEMALA                      >5%                  0%                -0.0030708   -0.0912355    0.0850938
6-9 months     ki1114097-CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT         PERU                           (0%, 5%]             0%                 0.0610316    0.0160321    0.1060311
6-9 months     ki1114097-CONTENT         PERU                           >5%                  0%                 0.0880389    0.0356427    0.1404350
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     (0%, 5%]             0%                -0.0026034   -0.0859316    0.0807247
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     >5%                  0%                -0.0209274   -0.1171678    0.0753130
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     (0%, 5%]             0%                -0.0433934   -0.1840555    0.0972686
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     >5%                  0%                -0.0490074   -0.1904034    0.0923887
9-12 months    ki0047075b-MAL-ED         NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         NEPAL                          (0%, 5%]             0%                -0.0318895   -0.1108158    0.0470369
9-12 months    ki0047075b-MAL-ED         NEPAL                          >5%                  0%                -0.0576946   -0.1391215    0.0237322
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0182152   -0.2267950    0.1903646
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0044187   -0.2251974    0.2163600
9-12 months    ki1017093-NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0462226   -0.0921826   -0.0002625
9-12 months    ki1017093-NIH-Birth       BANGLADESH                     >5%                  0%                -0.0513202   -0.1009161   -0.0017242
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     (0%, 5%]             0%                 0.1161948    0.0714744    0.1609152
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     >5%                  0%                 0.1146499    0.0675793    0.1617206
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     (0%, 5%]             0%                -0.0086743   -0.0379141    0.0205655
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     >5%                  0%                -0.0087770   -0.0418300    0.0242761
9-12 months    ki1112895-Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                -0.0140112   -0.0762553    0.0482329
9-12 months    ki1112895-Guatemala BSC   GUATEMALA                      >5%                  0%                -0.0112621   -0.0707588    0.0482345
9-12 months    ki1114097-CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT         PERU                           (0%, 5%]             0%                -0.0079315   -0.1287565    0.1128934
9-12 months    ki1114097-CONTENT         PERU                           >5%                  0%                -0.0336663   -0.1555899    0.0882574
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     (0%, 5%]             0%                 0.0119860   -0.0741985    0.0981705
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     >5%                  0%                 0.0316458   -0.0592152    0.1225069
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     (0%, 5%]             0%                -0.1225649   -0.2285338   -0.0165961
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     >5%                  0%                -0.0982541   -0.2064424    0.0099342
12-15 months   ki0047075b-MAL-ED         NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         NEPAL                          (0%, 5%]             0%                 0.0348590   -0.0423449    0.1120628
12-15 months   ki0047075b-MAL-ED         NEPAL                          >5%                  0%                 0.0400105   -0.0397989    0.1198199
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0525658   -0.1097577    0.2148892
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0385578   -0.1278992    0.2050148
12-15 months   ki1017093-NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0431344   -0.0190639    0.1053327
12-15 months   ki1017093-NIH-Birth       BANGLADESH                     >5%                  0%                 0.0533985   -0.0082674    0.1150644
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     (0%, 5%]             0%                -0.0821580   -0.1523733   -0.0119427
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     >5%                  0%                -0.0721553   -0.1437302   -0.0005804
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     (0%, 5%]             0%                 0.0090111   -0.0152977    0.0333199
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     >5%                  0%                 0.0094449   -0.0191513    0.0380411
12-15 months   ki1114097-CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT         PERU                           (0%, 5%]             0%                 0.0844859    0.0197119    0.1492600
12-15 months   ki1114097-CONTENT         PERU                           >5%                  0%                 0.0702172    0.0048321    0.1356023
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     (0%, 5%]             0%                 0.0078473   -0.0518306    0.0675253
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     >5%                  0%                 0.0157283   -0.0502156    0.0816722
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     (0%, 5%]             0%                 0.0117437   -0.1018333    0.1253207
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     >5%                  0%                 0.0165178   -0.0985479    0.1315835
15-18 months   ki0047075b-MAL-ED         NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         NEPAL                          (0%, 5%]             0%                -0.0210512   -0.0880425    0.0459401
15-18 months   ki0047075b-MAL-ED         NEPAL                          >5%                  0%                -0.0422254   -0.1111404    0.0266896
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0436497   -0.2078531    0.1205537
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0191077   -0.1876914    0.1494760
15-18 months   ki1017093-NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.1728530   -0.2760036   -0.0697025
15-18 months   ki1017093-NIH-Birth       BANGLADESH                     >5%                  0%                -0.1788123   -0.2831121   -0.0745125
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     (0%, 5%]             0%                -0.0288722   -0.0776965    0.0199520
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     >5%                  0%                -0.0372970   -0.0874707    0.0128767
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     (0%, 5%]             0%                -0.0003109   -0.0223598    0.0217380
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     >5%                  0%                -0.0102762   -0.0344358    0.0138834
15-18 months   ki1114097-CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT         PERU                           (0%, 5%]             0%                -0.0774938   -0.1763469    0.0213592
15-18 months   ki1114097-CONTENT         PERU                           >5%                  0%                -0.1088690   -0.2087118   -0.0090263
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     (0%, 5%]             0%                -0.0052612   -0.0580035    0.0474810
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     >5%                  0%                -0.0072461   -0.0640024    0.0495101
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     (0%, 5%]             0%                -0.0064982   -0.0728939    0.0598975
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     >5%                  0%                 0.0163989   -0.0510479    0.0838457
18-21 months   ki0047075b-MAL-ED         NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         NEPAL                          (0%, 5%]             0%                -0.0031736   -0.0883089    0.0819616
18-21 months   ki0047075b-MAL-ED         NEPAL                          >5%                  0%                 0.0066561   -0.0790159    0.0923282
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0106886   -0.2089724    0.1875952
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0538075   -0.2558717    0.1482566
18-21 months   ki1017093-NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0902640    0.0573592    0.1231687
18-21 months   ki1017093-NIH-Birth       BANGLADESH                     >5%                  0%                 0.1058116    0.0687841    0.1428391
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     (0%, 5%]             0%                -0.0321783   -0.0654640    0.0011074
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     >5%                  0%                -0.0278085   -0.0627367    0.0071197
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     (0%, 5%]             0%                -0.0021846   -0.0222552    0.0178859
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     >5%                  0%                -0.0159975   -0.0396994    0.0077043
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     (0%, 5%]             0%                -0.0007264   -0.0646917    0.0632388
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     >5%                  0%                -0.0147730   -0.0809241    0.0513781
21-24 months   ki0047075b-MAL-ED         NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         NEPAL                          (0%, 5%]             0%                 0.0499950    0.0063829    0.0936072
21-24 months   ki0047075b-MAL-ED         NEPAL                          >5%                  0%                 0.0465158    0.0015383    0.0914934
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0563450   -0.0622578    0.1749477
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0799551   -0.0421230    0.2020332
21-24 months   ki1017093-NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0438842   -0.0997041    0.0119357
21-24 months   ki1017093-NIH-Birth       BANGLADESH                     >5%                  0%                -0.0393449   -0.0971323    0.0184424
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     (0%, 5%]             0%                 0.0600271    0.0372007    0.0828535
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     >5%                  0%                 0.0515047    0.0264574    0.0765520
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     (0%, 5%]             0%                -0.0150550   -0.0339581    0.0038481
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     >5%                  0%                -0.0202849   -0.0440637    0.0034938


### Parameter: PAR


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0%                   NA                 0.0477252   -0.1667864    0.2622369
0-3 months     ki0047075b-MAL-ED         INDIA                          0%                   NA                -0.3192925   -1.0433408    0.4047557
0-3 months     ki0047075b-MAL-ED         NEPAL                          0%                   NA                -0.0926588   -0.2860494    0.1007317
0-3 months     ki0047075b-MAL-ED         PERU                           0%                   NA                 0.0167362   -0.0887502    0.1222226
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0823177   -0.3046325    0.1399970
0-3 months     ki1017093-NIH-Birth       BANGLADESH                     0%                   NA                 0.0025565   -0.1187045    0.1238175
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0%                   NA                 0.0419923   -0.0593320    0.1433167
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     0%                   NA                 0.0381946    0.0081286    0.0682606
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0%                   NA                 0.1828543   -0.4500771    0.8157858
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0%                   NA                 0.0461950   -0.0738838    0.1662737
3-6 months     ki0047075b-MAL-ED         NEPAL                          0%                   NA                -0.0450794   -0.1619638    0.0718051
3-6 months     ki0047075b-MAL-ED         PERU                           0%                   NA                 0.0502092   -0.0898921    0.1903104
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1156312   -0.0602873    0.2915497
3-6 months     ki1017093-NIH-Birth       BANGLADESH                     0%                   NA                -0.0309455   -0.1527191    0.0908282
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0%                   NA                 0.0816637   -0.0225513    0.1858787
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     0%                   NA                -0.0588702   -0.0944746   -0.0232658
3-6 months     ki1114097-CONTENT         PERU                           0%                   NA                -0.0192937   -0.1586222    0.1200349
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     0%                   NA                -0.1406768   -0.2815248    0.0001711
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0%                   NA                 0.0541763   -0.0282422    0.1365949
6-9 months     ki0047075b-MAL-ED         NEPAL                          0%                   NA                 0.0687778   -0.0080282    0.1455837
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0262321   -0.1697627    0.2222268
6-9 months     ki1017093-NIH-Birth       BANGLADESH                     0%                   NA                -0.0425175   -0.1052337    0.0201986
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     0%                   NA                -0.0511109   -0.1095444    0.0073226
6-9 months     ki1017093c-NIH-Crypto     BANGLADESH                     0%                   NA                 0.0010531   -0.0239882    0.0260945
6-9 months     ki1112895-Guatemala BSC   GUATEMALA                      0%                   NA                 0.0013336   -0.0819904    0.0846577
6-9 months     ki1114097-CONTENT         PERU                           0%                   NA                 0.0677760    0.0264791    0.1090729
6-9 months     kiGH5241-JiVitA-4         BANGLADESH                     0%                   NA                -0.0044582   -0.0842301    0.0753136
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0%                   NA                -0.0443571   -0.1806621    0.0919479
9-12 months    ki0047075b-MAL-ED         NEPAL                          0%                   NA                -0.0388953   -0.1127643    0.0349738
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0144211   -0.2173992    0.1885571
9-12 months    ki1017093-NIH-Birth       BANGLADESH                     0%                   NA                -0.0470834   -0.0908331   -0.0033336
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     0%                   NA                 0.1138722    0.0708285    0.1569159
9-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     0%                   NA                -0.0070283   -0.0296378    0.0155811
9-12 months    ki1112895-Guatemala BSC   GUATEMALA                      0%                   NA                -0.0115020   -0.0673386    0.0443347
9-12 months    ki1114097-CONTENT         PERU                           0%                   NA                -0.0157188   -0.1324652    0.1010276
9-12 months    kiGH5241-JiVitA-4         BANGLADESH                     0%                   NA                 0.0136937   -0.0683096    0.0956970
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0%                   NA                -0.1101516   -0.2127884   -0.0075147
12-15 months   ki0047075b-MAL-ED         NEPAL                          0%                   NA                 0.0347649   -0.0377154    0.1072452
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0476992   -0.1095667    0.2049651
12-15 months   ki1017093-NIH-Birth       BANGLADESH                     0%                   NA                 0.0456988   -0.0129577    0.1043553
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     0%                   NA                -0.0777638   -0.1459455   -0.0095821
12-15 months   ki1017093c-NIH-Crypto     BANGLADESH                     0%                   NA                 0.0073948   -0.0114759    0.0262655
12-15 months   ki1114097-CONTENT         PERU                           0%                   NA                 0.0779176    0.0162662    0.1395690
12-15 months   kiGH5241-JiVitA-4         BANGLADESH                     0%                   NA                 0.0083816   -0.0482441    0.0650073
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0%                   NA                 0.0131904   -0.0968828    0.1232635
15-18 months   ki0047075b-MAL-ED         NEPAL                          0%                   NA                -0.0270275   -0.0895012    0.0354461
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0364487   -0.1956563    0.1227589
15-18 months   ki1017093-NIH-Birth       BANGLADESH                     0%                   NA                -0.1721092   -0.2721445   -0.0720740
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     0%                   NA                -0.0310675   -0.0783360    0.0162010
15-18 months   ki1017093c-NIH-Crypto     BANGLADESH                     0%                   NA                -0.0028534   -0.0194237    0.0137169
15-18 months   ki1114097-CONTENT         PERU                           0%                   NA                -0.0854041   -0.1807643    0.0099560
15-18 months   kiGH5241-JiVitA-4         BANGLADESH                     0%                   NA                -0.0052760   -0.0554023    0.0448504
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0%                   NA                 0.0017955   -0.0620961    0.0656870
18-21 months   ki0047075b-MAL-ED         NEPAL                          0%                   NA                 0.0002852   -0.0796842    0.0802545
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0209426   -0.2130272    0.1711420
18-21 months   ki1017093-NIH-Birth       BANGLADESH                     0%                   NA                 0.0944630    0.0632923    0.1256337
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     0%                   NA                -0.0304130   -0.0624255    0.0015995
18-21 months   ki1017093c-NIH-Crypto     BANGLADESH                     0%                   NA                -0.0050572   -0.0199192    0.0098049
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0%                   NA                -0.0057269   -0.0673835    0.0559298
21-24 months   ki0047075b-MAL-ED         NEPAL                          0%                   NA                 0.0464075    0.0064527    0.0863624
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0604746   -0.0538036    0.1747528
21-24 months   ki1017093-NIH-Birth       BANGLADESH                     0%                   NA                -0.0418151   -0.0956901    0.0120598
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     0%                   NA                 0.0564201    0.0349789    0.0778613
21-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0%                   NA                -0.0124593   -0.0259323    0.0010137
