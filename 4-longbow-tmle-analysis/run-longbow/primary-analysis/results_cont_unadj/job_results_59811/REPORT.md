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
![](/tmp/66716e88-2829-481a-ac6b-03a88373eb2d/65a0156e-6d33-4bec-a8e6-9cb7ad89b135/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/66716e88-2829-481a-ac6b-03a88373eb2d/65a0156e-6d33-4bec-a8e6-9cb7ad89b135/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/66716e88-2829-481a-ac6b-03a88373eb2d/65a0156e-6d33-4bec-a8e6-9cb7ad89b135/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-4        BANGLADESH                     0%                   NA                 0.0626187   -0.1450925    0.2703299
0-3 months     JiVitA-4        BANGLADESH                     (0%, 5%]             NA                 0.0648789    0.0492629    0.0804950
0-3 months     JiVitA-4        BANGLADESH                     >5%                  NA                 0.0893367    0.0527879    0.1258854
0-3 months     MAL-ED          BANGLADESH                     0%                   NA                -0.1699679   -0.3891484    0.0492125
0-3 months     MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.1217194   -0.1646292   -0.0788096
0-3 months     MAL-ED          BANGLADESH                     >5%                  NA                -0.1189061   -0.1747720   -0.0630402
0-3 months     MAL-ED          INDIA                          0%                   NA                 0.2602543   -0.4826383    1.0031468
0-3 months     MAL-ED          INDIA                          (0%, 5%]             NA                -0.0608086   -0.1096698   -0.0119474
0-3 months     MAL-ED          INDIA                          >5%                  NA                -0.1008508   -0.2309497    0.0292481
0-3 months     MAL-ED          NEPAL                          0%                   NA                 0.1474214   -0.0556950    0.3505379
0-3 months     MAL-ED          NEPAL                          (0%, 5%]             NA                 0.0259919   -0.0311325    0.0831163
0-3 months     MAL-ED          NEPAL                          >5%                  NA                 0.0890420    0.0186025    0.1594814
0-3 months     MAL-ED          PERU                           0%                   NA                -0.2795368   -0.3833566   -0.1757171
0-3 months     MAL-ED          PERU                           (0%, 5%]             NA                -0.2741871   -0.3276877   -0.2206865
0-3 months     MAL-ED          PERU                           >5%                  NA                -0.2534377   -0.3000842   -0.2067913
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0552688   -0.2843847    0.1738471
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.1191817   -0.1613855   -0.0769779
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.2104165   -0.3037441   -0.1170889
0-3 months     NIH-Birth       BANGLADESH                     0%                   NA                -0.2345430   -0.3594210   -0.1096650
0-3 months     NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.2469128   -0.2804788   -0.2133467
0-3 months     NIH-Birth       BANGLADESH                     >5%                  NA                -0.2058490   -0.2519726   -0.1597255
0-3 months     NIH-Crypto      BANGLADESH                     0%                   NA                -0.2694554   -0.3004463   -0.2384645
0-3 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.2326832   -0.2569565   -0.2084098
0-3 months     NIH-Crypto      BANGLADESH                     >5%                  NA                -0.2027341   -0.2384179   -0.1670502
0-3 months     PROVIDE         BANGLADESH                     0%                   NA                -0.2300325   -0.3333027   -0.1267624
0-3 months     PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.1806529   -0.2011323   -0.1601735
0-3 months     PROVIDE         BANGLADESH                     >5%                  NA                -0.1996782   -0.2334050   -0.1659513
3-6 months     CONTENT         PERU                           0%                   NA                 0.0396816   -0.0975598    0.1769230
3-6 months     CONTENT         PERU                           (0%, 5%]             NA                 0.0135473   -0.0126885    0.0397832
3-6 months     CONTENT         PERU                           >5%                  NA                 0.0236079   -0.0200158    0.0672316
3-6 months     JiVitA-4        BANGLADESH                     0%                   NA                 0.0764693   -0.0037557    0.1566942
3-6 months     JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -0.0127741   -0.0276362    0.0020880
3-6 months     JiVitA-4        BANGLADESH                     >5%                  NA                 0.0064697   -0.0226665    0.0356060
3-6 months     MAL-ED          BANGLADESH                     0%                   NA                -0.0686357   -0.1895569    0.0522855
3-6 months     MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0105436   -0.0409002    0.0198130
3-6 months     MAL-ED          BANGLADESH                     >5%                  NA                -0.0378129   -0.0766346    0.0010089
3-6 months     MAL-ED          NEPAL                          0%                   NA                 0.0220009   -0.0987531    0.1427549
3-6 months     MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0113780   -0.0428533    0.0200974
3-6 months     MAL-ED          NEPAL                          >5%                  NA                -0.0513797   -0.1017459   -0.0010135
3-6 months     MAL-ED          PERU                           0%                   NA                -0.0244631   -0.1645792    0.1156530
3-6 months     MAL-ED          PERU                           (0%, 5%]             NA                 0.0338811   -0.0162510    0.0840133
3-6 months     MAL-ED          PERU                           >5%                  NA                 0.0221263   -0.0189194    0.0631720
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1861760   -0.3660316   -0.0063204
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0689888   -0.1077479   -0.0302296
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0576089   -0.1167937    0.0015758
3-6 months     NIH-Birth       BANGLADESH                     0%                   NA                -0.0199552   -0.1432948    0.1033843
3-6 months     NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.0463931   -0.0737550   -0.0190311
3-6 months     NIH-Birth       BANGLADESH                     >5%                  NA                -0.0616089   -0.1007008   -0.0225170
3-6 months     NIH-Crypto      BANGLADESH                     0%                   NA                 0.0856443    0.0461557    0.1251328
3-6 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 0.0190689   -0.0046450    0.0427828
3-6 months     NIH-Crypto      BANGLADESH                     >5%                  NA                 0.0024026   -0.0258683    0.0306735
3-6 months     PROVIDE         BANGLADESH                     0%                   NA                -0.1086262   -0.2142967   -0.0029556
3-6 months     PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0307851   -0.0506155   -0.0109547
3-6 months     PROVIDE         BANGLADESH                     >5%                  NA                -0.0129950   -0.0394598    0.0134697
6-9 months     CONTENT         PERU                           0%                   NA                -0.0852436   -0.1214906   -0.0489967
6-9 months     CONTENT         PERU                           (0%, 5%]             NA                -0.0308227   -0.0561397   -0.0055057
6-9 months     CONTENT         PERU                           >5%                  NA                -0.0029213   -0.0392563    0.0334136
6-9 months     Guatemala BSC   GUATEMALA                      0%                   NA                -0.0964868   -0.1811437   -0.0118298
6-9 months     Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                -0.0835836   -0.1168646   -0.0503026
6-9 months     Guatemala BSC   GUATEMALA                      >5%                  NA                -0.0995576   -0.1241789   -0.0749363
6-9 months     JiVitA-4        BANGLADESH                     0%                   NA                -0.0103992   -0.0656553    0.0448570
6-9 months     JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -0.0282323   -0.0377340   -0.0187307
6-9 months     JiVitA-4        BANGLADESH                     >5%                  NA                -0.0403636   -0.0693399   -0.0113873
6-9 months     MAL-ED          BANGLADESH                     0%                   NA                -0.1241995   -0.2070404   -0.0413586
6-9 months     MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0792840   -0.1014059   -0.0571621
6-9 months     MAL-ED          BANGLADESH                     >5%                  NA                -0.0517085   -0.0800878   -0.0233291
6-9 months     MAL-ED          NEPAL                          0%                   NA                -0.1033373   -0.1818969   -0.0247778
6-9 months     MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0312139   -0.0554646   -0.0069632
6-9 months     MAL-ED          NEPAL                          >5%                  NA                -0.0299674   -0.0639392    0.0040044
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1196419   -0.3177752    0.0784913
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0764083   -0.1154432   -0.0373734
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1397272   -0.2060870   -0.0733673
6-9 months     NIH-Birth       BANGLADESH                     0%                   NA                -0.0170373   -0.0787189    0.0446443
6-9 months     NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.0472336   -0.0697009   -0.0247663
6-9 months     NIH-Birth       BANGLADESH                     >5%                  NA                -0.0851491   -0.1154029   -0.0548952
6-9 months     NIH-Crypto      BANGLADESH                     0%                   NA                -0.0324169   -0.0598051   -0.0050287
6-9 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0353609   -0.0528937   -0.0178281
6-9 months     NIH-Crypto      BANGLADESH                     >5%                  NA                -0.0225806   -0.0476322    0.0024710
6-9 months     PROVIDE         BANGLADESH                     0%                   NA                -0.0103155   -0.0692259    0.0485949
6-9 months     PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0597875   -0.0726278   -0.0469471
6-9 months     PROVIDE         BANGLADESH                     >5%                  NA                -0.0680474   -0.0886173   -0.0474776
6-9 months     SAS-FoodSuppl   INDIA                          0%                   NA                -0.0943632   -0.1367980   -0.0519283
6-9 months     SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -0.1195698   -0.1748066   -0.0643330
6-9 months     SAS-FoodSuppl   INDIA                          >5%                  NA                -0.1054960   -0.1269013   -0.0840906
9-12 months    CONTENT         PERU                           0%                   NA                -0.0130883   -0.1183542    0.0921776
9-12 months    CONTENT         PERU                           (0%, 5%]             NA                -0.0163007   -0.0365542    0.0039528
9-12 months    CONTENT         PERU                           >5%                  NA                -0.0371487   -0.0648490   -0.0094484
9-12 months    Guatemala BSC   GUATEMALA                      0%                   NA                -0.0472234   -0.1032246    0.0087778
9-12 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                -0.0612346   -0.0884043   -0.0340648
9-12 months    Guatemala BSC   GUATEMALA                      >5%                  NA                -0.0584856   -0.0785781   -0.0383930
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%                   NA                -0.0284064   -0.0718041    0.0149913
9-12 months    iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                -0.0488584   -0.0614578   -0.0362590
9-12 months    iLiNS-Zinc      BURKINA FASO                   >5%                  NA                -0.0557140   -0.0839390   -0.0274890
9-12 months    JiVitA-4        BANGLADESH                     0%                   NA                -0.0690973   -0.1129692   -0.0252254
9-12 months    JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -0.0520946   -0.0602328   -0.0439564
9-12 months    JiVitA-4        BANGLADESH                     >5%                  NA                -0.0464153   -0.0650175   -0.0278132
9-12 months    MAL-ED          BANGLADESH                     0%                   NA                -0.0428483   -0.1819520    0.0962554
9-12 months    MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0862417   -0.1071220   -0.0653615
9-12 months    MAL-ED          BANGLADESH                     >5%                  NA                -0.0918556   -0.1172131   -0.0664982
9-12 months    MAL-ED          NEPAL                          0%                   NA                -0.0234012   -0.0994051    0.0526027
9-12 months    MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0552907   -0.0765691   -0.0340123
9-12 months    MAL-ED          NEPAL                          >5%                  NA                -0.0810959   -0.1103146   -0.0518771
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1405450   -0.3458944    0.0648044
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.1587602   -0.1953272   -0.1221931
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1449637   -0.2260492   -0.0638783
9-12 months    NIH-Birth       BANGLADESH                     0%                   NA                 0.0046086   -0.0377590    0.0469761
9-12 months    NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.0416140   -0.0594274   -0.0238006
9-12 months    NIH-Birth       BANGLADESH                     >5%                  NA                -0.0467116   -0.0724943   -0.0209289
9-12 months    NIH-Crypto      BANGLADESH                     0%                   NA                -0.0272712   -0.0525173   -0.0020250
9-12 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0359455   -0.0506968   -0.0211942
9-12 months    NIH-Crypto      BANGLADESH                     >5%                  NA                -0.0360481   -0.0573820   -0.0147142
9-12 months    PROVIDE         BANGLADESH                     0%                   NA                -0.1769192   -0.2196225   -0.1342160
9-12 months    PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0607245   -0.0740040   -0.0474449
9-12 months    PROVIDE         BANGLADESH                     >5%                  NA                -0.0622693   -0.0820703   -0.0424683
9-12 months    SAS-FoodSuppl   INDIA                          0%                   NA                -0.0429580   -0.2296686    0.1437525
9-12 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -0.1381378   -0.2942283    0.0179528
9-12 months    SAS-FoodSuppl   INDIA                          >5%                  NA                -0.1735809   -0.2301794   -0.1169824
12-15 months   CONTENT         PERU                           0%                   NA                -0.1492440   -0.2104904   -0.0879976
12-15 months   CONTENT         PERU                           (0%, 5%]             NA                -0.0700430   -0.0914455   -0.0486405
12-15 months   CONTENT         PERU                           >5%                  NA                -0.0802033   -0.1045017   -0.0559049
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                -0.0614714   -0.0938587   -0.0290842
12-15 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                -0.0333777   -0.0543723   -0.0123831
12-15 months   iLiNS-Zinc      BURKINA FASO                   >5%                  NA                -0.0541240   -0.0760051   -0.0322429
12-15 months   JiVitA-4        BANGLADESH                     0%                   NA                -0.0309055   -0.0633136    0.0015026
12-15 months   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -0.0462603   -0.0528541   -0.0396664
12-15 months   JiVitA-4        BANGLADESH                     >5%                  NA                -0.0398997   -0.0565232   -0.0232761
12-15 months   MAL-ED          BANGLADESH                     0%                   NA                 0.0544392   -0.0500140    0.1588925
12-15 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0681257   -0.0859838   -0.0502675
12-15 months   MAL-ED          BANGLADESH                     >5%                  NA                -0.0438149   -0.0719969   -0.0156328
12-15 months   MAL-ED          NEPAL                          0%                   NA                -0.0922199   -0.1670461   -0.0173937
12-15 months   MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0573609   -0.0763734   -0.0383484
12-15 months   MAL-ED          NEPAL                          >5%                  NA                -0.0522093   -0.0799686   -0.0244501
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1170555   -0.2766061    0.0424950
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0644898   -0.0943649   -0.0346146
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0784977   -0.1259484   -0.0310471
12-15 months   NIH-Birth       BANGLADESH                     0%                   NA                -0.1716576   -0.2292772   -0.1140380
12-15 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.1285232   -0.1519456   -0.1051008
12-15 months   NIH-Birth       BANGLADESH                     >5%                  NA                -0.1182591   -0.1402289   -0.0962894
12-15 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0457261   -0.0665268   -0.0249255
12-15 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0367150   -0.0492948   -0.0241353
12-15 months   NIH-Crypto      BANGLADESH                     >5%                  NA                -0.0362812   -0.0559045   -0.0166579
12-15 months   PROVIDE         BANGLADESH                     0%                   NA                 0.0368531   -0.0323290    0.1060351
12-15 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0453049   -0.0573064   -0.0333035
12-15 months   PROVIDE         BANGLADESH                     >5%                  NA                -0.0353022   -0.0536547   -0.0169497
12-15 months   SAS-FoodSuppl   INDIA                          0%                   NA                -0.0790068   -0.2314262    0.0734125
12-15 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                 0.0361675   -0.0042349    0.0765700
12-15 months   SAS-FoodSuppl   INDIA                          >5%                  NA                 0.0275827   -0.0023231    0.0574884
15-18 months   CONTENT         PERU                           0%                   NA                 0.0802186   -0.0101663    0.1706034
15-18 months   CONTENT         PERU                           (0%, 5%]             NA                -0.0025213   -0.0239089    0.0188663
15-18 months   CONTENT         PERU                           >5%                  NA                -0.0349807   -0.0599997   -0.0099617
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                -0.0367229   -0.0578028   -0.0156429
15-18 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                -0.0146179   -0.0334822    0.0042463
15-18 months   iLiNS-Zinc      BURKINA FASO                   >5%                  NA                -0.0161677   -0.0408341    0.0084988
15-18 months   JiVitA-4        BANGLADESH                     0%                   NA                -0.0214006   -0.0511812    0.0083801
15-18 months   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                -0.0324444   -0.0390919   -0.0257968
15-18 months   JiVitA-4        BANGLADESH                     >5%                  NA                -0.0405679   -0.0567838   -0.0243519
15-18 months   MAL-ED          BANGLADESH                     0%                   NA                -0.0589846   -0.1714593    0.0534900
15-18 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0472410   -0.0630272   -0.0314547
15-18 months   MAL-ED          BANGLADESH                     >5%                  NA                -0.0424669   -0.0667479   -0.0181858
15-18 months   MAL-ED          NEPAL                          0%                   NA                -0.0279070   -0.0920227    0.0362087
15-18 months   MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0489582   -0.0683751   -0.0295414
15-18 months   MAL-ED          NEPAL                          >5%                  NA                -0.0701325   -0.0954000   -0.0448649
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0491855   -0.2113655    0.1129945
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0928352   -0.1185335   -0.0671369
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0682932   -0.1143161   -0.0222702
15-18 months   NIH-Birth       BANGLADESH                     0%                   NA                 0.1144186    0.0128970    0.2159403
15-18 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.0584344   -0.0766934   -0.0401754
15-18 months   NIH-Birth       BANGLADESH                     >5%                  NA                -0.0643936   -0.0883060   -0.0404812
15-18 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0140540   -0.0327508    0.0046428
15-18 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0143649   -0.0260518   -0.0026780
15-18 months   NIH-Crypto      BANGLADESH                     >5%                  NA                -0.0243301   -0.0396310   -0.0090293
15-18 months   PROVIDE         BANGLADESH                     0%                   NA                -0.0065762   -0.0542356    0.0410832
15-18 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0354485   -0.0460499   -0.0248470
15-18 months   PROVIDE         BANGLADESH                     >5%                  NA                -0.0438732   -0.0595570   -0.0281894
15-18 months   SAS-FoodSuppl   INDIA                          0%                   NA                -0.0177118   -0.0416931    0.0062696
15-18 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -0.0481633   -0.0903007   -0.0060259
15-18 months   SAS-FoodSuppl   INDIA                          >5%                  NA                -0.0403975   -0.0565965   -0.0241985
18-21 months   MAL-ED          BANGLADESH                     0%                   NA                -0.0173173   -0.0820274    0.0473927
18-21 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0238155   -0.0386813   -0.0089497
18-21 months   MAL-ED          BANGLADESH                     >5%                  NA                -0.0009184   -0.0199363    0.0180995
18-21 months   MAL-ED          NEPAL                          0%                   NA                -0.0283904   -0.1118257    0.0550449
18-21 months   MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0315640   -0.0484919   -0.0146362
18-21 months   MAL-ED          NEPAL                          >5%                  NA                -0.0217343   -0.0411828   -0.0022857
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0072606   -0.2038434    0.1893221
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0179492   -0.0438659    0.0079675
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0610682   -0.1078138   -0.0143226
18-21 months   NIH-Birth       BANGLADESH                     0%                   NA                -0.1328520   -0.1621791   -0.1035249
18-21 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                -0.0425880   -0.0575093   -0.0276667
18-21 months   NIH-Birth       BANGLADESH                     >5%                  NA                -0.0270404   -0.0496448   -0.0044361
18-21 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0229116   -0.0397803   -0.0060428
18-21 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0250962   -0.0359715   -0.0142209
18-21 months   NIH-Crypto      BANGLADESH                     >5%                  NA                -0.0389091   -0.0555592   -0.0222591
18-21 months   PROVIDE         BANGLADESH                     0%                   NA                 0.0194731   -0.0122865    0.0512328
18-21 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0127051   -0.0226683   -0.0027420
18-21 months   PROVIDE         BANGLADESH                     >5%                  NA                -0.0083354   -0.0228718    0.0062010
21-24 months   MAL-ED          BANGLADESH                     0%                   NA                 0.0313450   -0.0309326    0.0936227
21-24 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                 0.0306186    0.0160224    0.0452149
21-24 months   MAL-ED          BANGLADESH                     >5%                  NA                 0.0165721   -0.0057319    0.0388760
21-24 months   MAL-ED          NEPAL                          0%                   NA                -0.0409527   -0.0804502   -0.0014553
21-24 months   MAL-ED          NEPAL                          (0%, 5%]             NA                 0.0090423   -0.0094501    0.0275347
21-24 months   MAL-ED          NEPAL                          >5%                  NA                 0.0055631   -0.0159528    0.0270789
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0516348   -0.1672834    0.0640137
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0047101   -0.0215964    0.0310167
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                 0.0283203   -0.0107756    0.0674161
21-24 months   NIH-Birth       BANGLADESH                     0%                   NA                 0.0825066    0.0285632    0.1364501
21-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                 0.0386224    0.0242708    0.0529740
21-24 months   NIH-Birth       BANGLADESH                     >5%                  NA                 0.0431617    0.0224378    0.0638856
21-24 months   NIH-Crypto      BANGLADESH                     0%                   NA                 0.0712214    0.0561672    0.0862756
21-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 0.0561664    0.0447341    0.0675987
21-24 months   NIH-Crypto      BANGLADESH                     >5%                  NA                 0.0509365    0.0325300    0.0693430
21-24 months   PROVIDE         BANGLADESH                     0%                   NA                -0.0101859   -0.0303158    0.0099441
21-24 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                 0.0498413    0.0390789    0.0606037
21-24 months   PROVIDE         BANGLADESH                     >5%                  NA                 0.0413188    0.0264141    0.0562235


### Parameter: E(Y)


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-4        BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
0-3 months     MAL-ED          BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     MAL-ED          INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     MAL-ED          NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     MAL-ED          PERU                           NA                   NA                -0.2628007   -0.2968934   -0.2287079
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     NIH-Birth       BANGLADESH                     NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     NIH-Crypto      BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
3-6 months     CONTENT         PERU                           NA                   NA                 0.0173829   -0.0049673    0.0397330
3-6 months     JiVitA-4        BANGLADESH                     NA                   NA                -0.0090589   -0.0227889    0.0046710
3-6 months     MAL-ED          BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     MAL-ED          NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     MAL-ED          PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     NIH-Birth       BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
6-9 months     CONTENT         PERU                           NA                   NA                -0.0236130   -0.0439514   -0.0032747
6-9 months     Guatemala BSC   GUATEMALA                      NA                   NA                -0.0951531   -0.1146913   -0.0756149
6-9 months     JiVitA-4        BANGLADESH                     NA                   NA                -0.0289482   -0.0379437   -0.0199527
6-9 months     MAL-ED          BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     MAL-ED          NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     NIH-Birth       BANGLADESH                     NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     NIH-Crypto      BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     SAS-FoodSuppl   INDIA                          NA                   NA                -0.1052304   -0.1233192   -0.0871417
9-12 months    CONTENT         PERU                           NA                   NA                -0.0227002   -0.0389439   -0.0064565
9-12 months    Guatemala BSC   GUATEMALA                      NA                   NA                -0.0587254   -0.0745802   -0.0428705
9-12 months    iLiNS-Zinc      BURKINA FASO                   NA                   NA                -0.0487006   -0.0633304   -0.0340708
9-12 months    JiVitA-4        BANGLADESH                     NA                   NA                -0.0521209   -0.0596089   -0.0446330
9-12 months    MAL-ED          BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    MAL-ED          NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    NIH-Birth       BANGLADESH                     NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    NIH-Crypto      BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    SAS-FoodSuppl   INDIA                          NA                   NA                -0.1462637   -0.2015231   -0.0910043
12-15 months   CONTENT         PERU                           NA                   NA                -0.0751985   -0.0914586   -0.0589385
12-15 months   iLiNS-Zinc      BURKINA FASO                   NA                   NA                -0.0431604   -0.0596572   -0.0266637
12-15 months   JiVitA-4        BANGLADESH                     NA                   NA                -0.0450644   -0.0511488   -0.0389801
12-15 months   MAL-ED          BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   MAL-ED          NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   NIH-Birth       BANGLADESH                     NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   NIH-Crypto      BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-FoodSuppl   INDIA                          NA                   NA                 0.0088746   -0.0268397    0.0445889
15-18 months   CONTENT         PERU                           NA                   NA                -0.0106370   -0.0272168    0.0059428
15-18 months   iLiNS-Zinc      BURKINA FASO                   NA                   NA                -0.0168360   -0.0300694   -0.0036026
15-18 months   JiVitA-4        BANGLADESH                     NA                   NA                -0.0328742   -0.0389268   -0.0268217
15-18 months   MAL-ED          BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   MAL-ED          NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   NIH-Birth       BANGLADESH                     NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   NIH-Crypto      BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   SAS-FoodSuppl   INDIA                          NA                   NA                -0.0369125   -0.0500204   -0.0238046
18-21 months   MAL-ED          BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   MAL-ED          NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   NIH-Birth       BANGLADESH                     NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   NIH-Crypto      BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
21-24 months   MAL-ED          BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   MAL-ED          NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   NIH-Birth       BANGLADESH                     NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   NIH-Crypto      BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812


### Parameter: ATE


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0022602   -0.2061798    0.2107003
0-3 months     JiVitA-4        BANGLADESH                     >5%                  0%                 0.0267180   -0.1842366    0.2376725
0-3 months     MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0482485   -0.1750927    0.2715898
0-3 months     MAL-ED          BANGLADESH                     >5%                  0%                 0.0510619   -0.1751262    0.2772500
0-3 months     MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          INDIA                          (0%, 5%]             0%                -0.3210628   -1.0655605    0.4234348
0-3 months     MAL-ED          INDIA                          >5%                  0%                -0.3611051   -1.1153033    0.3930932
0-3 months     MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          NEPAL                          (0%, 5%]             0%                -0.1214296   -0.3324260    0.0895669
0-3 months     MAL-ED          NEPAL                          >5%                  0%                -0.0583795   -0.2733632    0.1566043
0-3 months     MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          PERU                           (0%, 5%]             0%                 0.0053497   -0.1114444    0.1221438
0-3 months     MAL-ED          PERU                           >5%                  0%                 0.0260991   -0.0877185    0.1399166
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0639129   -0.2968834    0.1690576
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.1551476   -0.4025423    0.0922471
0-3 months     NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0123698   -0.1416802    0.1169407
0-3 months     NIH-Birth       BANGLADESH                     >5%                  0%                 0.0286940   -0.1044296    0.1618176
0-3 months     NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0367722   -0.0025932    0.0761375
0-3 months     NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0667213    0.0194585    0.1139841
0-3 months     PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0493796   -0.0559016    0.1546609
0-3 months     PROVIDE         BANGLADESH                     >5%                  0%                 0.0303544   -0.0782837    0.1389925
3-6 months     CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     CONTENT         PERU                           (0%, 5%]             0%                -0.0261342   -0.1658608    0.1135924
3-6 months     CONTENT         PERU                           >5%                  0%                -0.0160737   -0.1600814    0.1279341
3-6 months     JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0892433   -0.1708472   -0.0076395
3-6 months     JiVitA-4        BANGLADESH                     >5%                  0%                -0.0699995   -0.1559675    0.0159684
3-6 months     MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0580922   -0.0665812    0.1827656
3-6 months     MAL-ED          BANGLADESH                     >5%                  0%                 0.0308229   -0.0961774    0.1578231
3-6 months     MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0333789   -0.1581676    0.0914098
3-6 months     MAL-ED          NEPAL                          >5%                  0%                -0.0733806   -0.2042175    0.0574563
3-6 months     MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          PERU                           (0%, 5%]             0%                 0.0583442   -0.0904702    0.2071587
3-6 months     MAL-ED          PERU                           >5%                  0%                 0.0465894   -0.0994149    0.1925937
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1171873   -0.0667973    0.3011718
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1285671   -0.0607762    0.3179104
3-6 months     NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0264378   -0.1527759    0.0999003
3-6 months     NIH-Birth       BANGLADESH                     >5%                  0%                -0.0416536   -0.1710399    0.0877327
3-6 months     NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0665753   -0.1126372   -0.0205135
3-6 months     NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0832416   -0.1318070   -0.0346763
3-6 months     PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0778411   -0.0296740    0.1853563
3-6 months     PROVIDE         BANGLADESH                     >5%                  0%                 0.0956312   -0.0133030    0.2045653
6-9 months     CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     CONTENT         PERU                           (0%, 5%]             0%                 0.0544209    0.0102079    0.0986340
6-9 months     CONTENT         PERU                           >5%                  0%                 0.0823223    0.0309991    0.1336455
6-9 months     Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                 0.0129032   -0.0780606    0.1038670
6-9 months     Guatemala BSC   GUATEMALA                      >5%                  0%                -0.0030708   -0.0912355    0.0850938
6-9 months     JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0178332   -0.0741249    0.0384585
6-9 months     JiVitA-4        BANGLADESH                     >5%                  0%                -0.0299645   -0.0922773    0.0323484
6-9 months     MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0449155   -0.0408282    0.1306593
6-9 months     MAL-ED          BANGLADESH                     >5%                  0%                 0.0724911   -0.0150761    0.1600582
6-9 months     MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          NEPAL                          (0%, 5%]             0%                 0.0721234   -0.0100940    0.1543408
6-9 months     MAL-ED          NEPAL                          >5%                  0%                 0.0733699   -0.0122203    0.1589602
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0432336   -0.1587082    0.2451754
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0200853   -0.2290360    0.1888655
6-9 months     NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0301964   -0.0958424    0.0354496
6-9 months     NIH-Birth       BANGLADESH                     >5%                  0%                -0.0681118   -0.1368135    0.0005898
6-9 months     NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0029439   -0.0354634    0.0295755
6-9 months     NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0098363   -0.0272811    0.0469536
6-9 months     PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0494719   -0.1097654    0.0108216
6-9 months     PROVIDE         BANGLADESH                     >5%                  0%                -0.0577319   -0.1201303    0.0046664
6-9 months     SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0252066   -0.0948616    0.0444484
6-9 months     SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0111328   -0.0586608    0.0363951
9-12 months    CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    CONTENT         PERU                           (0%, 5%]             0%                -0.0032125   -0.1104091    0.1039842
9-12 months    CONTENT         PERU                           >5%                  0%                -0.0240604   -0.1329099    0.0847891
9-12 months    Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                -0.0140112   -0.0762553    0.0482329
9-12 months    Guatemala BSC   GUATEMALA                      >5%                  0%                -0.0112621   -0.0707588    0.0482345
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                -0.0204520   -0.0677321    0.0268282
9-12 months    iLiNS-Zinc      BURKINA FASO                   >5%                  0%                -0.0273076   -0.0684631    0.0138479
9-12 months    JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0170027   -0.0276673    0.0616728
9-12 months    JiVitA-4        BANGLADESH                     >5%                  0%                 0.0226820   -0.0247566    0.0701205
9-12 months    MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0433934   -0.1840555    0.0972686
9-12 months    MAL-ED          BANGLADESH                     >5%                  0%                -0.0490074   -0.1904034    0.0923887
9-12 months    MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0318895   -0.1108158    0.0470369
9-12 months    MAL-ED          NEPAL                          >5%                  0%                -0.0576946   -0.1391215    0.0237322
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0182152   -0.2267950    0.1903646
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0044187   -0.2251974    0.2163600
9-12 months    NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0462226   -0.0921826   -0.0002625
9-12 months    NIH-Birth       BANGLADESH                     >5%                  0%                -0.0513202   -0.1009161   -0.0017242
9-12 months    NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0086743   -0.0379141    0.0205655
9-12 months    NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0087770   -0.0418300    0.0242761
9-12 months    PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.1161948    0.0714744    0.1609152
9-12 months    PROVIDE         BANGLADESH                     >5%                  0%                 0.1146499    0.0675793    0.1617206
9-12 months    SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0951798   -0.3385418    0.1481823
9-12 months    SAS-FoodSuppl   INDIA                          >5%                  0%                -0.1306229   -0.3257234    0.0644777
12-15 months   CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   CONTENT         PERU                           (0%, 5%]             0%                 0.0792010    0.0143228    0.1440792
12-15 months   CONTENT         PERU                           >5%                  0%                 0.0690407    0.0031504    0.1349310
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                 0.0280937   -0.0065791    0.0627666
12-15 months   iLiNS-Zinc      BURKINA FASO                   >5%                  0%                 0.0073474   -0.0296335    0.0443282
12-15 months   JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0153548   -0.0483778    0.0176682
12-15 months   JiVitA-4        BANGLADESH                     >5%                  0%                -0.0089942   -0.0452518    0.0272634
12-15 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.1225649   -0.2285338   -0.0165961
12-15 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.0982541   -0.2064424    0.0099342
12-15 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          NEPAL                          (0%, 5%]             0%                 0.0348590   -0.0423449    0.1120628
12-15 months   MAL-ED          NEPAL                          >5%                  0%                 0.0400105   -0.0397989    0.1198199
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0525658   -0.1097577    0.2148892
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0385578   -0.1278992    0.2050148
12-15 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0431344   -0.0190639    0.1053327
12-15 months   NIH-Birth       BANGLADESH                     >5%                  0%                 0.0533985   -0.0082674    0.1150644
12-15 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0090111   -0.0152977    0.0333199
12-15 months   NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0094449   -0.0191513    0.0380411
12-15 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0821580   -0.1523733   -0.0119427
12-15 months   PROVIDE         BANGLADESH                     >5%                  0%                -0.0721553   -0.1437302   -0.0005804
12-15 months   SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.1151744   -0.0425089    0.2728576
12-15 months   SAS-FoodSuppl   INDIA                          >5%                  0%                 0.1065895   -0.0487360    0.2619150
15-18 months   CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   CONTENT         PERU                           (0%, 5%]             0%                -0.0827398   -0.1756207    0.0101410
15-18 months   CONTENT         PERU                           >5%                  0%                -0.1151993   -0.2089829   -0.0214156
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                 0.0221049   -0.0061782    0.0503880
15-18 months   iLiNS-Zinc      BURKINA FASO                   >5%                  0%                 0.0205552   -0.0139681    0.0550785
15-18 months   JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0110438   -0.0416618    0.0195741
15-18 months   JiVitA-4        BANGLADESH                     >5%                  0%                -0.0191673   -0.0532048    0.0148702
15-18 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0117437   -0.1018333    0.1253207
15-18 months   MAL-ED          BANGLADESH                     >5%                  0%                 0.0165178   -0.0985479    0.1315835
15-18 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0210512   -0.0880425    0.0459401
15-18 months   MAL-ED          NEPAL                          >5%                  0%                -0.0422254   -0.1111404    0.0266896
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0436497   -0.2078531    0.1205537
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0191077   -0.1876914    0.1494760
15-18 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.1728530   -0.2760036   -0.0697025
15-18 months   NIH-Birth       BANGLADESH                     >5%                  0%                -0.1788123   -0.2831121   -0.0745125
15-18 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0003109   -0.0223598    0.0217380
15-18 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0102762   -0.0344358    0.0138834
15-18 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0288722   -0.0776965    0.0199520
15-18 months   PROVIDE         BANGLADESH                     >5%                  0%                -0.0372970   -0.0874707    0.0128767
15-18 months   SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0304515   -0.0789352    0.0180322
15-18 months   SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0226857   -0.0516256    0.0062541
18-21 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0064982   -0.0728939    0.0598975
18-21 months   MAL-ED          BANGLADESH                     >5%                  0%                 0.0163989   -0.0510479    0.0838457
18-21 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0031736   -0.0883089    0.0819616
18-21 months   MAL-ED          NEPAL                          >5%                  0%                 0.0066561   -0.0790159    0.0923282
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0106886   -0.2089724    0.1875952
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0538075   -0.2558717    0.1482566
18-21 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0902640    0.0573592    0.1231687
18-21 months   NIH-Birth       BANGLADESH                     >5%                  0%                 0.1058116    0.0687841    0.1428391
18-21 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0021846   -0.0222552    0.0178859
18-21 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0159975   -0.0396994    0.0077043
18-21 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0321783   -0.0654640    0.0011074
18-21 months   PROVIDE         BANGLADESH                     >5%                  0%                -0.0278085   -0.0627367    0.0071197
21-24 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0007264   -0.0646917    0.0632388
21-24 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.0147730   -0.0809241    0.0513781
21-24 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          NEPAL                          (0%, 5%]             0%                 0.0499950    0.0063829    0.0936072
21-24 months   MAL-ED          NEPAL                          >5%                  0%                 0.0465158    0.0015383    0.0914934
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0563450   -0.0622578    0.1749477
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0799551   -0.0421230    0.2020332
21-24 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0438842   -0.0997041    0.0119357
21-24 months   NIH-Birth       BANGLADESH                     >5%                  0%                -0.0393449   -0.0971323    0.0184424
21-24 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0150550   -0.0339581    0.0038481
21-24 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0202849   -0.0440637    0.0034938
21-24 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0600271    0.0372007    0.0828535
21-24 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.0515047    0.0264574    0.0765520


### Parameter: PAR


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-4        BANGLADESH                     0%                   NA                 0.0046956   -0.1984526    0.2078439
0-3 months     MAL-ED          BANGLADESH                     0%                   NA                 0.0477252   -0.1667864    0.2622369
0-3 months     MAL-ED          INDIA                          0%                   NA                -0.3192925   -1.0433408    0.4047557
0-3 months     MAL-ED          NEPAL                          0%                   NA                -0.0926588   -0.2860494    0.1007317
0-3 months     MAL-ED          PERU                           0%                   NA                 0.0167362   -0.0887502    0.1222226
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0823177   -0.3046325    0.1399970
0-3 months     NIH-Birth       BANGLADESH                     0%                   NA                 0.0025565   -0.1187045    0.1238175
0-3 months     NIH-Crypto      BANGLADESH                     0%                   NA                 0.0381946    0.0081286    0.0682606
0-3 months     PROVIDE         BANGLADESH                     0%                   NA                 0.0419923   -0.0593320    0.1433167
3-6 months     CONTENT         PERU                           0%                   NA                -0.0222987   -0.1574969    0.1128995
3-6 months     JiVitA-4        BANGLADESH                     0%                   NA                -0.0855282   -0.1648249   -0.0062315
3-6 months     MAL-ED          BANGLADESH                     0%                   NA                 0.0461950   -0.0738838    0.1662737
3-6 months     MAL-ED          NEPAL                          0%                   NA                -0.0450794   -0.1619638    0.0718051
3-6 months     MAL-ED          PERU                           0%                   NA                 0.0502092   -0.0898921    0.1903104
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1156312   -0.0602873    0.2915497
3-6 months     NIH-Birth       BANGLADESH                     0%                   NA                -0.0309455   -0.1527191    0.0908282
3-6 months     NIH-Crypto      BANGLADESH                     0%                   NA                -0.0588702   -0.0944746   -0.0232658
3-6 months     PROVIDE         BANGLADESH                     0%                   NA                 0.0816637   -0.0225513    0.1858787
6-9 months     CONTENT         PERU                           0%                   NA                 0.0616306    0.0209634    0.1022977
6-9 months     Guatemala BSC   GUATEMALA                      0%                   NA                 0.0013336   -0.0819904    0.0846577
6-9 months     JiVitA-4        BANGLADESH                     0%                   NA                -0.0185491   -0.0730850    0.0359869
6-9 months     MAL-ED          BANGLADESH                     0%                   NA                 0.0541763   -0.0282422    0.1365949
6-9 months     MAL-ED          NEPAL                          0%                   NA                 0.0687778   -0.0080282    0.1455837
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0262321   -0.1697627    0.2222268
6-9 months     NIH-Birth       BANGLADESH                     0%                   NA                -0.0425175   -0.1052337    0.0201986
6-9 months     NIH-Crypto      BANGLADESH                     0%                   NA                 0.0010531   -0.0239882    0.0260945
6-9 months     PROVIDE         BANGLADESH                     0%                   NA                -0.0511109   -0.1095444    0.0073226
6-9 months     SAS-FoodSuppl   INDIA                          0%                   NA                -0.0108673   -0.0498549    0.0281204
9-12 months    CONTENT         PERU                           0%                   NA                -0.0096119   -0.1131375    0.0939136
9-12 months    Guatemala BSC   GUATEMALA                      0%                   NA                -0.0115020   -0.0673386    0.0443347
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%                   NA                -0.0202942   -0.0578003    0.0172119
9-12 months    JiVitA-4        BANGLADESH                     0%                   NA                 0.0169764   -0.0259738    0.0599265
9-12 months    MAL-ED          BANGLADESH                     0%                   NA                -0.0443571   -0.1806621    0.0919479
9-12 months    MAL-ED          NEPAL                          0%                   NA                -0.0388953   -0.1127643    0.0349738
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0144211   -0.2173992    0.1885571
9-12 months    NIH-Birth       BANGLADESH                     0%                   NA                -0.0470834   -0.0908331   -0.0033336
9-12 months    NIH-Crypto      BANGLADESH                     0%                   NA                -0.0070283   -0.0296378    0.0155811
9-12 months    PROVIDE         BANGLADESH                     0%                   NA                 0.1138722    0.0708285    0.1569159
9-12 months    SAS-FoodSuppl   INDIA                          0%                   NA                -0.1033057   -0.2632564    0.0566451
12-15 months   CONTENT         PERU                           0%                   NA                 0.0740455    0.0121827    0.1359083
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                 0.0183110   -0.0119928    0.0486148
12-15 months   JiVitA-4        BANGLADESH                     0%                   NA                -0.0141589   -0.0458738    0.0175559
12-15 months   MAL-ED          BANGLADESH                     0%                   NA                -0.1101516   -0.2127884   -0.0075147
12-15 months   MAL-ED          NEPAL                          0%                   NA                 0.0347649   -0.0377154    0.1072452
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0476992   -0.1095667    0.2049651
12-15 months   NIH-Birth       BANGLADESH                     0%                   NA                 0.0456988   -0.0129577    0.1043553
12-15 months   NIH-Crypto      BANGLADESH                     0%                   NA                 0.0073948   -0.0114759    0.0262655
12-15 months   PROVIDE         BANGLADESH                     0%                   NA                -0.0777638   -0.1459455   -0.0095821
12-15 months   SAS-FoodSuppl   INDIA                          0%                   NA                 0.0878815   -0.0382926    0.2140555
15-18 months   CONTENT         PERU                           0%                   NA                -0.0908555   -0.1803657   -0.0013454
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                 0.0198869   -0.0047243    0.0444980
15-18 months   JiVitA-4        BANGLADESH                     0%                   NA                -0.0114737   -0.0409709    0.0180235
15-18 months   MAL-ED          BANGLADESH                     0%                   NA                 0.0131904   -0.0968828    0.1232635
15-18 months   MAL-ED          NEPAL                          0%                   NA                -0.0270275   -0.0895012    0.0354461
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0364487   -0.1956563    0.1227589
15-18 months   NIH-Birth       BANGLADESH                     0%                   NA                -0.1721092   -0.2721445   -0.0720740
15-18 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0028534   -0.0194237    0.0137169
15-18 months   PROVIDE         BANGLADESH                     0%                   NA                -0.0310675   -0.0783360    0.0162010
15-18 months   SAS-FoodSuppl   INDIA                          0%                   NA                -0.0192007   -0.0421262    0.0037247
18-21 months   MAL-ED          BANGLADESH                     0%                   NA                 0.0017955   -0.0620961    0.0656870
18-21 months   MAL-ED          NEPAL                          0%                   NA                 0.0002852   -0.0796842    0.0802545
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0209426   -0.2130272    0.1711420
18-21 months   NIH-Birth       BANGLADESH                     0%                   NA                 0.0944630    0.0632923    0.1256337
18-21 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0050572   -0.0199192    0.0098049
18-21 months   PROVIDE         BANGLADESH                     0%                   NA                -0.0304130   -0.0624255    0.0015995
21-24 months   MAL-ED          BANGLADESH                     0%                   NA                -0.0057269   -0.0673835    0.0559298
21-24 months   MAL-ED          NEPAL                          0%                   NA                 0.0464075    0.0064527    0.0863624
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0604746   -0.0538036    0.1747528
21-24 months   NIH-Birth       BANGLADESH                     0%                   NA                -0.0418151   -0.0956901    0.0120598
21-24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0124593   -0.0259323    0.0010137
21-24 months   PROVIDE         BANGLADESH                     0%                   NA                 0.0564201    0.0349789    0.0778613
