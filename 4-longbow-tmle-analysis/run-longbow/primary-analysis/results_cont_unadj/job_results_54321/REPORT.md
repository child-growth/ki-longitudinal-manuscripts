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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        nrooms    n_cell      n
-------------  -------------------------  -----------------------------  -------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+            11    236
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1            148    236
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2             49    236
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3             28    236
0-3 months     ki0047075b-MAL-ED          BRAZIL                         4+            99    163
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              3    163
0-3 months     ki0047075b-MAL-ED          BRAZIL                         2             18    163
0-3 months     ki0047075b-MAL-ED          BRAZIL                         3             43    163
0-3 months     ki0047075b-MAL-ED          INDIA                          4+            21    177
0-3 months     ki0047075b-MAL-ED          INDIA                          1             67    177
0-3 months     ki0047075b-MAL-ED          INDIA                          2             62    177
0-3 months     ki0047075b-MAL-ED          INDIA                          3             27    177
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+            88    155
0-3 months     ki0047075b-MAL-ED          NEPAL                          1             32    155
0-3 months     ki0047075b-MAL-ED          NEPAL                          2             20    155
0-3 months     ki0047075b-MAL-ED          NEPAL                          3             15    155
0-3 months     ki0047075b-MAL-ED          PERU                           4+           131    254
0-3 months     ki0047075b-MAL-ED          PERU                           1             17    254
0-3 months     ki0047075b-MAL-ED          PERU                           2             47    254
0-3 months     ki0047075b-MAL-ED          PERU                           3             59    254
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+           145    198
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             11    198
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2             19    198
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3             23    198
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            94    225
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             13    225
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             55    225
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             63    225
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+             4     88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             33     88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             33     88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             18     88
0-3 months     ki1000108-IRC              INDIA                          4+            17    375
0-3 months     ki1000108-IRC              INDIA                          1            171    375
0-3 months     ki1000108-IRC              INDIA                          2            154    375
0-3 months     ki1000108-IRC              INDIA                          3             33    375
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+            22    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            458    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2            101    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3             59    640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+            91    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            345    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2            183    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3            102    721
0-3 months     ki1113344-GMS-Nepal        NEPAL                          4+           242    509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1             34    509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2            108    509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3            125    509
0-3 months     ki1114097-CONTENT          PERU                           4+            12     29
0-3 months     ki1114097-CONTENT          PERU                           1              6     29
0-3 months     ki1114097-CONTENT          PERU                           2              7     29
0-3 months     ki1114097-CONTENT          PERU                           3              4     29
0-3 months     ki1135781-COHORTS          INDIA                          4+            89   4653
0-3 months     ki1135781-COHORTS          INDIA                          1           3049   4653
0-3 months     ki1135781-COHORTS          INDIA                          2           1351   4653
0-3 months     ki1135781-COHORTS          INDIA                          3            164   4653
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+           334   9814
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           6002   9814
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2           2631   9814
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3            847   9814
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+            15    636
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1            401    636
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2            155    636
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3             65    636
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+            11    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1            145    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2             48    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3             27    231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4+           126    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              4    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2             19    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3             59    208
3-6 months     ki0047075b-MAL-ED          INDIA                          4+            25    230
3-6 months     ki0047075b-MAL-ED          INDIA                          1             84    230
3-6 months     ki0047075b-MAL-ED          INDIA                          2             75    230
3-6 months     ki0047075b-MAL-ED          INDIA                          3             46    230
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+           130    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          1             51    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          2             31    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          3             21    233
3-6 months     ki0047075b-MAL-ED          PERU                           4+           137    267
3-6 months     ki0047075b-MAL-ED          PERU                           1             19    267
3-6 months     ki0047075b-MAL-ED          PERU                           2             49    267
3-6 months     ki0047075b-MAL-ED          PERU                           3             62    267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+           188    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             12    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2             20    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3             21    241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           104    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             12    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             60    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             63    239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+            12    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            161    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             86    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             48    307
3-6 months     ki1000108-IRC              INDIA                          4+            17    395
3-6 months     ki1000108-IRC              INDIA                          1            180    395
3-6 months     ki1000108-IRC              INDIA                          2            163    395
3-6 months     ki1000108-IRC              INDIA                          3             35    395
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+            21    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            425    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2             94    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3             58    598
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+            90    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            328    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2            177    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3            100    695
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+           225    469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1             32    469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2             96    469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3            116    469
3-6 months     ki1114097-CONTENT          PERU                           4+            78    214
3-6 months     ki1114097-CONTENT          PERU                           1             44    214
3-6 months     ki1114097-CONTENT          PERU                           2             54    214
3-6 months     ki1114097-CONTENT          PERU                           3             38    214
3-6 months     ki1135781-COHORTS          INDIA                          4+            85   4710
3-6 months     ki1135781-COHORTS          INDIA                          1           3056   4710
3-6 months     ki1135781-COHORTS          INDIA                          2           1396   4710
3-6 months     ki1135781-COHORTS          INDIA                          3            173   4710
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+           244   6233
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           3555   6233
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2           1828   6233
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3            606   6233
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+            13    432
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1            277    432
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2            103    432
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3             39    432
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4+            11    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1            142    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2             45    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3             26    224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4+           118    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1              3    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2             18    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3             59    198
6-9 months     ki0047075b-MAL-ED          INDIA                          4+            25    230
6-9 months     ki0047075b-MAL-ED          INDIA                          1             83    230
6-9 months     ki0047075b-MAL-ED          INDIA                          2             74    230
6-9 months     ki0047075b-MAL-ED          INDIA                          3             48    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          4+           128    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          1             49    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          2             31    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          3             22    230
6-9 months     ki0047075b-MAL-ED          PERU                           4+           130    245
6-9 months     ki0047075b-MAL-ED          PERU                           1             19    245
6-9 months     ki0047075b-MAL-ED          PERU                           2             44    245
6-9 months     ki0047075b-MAL-ED          PERU                           3             52    245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+           182    231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             10    231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2             18    231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3             21    231
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           100    225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             11    225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             55    225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             59    225
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+            14    313
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            168    313
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             83    313
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             48    313
6-9 months     ki1000108-IRC              INDIA                          4+            17    405
6-9 months     ki1000108-IRC              INDIA                          1            183    405
6-9 months     ki1000108-IRC              INDIA                          2            170    405
6-9 months     ki1000108-IRC              INDIA                          3             35    405
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4+            20    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1            404    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2             87    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3             54    565
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+            89    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            322    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2            180    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     3             97    688
6-9 months     ki1113344-GMS-Nepal        NEPAL                          4+           228    481
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1             33    481
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2             97    481
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3            123    481
6-9 months     ki1114097-CONTENT          PERU                           4+            78    214
6-9 months     ki1114097-CONTENT          PERU                           1             44    214
6-9 months     ki1114097-CONTENT          PERU                           2             54    214
6-9 months     ki1114097-CONTENT          PERU                           3             38    214
6-9 months     ki1135781-COHORTS          INDIA                          4+            82   4321
6-9 months     ki1135781-COHORTS          INDIA                          1           2778   4321
6-9 months     ki1135781-COHORTS          INDIA                          2           1305   4321
6-9 months     ki1135781-COHORTS          INDIA                          3            156   4321
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     4+            33    768
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1            473    768
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     2            186    768
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     3             76    768
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+            11    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1            144    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2             43    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3             27    225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4+           117    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1              2    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2             18    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3             57    194
9-12 months    ki0047075b-MAL-ED          INDIA                          4+            25    227
9-12 months    ki0047075b-MAL-ED          INDIA                          1             81    227
9-12 months    ki0047075b-MAL-ED          INDIA                          2             74    227
9-12 months    ki0047075b-MAL-ED          INDIA                          3             47    227
9-12 months    ki0047075b-MAL-ED          NEPAL                          4+           128    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          1             48    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          2             31    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          3             22    229
9-12 months    ki0047075b-MAL-ED          PERU                           4+           123    235
9-12 months    ki0047075b-MAL-ED          PERU                           1             18    235
9-12 months    ki0047075b-MAL-ED          PERU                           2             43    235
9-12 months    ki0047075b-MAL-ED          PERU                           3             51    235
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+           182    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             11    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             17    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             23    233
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           102    224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             11    224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             53    224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             58    224
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+            14    317
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            178    317
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2             81    317
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             44    317
9-12 months    ki1000108-IRC              INDIA                          4+            16    398
9-12 months    ki1000108-IRC              INDIA                          1            181    398
9-12 months    ki1000108-IRC              INDIA                          2            167    398
9-12 months    ki1000108-IRC              INDIA                          3             34    398
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+            20    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            403    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2             89    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3             54    566
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+            88    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            310    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2            178    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3             98    674
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4+           223    469
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1             33    469
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2             97    469
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3            116    469
9-12 months    ki1114097-CONTENT          PERU                           4+            77    212
9-12 months    ki1114097-CONTENT          PERU                           1             44    212
9-12 months    ki1114097-CONTENT          PERU                           2             53    212
9-12 months    ki1114097-CONTENT          PERU                           3             38    212
9-12 months    ki1135781-COHORTS          INDIA                          4+            74   3720
9-12 months    ki1135781-COHORTS          INDIA                          1           2349   3720
9-12 months    ki1135781-COHORTS          INDIA                          2           1162   3720
9-12 months    ki1135781-COHORTS          INDIA                          3            135   3720
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+            36    866
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1            526    866
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2            210    866
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3             94    866
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4+            10    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1            135    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2             40    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3             27    212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4+           113    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1              2    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2             17    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3             52    184
12-15 months   ki0047075b-MAL-ED          INDIA                          4+            25    226
12-15 months   ki0047075b-MAL-ED          INDIA                          1             81    226
12-15 months   ki0047075b-MAL-ED          INDIA                          2             73    226
12-15 months   ki0047075b-MAL-ED          INDIA                          3             47    226
12-15 months   ki0047075b-MAL-ED          NEPAL                          4+           129    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          1             48    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          2             31    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          3             22    230
12-15 months   ki0047075b-MAL-ED          PERU                           4+           116    224
12-15 months   ki0047075b-MAL-ED          PERU                           1             17    224
12-15 months   ki0047075b-MAL-ED          PERU                           2             40    224
12-15 months   ki0047075b-MAL-ED          PERU                           3             51    224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           173    228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             14    228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             18    228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             23    228
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           103    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             11    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             54    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             58    226
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            13    329
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            182    329
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             89    329
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             45    329
12-15 months   ki1000108-IRC              INDIA                          4+            15    388
12-15 months   ki1000108-IRC              INDIA                          1            177    388
12-15 months   ki1000108-IRC              INDIA                          2            162    388
12-15 months   ki1000108-IRC              INDIA                          3             34    388
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4+            20    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1            370    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2             88    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3             54    532
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            89    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            303    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            175    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             93    660
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4+           220    469
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1             34    469
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2            102    469
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3            113    469
12-15 months   ki1114097-CONTENT          PERU                           4+            70    199
12-15 months   ki1114097-CONTENT          PERU                           1             41    199
12-15 months   ki1114097-CONTENT          PERU                           2             51    199
12-15 months   ki1114097-CONTENT          PERU                           3             37    199
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     4+            35    873
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1            533    873
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     2            222    873
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     3             83    873
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4+            10    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1            134    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2             41    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3             27    212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4+           108    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1              1    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2             17    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3             49    175
15-18 months   ki0047075b-MAL-ED          INDIA                          4+            25    226
15-18 months   ki0047075b-MAL-ED          INDIA                          1             82    226
15-18 months   ki0047075b-MAL-ED          INDIA                          2             72    226
15-18 months   ki0047075b-MAL-ED          INDIA                          3             47    226
15-18 months   ki0047075b-MAL-ED          NEPAL                          4+           127    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          1             47    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          2             31    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          3             22    227
15-18 months   ki0047075b-MAL-ED          PERU                           4+           112    213
15-18 months   ki0047075b-MAL-ED          PERU                           1             17    213
15-18 months   ki0047075b-MAL-ED          PERU                           2             37    213
15-18 months   ki0047075b-MAL-ED          PERU                           3             47    213
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           172    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             19    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             21    225
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+           101    217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             10    217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             48    217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             58    217
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            11    321
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            172    321
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             90    321
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             48    321
15-18 months   ki1000108-IRC              INDIA                          4+            15    380
15-18 months   ki1000108-IRC              INDIA                          1            172    380
15-18 months   ki1000108-IRC              INDIA                          2            159    380
15-18 months   ki1000108-IRC              INDIA                          3             34    380
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4+            22    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1            363    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2             87    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3             56    528
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            84    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            268    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            165    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             87    604
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4+           222    480
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1             35    480
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2            106    480
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3            117    480
15-18 months   ki1114097-CONTENT          PERU                           4+            67    189
15-18 months   ki1114097-CONTENT          PERU                           1             36    189
15-18 months   ki1114097-CONTENT          PERU                           2             49    189
15-18 months   ki1114097-CONTENT          PERU                           3             37    189
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     4+            35    886
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1            542    886
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     2            223    886
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     3             86    886
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1            131    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2             40    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3             27    209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4+           104    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1              0    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2             16    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3             47    167
18-21 months   ki0047075b-MAL-ED          INDIA                          4+            25    226
18-21 months   ki0047075b-MAL-ED          INDIA                          1             82    226
18-21 months   ki0047075b-MAL-ED          INDIA                          2             72    226
18-21 months   ki0047075b-MAL-ED          INDIA                          3             47    226
18-21 months   ki0047075b-MAL-ED          NEPAL                          4+           127    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          1             47    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          2             31    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          3             22    227
18-21 months   ki0047075b-MAL-ED          PERU                           4+           110    202
18-21 months   ki0047075b-MAL-ED          PERU                           1             16    202
18-21 months   ki0047075b-MAL-ED          PERU                           2             32    202
18-21 months   ki0047075b-MAL-ED          PERU                           3             44    202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           178    233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13    233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             20    233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             22    233
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            96    204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9    204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             44    204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             55    204
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            11    305
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            165    305
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             82    305
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             47    305
18-21 months   ki1000108-IRC              INDIA                          4+            15    377
18-21 months   ki1000108-IRC              INDIA                          1            169    377
18-21 months   ki1000108-IRC              INDIA                          2            161    377
18-21 months   ki1000108-IRC              INDIA                          3             32    377
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4+            21    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1            377    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2             88    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3             55    541
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            83    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            237    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            148    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             78    546
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4+           204    445
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1             30    445
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2            102    445
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3            109    445
18-21 months   ki1114097-CONTENT          PERU                           4+            66    183
18-21 months   ki1114097-CONTENT          PERU                           1             34    183
18-21 months   ki1114097-CONTENT          PERU                           2             47    183
18-21 months   ki1114097-CONTENT          PERU                           3             36    183
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+            11    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1            130    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2             39    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3             27    207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4+           102    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1              0    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2             15    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3             48    165
21-24 months   ki0047075b-MAL-ED          INDIA                          4+            25    226
21-24 months   ki0047075b-MAL-ED          INDIA                          1             82    226
21-24 months   ki0047075b-MAL-ED          INDIA                          2             73    226
21-24 months   ki0047075b-MAL-ED          INDIA                          3             46    226
21-24 months   ki0047075b-MAL-ED          NEPAL                          4+           127    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          1             47    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          2             31    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          3             22    227
21-24 months   ki0047075b-MAL-ED          PERU                           4+           105    189
21-24 months   ki0047075b-MAL-ED          PERU                           1             15    189
21-24 months   ki0047075b-MAL-ED          PERU                           2             28    189
21-24 months   ki0047075b-MAL-ED          PERU                           3             41    189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+           181    235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             13    235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             19    235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             22    235
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+            95    204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              9    204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             46    204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             54    204
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+            12    308
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            169    308
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             83    308
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             44    308
21-24 months   ki1000108-IRC              INDIA                          4+            15    387
21-24 months   ki1000108-IRC              INDIA                          1            175    387
21-24 months   ki1000108-IRC              INDIA                          2            163    387
21-24 months   ki1000108-IRC              INDIA                          3             34    387
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+            18    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            327    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2             80    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3             46    471
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+            81    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            205    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2            132    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3             72    490
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4+           161    342
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1             25    342
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2             74    342
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3             82    342
21-24 months   ki1114097-CONTENT          PERU                           4+            10     38
21-24 months   ki1114097-CONTENT          PERU                           1              7     38
21-24 months   ki1114097-CONTENT          PERU                           2             12     38
21-24 months   ki1114097-CONTENT          PERU                           3              9     38


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/b34723a0-4ee2-47e0-a344-0043099cf012/314423f7-be1d-4da2-ac3c-459a6fdc8f70/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b34723a0-4ee2-47e0-a344-0043099cf012/314423f7-be1d-4da2-ac3c-459a6fdc8f70/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b34723a0-4ee2-47e0-a344-0043099cf012/314423f7-be1d-4da2-ac3c-459a6fdc8f70/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.2236823   -0.3261511   -0.1212136
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.1160362   -0.1599639   -0.0721084
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.1287716   -0.2027922   -0.0547509
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0642416   -0.1498737    0.0213906
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0654934   -0.1980520    0.0670652
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0746186   -0.1550611    0.0058239
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0530515   -0.1216717    0.0155687
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0939056   -0.2277624    0.0399512
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0503449   -0.0113019    0.1119916
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0530218   -0.0171645    0.1232080
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.0900301   -0.0361196    0.2161798
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.0346293   -0.1388601    0.2081187
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.2372542   -0.2797351   -0.1947733
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.3973106   -0.5433436   -0.2512775
0-3 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.2610416   -0.3417914   -0.1802919
0-3 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.2459523   -0.3190990   -0.1728056
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.1852077   -0.2464920   -0.1239234
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.2557823   -0.4389306   -0.0726340
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.2193143   -0.3718928   -0.0667357
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.1498054   -0.2815306   -0.0180802
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.1455819   -0.2027023   -0.0884615
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1938931   -0.3688767   -0.0189095
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1392329   -0.2109153   -0.0675505
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1214708   -0.2064003   -0.0365413
0-3 months     ki1000108-IRC              INDIA                          4+                   NA                -0.4740559   -0.7184043   -0.2297075
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2505478   -0.3285802   -0.1725154
0-3 months     ki1000108-IRC              INDIA                          2                    NA                -0.2544597   -0.3463903   -0.1625290
0-3 months     ki1000108-IRC              INDIA                          3                    NA                -0.2063152   -0.3806011   -0.0320292
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.1208599   -0.2190958   -0.0226240
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1968876   -0.2176964   -0.1760789
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.1642014   -0.2052377   -0.1231650
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.1852192   -0.2393022   -0.1311362
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.2696931   -0.3095457   -0.2298405
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.2059867   -0.2320948   -0.1798787
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.2536297   -0.2889589   -0.2183005
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.2423261   -0.2859114   -0.1987408
0-3 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0511815   -0.0886546   -0.0137084
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0315715   -0.1370927    0.0739497
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0311824   -0.0806120    0.0182472
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                 0.0052570   -0.0451395    0.0556535
0-3 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0049950   -0.0476323    0.0376424
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0848198   -0.0948795   -0.0747601
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0408744   -0.0558720   -0.0258769
0-3 months     ki1135781-COHORTS          INDIA                          3                    NA                -0.0315906   -0.0780773    0.0148960
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0499628    0.0166803    0.0832453
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0505884    0.0416818    0.0594951
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                 0.0551128    0.0435219    0.0667036
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                 0.0667992    0.0461815    0.0874170
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.1564892   -0.4068118    0.0938335
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.2783476   -0.3570872   -0.1996080
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.2383340   -0.3250745   -0.1515934
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.4354181   -0.6007967   -0.2700395
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0492850   -0.1317116    0.0331416
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0232233   -0.0538998    0.0074531
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0078266   -0.0561931    0.0405400
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0332824   -0.1037311    0.0371663
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0365787   -0.1246825    0.0515251
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0372304   -0.0901053    0.0156444
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0491779   -0.0943462   -0.0040097
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0121538   -0.0802248    0.0559171
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0002347   -0.0340654    0.0345347
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0351559   -0.0986313    0.0283194
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0813177   -0.1503873   -0.0122481
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0520947   -0.1302043    0.0260150
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0204476   -0.0588829    0.0179878
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.1384958    0.0422187    0.2347729
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                 0.0638512   -0.0227807    0.1504832
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                 0.0631513   -0.0051309    0.1314335
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0027514   -0.0412412    0.0467440
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0828090   -0.1856508    0.0200328
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.0436512   -0.0893561    0.1766585
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0379570   -0.1551512    0.0792373
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0545228   -0.1008285   -0.0082170
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0945621   -0.2631339    0.0740098
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0768439   -0.1464518   -0.0072360
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0864201   -0.1462841   -0.0265562
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0494340   -0.1790715    0.2779394
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0949378   -0.1607326   -0.0291431
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.1274187   -0.2173253   -0.0375121
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0921747   -0.2119007    0.0275513
3-6 months     ki1000108-IRC              INDIA                          4+                   NA                -0.0466595   -0.1872388    0.0939199
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0686707   -0.1094584   -0.0278831
3-6 months     ki1000108-IRC              INDIA                          2                    NA                -0.0310690   -0.0809505    0.0188126
3-6 months     ki1000108-IRC              INDIA                          3                    NA                -0.0891806   -0.1948970    0.0165359
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0291405   -0.1008063    0.0425254
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0272828   -0.0461952   -0.0083704
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0323199   -0.0713305    0.0066908
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0151441   -0.0698010    0.0395128
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0523241    0.0027668    0.1018814
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0026288   -0.0197613    0.0250189
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                 0.0324830   -0.0020649    0.0670310
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                 0.0728704    0.0243596    0.1213811
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.1779961   -0.2046876   -0.1513046
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1431024   -0.2052846   -0.0809202
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.1431823   -0.1806149   -0.1057497
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.1493244   -0.1904999   -0.1081489
3-6 months     ki1114097-CONTENT          PERU                           4+                   NA                -0.0091201   -0.0468412    0.0286010
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                -0.0475998   -0.0906160   -0.0045835
3-6 months     ki1114097-CONTENT          PERU                           2                    NA                 0.0655201    0.0220347    0.1090055
3-6 months     ki1114097-CONTENT          PERU                           3                    NA                 0.0525661    0.0009417    0.1041905
3-6 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0523930   -0.0888614   -0.0159245
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0712123   -0.0791358   -0.0632889
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0441903   -0.0562339   -0.0321467
3-6 months     ki1135781-COHORTS          INDIA                          3                    NA                -0.0755831   -0.1094083   -0.0417579
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                -0.0063482   -0.0355078    0.0228113
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0000907   -0.0090740    0.0092554
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                 0.0038365   -0.0087825    0.0164554
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.0003844   -0.0195464    0.0187777
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0175310   -0.1069794    0.1420413
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0174378   -0.0569459    0.0220704
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0306934   -0.0859573    0.0245704
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                 0.0264478   -0.0358806    0.0887763
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0029395   -0.0597435    0.0538645
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0726655   -0.0946968   -0.0506341
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0803237   -0.1207581   -0.0398893
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0661457   -0.1089987   -0.0232928
6-9 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.1095595   -0.1720090   -0.0471100
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0577343   -0.1024107   -0.0130579
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0507735   -0.0878993   -0.0136478
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.1018543   -0.1409015   -0.0628070
6-9 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0292066   -0.0556853   -0.0027279
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0542899   -0.0963234   -0.0122564
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0126385   -0.0578198    0.0325427
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0526482   -0.1134719    0.0081756
6-9 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0472683   -0.0783769   -0.0161598
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0422652   -0.0632553    0.1477857
6-9 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.0082905   -0.0722456    0.0556646
6-9 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.0484632   -0.0953347   -0.0015916
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0108142   -0.0427241    0.0210957
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0904582   -0.2117565    0.0308401
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0198442   -0.1321838    0.0924954
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0418032   -0.1189767    0.0353704
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0949339   -0.1529953   -0.0368726
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1004751   -0.2556521    0.0547018
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0976333   -0.1488754   -0.0463912
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0855723   -0.1445585   -0.0265860
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1593976   -0.2659608   -0.0528345
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0674336   -0.1166486   -0.0182186
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0741406   -0.1359482   -0.0123331
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.1237740   -0.2094053   -0.0381427
6-9 months     ki1000108-IRC              INDIA                          4+                   NA                -0.0209016   -0.1087107    0.0669075
6-9 months     ki1000108-IRC              INDIA                          1                    NA                -0.0239609   -0.0514706    0.0035487
6-9 months     ki1000108-IRC              INDIA                          2                    NA                -0.0022061   -0.0394094    0.0349972
6-9 months     ki1000108-IRC              INDIA                          3                    NA                -0.0473451   -0.1319410    0.0372507
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0331569   -0.0997646    0.0334509
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0664865   -0.0790913   -0.0538817
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0521747   -0.0809255   -0.0234238
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0489452   -0.0831071   -0.0147833
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0171718   -0.0559797    0.0216361
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0235930   -0.0417625   -0.0054235
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0446920   -0.0701135   -0.0192704
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.0454483   -0.0772755   -0.0136212
6-9 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0539400   -0.0806923   -0.0271877
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0323512   -0.0696407    0.0049382
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0414527   -0.0823316   -0.0005738
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.0302909   -0.0630958    0.0025140
6-9 months     ki1114097-CONTENT          PERU                           4+                   NA                -0.0054227   -0.0366360    0.0257906
6-9 months     ki1114097-CONTENT          PERU                           1                    NA                -0.0185968   -0.0692732    0.0320795
6-9 months     ki1114097-CONTENT          PERU                           2                    NA                -0.0777487   -0.1245880   -0.0309095
6-9 months     ki1114097-CONTENT          PERU                           3                    NA                 0.0067006   -0.0315380    0.0449391
6-9 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0506266   -0.0799685   -0.0212847
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.1065652   -0.1137071   -0.0994232
6-9 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0951625   -0.1055614   -0.0847635
6-9 months     ki1135781-COHORTS          INDIA                          3                    NA                -0.0829410   -0.1090493   -0.0568327
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0544152   -0.1227842    0.0139537
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0499974   -0.0697876   -0.0302072
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0413868   -0.0741834   -0.0085901
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0256301   -0.0921656    0.0409054
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.1290080   -0.2064369   -0.0515791
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0858367   -0.1058215   -0.0658520
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0776963   -0.1161297   -0.0392629
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0926182   -0.1363206   -0.0489159
9-12 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.1239051   -0.1682716   -0.0795385
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0788383   -0.1069560   -0.0507206
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.1030147   -0.1284194   -0.0776100
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0766989   -0.1118117   -0.0415861
9-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0718096   -0.0954001   -0.0482191
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0464262   -0.0852349   -0.0076175
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0478483   -0.0826356   -0.0130610
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0619323   -0.1096534   -0.0142112
9-12 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0177472   -0.0482628    0.0127685
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0990204   -0.1545187   -0.0435220
9-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                -0.0818876   -0.1284939   -0.0352814
9-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                -0.0463959   -0.0926216   -0.0001703
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0824743   -0.1121738   -0.0527749
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0612053   -0.1345414    0.0121309
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0366089   -0.1349051    0.0616872
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.1507362   -0.2573431   -0.0441294
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.1511779   -0.2071928   -0.0951630
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1294050   -0.2685847    0.0097746
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1595105   -0.2227587   -0.0962623
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1623232   -0.2193365   -0.1053098
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0588011   -0.1804603    0.0628582
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1308789   -0.1662506   -0.0955073
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0993155   -0.1704120   -0.0282190
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.1250074   -0.1788306   -0.0711843
9-12 months    ki1000108-IRC              INDIA                          4+                   NA                -0.0718690   -0.1336560   -0.0100820
9-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0349120   -0.0591628   -0.0106612
9-12 months    ki1000108-IRC              INDIA                          2                    NA                -0.0214631   -0.0486954    0.0057692
9-12 months    ki1000108-IRC              INDIA                          3                    NA                -0.0793270   -0.1358212   -0.0228328
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0682750   -0.1275912   -0.0089588
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0643668   -0.0771914   -0.0515422
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0650964   -0.0943406   -0.0358523
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0478832   -0.0830891   -0.0126772
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0287286   -0.0580759    0.0006186
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0342684   -0.0510533   -0.0174835
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0436320   -0.0639470   -0.0233170
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.0224494   -0.0502604    0.0053617
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0778303   -0.0984853   -0.0571753
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0987720   -0.1402779   -0.0572662
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.1045515   -0.1387842   -0.0703188
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.0575886   -0.0787771   -0.0364002
9-12 months    ki1114097-CONTENT          PERU                           4+                   NA                -0.0231933   -0.0523686    0.0059821
9-12 months    ki1114097-CONTENT          PERU                           1                    NA                -0.0405869   -0.0741037   -0.0070700
9-12 months    ki1114097-CONTENT          PERU                           2                    NA                -0.0234839   -0.0595374    0.0125696
9-12 months    ki1114097-CONTENT          PERU                           3                    NA                 0.0013883   -0.0300901    0.0328667
9-12 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.0579065   -0.0859641   -0.0298488
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0972738   -0.1044015   -0.0901462
9-12 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.0830619   -0.0933967   -0.0727270
9-12 months    ki1135781-COHORTS          INDIA                          3                    NA                -0.0651415   -0.0927905   -0.0374926
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0432378   -0.0981295    0.0116539
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0589502   -0.0759854   -0.0419150
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0590451   -0.0902984   -0.0277917
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0620124   -0.1055804   -0.0184444
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0001780   -0.0567810    0.0564250
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0583528   -0.0773336   -0.0393720
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0738183   -0.1108507   -0.0367859
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0362546   -0.0824597    0.0099506
12-15 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0142059   -0.0573469    0.0289350
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0777374   -0.1043275   -0.0511473
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0403650   -0.0658290   -0.0149010
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0675645   -0.0989547   -0.0361742
12-15 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0571454   -0.0768338   -0.0374570
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0937885   -0.1254682   -0.0621088
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0107465   -0.0606654    0.0391723
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0458134   -0.0901414   -0.0014854
12-15 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0771681   -0.1022823   -0.0520539
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0653175   -0.1415705    0.0109355
12-15 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0531438   -0.1009476   -0.0053401
12-15 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0480679   -0.0762760   -0.0198598
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0633995   -0.0901357   -0.0366633
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0522958   -0.0169299    0.1215215
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0871509   -0.1598132   -0.0144887
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0733656   -0.1405499   -0.0061813
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0676117   -0.1049480   -0.0302753
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0168222   -0.1062138    0.1398581
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1052792   -0.1604120   -0.0501465
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0553533   -0.0974272   -0.0132794
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0951886   -0.1548195   -0.0355576
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0755634   -0.1108358   -0.0402909
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0747082   -0.1373296   -0.0120867
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0399299   -0.1150448    0.0351850
12-15 months   ki1000108-IRC              INDIA                          4+                   NA                -0.0709145   -0.1204851   -0.0213439
12-15 months   ki1000108-IRC              INDIA                          1                    NA                -0.0505427   -0.0718479   -0.0292376
12-15 months   ki1000108-IRC              INDIA                          2                    NA                -0.0351890   -0.0649857   -0.0053924
12-15 months   ki1000108-IRC              INDIA                          3                    NA                -0.0428999   -0.1019914    0.0161915
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0108835   -0.0706976    0.0489306
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0445940   -0.0567018   -0.0324862
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0290620   -0.0526767   -0.0054473
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0461037   -0.0775280   -0.0146794
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0272868   -0.0523645   -0.0022092
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0433817   -0.0572831   -0.0294804
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0382450   -0.0570858   -0.0194041
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.0326087   -0.0578337   -0.0073837
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0600315   -0.0775681   -0.0424950
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0832634   -0.1202582   -0.0462686
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0684006   -0.0878149   -0.0489863
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.0732675   -0.0939401   -0.0525949
12-15 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0775326   -0.1062441   -0.0488210
12-15 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0610826   -0.1000546   -0.0221106
12-15 months   ki1114097-CONTENT          PERU                           2                    NA                -0.0720562   -0.0999702   -0.0441423
12-15 months   ki1114097-CONTENT          PERU                           3                    NA                -0.0812391   -0.1203381   -0.0421401
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0407328   -0.1397998    0.0583342
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0470129   -0.0609101   -0.0331157
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0405488   -0.0653205   -0.0157772
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0357279   -0.0755739    0.0041181
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0342115   -0.0968915    0.0284685
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0462716   -0.0622808   -0.0302625
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0517735   -0.0839852   -0.0195618
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0386357   -0.0825748    0.0053035
15-18 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0705104   -0.1038508   -0.0371700
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0267733   -0.0490374   -0.0045091
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0549703   -0.0766740   -0.0332666
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0143139   -0.0414127    0.0127849
15-18 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0593385   -0.0779268   -0.0407503
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0491784   -0.0798323   -0.0185245
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0654066   -0.1153385   -0.0154747
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0270529   -0.0835591    0.0294534
15-18 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0313697   -0.0532772   -0.0094622
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0665219   -0.1101353   -0.0229085
15-18 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0533158   -0.0878869   -0.0187448
15-18 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0226186   -0.0565022    0.0112650
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0287507   -0.0504305   -0.0070710
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0225943   -0.0956506    0.0504620
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0252909   -0.0885658    0.0379841
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0335160   -0.1007323    0.0337002
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0881973   -0.1198825   -0.0565122
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0961278   -0.2171397    0.0248842
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0683567   -0.1166072   -0.0201062
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0936602   -0.1371435   -0.0501768
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0004874   -0.0718527    0.0728275
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0881510   -0.1162195   -0.0600825
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0424145   -0.0950761    0.0102470
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0600425   -0.1239143    0.0038294
15-18 months   ki1000108-IRC              INDIA                          4+                   NA                -0.0651753   -0.1376566    0.0073059
15-18 months   ki1000108-IRC              INDIA                          1                    NA                -0.0384135   -0.0622568   -0.0145703
15-18 months   ki1000108-IRC              INDIA                          2                    NA                -0.0365233   -0.0576646   -0.0153819
15-18 months   ki1000108-IRC              INDIA                          3                    NA                -0.0347626   -0.0742878    0.0047626
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0250692   -0.0746548    0.0245164
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0347777   -0.0451974   -0.0243581
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0539138   -0.0742787   -0.0335489
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0358848   -0.0645016   -0.0072680
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0132264   -0.0328468    0.0063939
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0185818   -0.0317183   -0.0054453
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0235665   -0.0387165   -0.0084165
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.0026738   -0.0255553    0.0202078
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0820236   -0.1028938   -0.0611533
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0610995   -0.0915982   -0.0306008
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0565912   -0.0774274   -0.0357551
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                -0.0577202   -0.0828591   -0.0325812
15-18 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0014929   -0.0312426    0.0282568
15-18 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0054046   -0.0371009    0.0262917
15-18 months   ki1114097-CONTENT          PERU                           2                    NA                -0.0037763   -0.0377855    0.0302328
15-18 months   ki1114097-CONTENT          PERU                           3                    NA                -0.0337077   -0.0721440    0.0047286
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0096332   -0.0670805    0.0478140
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0399574   -0.0541316   -0.0257833
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0451065   -0.0661584   -0.0240547
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0510705   -0.0984893   -0.0036517
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0173554   -0.0324525    0.0671633
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0245450   -0.0379494   -0.0111407
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0003392   -0.0321727    0.0314942
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0076300   -0.0401283    0.0248683
18-21 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0173235   -0.0102812    0.0449282
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0131331   -0.0061518    0.0324179
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0004124   -0.0212403    0.0204155
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0037313   -0.0288153    0.0213526
18-21 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0167809   -0.0335090   -0.0000528
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0257200   -0.0539813    0.0025413
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0261978   -0.0594896    0.0070941
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.1012613   -0.1439154   -0.0586072
18-21 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0047916   -0.0155776    0.0251607
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0158805   -0.0538931    0.0221320
18-21 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0147280   -0.0559326    0.0264765
18-21 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0327440   -0.0662170    0.0007290
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0284621   -0.0510745   -0.0058497
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0305969   -0.0991678    0.0379740
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0446493   -0.0965267    0.0072280
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0517180   -0.1129871    0.0095510
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0277704   -0.0588269    0.0032860
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0122769   -0.1619751    0.1374213
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0470384   -0.0971979    0.0031212
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0164967   -0.0616665    0.0286731
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0233785   -0.0641060    0.1108629
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0572904   -0.0861696   -0.0284112
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.0165083   -0.0604983    0.0274816
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0595560   -0.1241129    0.0050010
18-21 months   ki1000108-IRC              INDIA                          4+                   NA                 0.0331113   -0.0460236    0.1122462
18-21 months   ki1000108-IRC              INDIA                          1                    NA                -0.0468195   -0.0665777   -0.0270613
18-21 months   ki1000108-IRC              INDIA                          2                    NA                -0.0348306   -0.0544381   -0.0152230
18-21 months   ki1000108-IRC              INDIA                          3                    NA                -0.0595699   -0.1063874   -0.0127524
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0392796    0.0008650    0.0776942
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0161599   -0.0260762   -0.0062437
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0071867   -0.0268420    0.0124686
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                -0.0003387   -0.0232719    0.0225946
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0061497   -0.0274457    0.0151463
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0401809   -0.0524607   -0.0279010
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                -0.0268024   -0.0424457   -0.0111591
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                -0.0162934   -0.0342140    0.0016272
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0151673   -0.0045935    0.0349280
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0099202   -0.0226404    0.0424807
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                 0.0119359   -0.0037605    0.0276323
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                 0.0213719   -0.0037572    0.0465010
18-21 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.0054429   -0.0209778    0.0318636
18-21 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0095828   -0.0506854    0.0315198
18-21 months   ki1114097-CONTENT          PERU                           2                    NA                -0.0293045   -0.0563486   -0.0022605
18-21 months   ki1114097-CONTENT          PERU                           3                    NA                 0.0070609   -0.0200870    0.0342089
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0145888   -0.0158698    0.0450474
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0237398    0.0080795    0.0394002
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0436318    0.0143421    0.0729215
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                 0.0131359   -0.0179100    0.0441818
21-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0038138   -0.0292432    0.0368708
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0276838    0.0098847    0.0454829
21-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                 0.0449111    0.0242691    0.0655530
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                 0.0236589    0.0030949    0.0442229
21-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0032172   -0.0149236    0.0213579
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0006504   -0.0314629    0.0301620
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.0111906   -0.0222257    0.0446068
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                 0.0233325   -0.0253097    0.0719748
21-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0473123    0.0287231    0.0659016
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1015858    0.0362631    0.1669085
21-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                 0.0764653    0.0337859    0.1191448
21-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                 0.0520865    0.0177786    0.0863943
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0364286    0.0183800    0.0544772
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0381404   -0.0236624    0.0999432
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.0667048    0.0165205    0.1168890
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0887800    0.0094709    0.1680891
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0322931   -0.0001005    0.0646868
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0130667   -0.1057509    0.0796175
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0414752   -0.0942797    0.0113293
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0140911   -0.0173835    0.0455657
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0191350   -0.0650095    0.1032795
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0299153    0.0032182    0.0566125
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                 0.0019270   -0.0436605    0.0475145
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                 0.0001519   -0.0548483    0.0551522
21-24 months   ki1000108-IRC              INDIA                          4+                   NA                -0.0318956   -0.0804976    0.0167065
21-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0236660   -0.0425636   -0.0047684
21-24 months   ki1000108-IRC              INDIA                          2                    NA                 0.0053209   -0.0175332    0.0281749
21-24 months   ki1000108-IRC              INDIA                          3                    NA                -0.0463583   -0.0879738   -0.0047428
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0659484    0.0257984    0.1060984
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0463629    0.0361691    0.0565567
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                 0.0464075    0.0255238    0.0672913
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                 0.0373038    0.0056419    0.0689657
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0600891    0.0397861    0.0803920
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0524555    0.0392834    0.0656276
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                 0.0615298    0.0461201    0.0769396
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                 0.0701513    0.0502177    0.0900849
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0516515    0.0258897    0.0774133
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0160676   -0.0466406    0.0145054
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                 0.0582650    0.0311265    0.0854036
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                 0.0516291    0.0218585    0.0813998
21-24 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0013475   -0.0474775    0.0447826
21-24 months   ki1114097-CONTENT          PERU                           1                    NA                 0.0062681   -0.0923508    0.1048869
21-24 months   ki1114097-CONTENT          PERU                           2                    NA                 0.0091430   -0.0266864    0.0449724
21-24 months   ki1114097-CONTENT          PERU                           3                    NA                 0.0747047    0.0268545    0.1225548


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1175527   -0.1512522   -0.0838531
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0689235   -0.1155446   -0.0223023
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0544973    0.0099212    0.0990734
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.2543887   -0.2877193   -0.2210580
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1882890   -0.2390479   -0.1375301
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1400701   -0.1794271   -0.1007131
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2583942   -0.3138361   -0.2029523
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0686573   -0.0768222   -0.0604923
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0531791    0.0457171    0.0606411
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.2817746   -0.3395565   -0.2239928
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0016619   -0.0396107    0.0362870
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0540241   -0.0839855   -0.0240627
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0630242   -0.0694797   -0.0565686
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0008910   -0.0060579    0.0078399
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0155841   -0.0450436    0.0138754
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0167217   -0.0383378    0.0048943
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0438931   -0.0614010   -0.0263853
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                -0.0242292   -0.0452610   -0.0031973
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.1012070   -0.1069037   -0.0955102
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0456905   -0.0618720   -0.0295090
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0345488   -0.0514176   -0.0176801
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0798239   -0.0934194   -0.0662284
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.0224698   -0.0391090   -0.0058306
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0908853   -0.0965660   -0.0852046
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0586524   -0.0721516   -0.0451533
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0442500   -0.0609986   -0.0275014
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0667249   -0.0775841   -0.0558657
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0734290   -0.0899048   -0.0569533
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0440444   -0.0564983   -0.0315906
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0383523   -0.0530401   -0.0236646
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0091366   -0.0260209    0.0077477
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0411342   -0.0525950   -0.0296734
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0396016   -0.0529096   -0.0262935
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0059547   -0.0211395    0.0092302
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0137697   -0.0273940   -0.0001454
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.0213805   -0.0073799    0.0501409


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    4+                 0.1076462   -0.0038415    0.2191338
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.0949108   -0.0314969    0.2213184
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    4+                 0.1594408    0.0259016    0.2929799
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0091252   -0.1641826    0.1459321
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0124419   -0.1368247    0.1617085
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0284122   -0.2167986    0.1599741
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    4+                 0.0026769   -0.0907385    0.0960923
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0396852   -0.1007215    0.1800920
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0157156   -0.1998321    0.1684009
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    4+                -0.1600564   -0.3121428   -0.0079700
0-3 months     ki0047075b-MAL-ED          PERU                           2                    4+                -0.0237875   -0.1150297    0.0674548
0-3 months     ki0047075b-MAL-ED          PERU                           3                    4+                -0.0086981   -0.0932857    0.0758895
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0705747   -0.2637043    0.1225550
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.0341066   -0.1985328    0.1303196
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.0354023   -0.1098812    0.1806858
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0483113   -0.2323819    0.1357594
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0063490   -0.0853086    0.0980065
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0241111   -0.0782401    0.1264622
0-3 months     ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    4+                 0.2235081   -0.0329977    0.4800138
0-3 months     ki1000108-IRC              INDIA                          2                    4+                 0.2195962   -0.0414735    0.4806659
0-3 months     ki1000108-IRC              INDIA                          3                    4+                 0.2677407   -0.0323955    0.5678769
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0760277   -0.1764434    0.0243879
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0433415   -0.1498040    0.0631211
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0643593   -0.1764988    0.0477802
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                 0.0637064    0.0160633    0.1113494
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                 0.0160634   -0.0371942    0.0693211
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0273670   -0.0316915    0.0864255
0-3 months     ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0196100   -0.0923675    0.1315874
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0199991   -0.0420293    0.0820274
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0564385   -0.0063631    0.1192401
0-3 months     ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    4+                -0.0798248   -0.1236328   -0.0360168
0-3 months     ki1135781-COHORTS          INDIA                          2                    4+                -0.0358795   -0.0810776    0.0093187
0-3 months     ki1135781-COHORTS          INDIA                          3                    4+                -0.0265957   -0.0896746    0.0364833
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                 0.0006256   -0.0329041    0.0341554
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                 0.0051500   -0.0293323    0.0396323
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                 0.0168364   -0.0215844    0.0552573
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.1218584   -0.3844554    0.1407386
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0818448   -0.3457476    0.1820580
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.2789289   -0.5828117    0.0249538
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    4+                 0.0260617   -0.0618882    0.1140116
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.0414584   -0.0541107    0.1370276
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    4+                 0.0160026   -0.0924279    0.1244330
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0006517   -0.1034040    0.1021006
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0125992   -0.1116065    0.0864081
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0244249   -0.0869122    0.1357620
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0353906   -0.1075405    0.0367593
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.0815524   -0.1586699   -0.0044350
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0523294   -0.1376382    0.0329795
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    4+                 0.1589434    0.0552778    0.2626090
3-6 months     ki0047075b-MAL-ED          PERU                           2                    4+                 0.0842988   -0.0104765    0.1790741
3-6 months     ki0047075b-MAL-ED          PERU                           3                    4+                 0.0835989    0.0052424    0.1619553
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0855604   -0.1974165    0.0262957
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0408997   -0.0991941    0.1809936
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0407084   -0.1658876    0.0844708
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0400393   -0.2148554    0.1347768
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0223211   -0.1059243    0.0612820
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0318974   -0.1075803    0.0437856
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.1443718   -0.3821610    0.0934174
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.1768527   -0.4224091    0.0687037
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.1416086   -0.3995797    0.1163624
3-6 months     ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    4+                -0.0220113   -0.1683882    0.1243656
3-6 months     ki1000108-IRC              INDIA                          2                    4+                 0.0155905   -0.1335763    0.1647573
3-6 months     ki1000108-IRC              INDIA                          3                    4+                -0.0425211   -0.2184146    0.1333724
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    4+                 0.0018577   -0.0722617    0.0759770
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0031794   -0.0847749    0.0784161
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    4+                 0.0139964   -0.0761334    0.1041262
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0496952   -0.1040758    0.0046853
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0198410   -0.0802520    0.0405699
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0205463   -0.0488022    0.0898949
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0348937   -0.0327751    0.1025625
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0348138   -0.0111605    0.0807882
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0286717   -0.0203982    0.0777417
3-6 months     ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           1                    4+                -0.0384796   -0.0956922    0.0187329
3-6 months     ki1114097-CONTENT          PERU                           2                    4+                 0.0746402    0.0170741    0.1322064
3-6 months     ki1114097-CONTENT          PERU                           3                    4+                 0.0616862   -0.0022510    0.1256234
3-6 months     ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    4+                -0.0188194   -0.0561386    0.0184999
3-6 months     ki1135781-COHORTS          INDIA                          2                    4+                 0.0082026   -0.0302030    0.0466083
3-6 months     ki1135781-COHORTS          INDIA                          3                    4+                -0.0231901   -0.0729304    0.0265501
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    4+                 0.0064389   -0.0244363    0.0373141
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    4+                 0.0101847   -0.0223274    0.0426968
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    4+                 0.0059639   -0.0290163    0.0409441
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0349688   -0.1653167    0.0953791
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0482244   -0.1838096    0.0873608
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.0089169   -0.1304283    0.1482621
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0697260   -0.1306528   -0.0087992
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0773842   -0.1471096   -0.0076588
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0632062   -0.1343615    0.0079490
6-9 months     ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0518252   -0.0249596    0.1286101
6-9 months     ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0587860   -0.0138656    0.1314376
6-9 months     ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0077053   -0.0659468    0.0813573
6-9 months     ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0250833   -0.0747616    0.0245950
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0165680   -0.0358005    0.0689366
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0234416   -0.0897790    0.0428958
6-9 months     ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           1                    4+                 0.0895336   -0.0204770    0.1995441
6-9 months     ki0047075b-MAL-ED          PERU                           2                    4+                 0.0389778   -0.0321418    0.1100974
6-9 months     ki0047075b-MAL-ED          PERU                           3                    4+                -0.0011948   -0.0574504    0.0550607
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0796441   -0.2050694    0.0457813
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.0090300   -0.1258137    0.1077536
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0309890   -0.1144995    0.0525215
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0055412   -0.1712246    0.1601422
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0026993   -0.0801388    0.0747401
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0093617   -0.0734060    0.0921294
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                 0.0919640   -0.0254150    0.2093430
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                 0.0852570   -0.0379334    0.2084474
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.0356236   -0.1010820    0.1723292
6-9 months     ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    4+                -0.0030593   -0.0950768    0.0889582
6-9 months     ki1000108-IRC              INDIA                          2                    4+                 0.0186955   -0.0766697    0.1140607
6-9 months     ki1000108-IRC              INDIA                          3                    4+                -0.0264435   -0.1483734    0.0954864
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0333296   -0.1011195    0.0344603
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0190178   -0.0915657    0.0535301
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0157884   -0.0906457    0.0590690
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0064212   -0.0492719    0.0364296
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0275201   -0.0739131    0.0188729
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                -0.0282765   -0.0784664    0.0219133
6-9 months     ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0215887   -0.0243045    0.0674819
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0124872   -0.0363673    0.0613418
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0236491   -0.0186811    0.0659793
6-9 months     ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           1                    4+                -0.0131742   -0.0726919    0.0463436
6-9 months     ki1114097-CONTENT          PERU                           2                    4+                -0.0723261   -0.1286127   -0.0160394
6-9 months     ki1114097-CONTENT          PERU                           3                    4+                 0.0121233   -0.0372372    0.0614837
6-9 months     ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          1                    4+                -0.0559386   -0.0861372   -0.0257400
6-9 months     ki1135781-COHORTS          INDIA                          2                    4+                -0.0445359   -0.0756661   -0.0134058
6-9 months     ki1135781-COHORTS          INDIA                          3                    4+                -0.0323144   -0.0715903    0.0069614
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                 0.0044178   -0.0646474    0.0734830
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.0130285   -0.0646514    0.0907083
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.0287852   -0.0647392    0.1223095
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    4+                 0.0431713   -0.0367951    0.1231376
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.0513117   -0.0351312    0.1377545
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    4+                 0.0363897   -0.0525211    0.1253005
9-12 months    ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0450668   -0.0074593    0.0975929
9-12 months    ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0208904   -0.0302348    0.0720156
9-12 months    ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0472062   -0.0093738    0.1037862
9-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    4+                 0.0253834   -0.0200328    0.0707996
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0239613   -0.0180705    0.0659930
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0098773   -0.0433563    0.0631109
9-12 months    ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           1                    4+                -0.0812732   -0.1446078   -0.0179386
9-12 months    ki0047075b-MAL-ED          PERU                           2                    4+                -0.0641405   -0.1198482   -0.0084328
9-12 months    ki0047075b-MAL-ED          PERU                           3                    4+                -0.0286488   -0.0840384    0.0267409
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.0212691   -0.0578527    0.1003908
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0458654   -0.0568195    0.1485503
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0682619   -0.1789284    0.0424046
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0217729   -0.1282560    0.1718017
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0083326   -0.0928194    0.0761541
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0111453   -0.0910714    0.0687809
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0720779   -0.1987749    0.0546191
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.0405145   -0.1814247    0.1003958
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0662064   -0.1992399    0.0668271
9-12 months    ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    4+                 0.0369570   -0.0294187    0.1033327
9-12 months    ki1000108-IRC              INDIA                          2                    4+                 0.0504058   -0.0171162    0.1179279
9-12 months    ki1000108-IRC              INDIA                          3                    4+                -0.0074580   -0.0911792    0.0762631
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    4+                 0.0039082   -0.0567786    0.0645949
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    4+                 0.0031786   -0.0629549    0.0693120
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                    4+                 0.0203918   -0.0485855    0.0893692
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0055397   -0.0393479    0.0282684
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0149034   -0.0505959    0.0207892
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0062793   -0.0341523    0.0467109
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0209417   -0.0673030    0.0254195
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0267212   -0.0667025    0.0132601
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0202417   -0.0093485    0.0498319
9-12 months    ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           1                    4+                -0.0173936   -0.0618299    0.0270426
9-12 months    ki1114097-CONTENT          PERU                           2                    4+                -0.0002906   -0.0466701    0.0460888
9-12 months    ki1114097-CONTENT          PERU                           3                    4+                 0.0245816   -0.0183380    0.0675012
9-12 months    ki1135781-COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          1                    4+                -0.0393674   -0.0683162   -0.0104185
9-12 months    ki1135781-COHORTS          INDIA                          2                    4+                -0.0251554   -0.0550559    0.0047452
9-12 months    ki1135781-COHORTS          INDIA                          3                    4+                -0.0072350   -0.0466266    0.0321565
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0157124   -0.0735091    0.0420843
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0158073   -0.0787479    0.0471333
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0187746   -0.0877143    0.0501650
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0581748   -0.1178755    0.0015259
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0736403   -0.1412813   -0.0059993
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0360766   -0.1091438    0.0369906
12-15 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0635315   -0.1142087   -0.0128543
12-15 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0261591   -0.0762546    0.0239364
12-15 months   ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0533586   -0.1067111   -0.0000061
12-15 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0366431   -0.0739424    0.0006562
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0463989   -0.0072624    0.1000601
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0113320   -0.0371716    0.0598357
12-15 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           1                    4+                 0.0118506   -0.0684317    0.0921328
12-15 months   ki0047075b-MAL-ED          PERU                           2                    4+                 0.0240242   -0.0299750    0.0780235
12-15 months   ki0047075b-MAL-ED          PERU                           3                    4+                 0.0291002   -0.0086678    0.0668681
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.1156953    0.0414860    0.1899046
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.0237514   -0.1011764    0.0536735
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0099661   -0.0822748    0.0623426
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0844338   -0.0441424    0.2130101
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0376676   -0.1042530    0.0289179
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0122584   -0.0439930    0.0685097
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                 0.0196252   -0.0496568    0.0889071
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                 0.0204804   -0.0659909    0.1069517
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                 0.0552587   -0.0406480    0.1511654
12-15 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    4+                 0.0203717   -0.0335833    0.0743268
12-15 months   ki1000108-IRC              INDIA                          2                    4+                 0.0357254   -0.0221112    0.0935621
12-15 months   ki1000108-IRC              INDIA                          3                    4+                 0.0280146   -0.0491155    0.1051446
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0337105   -0.0947377    0.0273167
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0181785   -0.0824854    0.0461284
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0352202   -0.1027865    0.0323462
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0160949   -0.0447678    0.0125780
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0109581   -0.0423247    0.0204085
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                -0.0053219   -0.0408914    0.0302476
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0232319   -0.0641726    0.0177089
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0083691   -0.0345310    0.0177928
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0132360   -0.0403447    0.0138728
12-15 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           1                    4+                 0.0164499   -0.0319564    0.0648562
12-15 months   ki1114097-CONTENT          PERU                           2                    4+                 0.0054763   -0.0345679    0.0455206
12-15 months   ki1114097-CONTENT          PERU                           3                    4+                -0.0037065   -0.0522151    0.0448021
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0062801   -0.1054021    0.0928420
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                 0.0001840   -0.0999597    0.1003277
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                 0.0050049   -0.0989521    0.1089619
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0120602   -0.0767523    0.0526320
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0175620   -0.0880345    0.0529105
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0044242   -0.0809711    0.0721227
15-18 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0437371    0.0036463    0.0838279
15-18 months   ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0155401   -0.0242422    0.0553224
15-18 months   ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0561965    0.0132322    0.0991608
15-18 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                 0.0101601   -0.0256894    0.0460096
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.0060681   -0.0593477    0.0472115
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0322857   -0.0271995    0.0917708
15-18 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           1                    4+                -0.0351522   -0.0839586    0.0136542
15-18 months   ki0047075b-MAL-ED          PERU                           2                    4+                -0.0219461   -0.0628741    0.0189818
15-18 months   ki0047075b-MAL-ED          PERU                           3                    4+                 0.0087511   -0.0315978    0.0491000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.0061564   -0.0700488    0.0823616
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0034598   -0.0634261    0.0703458
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0047653   -0.0753913    0.0658607
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0079304   -0.1330218    0.1171609
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0198406   -0.0378834    0.0775647
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0054629   -0.0592657    0.0483400
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0886384   -0.1662331   -0.0110437
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.0429020   -0.1323801    0.0465761
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0605299   -0.1570322    0.0359725
15-18 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    4+                 0.0267618   -0.0495405    0.1030640
15-18 months   ki1000108-IRC              INDIA                          2                    4+                 0.0286520   -0.0468496    0.1041536
15-18 months   ki1000108-IRC              INDIA                          3                    4+                 0.0304127   -0.0521450    0.1129704
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0097085   -0.0603770    0.0409600
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0288446   -0.0824493    0.0247600
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0108156   -0.0680664    0.0464351
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0053554   -0.0289674    0.0182566
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0103401   -0.0351288    0.0144486
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0105527   -0.0195890    0.0406944
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                 0.0209241   -0.0160318    0.0578799
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0254323   -0.0040585    0.0549232
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0243034   -0.0083698    0.0569765
15-18 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           1                    4+                -0.0039118   -0.0473824    0.0395589
15-18 months   ki1114097-CONTENT          PERU                           2                    4+                -0.0022835   -0.0474682    0.0429013
15-18 months   ki1114097-CONTENT          PERU                           3                    4+                -0.0322148   -0.0808193    0.0163897
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    4+                -0.0303242   -0.0891970    0.0285486
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    4+                -0.0354733   -0.0960351    0.0250885
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    4+                -0.0414372   -0.1140688    0.0311944
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                -0.0419004   -0.0934805    0.0096796
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                -0.0176947   -0.0768064    0.0414170
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0249854   -0.0844578    0.0344870
18-21 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    4+                -0.0041904   -0.0378643    0.0294834
18-21 months   ki0047075b-MAL-ED          INDIA                          2                    4+                -0.0177359   -0.0523166    0.0168448
18-21 months   ki0047075b-MAL-ED          INDIA                          3                    4+                -0.0210548   -0.0583540    0.0162443
18-21 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0089391   -0.0417801    0.0239019
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                -0.0094169   -0.0466751    0.0278414
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                -0.0844804   -0.1302975   -0.0386634
18-21 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           1                    4+                -0.0206721   -0.0637982    0.0224539
18-21 months   ki0047075b-MAL-ED          PERU                           2                    4+                -0.0195196   -0.0654839    0.0264447
18-21 months   ki0047075b-MAL-ED          PERU                           3                    4+                -0.0375356   -0.0767191    0.0016479
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                -0.0021348   -0.0743379    0.0700683
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                -0.0161873   -0.0727786    0.0404041
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                -0.0232559   -0.0885646    0.0420527
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0154935   -0.1373923    0.1683793
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0192679   -0.0782636    0.0397277
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0112737   -0.0435425    0.0660899
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                -0.0806689   -0.1727967    0.0114590
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.0398868   -0.1378084    0.0580348
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0829344   -0.1916594    0.0257906
18-21 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    4+                -0.0799308   -0.1614950    0.0016334
18-21 months   ki1000108-IRC              INDIA                          2                    4+                -0.0679418   -0.1494697    0.0135860
18-21 months   ki1000108-IRC              INDIA                          3                    4+                -0.0926812   -0.1846280   -0.0007344
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0554396   -0.0951134   -0.0157657
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0464663   -0.0896173   -0.0033153
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0396183   -0.0843577    0.0051211
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0340312   -0.0586139   -0.0094484
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                -0.0206527   -0.0470768    0.0057713
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                -0.0101437   -0.0379766    0.0176891
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0052471   -0.0433348    0.0328406
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                -0.0032314   -0.0284675    0.0220048
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                 0.0062046   -0.0257634    0.0381727
18-21 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT          PERU                           1                    4+                -0.0150257   -0.0638875    0.0338361
18-21 months   ki1114097-CONTENT          PERU                           2                    4+                -0.0347474   -0.0725553    0.0030604
18-21 months   ki1114097-CONTENT          PERU                           3                    4+                 0.0016180   -0.0362643    0.0395002
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    4+                 0.0091510   -0.0250977    0.0433997
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    4+                 0.0290430   -0.0132135    0.0712995
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    4+                -0.0014529   -0.0449451    0.0420394
21-24 months   ki0047075b-MAL-ED          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    4+                 0.0238700   -0.0136743    0.0614143
21-24 months   ki0047075b-MAL-ED          INDIA                          2                    4+                 0.0410973    0.0021248    0.0800698
21-24 months   ki0047075b-MAL-ED          INDIA                          3                    4+                 0.0198451   -0.0190862    0.0587763
21-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    4+                -0.0038676   -0.0396236    0.0318884
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                    4+                 0.0079734   -0.0300494    0.0459961
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                    4+                 0.0201154   -0.0317995    0.0720302
21-24 months   ki0047075b-MAL-ED          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           1                    4+                 0.0542735   -0.0136427    0.1221897
21-24 months   ki0047075b-MAL-ED          PERU                           2                    4+                 0.0291530   -0.0173991    0.0757051
21-24 months   ki0047075b-MAL-ED          PERU                           3                    4+                 0.0047741   -0.0342462    0.0437945
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    4+                 0.0017119   -0.0626724    0.0660961
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    4+                 0.0302762   -0.0230550    0.0836073
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    4+                 0.0523514   -0.0289855    0.1336883
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0453598   -0.1435419    0.0528222
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0737683   -0.1357172   -0.0118195
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0182020   -0.0633684    0.0269643
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    4+                 0.0107803   -0.0774978    0.0990585
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    4+                -0.0172080   -0.1129081    0.0784921
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    4+                -0.0189830   -0.1195083    0.0815422
21-24 months   ki1000108-IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    4+                 0.0082296   -0.0439171    0.0603763
21-24 months   ki1000108-IRC              INDIA                          2                    4+                 0.0372164   -0.0164908    0.0909237
21-24 months   ki1000108-IRC              INDIA                          3                    4+                -0.0144627   -0.0784472    0.0495217
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    4+                -0.0195855   -0.0610094    0.0218384
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    4+                -0.0195408   -0.0647974    0.0257157
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    4+                -0.0286446   -0.0797768    0.0224875
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    4+                -0.0076336   -0.0318351    0.0165680
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    4+                 0.0014408   -0.0240479    0.0269294
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    4+                 0.0100622   -0.0183905    0.0385150
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    4+                -0.0677191   -0.1076988   -0.0277394
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    4+                 0.0066135   -0.0308053    0.0440324
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    4+                -0.0000224   -0.0393919    0.0393472
21-24 months   ki1114097-CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT          PERU                           1                    4+                 0.0076155   -0.1012590    0.1164901
21-24 months   ki1114097-CONTENT          PERU                           2                    4+                 0.0104905   -0.0479195    0.0689005
21-24 months   ki1114097-CONTENT          PERU                           3                    4+                 0.0760521    0.0095869    0.1425173


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.1061297    0.0028984    0.2093610
0-3 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0034301   -0.1282329    0.1213727
0-3 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0041525   -0.0342161    0.0425210
0-3 months     ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0171345   -0.0496013    0.0153323
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0030813   -0.0319146    0.0257521
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0055117   -0.0401557    0.0511792
0-3 months     ki1000108-IRC              INDIA                          4+                   NA                 0.2156617   -0.0238515    0.4551750
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0671803   -0.1635577    0.0291971
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                 0.0384324   -0.0001748    0.0770395
0-3 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0194135   -0.0071035    0.0459304
0-3 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0636623   -0.1060146   -0.0213101
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0032163   -0.0288810    0.0353136
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.1252855   -0.3742936    0.1237227
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0268442   -0.0550315    0.1087199
3-6 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0005385   -0.0827957    0.0838728
3-6 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0233131   -0.0472135    0.0005873
3-6 months     ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0461936    0.0155548    0.0768325
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0044133   -0.0232812    0.0144546
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0160221   -0.0522664    0.0202223
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1473955   -0.3718988    0.0771079
3-6 months     ki1000108-IRC              INDIA                          4+                   NA                -0.0073646   -0.1450569    0.1303277
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0021780   -0.0687311    0.0730870
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0255500   -0.0714038    0.0203037
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0165984   -0.0027764    0.0359732
3-6 months     ki1114097-CONTENT          PERU                           4+                   NA                 0.0218764   -0.0079855    0.0517383
3-6 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0106312   -0.0467577    0.0254953
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                 0.0072392   -0.0220440    0.0365224
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0331151   -0.1567385    0.0905084
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0670837   -0.1237196   -0.0104477
6-9 months     ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0392240   -0.0205801    0.0990280
6-9 months     ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0053530   -0.0224493    0.0117434
6-9 months     ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0136899   -0.0091620    0.0365419
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0069686   -0.0212717    0.0073345
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0015241   -0.0371356    0.0401838
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0774320   -0.0298510    0.1847151
6-9 months     ki1000108-IRC              INDIA                          4+                   NA                 0.0041799   -0.0825979    0.0909578
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0282695   -0.0933852    0.0368462
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0141919   -0.0499552    0.0215714
6-9 months     ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0100468   -0.0084930    0.0285866
6-9 months     ki1114097-CONTENT          PERU                           4+                   NA                -0.0188065   -0.0453845    0.0077715
6-9 months     ki1135781-COHORTS          INDIA                          4+                   NA                -0.0505804   -0.0797412   -0.0214196
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                 0.0087247   -0.0575177    0.0749671
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0418026   -0.0334984    0.1171036
9-12 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0326652   -0.0095870    0.0749173
9-12 months    ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0095131   -0.0053139    0.0243401
9-12 months    ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0241789   -0.0445981   -0.0037597
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0023878   -0.0174490    0.0126735
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0037882   -0.0414754    0.0338991
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0600146   -0.1796264    0.0595973
9-12 months    ki1000108-IRC              INDIA                          4+                   NA                 0.0373201   -0.0242854    0.0989257
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                 0.0052280   -0.0529968    0.0634528
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0055708   -0.0330672    0.0219255
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0019936   -0.0163380    0.0123508
9-12 months    ki1114097-CONTENT          PERU                           4+                   NA                 0.0007235   -0.0218539    0.0233009
9-12 months    ki1135781-COHORTS          INDIA                          4+                   NA                -0.0329788   -0.0609099   -0.0050478
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0154146   -0.0697067    0.0388774
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0555343   -0.1115972    0.0005286
12-15 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0423164   -0.0833196   -0.0013133
12-15 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0003096   -0.0141472    0.0135281
12-15 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0118149   -0.0054217    0.0290515
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0042236   -0.0081471    0.0165944
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0017447   -0.0291530    0.0256637
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0239549   -0.0397290    0.0876389
12-15 months   ki1000108-IRC              INDIA                          4+                   NA                 0.0266645   -0.0238109    0.0771399
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0300272   -0.0884277    0.0283733
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0110445   -0.0344801    0.0123911
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0066934   -0.0183955    0.0050087
12-15 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.0041035   -0.0186090    0.0268160
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0033116   -0.0977361    0.0911128
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0115828   -0.0727364    0.0495708
15-18 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0325069    0.0004068    0.0646071
15-18 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0044040   -0.0092218    0.0180297
15-18 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0046868   -0.0193566    0.0099830
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0002031   -0.0103749    0.0107811
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0025631   -0.0212822    0.0264084
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0685745   -0.1422146    0.0050656
15-18 months   ki1000108-IRC              INDIA                          4+                   NA                 0.0268230   -0.0442721    0.0979181
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0125745   -0.0608477    0.0356987
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0036809   -0.0223243    0.0149625
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0130660   -0.0007431    0.0268750
15-18 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0076437   -0.0309382    0.0156507
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                -0.0315010   -0.0872870    0.0242851
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                -0.0328773   -0.0814041    0.0156495
18-21 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                -0.0115495   -0.0384581    0.0153592
18-21 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                -0.0113244   -0.0230020    0.0003533
18-21 months   ki0047075b-MAL-ED          PERU                           4+                   NA                -0.0129057   -0.0268835    0.0010722
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                -0.0037044   -0.0135745    0.0061657
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0004328   -0.0245504    0.0236848
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0671443   -0.1543260    0.0200375
18-21 months   ki1000108-IRC              INDIA                          4+                   NA                -0.0727128   -0.1497914    0.0043658
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0502195   -0.0880042   -0.0124349
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0218191   -0.0413169   -0.0023212
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                 0.0004254   -0.0126244    0.0134751
18-21 months   ki1114097-CONTENT          PERU                           4+                   NA                -0.0113976   -0.0320160    0.0092208
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   NA                 0.0110294   -0.0202277    0.0422865
21-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                 0.0259749   -0.0051820    0.0571317
21-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                 0.0022376   -0.0099442    0.0144194
21-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                 0.0096620   -0.0043397    0.0236638
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                 0.0074435   -0.0028034    0.0176905
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0234534   -0.0467703   -0.0001365
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0014339   -0.0849143    0.0820466
21-24 months   ki1000108-IRC              INDIA                          4+                   NA                 0.0181259   -0.0305020    0.0667538
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                -0.0197142   -0.0592563    0.0198280
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                -0.0013270   -0.0198654    0.0172114
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                -0.0035246   -0.0202596    0.0132104
21-24 months   ki1114097-CONTENT          PERU                           4+                   NA                 0.0227280   -0.0201107    0.0655667
