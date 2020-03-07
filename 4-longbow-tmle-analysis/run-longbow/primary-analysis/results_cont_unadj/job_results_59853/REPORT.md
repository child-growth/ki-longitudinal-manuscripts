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

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid         country                        perdiar24    n_cell      n
-------------  --------------  -----------------------------  ----------  -------  -----
0-3 months     CMIN            BANGLADESH                     0%                0     43
0-3 months     CMIN            BANGLADESH                     (0%, 5%]         19     43
0-3 months     CMIN            BANGLADESH                     >5%              24     43
0-3 months     CONTENT         PERU                           0%                1     29
0-3 months     CONTENT         PERU                           (0%, 5%]         14     29
0-3 months     CONTENT         PERU                           >5%              14     29
0-3 months     EE              PAKISTAN                       0%              204    303
0-3 months     EE              PAKISTAN                       (0%, 5%]         99    303
0-3 months     EE              PAKISTAN                       >5%               0    303
0-3 months     JiVitA-4        BANGLADESH                     0%               44   1807
0-3 months     JiVitA-4        BANGLADESH                     (0%, 5%]       1579   1807
0-3 months     JiVitA-4        BANGLADESH                     >5%             184   1807
0-3 months     MAL-ED          BANGLADESH                     0%                8    243
0-3 months     MAL-ED          BANGLADESH                     (0%, 5%]        143    243
0-3 months     MAL-ED          BANGLADESH                     >5%              92    243
0-3 months     MAL-ED          BRAZIL                         0%               91    168
0-3 months     MAL-ED          BRAZIL                         (0%, 5%]         75    168
0-3 months     MAL-ED          BRAZIL                         >5%               2    168
0-3 months     MAL-ED          INDIA                          0%                5    183
0-3 months     MAL-ED          INDIA                          (0%, 5%]        146    183
0-3 months     MAL-ED          INDIA                          >5%              32    183
0-3 months     MAL-ED          NEPAL                          0%               11    156
0-3 months     MAL-ED          NEPAL                          (0%, 5%]         95    156
0-3 months     MAL-ED          NEPAL                          >5%              50    156
0-3 months     MAL-ED          PERU                           0%               10    265
0-3 months     MAL-ED          PERU                           (0%, 5%]        107    265
0-3 months     MAL-ED          PERU                           >5%             148    265
0-3 months     MAL-ED          SOUTH AFRICA                   0%               73    211
0-3 months     MAL-ED          SOUTH AFRICA                   (0%, 5%]        135    211
0-3 months     MAL-ED          SOUTH AFRICA                   >5%               3    211
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%               10    228
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        165    228
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              53    228
0-3 months     NIH-Birth       BANGLADESH                     0%               29    566
0-3 months     NIH-Birth       BANGLADESH                     (0%, 5%]        340    566
0-3 months     NIH-Birth       BANGLADESH                     >5%             197    566
0-3 months     NIH-Crypto      BANGLADESH                     0%              135    721
0-3 months     NIH-Crypto      BANGLADESH                     (0%, 5%]        386    721
0-3 months     NIH-Crypto      BANGLADESH                     >5%             200    721
0-3 months     PROVIDE         BANGLADESH                     0%               21    640
0-3 months     PROVIDE         BANGLADESH                     (0%, 5%]        425    640
0-3 months     PROVIDE         BANGLADESH                     >5%             194    640
3-6 months     CMIN            BANGLADESH                     0%                0    185
3-6 months     CMIN            BANGLADESH                     (0%, 5%]         90    185
3-6 months     CMIN            BANGLADESH                     >5%              95    185
3-6 months     CONTENT         PERU                           0%                6    214
3-6 months     CONTENT         PERU                           (0%, 5%]        142    214
3-6 months     CONTENT         PERU                           >5%              66    214
3-6 months     EE              PAKISTAN                       0%              190    280
3-6 months     EE              PAKISTAN                       (0%, 5%]         90    280
3-6 months     EE              PAKISTAN                       >5%               0    280
3-6 months     JiVitA-4        BANGLADESH                     0%               38   1840
3-6 months     JiVitA-4        BANGLADESH                     (0%, 5%]       1623   1840
3-6 months     JiVitA-4        BANGLADESH                     >5%             179   1840
3-6 months     MAL-ED          BANGLADESH                     0%                6    231
3-6 months     MAL-ED          BANGLADESH                     (0%, 5%]        137    231
3-6 months     MAL-ED          BANGLADESH                     >5%              88    231
3-6 months     MAL-ED          BRAZIL                         0%              105    208
3-6 months     MAL-ED          BRAZIL                         (0%, 5%]        101    208
3-6 months     MAL-ED          BRAZIL                         >5%               2    208
3-6 months     MAL-ED          INDIA                          0%                3    230
3-6 months     MAL-ED          INDIA                          (0%, 5%]        185    230
3-6 months     MAL-ED          INDIA                          >5%              42    230
3-6 months     MAL-ED          NEPAL                          0%               13    233
3-6 months     MAL-ED          NEPAL                          (0%, 5%]        141    233
3-6 months     MAL-ED          NEPAL                          >5%              79    233
3-6 months     MAL-ED          PERU                           0%                6    267
3-6 months     MAL-ED          PERU                           (0%, 5%]        106    267
3-6 months     MAL-ED          PERU                           >5%             155    267
3-6 months     MAL-ED          SOUTH AFRICA                   0%               75    243
3-6 months     MAL-ED          SOUTH AFRICA                   (0%, 5%]        166    243
3-6 months     MAL-ED          SOUTH AFRICA                   >5%               2    243
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    239
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        170    239
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              60    239
3-6 months     NIH-Birth       BANGLADESH                     0%               15    523
3-6 months     NIH-Birth       BANGLADESH                     (0%, 5%]        327    523
3-6 months     NIH-Birth       BANGLADESH                     >5%             181    523
3-6 months     NIH-Crypto      BANGLADESH                     0%              128    695
3-6 months     NIH-Crypto      BANGLADESH                     (0%, 5%]        377    695
3-6 months     NIH-Crypto      BANGLADESH                     >5%             190    695
3-6 months     PROVIDE         BANGLADESH                     0%               12    598
3-6 months     PROVIDE         BANGLADESH                     (0%, 5%]        405    598
3-6 months     PROVIDE         BANGLADESH                     >5%             181    598
6-9 months     CMIN            BANGLADESH                     0%                0    177
6-9 months     CMIN            BANGLADESH                     (0%, 5%]         75    177
6-9 months     CMIN            BANGLADESH                     >5%             102    177
6-9 months     CONTENT         PERU                           0%                6    214
6-9 months     CONTENT         PERU                           (0%, 5%]        141    214
6-9 months     CONTENT         PERU                           >5%              67    214
6-9 months     EE              PAKISTAN                       0%              208    304
6-9 months     EE              PAKISTAN                       (0%, 5%]         96    304
6-9 months     EE              PAKISTAN                       >5%               0    304
6-9 months     Guatemala BSC   GUATEMALA                      0%                9    213
6-9 months     Guatemala BSC   GUATEMALA                      (0%, 5%]         57    213
6-9 months     Guatemala BSC   GUATEMALA                      >5%             147    213
6-9 months     JiVitA-4        BANGLADESH                     0%               91   3054
6-9 months     JiVitA-4        BANGLADESH                     (0%, 5%]       2649   3054
6-9 months     JiVitA-4        BANGLADESH                     >5%             314   3054
6-9 months     MAL-ED          BANGLADESH                     0%                6    224
6-9 months     MAL-ED          BANGLADESH                     (0%, 5%]        133    224
6-9 months     MAL-ED          BANGLADESH                     >5%              85    224
6-9 months     MAL-ED          BRAZIL                         0%               95    198
6-9 months     MAL-ED          BRAZIL                         (0%, 5%]        101    198
6-9 months     MAL-ED          BRAZIL                         >5%               2    198
6-9 months     MAL-ED          INDIA                          0%                3    230
6-9 months     MAL-ED          INDIA                          (0%, 5%]        185    230
6-9 months     MAL-ED          INDIA                          >5%              42    230
6-9 months     MAL-ED          NEPAL                          0%               12    230
6-9 months     MAL-ED          NEPAL                          (0%, 5%]        141    230
6-9 months     MAL-ED          NEPAL                          >5%              77    230
6-9 months     MAL-ED          PERU                           0%                3    245
6-9 months     MAL-ED          PERU                           (0%, 5%]         99    245
6-9 months     MAL-ED          PERU                           >5%             143    245
6-9 months     MAL-ED          SOUTH AFRICA                   0%               73    231
6-9 months     MAL-ED          SOUTH AFRICA                   (0%, 5%]        156    231
6-9 months     MAL-ED          SOUTH AFRICA                   >5%               2    231
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                5    225
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        163    225
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              57    225
6-9 months     NIH-Birth       BANGLADESH                     0%                9    498
6-9 months     NIH-Birth       BANGLADESH                     (0%, 5%]        320    498
6-9 months     NIH-Birth       BANGLADESH                     >5%             169    498
6-9 months     NIH-Crypto      BANGLADESH                     0%              131    688
6-9 months     NIH-Crypto      BANGLADESH                     (0%, 5%]        372    688
6-9 months     NIH-Crypto      BANGLADESH                     >5%             185    688
6-9 months     PROVIDE         BANGLADESH                     0%               10    565
6-9 months     PROVIDE         BANGLADESH                     (0%, 5%]        383    565
6-9 months     PROVIDE         BANGLADESH                     >5%             172    565
6-9 months     SAS-FoodSuppl   INDIA                          0%               53    314
6-9 months     SAS-FoodSuppl   INDIA                          (0%, 5%]         36    314
6-9 months     SAS-FoodSuppl   INDIA                          >5%             225    314
9-12 months    CMIN            BANGLADESH                     0%                0    160
9-12 months    CMIN            BANGLADESH                     (0%, 5%]         68    160
9-12 months    CMIN            BANGLADESH                     >5%              92    160
9-12 months    CONTENT         PERU                           0%                6    212
9-12 months    CONTENT         PERU                           (0%, 5%]        140    212
9-12 months    CONTENT         PERU                           >5%              66    212
9-12 months    EE              PAKISTAN                       0%              226    326
9-12 months    EE              PAKISTAN                       (0%, 5%]        100    326
9-12 months    EE              PAKISTAN                       >5%               0    326
9-12 months    Guatemala BSC   GUATEMALA                      0%                8    186
9-12 months    Guatemala BSC   GUATEMALA                      (0%, 5%]         49    186
9-12 months    Guatemala BSC   GUATEMALA                      >5%             129    186
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%              134   1119
9-12 months    iLiNS-Zinc      BURKINA FASO                   (0%, 5%]        611   1119
9-12 months    iLiNS-Zinc      BURKINA FASO                   >5%             374   1119
9-12 months    JiVitA-4        BANGLADESH                     0%              124   3501
9-12 months    JiVitA-4        BANGLADESH                     (0%, 5%]       3022   3501
9-12 months    JiVitA-4        BANGLADESH                     >5%             355   3501
9-12 months    MAL-ED          BANGLADESH                     0%                6    225
9-12 months    MAL-ED          BANGLADESH                     (0%, 5%]        134    225
9-12 months    MAL-ED          BANGLADESH                     >5%              85    225
9-12 months    MAL-ED          BRAZIL                         0%               93    194
9-12 months    MAL-ED          BRAZIL                         (0%, 5%]         99    194
9-12 months    MAL-ED          BRAZIL                         >5%               2    194
9-12 months    MAL-ED          INDIA                          0%                3    227
9-12 months    MAL-ED          INDIA                          (0%, 5%]        182    227
9-12 months    MAL-ED          INDIA                          >5%              42    227
9-12 months    MAL-ED          NEPAL                          0%               12    229
9-12 months    MAL-ED          NEPAL                          (0%, 5%]        140    229
9-12 months    MAL-ED          NEPAL                          >5%              77    229
9-12 months    MAL-ED          PERU                           0%                2    235
9-12 months    MAL-ED          PERU                           (0%, 5%]         96    235
9-12 months    MAL-ED          PERU                           >5%             137    235
9-12 months    MAL-ED          SOUTH AFRICA                   0%               70    233
9-12 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]        161    233
9-12 months    MAL-ED          SOUTH AFRICA                   >5%               2    233
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                5    224
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        164    224
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              55    224
9-12 months    NIH-Birth       BANGLADESH                     0%                9    482
9-12 months    NIH-Birth       BANGLADESH                     (0%, 5%]        310    482
9-12 months    NIH-Birth       BANGLADESH                     >5%             163    482
9-12 months    NIH-Crypto      BANGLADESH                     0%              130    674
9-12 months    NIH-Crypto      BANGLADESH                     (0%, 5%]        366    674
9-12 months    NIH-Crypto      BANGLADESH                     >5%             178    674
9-12 months    PROVIDE         BANGLADESH                     0%                9    566
9-12 months    PROVIDE         BANGLADESH                     (0%, 5%]        383    566
9-12 months    PROVIDE         BANGLADESH                     >5%             174    566
9-12 months    SAS-FoodSuppl   INDIA                          0%               55    311
9-12 months    SAS-FoodSuppl   INDIA                          (0%, 5%]         37    311
9-12 months    SAS-FoodSuppl   INDIA                          >5%             219    311
12-15 months   CMIN            BANGLADESH                     0%                2    160
12-15 months   CMIN            BANGLADESH                     (0%, 5%]         69    160
12-15 months   CMIN            BANGLADESH                     >5%              89    160
12-15 months   CONTENT         PERU                           0%                5    199
12-15 months   CONTENT         PERU                           (0%, 5%]        132    199
12-15 months   CONTENT         PERU                           >5%              62    199
12-15 months   EE              PAKISTAN                       0%              201    297
12-15 months   EE              PAKISTAN                       (0%, 5%]         96    297
12-15 months   EE              PAKISTAN                       >5%               0    297
12-15 months   Guatemala BSC   GUATEMALA                      0%                2     97
12-15 months   Guatemala BSC   GUATEMALA                      (0%, 5%]         31     97
12-15 months   Guatemala BSC   GUATEMALA                      >5%              64     97
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%               88    978
12-15 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]        548    978
12-15 months   iLiNS-Zinc      BURKINA FASO                   >5%             342    978
12-15 months   JiVitA-4        BANGLADESH                     0%              131   3549
12-15 months   JiVitA-4        BANGLADESH                     (0%, 5%]       3067   3549
12-15 months   JiVitA-4        BANGLADESH                     >5%             351   3549
12-15 months   MAL-ED          BANGLADESH                     0%                6    212
12-15 months   MAL-ED          BANGLADESH                     (0%, 5%]        128    212
12-15 months   MAL-ED          BANGLADESH                     >5%              78    212
12-15 months   MAL-ED          BRAZIL                         0%               86    184
12-15 months   MAL-ED          BRAZIL                         (0%, 5%]         96    184
12-15 months   MAL-ED          BRAZIL                         >5%               2    184
12-15 months   MAL-ED          INDIA                          0%                3    226
12-15 months   MAL-ED          INDIA                          (0%, 5%]        181    226
12-15 months   MAL-ED          INDIA                          >5%              42    226
12-15 months   MAL-ED          NEPAL                          0%               12    230
12-15 months   MAL-ED          NEPAL                          (0%, 5%]        141    230
12-15 months   MAL-ED          NEPAL                          >5%              77    230
12-15 months   MAL-ED          PERU                           0%                1    224
12-15 months   MAL-ED          PERU                           (0%, 5%]         90    224
12-15 months   MAL-ED          PERU                           >5%             133    224
12-15 months   MAL-ED          SOUTH AFRICA                   0%               67    228
12-15 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]        160    228
12-15 months   MAL-ED          SOUTH AFRICA                   >5%               1    228
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    226
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        164    226
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              56    226
12-15 months   NIH-Birth       BANGLADESH                     0%                9    461
12-15 months   NIH-Birth       BANGLADESH                     (0%, 5%]        299    461
12-15 months   NIH-Birth       BANGLADESH                     >5%             153    461
12-15 months   NIH-Crypto      BANGLADESH                     0%              127    660
12-15 months   NIH-Crypto      BANGLADESH                     (0%, 5%]        354    660
12-15 months   NIH-Crypto      BANGLADESH                     >5%             179    660
12-15 months   PROVIDE         BANGLADESH                     0%                8    532
12-15 months   PROVIDE         BANGLADESH                     (0%, 5%]        356    532
12-15 months   PROVIDE         BANGLADESH                     >5%             168    532
12-15 months   SAS-FoodSuppl   INDIA                          0%               56    303
12-15 months   SAS-FoodSuppl   INDIA                          (0%, 5%]         35    303
12-15 months   SAS-FoodSuppl   INDIA                          >5%             212    303
15-18 months   CMIN            BANGLADESH                     0%                3    163
15-18 months   CMIN            BANGLADESH                     (0%, 5%]         70    163
15-18 months   CMIN            BANGLADESH                     >5%              90    163
15-18 months   CONTENT         PERU                           0%                5    189
15-18 months   CONTENT         PERU                           (0%, 5%]        124    189
15-18 months   CONTENT         PERU                           >5%              60    189
15-18 months   EE              PAKISTAN                       0%              189    278
15-18 months   EE              PAKISTAN                       (0%, 5%]         89    278
15-18 months   EE              PAKISTAN                       >5%               0    278
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%               77   1021
15-18 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]        581   1021
15-18 months   iLiNS-Zinc      BURKINA FASO                   >5%             363   1021
15-18 months   JiVitA-4        BANGLADESH                     0%              120   3550
15-18 months   JiVitA-4        BANGLADESH                     (0%, 5%]       3079   3550
15-18 months   JiVitA-4        BANGLADESH                     >5%             351   3550
15-18 months   MAL-ED          BANGLADESH                     0%                6    212
15-18 months   MAL-ED          BANGLADESH                     (0%, 5%]        127    212
15-18 months   MAL-ED          BANGLADESH                     >5%              79    212
15-18 months   MAL-ED          BRAZIL                         0%               79    175
15-18 months   MAL-ED          BRAZIL                         (0%, 5%]         94    175
15-18 months   MAL-ED          BRAZIL                         >5%               2    175
15-18 months   MAL-ED          INDIA                          0%                3    226
15-18 months   MAL-ED          INDIA                          (0%, 5%]        182    226
15-18 months   MAL-ED          INDIA                          >5%              41    226
15-18 months   MAL-ED          NEPAL                          0%               12    227
15-18 months   MAL-ED          NEPAL                          (0%, 5%]        139    227
15-18 months   MAL-ED          NEPAL                          >5%              76    227
15-18 months   MAL-ED          PERU                           0%                1    213
15-18 months   MAL-ED          PERU                           (0%, 5%]         86    213
15-18 months   MAL-ED          PERU                           >5%             126    213
15-18 months   MAL-ED          SOUTH AFRICA                   0%               68    225
15-18 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]        156    225
15-18 months   MAL-ED          SOUTH AFRICA                   >5%               1    225
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    217
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        158    217
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              53    217
15-18 months   NIH-Birth       BANGLADESH                     0%                7    449
15-18 months   NIH-Birth       BANGLADESH                     (0%, 5%]        295    449
15-18 months   NIH-Birth       BANGLADESH                     >5%             147    449
15-18 months   NIH-Crypto      BANGLADESH                     0%              125    604
15-18 months   NIH-Crypto      BANGLADESH                     (0%, 5%]        321    604
15-18 months   NIH-Crypto      BANGLADESH                     >5%             158    604
15-18 months   PROVIDE         BANGLADESH                     0%                8    528
15-18 months   PROVIDE         BANGLADESH                     (0%, 5%]        355    528
15-18 months   PROVIDE         BANGLADESH                     >5%             165    528
15-18 months   SAS-FoodSuppl   INDIA                          0%               56    291
15-18 months   SAS-FoodSuppl   INDIA                          (0%, 5%]         33    291
15-18 months   SAS-FoodSuppl   INDIA                          >5%             202    291
18-21 months   CMIN            BANGLADESH                     0%                2    165
18-21 months   CMIN            BANGLADESH                     (0%, 5%]         72    165
18-21 months   CMIN            BANGLADESH                     >5%              91    165
18-21 months   CONTENT         PERU                           0%                4    183
18-21 months   CONTENT         PERU                           (0%, 5%]        122    183
18-21 months   CONTENT         PERU                           >5%              57    183
18-21 months   EE              PAKISTAN                       0%              173    254
18-21 months   EE              PAKISTAN                       (0%, 5%]         81    254
18-21 months   EE              PAKISTAN                       >5%               0    254
18-21 months   MAL-ED          BANGLADESH                     0%                6    209
18-21 months   MAL-ED          BANGLADESH                     (0%, 5%]        129    209
18-21 months   MAL-ED          BANGLADESH                     >5%              74    209
18-21 months   MAL-ED          BRAZIL                         0%               75    167
18-21 months   MAL-ED          BRAZIL                         (0%, 5%]         90    167
18-21 months   MAL-ED          BRAZIL                         >5%               2    167
18-21 months   MAL-ED          INDIA                          0%                3    226
18-21 months   MAL-ED          INDIA                          (0%, 5%]        182    226
18-21 months   MAL-ED          INDIA                          >5%              41    226
18-21 months   MAL-ED          NEPAL                          0%               12    227
18-21 months   MAL-ED          NEPAL                          (0%, 5%]        139    227
18-21 months   MAL-ED          NEPAL                          >5%              76    227
18-21 months   MAL-ED          PERU                           0%                1    202
18-21 months   MAL-ED          PERU                           (0%, 5%]         86    202
18-21 months   MAL-ED          PERU                           >5%             115    202
18-21 months   MAL-ED          SOUTH AFRICA                   0%               69    233
18-21 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]        163    233
18-21 months   MAL-ED          SOUTH AFRICA                   >5%               1    233
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    204
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        148    204
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              50    204
18-21 months   NIH-Birth       BANGLADESH                     0%                5    422
18-21 months   NIH-Birth       BANGLADESH                     (0%, 5%]        274    422
18-21 months   NIH-Birth       BANGLADESH                     >5%             143    422
18-21 months   NIH-Crypto      BANGLADESH                     0%              123    546
18-21 months   NIH-Crypto      BANGLADESH                     (0%, 5%]        290    546
18-21 months   NIH-Crypto      BANGLADESH                     >5%             133    546
18-21 months   PROVIDE         BANGLADESH                     0%                7    541
18-21 months   PROVIDE         BANGLADESH                     (0%, 5%]        367    541
18-21 months   PROVIDE         BANGLADESH                     >5%             167    541
21-24 months   CMIN            BANGLADESH                     0%                2    133
21-24 months   CMIN            BANGLADESH                     (0%, 5%]         61    133
21-24 months   CMIN            BANGLADESH                     >5%              70    133
21-24 months   CONTENT         PERU                           0%                0     38
21-24 months   CONTENT         PERU                           (0%, 5%]         26     38
21-24 months   CONTENT         PERU                           >5%              12     38
21-24 months   EE              PAKISTAN                       0%               75    106
21-24 months   EE              PAKISTAN                       (0%, 5%]         31    106
21-24 months   EE              PAKISTAN                       >5%               0    106
21-24 months   MAL-ED          BANGLADESH                     0%                6    207
21-24 months   MAL-ED          BANGLADESH                     (0%, 5%]        127    207
21-24 months   MAL-ED          BANGLADESH                     >5%              74    207
21-24 months   MAL-ED          BRAZIL                         0%               73    165
21-24 months   MAL-ED          BRAZIL                         (0%, 5%]         91    165
21-24 months   MAL-ED          BRAZIL                         >5%               1    165
21-24 months   MAL-ED          INDIA                          0%                3    226
21-24 months   MAL-ED          INDIA                          (0%, 5%]        182    226
21-24 months   MAL-ED          INDIA                          >5%              41    226
21-24 months   MAL-ED          NEPAL                          0%               11    227
21-24 months   MAL-ED          NEPAL                          (0%, 5%]        140    227
21-24 months   MAL-ED          NEPAL                          >5%              76    227
21-24 months   MAL-ED          PERU                           0%                1    189
21-24 months   MAL-ED          PERU                           (0%, 5%]         80    189
21-24 months   MAL-ED          PERU                           >5%             108    189
21-24 months   MAL-ED          SOUTH AFRICA                   0%               71    235
21-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]        163    235
21-24 months   MAL-ED          SOUTH AFRICA                   >5%               1    235
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    204
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        148    204
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              50    204
21-24 months   NIH-Birth       BANGLADESH                     0%                5    411
21-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]        267    411
21-24 months   NIH-Birth       BANGLADESH                     >5%             139    411
21-24 months   NIH-Crypto      BANGLADESH                     0%              122    490
21-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]        260    490
21-24 months   NIH-Crypto      BANGLADESH                     >5%             108    490
21-24 months   PROVIDE         BANGLADESH                     0%                8    471
21-24 months   PROVIDE         BANGLADESH                     (0%, 5%]        320    471
21-24 months   PROVIDE         BANGLADESH                     >5%             143    471


The following strata were considered:

* agecat: 0-3 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
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
* agecat: 12-15 months, studyid: CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 6-9 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: CONTENT, country: PERU
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA

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




# Results Detail

## Results Plots
![](/tmp/0f1d1386-3219-42eb-8a88-ebacb81642e4/381e57ba-fa86-454f-be95-76077c9213e3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0f1d1386-3219-42eb-8a88-ebacb81642e4/381e57ba-fa86-454f-be95-76077c9213e3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0f1d1386-3219-42eb-8a88-ebacb81642e4/381e57ba-fa86-454f-be95-76077c9213e3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     JiVitA-4        BANGLADESH                     0%                   NA                3.5945010   3.1760064   4.0129956
0-3 months     JiVitA-4        BANGLADESH                     (0%, 5%]             NA                3.6361364   3.6032117   3.6690610
0-3 months     JiVitA-4        BANGLADESH                     >5%                  NA                3.6655404   3.5968269   3.7342540
0-3 months     MAL-ED          BANGLADESH                     0%                   NA                3.3021986   2.9217197   3.6826775
0-3 months     MAL-ED          BANGLADESH                     (0%, 5%]             NA                3.3458080   3.2617953   3.4298208
0-3 months     MAL-ED          BANGLADESH                     >5%                  NA                3.3319432   3.2227784   3.4411081
0-3 months     MAL-ED          INDIA                          0%                   NA                3.9765054   2.4394476   5.5135632
0-3 months     MAL-ED          INDIA                          (0%, 5%]             NA                3.3457689   3.2534687   3.4380691
0-3 months     MAL-ED          INDIA                          >5%                  NA                3.2612624   2.9966705   3.5258543
0-3 months     MAL-ED          NEPAL                          0%                   NA                3.8340282   3.4067431   4.2613133
0-3 months     MAL-ED          NEPAL                          (0%, 5%]             NA                3.5498816   3.4302517   3.6695116
0-3 months     MAL-ED          NEPAL                          >5%                  NA                3.7168013   3.5765118   3.8570908
0-3 months     MAL-ED          PERU                           0%                   NA                2.9769258   2.7383743   3.2154772
0-3 months     MAL-ED          PERU                           (0%, 5%]             NA                3.0280324   2.9205196   3.1355452
0-3 months     MAL-ED          PERU                           >5%                  NA                3.0743175   2.9858355   3.1627995
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                3.3465881   2.9153920   3.7777841
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                3.2935887   3.2087240   3.3784534
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                3.1584488   2.9787573   3.3381403
0-3 months     NIH-Birth       BANGLADESH                     0%                   NA                3.0228592   2.7701309   3.2755875
0-3 months     NIH-Birth       BANGLADESH                     (0%, 5%]             NA                3.0810976   3.0146153   3.1475798
0-3 months     NIH-Birth       BANGLADESH                     >5%                  NA                3.1727434   3.0785599   3.2669270
0-3 months     NIH-Crypto      BANGLADESH                     0%                   NA                3.0186999   2.9550484   3.0823515
0-3 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                3.1332457   3.0819961   3.1844953
0-3 months     NIH-Crypto      BANGLADESH                     >5%                  NA                3.1961411   3.1230717   3.2692105
0-3 months     PROVIDE         BANGLADESH                     0%                   NA                3.1484729   2.8948404   3.4021053
0-3 months     PROVIDE         BANGLADESH                     (0%, 5%]             NA                3.2637069   3.2196058   3.3078080
0-3 months     PROVIDE         BANGLADESH                     >5%                  NA                3.2563014   3.1871160   3.3254869
3-6 months     CONTENT         PERU                           0%                   NA                2.0933002   1.8015225   2.3850780
3-6 months     CONTENT         PERU                           (0%, 5%]             NA                2.0736534   2.0175221   2.1297847
3-6 months     CONTENT         PERU                           >5%                  NA                2.1060124   2.0120781   2.1999467
3-6 months     JiVitA-4        BANGLADESH                     0%                   NA                2.0822386   1.9026886   2.2617886
3-6 months     JiVitA-4        BANGLADESH                     (0%, 5%]             NA                1.8911042   1.8587865   1.9234218
3-6 months     JiVitA-4        BANGLADESH                     >5%                  NA                1.9251914   1.8597397   1.9906431
3-6 months     MAL-ED          BANGLADESH                     0%                   NA                1.8472373   1.5841576   2.1103170
3-6 months     MAL-ED          BANGLADESH                     (0%, 5%]             NA                1.9559532   1.8905162   2.0213902
3-6 months     MAL-ED          BANGLADESH                     >5%                  NA                1.8890455   1.8081193   1.9699716
3-6 months     MAL-ED          NEPAL                          0%                   NA                2.0599397   1.8084359   2.3114435
3-6 months     MAL-ED          NEPAL                          (0%, 5%]             NA                1.9844480   1.9179280   2.0509680
3-6 months     MAL-ED          NEPAL                          >5%                  NA                1.9130736   1.8064022   2.0197449
3-6 months     MAL-ED          PERU                           0%                   NA                1.9003923   1.5861984   2.2145862
3-6 months     MAL-ED          PERU                           (0%, 5%]             NA                2.0310710   1.9251510   2.1369910
3-6 months     MAL-ED          PERU                           >5%                  NA                2.0096210   1.9226595   2.0965824
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                1.5432136   1.1170539   1.9693733
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                1.8315269   1.7506892   1.9123645
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                1.8690510   1.7441477   1.9939543
3-6 months     NIH-Birth       BANGLADESH                     0%                   NA                1.8665971   1.5906770   2.1425172
3-6 months     NIH-Birth       BANGLADESH                     (0%, 5%]             NA                1.8412369   1.7813154   1.9011585
3-6 months     NIH-Birth       BANGLADESH                     >5%                  NA                1.8144432   1.7307937   1.8980926
3-6 months     NIH-Crypto      BANGLADESH                     0%                   NA                2.1134607   2.0267330   2.2001885
3-6 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                1.9910449   1.9402754   2.0418145
3-6 months     NIH-Crypto      BANGLADESH                     >5%                  NA                1.9625378   1.8994428   2.0256329
3-6 months     PROVIDE         BANGLADESH                     0%                   NA                1.7684307   1.5564822   1.9803793
3-6 months     PROVIDE         BANGLADESH                     (0%, 5%]             NA                1.9536888   1.9114714   1.9959062
3-6 months     PROVIDE         BANGLADESH                     >5%                  NA                2.0058056   1.9492075   2.0624037
6-9 months     CONTENT         PERU                           0%                   NA                1.2169251   1.1218285   1.3120217
6-9 months     CONTENT         PERU                           (0%, 5%]             NA                1.3801781   1.3219369   1.4384192
6-9 months     CONTENT         PERU                           >5%                  NA                1.4498806   1.3645877   1.5351734
6-9 months     Guatemala BSC   GUATEMALA                      0%                   NA                1.1744435   0.9935659   1.3553210
6-9 months     Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                1.2033559   1.1288814   1.2778305
6-9 months     Guatemala BSC   GUATEMALA                      >5%                  NA                1.1572016   1.1012953   1.2131079
6-9 months     JiVitA-4        BANGLADESH                     0%                   NA                1.3672224   1.2392961   1.4951487
6-9 months     JiVitA-4        BANGLADESH                     (0%, 5%]             NA                1.3269140   1.3050783   1.3487496
6-9 months     JiVitA-4        BANGLADESH                     >5%                  NA                1.2892571   1.2229552   1.3555590
6-9 months     MAL-ED          BANGLADESH                     0%                   NA                1.1305121   0.9616113   1.2994128
6-9 months     MAL-ED          BANGLADESH                     (0%, 5%]             NA                1.2310432   1.1795257   1.2825607
6-9 months     MAL-ED          BANGLADESH                     >5%                  NA                1.2829445   1.2181463   1.3477428
6-9 months     MAL-ED          NEPAL                          0%                   NA                1.2215764   1.0408280   1.4023247
6-9 months     MAL-ED          NEPAL                          (0%, 5%]             NA                1.3623571   1.3065993   1.4181149
6-9 months     MAL-ED          NEPAL                          >5%                  NA                1.3687159   1.2911070   1.4463249
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                1.0912359   0.6053347   1.5771372
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                1.2286494   1.1382813   1.3190176
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                1.0911223   0.9353485   1.2468960
6-9 months     NIH-Birth       BANGLADESH                     0%                   NA                1.3406068   1.2084865   1.4727272
6-9 months     NIH-Birth       BANGLADESH                     (0%, 5%]             NA                1.2841507   1.2327057   1.3355956
6-9 months     NIH-Birth       BANGLADESH                     >5%                  NA                1.1969980   1.1294922   1.2645038
6-9 months     NIH-Crypto      BANGLADESH                     0%                   NA                1.3253279   1.2614734   1.3891823
6-9 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                1.3202219   1.2798529   1.3605908
6-9 months     NIH-Crypto      BANGLADESH                     >5%                  NA                1.3465348   1.2887103   1.4043592
6-9 months     PROVIDE         BANGLADESH                     0%                   NA                1.3763743   1.2440811   1.5086674
6-9 months     PROVIDE         BANGLADESH                     (0%, 5%]             NA                1.2859866   1.2558758   1.3160975
6-9 months     PROVIDE         BANGLADESH                     >5%                  NA                1.2690106   1.2216602   1.3163611
6-9 months     SAS-FoodSuppl   INDIA                          0%                   NA                1.1614757   1.0653997   1.2575516
6-9 months     SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                1.1139800   0.9849594   1.2430006
6-9 months     SAS-FoodSuppl   INDIA                          >5%                  NA                1.1427545   1.0953323   1.1901767
9-12 months    CONTENT         PERU                           0%                   NA                1.1908255   0.9470280   1.4346229
9-12 months    CONTENT         PERU                           (0%, 5%]             NA                1.2200195   1.1697003   1.2703386
9-12 months    CONTENT         PERU                           >5%                  NA                1.1740334   1.1075334   1.2405334
9-12 months    Guatemala BSC   GUATEMALA                      0%                   NA                1.0709260   0.9273635   1.2144886
9-12 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                1.0387623   0.9713516   1.1061731
9-12 months    Guatemala BSC   GUATEMALA                      >5%                  NA                1.0364088   0.9869943   1.0858232
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%                   NA                1.1419232   1.0451814   1.2386650
9-12 months    iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                1.0946057   1.0619106   1.1273009
9-12 months    iLiNS-Zinc      BURKINA FASO                   >5%                  NA                1.0722419   1.0029411   1.1415427
9-12 months    JiVitA-4        BANGLADESH                     0%                   NA                1.0295958   0.9220532   1.1371385
9-12 months    JiVitA-4        BANGLADESH                     (0%, 5%]             NA                1.0730663   1.0535955   1.0925371
9-12 months    JiVitA-4        BANGLADESH                     >5%                  NA                1.0725974   1.0280558   1.1171389
9-12 months    MAL-ED          BANGLADESH                     0%                   NA                1.0883735   0.7441498   1.4325973
9-12 months    MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.9965391   0.9467689   1.0463093
9-12 months    MAL-ED          BANGLADESH                     >5%                  NA                0.9718064   0.9111275   1.0324854
9-12 months    MAL-ED          NEPAL                          0%                   NA                1.2100435   1.0206499   1.3994371
9-12 months    MAL-ED          NEPAL                          (0%, 5%]             NA                1.1036577   1.0529132   1.1544022
9-12 months    MAL-ED          NEPAL                          >5%                  NA                1.0441911   0.9729408   1.1154413
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8130985   0.3267417   1.2994553
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8062014   0.7185433   0.8938595
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8337017   0.6377627   1.0296408
9-12 months    NIH-Birth       BANGLADESH                     0%                   NA                1.2001932   1.1044094   1.2959769
9-12 months    NIH-Birth       BANGLADESH                     (0%, 5%]             NA                1.0922112   1.0489878   1.1354345
9-12 months    NIH-Birth       BANGLADESH                     >5%                  NA                1.0755140   1.0125326   1.1384954
9-12 months    NIH-Crypto      BANGLADESH                     0%                   NA                1.1458932   1.0856977   1.2060887
9-12 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                1.1184556   1.0831521   1.1537592
9-12 months    NIH-Crypto      BANGLADESH                     >5%                  NA                1.1174209   1.0657933   1.1690484
9-12 months    PROVIDE         BANGLADESH                     0%                   NA                0.7470551   0.6447822   0.8493279
9-12 months    PROVIDE         BANGLADESH                     (0%, 5%]             NA                1.0567074   1.0240387   1.0893761
9-12 months    PROVIDE         BANGLADESH                     >5%                  NA                1.0508242   1.0024014   1.0992470
9-12 months    SAS-FoodSuppl   INDIA                          0%                   NA                1.0647216   0.6031805   1.5262627
9-12 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.8330094   0.4644090   1.2016098
9-12 months    SAS-FoodSuppl   INDIA                          >5%                  NA                0.7430856   0.6028007   0.8833705
12-15 months   CONTENT         PERU                           0%                   NA                0.6829053   0.5326891   0.8331216
12-15 months   CONTENT         PERU                           (0%, 5%]             NA                0.9419988   0.8867016   0.9972959
12-15 months   CONTENT         PERU                           >5%                  NA                0.9216348   0.8571246   0.9861451
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                0.9149991   0.8194068   1.0105915
12-15 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                0.9932237   0.9368959   1.0495514
12-15 months   iLiNS-Zinc      BURKINA FASO                   >5%                  NA                0.9350104   0.8789709   0.9910500
12-15 months   JiVitA-4        BANGLADESH                     0%                   NA                0.9792114   0.8923736   1.0660491
12-15 months   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.9394557   0.9222824   0.9566291
12-15 months   JiVitA-4        BANGLADESH                     >5%                  NA                0.9455969   0.9030658   0.9881279
12-15 months   MAL-ED          BANGLADESH                     0%                   NA                1.2032191   0.9300118   1.4764264
12-15 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.8873480   0.8406046   0.9340913
12-15 months   MAL-ED          BANGLADESH                     >5%                  NA                0.9357621   0.8629274   1.0085968
12-15 months   MAL-ED          NEPAL                          0%                   NA                0.8798860   0.6821680   1.0776039
12-15 months   MAL-ED          NEPAL                          (0%, 5%]             NA                0.9517472   0.9027876   1.0007068
12-15 months   MAL-ED          NEPAL                          >5%                  NA                0.9619464   0.8925715   1.0313213
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7107239   0.2928226   1.1286253
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8696817   0.7929748   0.9463887
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8329333   0.7116708   0.9541958
12-15 months   NIH-Birth       BANGLADESH                     0%                   NA                0.6016726   0.4554164   0.7479287
12-15 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.7209448   0.6592168   0.7826729
12-15 months   NIH-Birth       BANGLADESH                     >5%                  NA                0.7376552   0.6806844   0.7946260
12-15 months   NIH-Crypto      BANGLADESH                     0%                   NA                0.9557973   0.9017430   1.0098517
12-15 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.9755513   0.9429323   1.0081702
12-15 months   NIH-Crypto      BANGLADESH                     >5%                  NA                0.9732997   0.9226733   1.0239261
12-15 months   PROVIDE         BANGLADESH                     0%                   NA                1.1327244   0.9504387   1.3150102
12-15 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.9509951   0.9199241   0.9820661
12-15 months   PROVIDE         BANGLADESH                     >5%                  NA                0.9700653   0.9223112   1.0178195
12-15 months   SAS-FoodSuppl   INDIA                          0%                   NA                0.8091223   0.4324466   1.1857979
12-15 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                1.0983485   0.9890204   1.2076766
12-15 months   SAS-FoodSuppl   INDIA                          >5%                  NA                1.0724626   0.9964231   1.1485020
15-18 months   CONTENT         PERU                           0%                   NA                1.1730271   0.9064508   1.4396035
15-18 months   CONTENT         PERU                           (0%, 5%]             NA                1.0072816   0.9477908   1.0667725
15-18 months   CONTENT         PERU                           >5%                  NA                0.9265053   0.8603342   0.9926763
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                0.8743822   0.8153719   0.9333924
15-18 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                0.9331515   0.8809440   0.9853590
15-18 months   iLiNS-Zinc      BURKINA FASO                   >5%                  NA                0.9166185   0.8458292   0.9874078
15-18 months   JiVitA-4        BANGLADESH                     0%                   NA                0.8999531   0.8168322   0.9830741
15-18 months   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.8616136   0.8434817   0.8797454
15-18 months   JiVitA-4        BANGLADESH                     >5%                  NA                0.8313541   0.7861460   0.8765621
15-18 months   MAL-ED          BANGLADESH                     0%                   NA                0.7970241   0.5267839   1.0672642
15-18 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.8212715   0.7778707   0.8646724
15-18 months   MAL-ED          BANGLADESH                     >5%                  NA                0.8307640   0.7634759   0.8980521
15-18 months   MAL-ED          NEPAL                          0%                   NA                0.9400036   0.7506402   1.1293671
15-18 months   MAL-ED          NEPAL                          (0%, 5%]             NA                0.8577408   0.8044704   0.9110113
15-18 months   MAL-ED          NEPAL                          >5%                  NA                0.7942604   0.7256035   0.8629173
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7615997   0.3156013   1.2075982
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.6690870   0.5986233   0.7395506
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7309239   0.6063087   0.8555391
15-18 months   NIH-Birth       BANGLADESH                     0%                   NA                1.2585941   0.9710538   1.5461344
15-18 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.7723298   0.7223528   0.8223069
15-18 months   NIH-Birth       BANGLADESH                     >5%                  NA                0.7505247   0.6854327   0.8156167
15-18 months   NIH-Crypto      BANGLADESH                     0%                   NA                0.9251146   0.8753490   0.9748802
15-18 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.9259168   0.8936178   0.9582158
15-18 months   NIH-Crypto      BANGLADESH                     >5%                  NA                0.8952045   0.8524853   0.9379237
15-18 months   PROVIDE         BANGLADESH                     0%                   NA                0.9237552   0.7891671   1.0583433
15-18 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.8642394   0.8348970   0.8935818
15-18 months   PROVIDE         BANGLADESH                     >5%                  NA                0.8353071   0.7926425   0.8779717
15-18 months   SAS-FoodSuppl   INDIA                          0%                   NA                0.8431805   0.7786299   0.9077312
15-18 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.7713169   0.6617454   0.8808883
15-18 months   SAS-FoodSuppl   INDIA                          >5%                  NA                0.7852040   0.7405688   0.8298392
18-21 months   MAL-ED          BANGLADESH                     0%                   NA                0.8204084   0.6348865   1.0059302
18-21 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.7918543   0.7468722   0.8368364
18-21 months   MAL-ED          BANGLADESH                     >5%                  NA                0.8503481   0.7961436   0.9045525
18-21 months   MAL-ED          NEPAL                          0%                   NA                0.8430652   0.6046027   1.0815277
18-21 months   MAL-ED          NEPAL                          (0%, 5%]             NA                0.8085389   0.7589956   0.8580823
18-21 months   MAL-ED          NEPAL                          >5%                  NA                0.8321818   0.7747069   0.8896566
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8052936   0.2028801   1.4077071
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7726463   0.6962076   0.8490850
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.6506433   0.5143886   0.7868980
18-21 months   NIH-Birth       BANGLADESH                     0%                   NA                0.4799290   0.4013646   0.5584935
18-21 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.7187969   0.6751662   0.7624276
18-21 months   NIH-Birth       BANGLADESH                     >5%                  NA                0.7576920   0.6927672   0.8226167
18-21 months   NIH-Crypto      BANGLADESH                     0%                   NA                0.8144069   0.7648262   0.8639876
18-21 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.8083625   0.7767362   0.8399887
18-21 months   NIH-Crypto      BANGLADESH                     >5%                  NA                0.7593103   0.7117091   0.8069116
18-21 months   PROVIDE         BANGLADESH                     0%                   NA                0.9153757   0.8195201   1.0112314
18-21 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.8353011   0.8061772   0.8644250
18-21 months   PROVIDE         BANGLADESH                     >5%                  NA                0.8450212   0.8017131   0.8883294
21-24 months   MAL-ED          BANGLADESH                     0%                   NA                0.8202989   0.6919530   0.9486448
21-24 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.7838728   0.7400896   0.8276561
21-24 months   MAL-ED          BANGLADESH                     >5%                  NA                0.7404856   0.6770923   0.8038790
21-24 months   MAL-ED          NEPAL                          0%                   NA                0.6669760   0.5475093   0.7864427
21-24 months   MAL-ED          NEPAL                          (0%, 5%]             NA                0.7946411   0.7391714   0.8501107
21-24 months   MAL-ED          NEPAL                          >5%                  NA                0.7794136   0.7164635   0.8423638
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.5316857   0.2231655   0.8402059
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7151343   0.6355503   0.7947183
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7526459   0.6431800   0.8621118
21-24 months   NIH-Birth       BANGLADESH                     0%                   NA                0.8700507   0.7243845   1.0157169
21-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.7170223   0.6737174   0.7603272
21-24 months   NIH-Birth       BANGLADESH                     >5%                  NA                0.7120957   0.6491679   0.7750234
21-24 months   NIH-Crypto      BANGLADESH                     0%                   NA                0.8092554   0.7619631   0.8565476
21-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.7969439   0.7636910   0.8301968
21-24 months   NIH-Crypto      BANGLADESH                     >5%                  NA                0.7938865   0.7380209   0.8497521
21-24 months   PROVIDE         BANGLADESH                     0%                   NA                0.5396483   0.4846511   0.5946455
21-24 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.7778973   0.7461222   0.8096724
21-24 months   PROVIDE         BANGLADESH                     >5%                  NA                0.7426166   0.6999615   0.7852717


### Parameter: E(Y)


agecat         studyid         country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     JiVitA-4        BANGLADESH                     NA                   NA                3.6381167   3.6070177   3.6692156
0-3 months     MAL-ED          BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     MAL-ED          INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     MAL-ED          NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     MAL-ED          PERU                           NA                   NA                3.0519536   2.9854854   3.1184219
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     NIH-Birth       BANGLADESH                     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     NIH-Crypto      BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
3-6 months     CONTENT         PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     JiVitA-4        BANGLADESH                     NA                   NA                1.8983676   1.8684335   1.9283018
3-6 months     MAL-ED          BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     MAL-ED          NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     MAL-ED          PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     NIH-Birth       BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
6-9 months     CONTENT         PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     Guatemala BSC   GUATEMALA                      NA                   NA                1.1702813   1.1261029   1.2144597
6-9 months     JiVitA-4        BANGLADESH                     NA                   NA                1.3242433   1.3035625   1.3449241
6-9 months     MAL-ED          BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     MAL-ED          NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     NIH-Birth       BANGLADESH                     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     NIH-Crypto      BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     SAS-FoodSuppl   INDIA                          NA                   NA                1.1426155   1.1021386   1.1830923
9-12 months    CONTENT         PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    Guatemala BSC   GUATEMALA                      NA                   NA                1.0385134   0.9994107   1.0776161
9-12 months    iLiNS-Zinc      BURKINA FASO                   NA                   NA                1.0927974   1.0590753   1.1265195
9-12 months    JiVitA-4        BANGLADESH                     NA                   NA                1.0714791   1.0535276   1.0894307
9-12 months    MAL-ED          BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    MAL-ED          NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    NIH-Birth       BANGLADESH                     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    NIH-Crypto      BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    SAS-FoodSuppl   INDIA                          NA                   NA                0.8106649   0.6745544   0.9467754
12-15 months   CONTENT         PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   iLiNS-Zinc      BURKINA FASO                   NA                   NA                0.9658283   0.9236309   1.0080257
12-15 months   JiVitA-4        BANGLADESH                     NA                   NA                0.9415306   0.9256966   0.9573645
12-15 months   MAL-ED          BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   MAL-ED          NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   NIH-Birth       BANGLADESH                     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   NIH-Crypto      BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   SAS-FoodSuppl   INDIA                          NA                   NA                1.0267825   0.9374856   1.1160794
15-18 months   CONTENT         PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   iLiNS-Zinc      BURKINA FASO                   NA                   NA                0.9228413   0.8852625   0.9604201
15-18 months   JiVitA-4        BANGLADESH                     NA                   NA                0.8599177   0.8433915   0.8764438
15-18 months   MAL-ED          BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   MAL-ED          NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   NIH-Birth       BANGLADESH                     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   NIH-Crypto      BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   SAS-FoodSuppl   INDIA                          NA                   NA                0.7947861   0.7590601   0.8305122
18-21 months   MAL-ED          BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   MAL-ED          NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   NIH-Birth       BANGLADESH                     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   NIH-Crypto      BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   MAL-ED          BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   MAL-ED          NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   NIH-Birth       BANGLADESH                     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   NIH-Crypto      BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0416353   -0.3784989    0.4617696
0-3 months     JiVitA-4        BANGLADESH                     >5%                  0%                 0.0710394   -0.3531267    0.4952055
0-3 months     MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0436094   -0.3460344    0.4332533
0-3 months     MAL-ED          BANGLADESH                     >5%                  0%                 0.0297447   -0.3660850    0.4255743
0-3 months     MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          INDIA                          (0%, 5%]             0%                -0.6307366   -2.1705632    0.9090900
0-3 months     MAL-ED          INDIA                          >5%                  0%                -0.7152431   -2.2749083    0.8444221
0-3 months     MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          NEPAL                          (0%, 5%]             0%                -0.2841466   -0.7278626    0.1595694
0-3 months     MAL-ED          NEPAL                          >5%                  0%                -0.1172269   -0.5669531    0.3324994
0-3 months     MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          PERU                           (0%, 5%]             0%                 0.0511066   -0.2105531    0.3127663
0-3 months     MAL-ED          PERU                           >5%                  0%                 0.0973917   -0.1570407    0.3518242
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0529994   -0.4924672    0.3864685
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.1881393   -0.6552785    0.2789999
0-3 months     NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0582384   -0.2030880    0.3195648
0-3 months     NIH-Birth       BANGLADESH                     >5%                  0%                 0.1498843   -0.1198232    0.4195918
0-3 months     NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.1145458    0.0328265    0.1962650
0-3 months     NIH-Crypto      BANGLADESH                     >5%                  0%                 0.1774412    0.0805358    0.2743466
0-3 months     PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.1152341   -0.1422039    0.3726721
0-3 months     PROVIDE         BANGLADESH                     >5%                  0%                 0.1078286   -0.1550707    0.3707279
3-6 months     CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     CONTENT         PERU                           (0%, 5%]             0%                -0.0196469   -0.3167748    0.2774810
3-6 months     CONTENT         PERU                           >5%                  0%                 0.0127122   -0.2938134    0.3192377
3-6 months     JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.1911344   -0.3736285   -0.0086403
3-6 months     JiVitA-4        BANGLADESH                     >5%                  0%                -0.1570472   -0.3498287    0.0357343
3-6 months     MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.1087159   -0.1623799    0.3798117
3-6 months     MAL-ED          BANGLADESH                     >5%                  0%                 0.0418082   -0.2334371    0.3170535
3-6 months     MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0754917   -0.3356437    0.1846603
3-6 months     MAL-ED          NEPAL                          >5%                  0%                -0.1468661   -0.4200564    0.1263242
3-6 months     MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          PERU                           (0%, 5%]             0%                 0.1306786   -0.2008886    0.4622459
3-6 months     MAL-ED          PERU                           >5%                  0%                 0.1092286   -0.2167777    0.4352349
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.2883133   -0.1454456    0.7220722
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.3258374   -0.1182492    0.7699240
3-6 months     NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0253601   -0.3077119    0.2569916
3-6 months     NIH-Birth       BANGLADESH                     >5%                  0%                -0.0521539   -0.3404751    0.2361674
3-6 months     NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.1224158   -0.2229108   -0.0219208
3-6 months     NIH-Crypto      BANGLADESH                     >5%                  0%                -0.1509229   -0.2581735   -0.0436723
3-6 months     PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.1852581   -0.0308542    0.4013703
3-6 months     PROVIDE         BANGLADESH                     >5%                  0%                 0.2373749    0.0179995    0.4567502
6-9 months     CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     CONTENT         PERU                           (0%, 5%]             0%                 0.1632530    0.0517389    0.2747671
6-9 months     CONTENT         PERU                           >5%                  0%                 0.2329555    0.1052127    0.3606983
6-9 months     Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                 0.0289125   -0.1666972    0.2245222
6-9 months     Guatemala BSC   GUATEMALA                      >5%                  0%                -0.0172418   -0.2065622    0.1720785
6-9 months     JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0403084   -0.1706553    0.0900384
6-9 months     JiVitA-4        BANGLADESH                     >5%                  0%                -0.0779653   -0.2218208    0.0658901
6-9 months     MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.1005312   -0.0760517    0.2771140
6-9 months     MAL-ED          BANGLADESH                     >5%                  0%                 0.1524325   -0.0284716    0.3333365
6-9 months     MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          NEPAL                          (0%, 5%]             0%                 0.1407807   -0.0483724    0.3299339
6-9 months     MAL-ED          NEPAL                          >5%                  0%                 0.1471396   -0.0495661    0.3438453
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1374135   -0.3568196    0.6316467
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0001137   -0.5103739    0.5101466
6-9 months     NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0564562   -0.1982390    0.0853266
6-9 months     NIH-Birth       BANGLADESH                     >5%                  0%                -0.1436089   -0.2919760    0.0047583
6-9 months     NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0051060   -0.0806510    0.0704390
6-9 months     NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0212069   -0.0649387    0.1073525
6-9 months     PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0903876   -0.2260642    0.0452890
6-9 months     PROVIDE         BANGLADESH                     >5%                  0%                -0.1073636   -0.2478753    0.0331481
6-9 months     SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0474957   -0.2083587    0.1133673
6-9 months     SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0187211   -0.1258633    0.0884211
9-12 months    CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    CONTENT         PERU                           (0%, 5%]             0%                 0.0291940   -0.2197421    0.2781301
9-12 months    CONTENT         PERU                           >5%                  0%                -0.0167921   -0.2694963    0.2359122
9-12 months    Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                -0.0321637   -0.1907651    0.1264377
9-12 months    Guatemala BSC   GUATEMALA                      >5%                  0%                -0.0345173   -0.1863461    0.1173115
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                -0.0473174   -0.1569259    0.0622910
9-12 months    iLiNS-Zinc      BURKINA FASO                   >5%                  0%                -0.0696813   -0.1675406    0.0281780
9-12 months    JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0434705   -0.0658138    0.1527548
9-12 months    JiVitA-4        BANGLADESH                     >5%                  0%                 0.0430015   -0.0729285    0.1589315
9-12 months    MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0918344   -0.4396376    0.2559688
9-12 months    MAL-ED          BANGLADESH                     >5%                  0%                -0.1165671   -0.4660981    0.2329640
9-12 months    MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          NEPAL                          (0%, 5%]             0%                -0.1063858   -0.3024596    0.0896880
9-12 months    MAL-ED          NEPAL                          >5%                  0%                -0.1658524   -0.3682049    0.0365001
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0068971   -0.5010903    0.4872960
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0206032   -0.5037393    0.5449457
9-12 months    NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.1079820   -0.2130667   -0.0028974
9-12 months    NIH-Birth       BANGLADESH                     >5%                  0%                -0.1246792   -0.2393142   -0.0100442
9-12 months    NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0274376   -0.0972218    0.0423467
9-12 months    NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0284723   -0.1077749    0.0508303
9-12 months    PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.3096523    0.2022885    0.4170161
9-12 months    PROVIDE         BANGLADESH                     >5%                  0%                 0.3037691    0.1906121    0.4169261
9-12 months    SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.2317122   -0.8223782    0.3589539
9-12 months    SAS-FoodSuppl   INDIA                          >5%                  0%                -0.3216360   -0.8040259    0.1607540
12-15 months   CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   CONTENT         PERU                           (0%, 5%]             0%                 0.2590935    0.0990225    0.4191644
12-15 months   CONTENT         PERU                           >5%                  0%                 0.2387295    0.0752471    0.4022119
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                 0.0782245   -0.0174451    0.1738942
12-15 months   iLiNS-Zinc      BURKINA FASO                   >5%                  0%                 0.0200113   -0.0890431    0.1290657
12-15 months   JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0397556   -0.1281675    0.0486562
12-15 months   JiVitA-4        BANGLADESH                     >5%                  0%                -0.0336145   -0.1302671    0.0630381
12-15 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.3158711   -0.5930483   -0.0386940
12-15 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.2674570   -0.5502062    0.0152922
12-15 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          NEPAL                          (0%, 5%]             0%                 0.0718612   -0.1318283    0.2755507
12-15 months   MAL-ED          NEPAL                          >5%                  0%                 0.0820605   -0.1274753    0.2915963
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1589578   -0.2659251    0.5838407
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1222094   -0.3129298    0.5573486
12-15 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.1192723   -0.0394766    0.2780212
12-15 months   NIH-Birth       BANGLADESH                     >5%                  0%                 0.1359826   -0.0209777    0.2929429
12-15 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0197539   -0.0433798    0.0828877
12-15 months   NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0175024   -0.0565578    0.0915625
12-15 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.1817293   -0.3666442    0.0031855
12-15 months   PROVIDE         BANGLADESH                     >5%                  0%                -0.1626591   -0.3510962    0.0257780
12-15 months   SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.2892262   -0.1029945    0.6814470
12-15 months   SAS-FoodSuppl   INDIA                          >5%                  0%                 0.2633403   -0.1209337    0.6476143
15-18 months   CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   CONTENT         PERU                           (0%, 5%]             0%                -0.1657455   -0.4388793    0.1073884
15-18 months   CONTENT         PERU                           >5%                  0%                -0.2465219   -0.5211881    0.0281444
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                 0.0587693   -0.0218197    0.1393584
15-18 months   iLiNS-Zinc      BURKINA FASO                   >5%                  0%                 0.0422363   -0.0564730    0.1409456
15-18 months   JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0383396   -0.1237226    0.0470434
15-18 months   JiVitA-4        BANGLADESH                     >5%                  0%                -0.0685991   -0.1629617    0.0257635
15-18 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0242475   -0.2494556    0.2979506
15-18 months   MAL-ED          BANGLADESH                     >5%                  0%                 0.0337400   -0.2447514    0.3122313
15-18 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0822628   -0.2789764    0.1144509
15-18 months   MAL-ED          NEPAL                          >5%                  0%                -0.1457432   -0.3471689    0.0556824
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0925128   -0.5440432    0.3590177
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0306758   -0.4937563    0.4324047
15-18 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.4862642   -0.7781155   -0.1944130
15-18 months   NIH-Birth       BANGLADESH                     >5%                  0%                -0.5080694   -0.8028852   -0.2132535
15-18 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0008022   -0.0585261    0.0601305
15-18 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0299101   -0.0954963    0.0356761
15-18 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0595158   -0.1972653    0.0782337
15-18 months   PROVIDE         BANGLADESH                     >5%                  0%                -0.0884481   -0.2296367    0.0527406
15-18 months   SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0718637   -0.1990355    0.0553082
15-18 months   SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0579766   -0.1364564    0.0205033
18-21 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0285541   -0.2194513    0.1623432
18-21 months   MAL-ED          BANGLADESH                     >5%                  0%                 0.0299397   -0.1633385    0.2232180
18-21 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0345263   -0.2780810    0.2090284
18-21 months   MAL-ED          NEPAL                          >5%                  0%                -0.0108835   -0.2561745    0.2344076
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0326473   -0.6398910    0.5745965
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.1546503   -0.7722808    0.4629802
18-21 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.2388679    0.1490013    0.3287345
18-21 months   NIH-Birth       BANGLADESH                     >5%                  0%                 0.2777630    0.1758434    0.3796825
18-21 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0060445   -0.0648532    0.0527643
18-21 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0550966   -0.1238288    0.0136357
18-21 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0800746   -0.1802570    0.0201077
18-21 months   PROVIDE         BANGLADESH                     >5%                  0%                -0.0703545   -0.1755396    0.0348306
21-24 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0364261   -0.1720345    0.0991824
21-24 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.0798133   -0.2229614    0.0633349
21-24 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          NEPAL                          (0%, 5%]             0%                 0.1276651   -0.0040511    0.2593813
21-24 months   MAL-ED          NEPAL                          >5%                  0%                 0.1124376   -0.0225994    0.2474747
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1834486   -0.1351708    0.5020680
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.2209602   -0.1064043    0.5483247
21-24 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.1530284   -0.3049954   -0.0010615
21-24 months   NIH-Birth       BANGLADESH                     >5%                  0%                -0.1579550   -0.3166325    0.0007224
21-24 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0123114   -0.0701241    0.0455013
21-24 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0153689   -0.0885639    0.0578262
21-24 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.2382490    0.1747324    0.3017656
21-24 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.2029683    0.1333684    0.2725683


### Parameter: PAR


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-4        BANGLADESH                     0%                   NA                 0.0436156   -0.3658940    0.4531253
0-3 months     MAL-ED          BANGLADESH                     0%                   NA                 0.0369245   -0.3366303    0.4104793
0-3 months     MAL-ED          INDIA                          0%                   NA                -0.6282804   -2.1259548    0.8693939
0-3 months     MAL-ED          NEPAL                          0%                   NA                -0.2106107   -0.6171700    0.1959486
0-3 months     MAL-ED          PERU                           0%                   NA                 0.0750279   -0.1637816    0.3138373
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0820889   -0.5010808    0.3369030
0-3 months     NIH-Birth       BANGLADESH                     0%                   NA                 0.0871524   -0.1581617    0.3324665
0-3 months     NIH-Crypto      BANGLADESH                     0%                   NA                 0.1105449    0.0484252    0.1726647
0-3 months     PROVIDE         BANGLADESH                     0%                   NA                 0.1092082   -0.1387375    0.3571538
3-6 months     CONTENT         PERU                           0%                   NA                -0.0091161   -0.2966190    0.2783867
3-6 months     JiVitA-4        BANGLADESH                     0%                   NA                -0.1838710   -0.3612861   -0.0064558
3-6 months     MAL-ED          BANGLADESH                     0%                   NA                 0.0804035   -0.1806311    0.3414380
3-6 months     MAL-ED          NEPAL                          0%                   NA                -0.0954796   -0.3390950    0.1481357
3-6 months     MAL-ED          PERU                           0%                   NA                 0.1152898   -0.1980254    0.4286050
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2868766   -0.1284995    0.7022528
3-6 months     NIH-Birth       BANGLADESH                     0%                   NA                -0.0339056   -0.3060648    0.2382537
3-6 months     NIH-Crypto      BANGLADESH                     0%                   NA                -0.1076635   -0.1856219   -0.0297050
3-6 months     PROVIDE         BANGLADESH                     0%                   NA                 0.1973150   -0.0120266    0.4066566
6-9 months     CONTENT         PERU                           0%                   NA                 0.1804985    0.0767461    0.2842509
6-9 months     Guatemala BSC   GUATEMALA                      0%                   NA                -0.0041621   -0.1827780    0.1744537
6-9 months     JiVitA-4        BANGLADESH                     0%                   NA                -0.0429791   -0.1692347    0.0832765
6-9 months     MAL-ED          BANGLADESH                     0%                   NA                 0.1175331   -0.0515149    0.2865810
6-9 months     MAL-ED          NEPAL                          0%                   NA                 0.1355645   -0.0411004    0.3122293
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0995197   -0.3804288    0.5794681
6-9 months     NIH-Birth       BANGLADESH                     0%                   NA                -0.0850118   -0.2200138    0.0499902
6-9 months     NIH-Crypto      BANGLADESH                     0%                   NA                 0.0029416   -0.0552941    0.0611773
6-9 months     PROVIDE         BANGLADESH                     0%                   NA                -0.0939558   -0.2253454    0.0374339
6-9 months     SAS-FoodSuppl   INDIA                          0%                   NA                -0.0188602   -0.1069108    0.0691904
9-12 months    CONTENT         PERU                           0%                   NA                 0.0140513   -0.2260767    0.2541794
9-12 months    Guatemala BSC   GUATEMALA                      0%                   NA                -0.0324126   -0.1751232    0.1102979
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%                   NA                -0.0491258   -0.1357033    0.0374517
9-12 months    JiVitA-4        BANGLADESH                     0%                   NA                 0.0418833   -0.0632223    0.1469889
9-12 months    MAL-ED          BANGLADESH                     0%                   NA                -0.0987290   -0.4358726    0.2384147
9-12 months    MAL-ED          NEPAL                          0%                   NA                -0.1208063   -0.3045780    0.0629654
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0000091   -0.4809269    0.4809451
9-12 months    NIH-Birth       BANGLADESH                     0%                   NA                -0.1116123   -0.2113638   -0.0118609
9-12 months    NIH-Crypto      BANGLADESH                     0%                   NA                -0.0224187   -0.0764059    0.0315685
9-12 months    PROVIDE         BANGLADESH                     0%                   NA                 0.3029199    0.1996547    0.4061851
9-12 months    SAS-FoodSuppl   INDIA                          0%                   NA                -0.2540567   -0.6492800    0.1411667
12-15 months   CONTENT         PERU                           0%                   NA                 0.2462390    0.0938362    0.3986418
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                 0.0508291   -0.0350494    0.1367076
12-15 months   JiVitA-4        BANGLADESH                     0%                   NA                -0.0376808   -0.1226418    0.0472802
12-15 months   MAL-ED          BANGLADESH                     0%                   NA                -0.2891186   -0.5575319   -0.0207054
12-15 months   MAL-ED          NEPAL                          0%                   NA                 0.0715265   -0.1196932    0.2627462
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1456319   -0.2660804    0.5573442
12-15 months   NIH-Birth       BANGLADESH                     0%                   NA                 0.1224897   -0.0268358    0.2718152
12-15 months   NIH-Crypto      BANGLADESH                     0%                   NA                 0.0153421   -0.0336531    0.0643374
12-15 months   PROVIDE         BANGLADESH                     0%                   NA                -0.1729744   -0.3525601    0.0066113
12-15 months   SAS-FoodSuppl   INDIA                          0%                   NA                 0.2176603   -0.0944498    0.5297703
15-18 months   CONTENT         PERU                           0%                   NA                -0.1870040   -0.4503770    0.0763691
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                 0.0484591   -0.0223316    0.1192499
15-18 months   JiVitA-4        BANGLADESH                     0%                   NA                -0.0400355   -0.1222256    0.0421546
15-18 months   MAL-ED          BANGLADESH                     0%                   NA                 0.0270985   -0.2379674    0.2921645
15-18 months   MAL-ED          NEPAL                          0%                   NA                -0.0991674   -0.2829719    0.0846370
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0748518   -0.5126196    0.3629160
15-18 months   NIH-Birth       BANGLADESH                     0%                   NA                -0.4858222   -0.7689518   -0.2026925
15-18 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0073978   -0.0518757    0.0370800
15-18 months   PROVIDE         BANGLADESH                     0%                   NA                -0.0676554   -0.2010284    0.0657177
15-18 months   SAS-FoodSuppl   INDIA                          0%                   NA                -0.0483944   -0.1103575    0.0135687
18-21 months   MAL-ED          BANGLADESH                     0%                   NA                -0.0070236   -0.1903920    0.1763448
18-21 months   MAL-ED          NEPAL                          0%                   NA                -0.0247855   -0.2534871    0.2039162
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0615898   -0.6499036    0.5267241
18-21 months   NIH-Birth       BANGLADESH                     0%                   NA                 0.2492178    0.1645772    0.3338584
18-21 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0166314   -0.0601682    0.0269054
18-21 months   PROVIDE         BANGLADESH                     0%                   NA                -0.0760381   -0.1724972    0.0204211
21-24 months   MAL-ED          BANGLADESH                     0%                   NA                -0.0508806   -0.1804032    0.0786420
21-24 months   MAL-ED          NEPAL                          0%                   NA                 0.1163805   -0.0042416    0.2370026
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1872471   -0.1189333    0.4934274
21-24 months   NIH-Birth       BANGLADESH                     0%                   NA                -0.1528330   -0.2991821   -0.0064838
21-24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0099200   -0.0514495    0.0316094
21-24 months   PROVIDE         BANGLADESH                     0%                   NA                 0.2234908    0.1641755    0.2828061
