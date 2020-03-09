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
* hdlvry
* W_birthwt
* W_birthlen
* single
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
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_single
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




# Results Detail

## Results Plots
![](/tmp/476f2aef-d596-4d89-8793-811d2019cd5a/e9dd2efd-9fda-46ea-821c-691960d37fc6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/476f2aef-d596-4d89-8793-811d2019cd5a/e9dd2efd-9fda-46ea-821c-691960d37fc6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/476f2aef-d596-4d89-8793-811d2019cd5a/e9dd2efd-9fda-46ea-821c-691960d37fc6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     JiVitA-4        BANGLADESH                     0%                   NA                3.6107495   3.2077861   4.0137129
0-3 months     JiVitA-4        BANGLADESH                     (0%, 5%]             NA                3.6374226   3.6046015   3.6702438
0-3 months     JiVitA-4        BANGLADESH                     >5%                  NA                3.6490449   3.5797247   3.7183651
0-3 months     MAL-ED          BANGLADESH                     0%                   NA                3.3021986   2.9217197   3.6826775
0-3 months     MAL-ED          BANGLADESH                     (0%, 5%]             NA                3.3458080   3.2617953   3.4298208
0-3 months     MAL-ED          BANGLADESH                     >5%                  NA                3.3319432   3.2227784   3.4411081
0-3 months     MAL-ED          INDIA                          0%                   NA                3.9765054   2.4394476   5.5135632
0-3 months     MAL-ED          INDIA                          (0%, 5%]             NA                3.3457689   3.2534687   3.4380691
0-3 months     MAL-ED          INDIA                          >5%                  NA                3.2612624   2.9966705   3.5258543
0-3 months     MAL-ED          NEPAL                          0%                   NA                3.7203836   3.1905235   4.2502437
0-3 months     MAL-ED          NEPAL                          (0%, 5%]             NA                3.5467741   3.4272287   3.6663195
0-3 months     MAL-ED          NEPAL                          >5%                  NA                3.7027183   3.5598558   3.8455807
0-3 months     MAL-ED          PERU                           0%                   NA                3.1376174   2.8229156   3.4523193
0-3 months     MAL-ED          PERU                           (0%, 5%]             NA                3.0303192   2.9213117   3.1393266
0-3 months     MAL-ED          PERU                           >5%                  NA                3.0795952   2.9903783   3.1688120
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                3.3124174   2.8460804   3.7787545
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                3.2950995   3.2094490   3.3807500
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                3.1783629   2.9967028   3.3600230
0-3 months     NIH-Birth       BANGLADESH                     0%                   NA                2.9833768   2.7239189   3.2428346
0-3 months     NIH-Birth       BANGLADESH                     (0%, 5%]             NA                3.0884824   3.0233377   3.1536270
0-3 months     NIH-Birth       BANGLADESH                     >5%                  NA                3.1800340   3.0879970   3.2720709
0-3 months     NIH-Crypto      BANGLADESH                     0%                   NA                3.0250168   2.9538982   3.0961354
0-3 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                3.1359603   3.0832830   3.1886376
0-3 months     NIH-Crypto      BANGLADESH                     >5%                  NA                3.1914065   3.1150709   3.2677422
0-3 months     PROVIDE         BANGLADESH                     0%                   NA                3.1444220   2.8852260   3.4036179
0-3 months     PROVIDE         BANGLADESH                     (0%, 5%]             NA                3.2657334   3.2218358   3.3096311
0-3 months     PROVIDE         BANGLADESH                     >5%                  NA                3.2558254   3.1877845   3.3238662
3-6 months     CONTENT         PERU                           0%                   NA                2.0933002   1.8015225   2.3850780
3-6 months     CONTENT         PERU                           (0%, 5%]             NA                2.0736534   2.0175221   2.1297847
3-6 months     CONTENT         PERU                           >5%                  NA                2.1060124   2.0120781   2.1999467
3-6 months     JiVitA-4        BANGLADESH                     0%                   NA                2.0679331   1.8967673   2.2390990
3-6 months     JiVitA-4        BANGLADESH                     (0%, 5%]             NA                1.8918880   1.8596039   1.9241720
3-6 months     JiVitA-4        BANGLADESH                     >5%                  NA                1.9244819   1.8567761   1.9921878
3-6 months     MAL-ED          BANGLADESH                     0%                   NA                1.8472373   1.5841576   2.1103170
3-6 months     MAL-ED          BANGLADESH                     (0%, 5%]             NA                1.9559532   1.8905162   2.0213902
3-6 months     MAL-ED          BANGLADESH                     >5%                  NA                1.8890455   1.8081193   1.9699716
3-6 months     MAL-ED          NEPAL                          0%                   NA                2.1628396   1.8624933   2.4631859
3-6 months     MAL-ED          NEPAL                          (0%, 5%]             NA                1.9916134   1.9249394   2.0582874
3-6 months     MAL-ED          NEPAL                          >5%                  NA                1.9260346   1.8189084   2.0331607
3-6 months     MAL-ED          PERU                           0%                   NA                1.9003923   1.5861984   2.2145862
3-6 months     MAL-ED          PERU                           (0%, 5%]             NA                2.0310710   1.9251510   2.1369910
3-6 months     MAL-ED          PERU                           >5%                  NA                2.0096210   1.9226595   2.0965824
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                1.5432136   1.1170539   1.9693733
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                1.8315269   1.7506892   1.9123645
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                1.8690510   1.7441477   1.9939543
3-6 months     NIH-Birth       BANGLADESH                     0%                   NA                1.8044966   1.4780561   2.1309370
3-6 months     NIH-Birth       BANGLADESH                     (0%, 5%]             NA                1.8403949   1.7799704   1.9008194
3-6 months     NIH-Birth       BANGLADESH                     >5%                  NA                1.8177190   1.7331720   1.9022660
3-6 months     NIH-Crypto      BANGLADESH                     0%                   NA                2.0739628   1.9926449   2.1552807
3-6 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                1.9944257   1.9431429   2.0457086
3-6 months     NIH-Crypto      BANGLADESH                     >5%                  NA                1.9584713   1.8949463   2.0219964
3-6 months     PROVIDE         BANGLADESH                     0%                   NA                1.7727334   1.5557766   1.9896902
3-6 months     PROVIDE         BANGLADESH                     (0%, 5%]             NA                1.9532130   1.9110036   1.9954224
3-6 months     PROVIDE         BANGLADESH                     >5%                  NA                2.0050860   1.9482098   2.0619623
6-9 months     CONTENT         PERU                           0%                   NA                1.2169251   1.1218285   1.3120217
6-9 months     CONTENT         PERU                           (0%, 5%]             NA                1.3801781   1.3219369   1.4384192
6-9 months     CONTENT         PERU                           >5%                  NA                1.4498806   1.3645877   1.5351734
6-9 months     Guatemala BSC   GUATEMALA                      0%                   NA                1.1744435   0.9935659   1.3553210
6-9 months     Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                1.2033559   1.1288814   1.2778305
6-9 months     Guatemala BSC   GUATEMALA                      >5%                  NA                1.1572016   1.1012953   1.2131079
6-9 months     JiVitA-4        BANGLADESH                     0%                   NA                1.3535468   1.2252991   1.4817945
6-9 months     JiVitA-4        BANGLADESH                     (0%, 5%]             NA                1.3255873   1.3037215   1.3474531
6-9 months     JiVitA-4        BANGLADESH                     >5%                  NA                1.3057477   1.2423138   1.3691815
6-9 months     MAL-ED          BANGLADESH                     0%                   NA                1.1305121   0.9616113   1.2994128
6-9 months     MAL-ED          BANGLADESH                     (0%, 5%]             NA                1.2310432   1.1795257   1.2825607
6-9 months     MAL-ED          BANGLADESH                     >5%                  NA                1.2829445   1.2181463   1.3477428
6-9 months     MAL-ED          NEPAL                          0%                   NA                1.1829007   0.9861051   1.3796963
6-9 months     MAL-ED          NEPAL                          (0%, 5%]             NA                1.3589386   1.3033929   1.4144843
6-9 months     MAL-ED          NEPAL                          >5%                  NA                1.3528337   1.2745284   1.4311390
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                1.0912359   0.6053347   1.5771372
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                1.2286494   1.1382813   1.3190176
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                1.0911223   0.9353485   1.2468960
6-9 months     NIH-Birth       BANGLADESH                     0%                   NA                1.3406068   1.2084865   1.4727272
6-9 months     NIH-Birth       BANGLADESH                     (0%, 5%]             NA                1.2841507   1.2327057   1.3355956
6-9 months     NIH-Birth       BANGLADESH                     >5%                  NA                1.1969980   1.1294922   1.2645038
6-9 months     NIH-Crypto      BANGLADESH                     0%                   NA                1.3296755   1.2564665   1.4028845
6-9 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                1.3225937   1.2807848   1.3644025
6-9 months     NIH-Crypto      BANGLADESH                     >5%                  NA                1.3306491   1.2652513   1.3960469
6-9 months     PROVIDE         BANGLADESH                     0%                   NA                1.3867995   1.2465842   1.5270148
6-9 months     PROVIDE         BANGLADESH                     (0%, 5%]             NA                1.2851655   1.2550995   1.3152316
6-9 months     PROVIDE         BANGLADESH                     >5%                  NA                1.2642080   1.2164132   1.3120029
6-9 months     SAS-FoodSuppl   INDIA                          0%                   NA                1.1602772   1.0612615   1.2592929
6-9 months     SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                1.0965648   0.9618186   1.2313111
6-9 months     SAS-FoodSuppl   INDIA                          >5%                  NA                1.1416665   1.0941594   1.1891736
9-12 months    CONTENT         PERU                           0%                   NA                1.1908255   0.9470280   1.4346229
9-12 months    CONTENT         PERU                           (0%, 5%]             NA                1.2200195   1.1697003   1.2703386
9-12 months    CONTENT         PERU                           >5%                  NA                1.1740334   1.1075334   1.2405334
9-12 months    Guatemala BSC   GUATEMALA                      0%                   NA                1.0709260   0.9273635   1.2144886
9-12 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                1.0387623   0.9713516   1.1061731
9-12 months    Guatemala BSC   GUATEMALA                      >5%                  NA                1.0364088   0.9869943   1.0858232
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%                   NA                1.1376371   1.0391223   1.2361519
9-12 months    iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                1.0945240   1.0631161   1.1259319
9-12 months    iLiNS-Zinc      BURKINA FASO                   >5%                  NA                1.0748799   1.0020326   1.1477272
9-12 months    JiVitA-4        BANGLADESH                     0%                   NA                1.0149742   0.9112298   1.1187186
9-12 months    JiVitA-4        BANGLADESH                     (0%, 5%]             NA                1.0729591   1.0535097   1.0924085
9-12 months    JiVitA-4        BANGLADESH                     >5%                  NA                1.0672362   1.0228884   1.1115840
9-12 months    MAL-ED          BANGLADESH                     0%                   NA                1.0883735   0.7441498   1.4325973
9-12 months    MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.9965391   0.9467689   1.0463093
9-12 months    MAL-ED          BANGLADESH                     >5%                  NA                0.9718064   0.9111275   1.0324854
9-12 months    MAL-ED          NEPAL                          0%                   NA                1.2471378   1.0561764   1.4380993
9-12 months    MAL-ED          NEPAL                          (0%, 5%]             NA                1.1074852   1.0564129   1.1585576
9-12 months    MAL-ED          NEPAL                          >5%                  NA                1.0668707   0.9915792   1.1421622
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8130985   0.3267417   1.2994553
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8062014   0.7185433   0.8938595
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8337017   0.6377627   1.0296408
9-12 months    NIH-Birth       BANGLADESH                     0%                   NA                1.2001932   1.1044094   1.2959769
9-12 months    NIH-Birth       BANGLADESH                     (0%, 5%]             NA                1.0922112   1.0489878   1.1354345
9-12 months    NIH-Birth       BANGLADESH                     >5%                  NA                1.0755140   1.0125326   1.1384954
9-12 months    NIH-Crypto      BANGLADESH                     0%                   NA                1.1637322   1.1026710   1.2247935
9-12 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                1.1131777   1.0769528   1.1494026
9-12 months    NIH-Crypto      BANGLADESH                     >5%                  NA                1.1419709   1.0902109   1.1937310
9-12 months    PROVIDE         BANGLADESH                     0%                   NA                0.7470551   0.6447822   0.8493279
9-12 months    PROVIDE         BANGLADESH                     (0%, 5%]             NA                1.0567074   1.0240387   1.0893761
9-12 months    PROVIDE         BANGLADESH                     >5%                  NA                1.0508242   1.0024014   1.0992470
9-12 months    SAS-FoodSuppl   INDIA                          0%                   NA                1.0176353   0.5528634   1.4824072
9-12 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.8097021   0.4031899   1.2162142
9-12 months    SAS-FoodSuppl   INDIA                          >5%                  NA                0.7469154   0.6048435   0.8889874
12-15 months   CONTENT         PERU                           0%                   NA                0.6829053   0.5326891   0.8331216
12-15 months   CONTENT         PERU                           (0%, 5%]             NA                0.9419988   0.8867016   0.9972959
12-15 months   CONTENT         PERU                           >5%                  NA                0.9216348   0.8571246   0.9861451
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                0.9212736   0.8330298   1.0095175
12-15 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                0.9882115   0.9323347   1.0440884
12-15 months   iLiNS-Zinc      BURKINA FASO                   >5%                  NA                0.9424489   0.8842210   1.0006769
12-15 months   JiVitA-4        BANGLADESH                     0%                   NA                0.9871742   0.9114758   1.0628726
12-15 months   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.9401579   0.9230220   0.9572937
12-15 months   JiVitA-4        BANGLADESH                     >5%                  NA                0.9438049   0.9009489   0.9866608
12-15 months   MAL-ED          BANGLADESH                     0%                   NA                1.2032191   0.9300118   1.4764264
12-15 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.8873480   0.8406046   0.9340913
12-15 months   MAL-ED          BANGLADESH                     >5%                  NA                0.9357621   0.8629274   1.0085968
12-15 months   MAL-ED          NEPAL                          0%                   NA                0.9241519   0.6829260   1.1653778
12-15 months   MAL-ED          NEPAL                          (0%, 5%]             NA                0.9530701   0.9040939   1.0020463
12-15 months   MAL-ED          NEPAL                          >5%                  NA                0.9658365   0.8954022   1.0362709
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7107239   0.2928226   1.1286253
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8696817   0.7929748   0.9463887
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8329333   0.7116708   0.9541958
12-15 months   NIH-Birth       BANGLADESH                     0%                   NA                0.6016726   0.4554164   0.7479287
12-15 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.7209448   0.6592168   0.7826729
12-15 months   NIH-Birth       BANGLADESH                     >5%                  NA                0.7376552   0.6806844   0.7946260
12-15 months   NIH-Crypto      BANGLADESH                     0%                   NA                0.9474239   0.8867277   1.0081200
12-15 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.9743588   0.9410418   1.0076758
12-15 months   NIH-Crypto      BANGLADESH                     >5%                  NA                0.9697973   0.9189765   1.0206180
12-15 months   PROVIDE         BANGLADESH                     0%                   NA                1.1327244   0.9504387   1.3150102
12-15 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.9509951   0.9199241   0.9820661
12-15 months   PROVIDE         BANGLADESH                     >5%                  NA                0.9700653   0.9223112   1.0178195
12-15 months   SAS-FoodSuppl   INDIA                          0%                   NA                0.8246968   0.4369762   1.2124173
12-15 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                1.1187612   1.0098091   1.2277133
12-15 months   SAS-FoodSuppl   INDIA                          >5%                  NA                1.0749882   0.9986692   1.1513071
15-18 months   CONTENT         PERU                           0%                   NA                1.1730271   0.9064508   1.4396035
15-18 months   CONTENT         PERU                           (0%, 5%]             NA                1.0072816   0.9477908   1.0667725
15-18 months   CONTENT         PERU                           >5%                  NA                0.9265053   0.8603342   0.9926763
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                0.8927433   0.8324308   0.9530557
15-18 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                0.9392936   0.8853505   0.9932366
15-18 months   iLiNS-Zinc      BURKINA FASO                   >5%                  NA                0.9194282   0.8454213   0.9934352
15-18 months   JiVitA-4        BANGLADESH                     0%                   NA                0.8980832   0.8152524   0.9809140
15-18 months   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.8622963   0.8442340   0.8803586
15-18 months   JiVitA-4        BANGLADESH                     >5%                  NA                0.8291677   0.7828325   0.8755030
15-18 months   MAL-ED          BANGLADESH                     0%                   NA                0.7970241   0.5267839   1.0672642
15-18 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.8212715   0.7778707   0.8646724
15-18 months   MAL-ED          BANGLADESH                     >5%                  NA                0.8307640   0.7634759   0.8980521
15-18 months   MAL-ED          NEPAL                          0%                   NA                0.9277257   0.7394399   1.1160114
15-18 months   MAL-ED          NEPAL                          (0%, 5%]             NA                0.8528446   0.7987696   0.9069196
15-18 months   MAL-ED          NEPAL                          >5%                  NA                0.7920257   0.7222922   0.8617592
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7615997   0.3156013   1.2075982
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.6690870   0.5986233   0.7395506
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7309239   0.6063087   0.8555391
15-18 months   NIH-Birth       BANGLADESH                     0%                   NA                1.2585941   0.9710538   1.5461344
15-18 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.7723298   0.7223528   0.8223069
15-18 months   NIH-Birth       BANGLADESH                     >5%                  NA                0.7505247   0.6854327   0.8156167
15-18 months   NIH-Crypto      BANGLADESH                     0%                   NA                0.9198899   0.8678832   0.9718966
15-18 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.9275127   0.8941120   0.9609134
15-18 months   NIH-Crypto      BANGLADESH                     >5%                  NA                0.8970256   0.8555161   0.9385351
15-18 months   PROVIDE         BANGLADESH                     0%                   NA                0.9237552   0.7891671   1.0583433
15-18 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.8642394   0.8348970   0.8935818
15-18 months   PROVIDE         BANGLADESH                     >5%                  NA                0.8353071   0.7926425   0.8779717
15-18 months   SAS-FoodSuppl   INDIA                          0%                   NA                0.8418530   0.7768441   0.9068618
15-18 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.7699302   0.6559754   0.8838850
15-18 months   SAS-FoodSuppl   INDIA                          >5%                  NA                0.7846916   0.7400290   0.8293541
18-21 months   MAL-ED          BANGLADESH                     0%                   NA                0.8204084   0.6348865   1.0059302
18-21 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.7918543   0.7468722   0.8368364
18-21 months   MAL-ED          BANGLADESH                     >5%                  NA                0.8503481   0.7961436   0.9045525
18-21 months   MAL-ED          NEPAL                          0%                   NA                0.8800440   0.6333887   1.1266994
18-21 months   MAL-ED          NEPAL                          (0%, 5%]             NA                0.8099015   0.7600245   0.8597786
18-21 months   MAL-ED          NEPAL                          >5%                  NA                0.8341067   0.7756286   0.8925848
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8052936   0.2028801   1.4077071
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7726463   0.6962076   0.8490850
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.6506433   0.5143886   0.7868980
18-21 months   NIH-Birth       BANGLADESH                     0%                   NA                0.4799290   0.4013646   0.5584935
18-21 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.7187969   0.6751662   0.7624276
18-21 months   NIH-Birth       BANGLADESH                     >5%                  NA                0.7576920   0.6927672   0.8226167
18-21 months   NIH-Crypto      BANGLADESH                     0%                   NA                0.8113596   0.7563715   0.8663478
18-21 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.8098657   0.7770063   0.8427251
18-21 months   NIH-Crypto      BANGLADESH                     >5%                  NA                0.7733484   0.7279131   0.8187836
18-21 months   PROVIDE         BANGLADESH                     0%                   NA                0.9153757   0.8195201   1.0112314
18-21 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.8353011   0.8061772   0.8644250
18-21 months   PROVIDE         BANGLADESH                     >5%                  NA                0.8450212   0.8017131   0.8883294
21-24 months   MAL-ED          BANGLADESH                     0%                   NA                0.8202989   0.6919530   0.9486448
21-24 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.7838728   0.7400896   0.8276561
21-24 months   MAL-ED          BANGLADESH                     >5%                  NA                0.7404856   0.6770923   0.8038790
21-24 months   MAL-ED          NEPAL                          0%                   NA                0.6846528   0.5525930   0.8167125
21-24 months   MAL-ED          NEPAL                          (0%, 5%]             NA                0.7984577   0.7423416   0.8545738
21-24 months   MAL-ED          NEPAL                          >5%                  NA                0.7813884   0.7181312   0.8446457
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.5316857   0.2231655   0.8402059
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7151343   0.6355503   0.7947183
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7526459   0.6431800   0.8621118
21-24 months   NIH-Birth       BANGLADESH                     0%                   NA                0.8700507   0.7243845   1.0157169
21-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.7170223   0.6737174   0.7603272
21-24 months   NIH-Birth       BANGLADESH                     >5%                  NA                0.7120957   0.6491679   0.7750234
21-24 months   NIH-Crypto      BANGLADESH                     0%                   NA                0.8066759   0.7560212   0.8573306
21-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.7988510   0.7653259   0.8323761
21-24 months   NIH-Crypto      BANGLADESH                     >5%                  NA                0.7873651   0.7331043   0.8416259
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
0-3 months     JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0266731   -0.3775572    0.4309034
0-3 months     JiVitA-4        BANGLADESH                     >5%                  0%                 0.0382954   -0.3702406    0.4468314
0-3 months     MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0436094   -0.3460344    0.4332533
0-3 months     MAL-ED          BANGLADESH                     >5%                  0%                 0.0297447   -0.3660850    0.4255743
0-3 months     MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          INDIA                          (0%, 5%]             0%                -0.6307366   -2.1705632    0.9090900
0-3 months     MAL-ED          INDIA                          >5%                  0%                -0.7152431   -2.2749083    0.8444221
0-3 months     MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          NEPAL                          (0%, 5%]             0%                -0.1736095   -0.7162429    0.3690239
0-3 months     MAL-ED          NEPAL                          >5%                  0%                -0.0176653   -0.5664898    0.5311592
0-3 months     MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          PERU                           (0%, 5%]             0%                -0.1072983   -0.4404397    0.2258432
0-3 months     MAL-ED          PERU                           >5%                  0%                -0.0580223   -0.3850539    0.2690094
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0173179   -0.4920176    0.4573818
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.1340545   -0.6340392    0.3659301
0-3 months     NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.1051056   -0.1618573    0.3720685
0-3 months     NIH-Birth       BANGLADESH                     >5%                  0%                 0.1966572   -0.0783378    0.4716522
0-3 months     NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.1109435    0.0223973    0.1994897
0-3 months     NIH-Crypto      BANGLADESH                     >5%                  0%                 0.1663897    0.0618795    0.2708999
0-3 months     PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.1213115   -0.1412206    0.3838435
0-3 months     PROVIDE         BANGLADESH                     >5%                  0%                 0.1114034   -0.1561859    0.3789927
3-6 months     CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     CONTENT         PERU                           (0%, 5%]             0%                -0.0196469   -0.3167748    0.2774810
3-6 months     CONTENT         PERU                           >5%                  0%                 0.0127122   -0.2938134    0.3192377
3-6 months     JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.1760452   -0.3499563   -0.0021341
3-6 months     JiVitA-4        BANGLADESH                     >5%                  0%                -0.1434512   -0.3284116    0.0415091
3-6 months     MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.1087159   -0.1623799    0.3798117
3-6 months     MAL-ED          BANGLADESH                     >5%                  0%                 0.0418082   -0.2334371    0.3170535
3-6 months     MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          NEPAL                          (0%, 5%]             0%                -0.1712262   -0.4792063    0.1367539
3-6 months     MAL-ED          NEPAL                          >5%                  0%                -0.2368050   -0.5556836    0.0820735
3-6 months     MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          PERU                           (0%, 5%]             0%                 0.1306786   -0.2008886    0.4622459
3-6 months     MAL-ED          PERU                           >5%                  0%                 0.1092286   -0.2167777    0.4352349
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.2883133   -0.1454456    0.7220722
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.3258374   -0.1182492    0.7699240
3-6 months     NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0358983   -0.2964538    0.3682505
3-6 months     NIH-Birth       BANGLADESH                     >5%                  0%                 0.0132224   -0.3242906    0.3507355
3-6 months     NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0795370   -0.1754574    0.0163833
3-6 months     NIH-Crypto      BANGLADESH                     >5%                  0%                -0.1154915   -0.2182398   -0.0127431
3-6 months     PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.1804796   -0.0405262    0.4014854
3-6 months     PROVIDE         BANGLADESH                     >5%                  0%                 0.2323527    0.0079913    0.4567140
6-9 months     CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     CONTENT         PERU                           (0%, 5%]             0%                 0.1632530    0.0517389    0.2747671
6-9 months     CONTENT         PERU                           >5%                  0%                 0.2329555    0.1052127    0.3606983
6-9 months     Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                 0.0289125   -0.1666972    0.2245222
6-9 months     Guatemala BSC   GUATEMALA                      >5%                  0%                -0.0172418   -0.2065622    0.1720785
6-9 months     JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0279595   -0.1585604    0.1026414
6-9 months     JiVitA-4        BANGLADESH                     >5%                  0%                -0.0477991   -0.1900201    0.0944218
6-9 months     MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.1005312   -0.0760517    0.2771140
6-9 months     MAL-ED          BANGLADESH                     >5%                  0%                 0.1524325   -0.0284716    0.3333365
6-9 months     MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          NEPAL                          (0%, 5%]             0%                 0.1760379   -0.0284688    0.3805446
6-9 months     MAL-ED          NEPAL                          >5%                  0%                 0.1699330   -0.0426219    0.3824879
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1374135   -0.3568196    0.6316467
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0001137   -0.5103739    0.5101466
6-9 months     NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0564562   -0.1982390    0.0853266
6-9 months     NIH-Birth       BANGLADESH                     >5%                  0%                -0.1436089   -0.2919760    0.0047583
6-9 months     NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0070819   -0.0915817    0.0774179
6-9 months     NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0009736   -0.0971598    0.0991070
6-9 months     PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.1016340   -0.2449796    0.0417116
6-9 months     PROVIDE         BANGLADESH                     >5%                  0%                -0.1225915   -0.2707978    0.0256148
6-9 months     SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0637124   -0.2312473    0.1038224
6-9 months     SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0186107   -0.1285614    0.0913400
9-12 months    CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    CONTENT         PERU                           (0%, 5%]             0%                 0.0291940   -0.2197421    0.2781301
9-12 months    CONTENT         PERU                           >5%                  0%                -0.0167921   -0.2694963    0.2359122
9-12 months    Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                -0.0321637   -0.1907651    0.1264377
9-12 months    Guatemala BSC   GUATEMALA                      >5%                  0%                -0.0345173   -0.1863461    0.1173115
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                -0.0431131   -0.1524727    0.0662465
9-12 months    iLiNS-Zinc      BURKINA FASO                   >5%                  0%                -0.0627572   -0.1665319    0.0410175
9-12 months    JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0579849   -0.0473929    0.1633628
9-12 months    JiVitA-4        BANGLADESH                     >5%                  0%                 0.0522620   -0.0599374    0.1644613
9-12 months    MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0918344   -0.4396376    0.2559688
9-12 months    MAL-ED          BANGLADESH                     >5%                  0%                -0.1165671   -0.4660981    0.2329640
9-12 months    MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          NEPAL                          (0%, 5%]             0%                -0.1396526   -0.3375800    0.0582748
9-12 months    MAL-ED          NEPAL                          >5%                  0%                -0.1802672   -0.3851333    0.0245990
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0068971   -0.5010903    0.4872960
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0206032   -0.5037393    0.5449457
9-12 months    NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.1079820   -0.2130667   -0.0028974
9-12 months    NIH-Birth       BANGLADESH                     >5%                  0%                -0.1246792   -0.2393142   -0.0100442
9-12 months    NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0505545   -0.1219775    0.0208685
9-12 months    NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0217613   -0.1021766    0.0586540
9-12 months    PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.3096523    0.2022885    0.4170161
9-12 months    PROVIDE         BANGLADESH                     >5%                  0%                 0.3037691    0.1906121    0.4169261
9-12 months    SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.2079332   -0.8272630    0.4113966
9-12 months    SAS-FoodSuppl   INDIA                          >5%                  0%                -0.2707199   -0.7581639    0.2167241
12-15 months   CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   CONTENT         PERU                           (0%, 5%]             0%                 0.2590935    0.0990225    0.4191644
12-15 months   CONTENT         PERU                           >5%                  0%                 0.2387295    0.0752471    0.4022119
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                 0.0669379   -0.0207111    0.1545869
12-15 months   iLiNS-Zinc      BURKINA FASO                   >5%                  0%                 0.0211753   -0.0799503    0.1223010
12-15 months   JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0470163   -0.1244282    0.0303955
12-15 months   JiVitA-4        BANGLADESH                     >5%                  0%                -0.0433693   -0.1304435    0.0437048
12-15 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.3158711   -0.5930483   -0.0386940
12-15 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.2674570   -0.5502062    0.0152922
12-15 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          NEPAL                          (0%, 5%]             0%                 0.0289182   -0.2175038    0.2753402
12-15 months   MAL-ED          NEPAL                          >5%                  0%                 0.0416847   -0.2097650    0.2931343
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1589578   -0.2659251    0.5838407
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.1222094   -0.3129298    0.5573486
12-15 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.1192723   -0.0394766    0.2780212
12-15 months   NIH-Birth       BANGLADESH                     >5%                  0%                 0.1359826   -0.0209777    0.2929429
12-15 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0269349   -0.0421890    0.0960588
12-15 months   NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0223734   -0.0567262    0.1014730
12-15 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.1817293   -0.3666442    0.0031855
12-15 months   PROVIDE         BANGLADESH                     >5%                  0%                -0.1626591   -0.3510962    0.0257780
12-15 months   SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.2940644   -0.1086523    0.6967812
12-15 months   SAS-FoodSuppl   INDIA                          >5%                  0%                 0.2502914   -0.1451454    0.6457281
15-18 months   CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   CONTENT         PERU                           (0%, 5%]             0%                -0.1657455   -0.4388793    0.1073884
15-18 months   CONTENT         PERU                           >5%                  0%                -0.2465219   -0.5211881    0.0281444
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                 0.0465503   -0.0379380    0.1310386
15-18 months   iLiNS-Zinc      BURKINA FASO                   >5%                  0%                 0.0266850   -0.0738000    0.1271699
15-18 months   JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0357869   -0.1208648    0.0492910
15-18 months   JiVitA-4        BANGLADESH                     >5%                  0%                -0.0689154   -0.1635996    0.0257687
15-18 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0242475   -0.2494556    0.2979506
15-18 months   MAL-ED          BANGLADESH                     >5%                  0%                 0.0337400   -0.2447514    0.3122313
15-18 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0748810   -0.2710448    0.1212827
15-18 months   MAL-ED          NEPAL                          >5%                  0%                -0.1357000   -0.3362399    0.0648400
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0925128   -0.5440432    0.3590177
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0306758   -0.4937563    0.4324047
15-18 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.4862642   -0.7781155   -0.1944130
15-18 months   NIH-Birth       BANGLADESH                     >5%                  0%                -0.5080694   -0.8028852   -0.2132535
15-18 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0076228   -0.0542051    0.0694508
15-18 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0228643   -0.0894241    0.0436955
15-18 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0595158   -0.1972653    0.0782337
15-18 months   PROVIDE         BANGLADESH                     >5%                  0%                -0.0884481   -0.2296367    0.0527406
15-18 months   SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0719228   -0.2030937    0.0592482
15-18 months   SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0571614   -0.1359734    0.0216506
18-21 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0285541   -0.2194513    0.1623432
18-21 months   MAL-ED          BANGLADESH                     >5%                  0%                 0.0299397   -0.1633385    0.2232180
18-21 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0701425   -0.3219279    0.1816429
18-21 months   MAL-ED          NEPAL                          >5%                  0%                -0.0459374   -0.2992673    0.2073926
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0326473   -0.6398910    0.5745965
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.1546503   -0.7722808    0.4629802
18-21 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.2388679    0.1490013    0.3287345
18-21 months   NIH-Birth       BANGLADESH                     >5%                  0%                 0.2777630    0.1758434    0.3796825
18-21 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0014939   -0.0658723    0.0628844
18-21 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0380113   -0.1093897    0.0333672
18-21 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0800746   -0.1802570    0.0201077
18-21 months   PROVIDE         BANGLADESH                     >5%                  0%                -0.0703545   -0.1755396    0.0348306
21-24 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0364261   -0.1720345    0.0991824
21-24 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.0798133   -0.2229614    0.0633349
21-24 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          NEPAL                          (0%, 5%]             0%                 0.1138049   -0.0295327    0.2571425
21-24 months   MAL-ED          NEPAL                          >5%                  0%                 0.0967357   -0.0495868    0.2430582
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.1834486   -0.1351708    0.5020680
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.2209602   -0.1064043    0.5483247
21-24 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.1530284   -0.3049954   -0.0010615
21-24 months   NIH-Birth       BANGLADESH                     >5%                  0%                -0.1579550   -0.3166325    0.0007224
21-24 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0078249   -0.0686167    0.0529670
21-24 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0193108   -0.0935307    0.0549092
21-24 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.2382490    0.1747324    0.3017656
21-24 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.2029683    0.1333684    0.2725683


### Parameter: PAR


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-4        BANGLADESH                     0%                   NA                 0.0273672   -0.3665823    0.4213166
0-3 months     MAL-ED          BANGLADESH                     0%                   NA                 0.0369245   -0.3366303    0.4104793
0-3 months     MAL-ED          INDIA                          0%                   NA                -0.6282804   -2.1259548    0.8693939
0-3 months     MAL-ED          NEPAL                          0%                   NA                -0.0969661   -0.6043975    0.4104654
0-3 months     MAL-ED          PERU                           0%                   NA                -0.0856638   -0.3988954    0.2275678
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0479183   -0.5025581    0.4067215
0-3 months     NIH-Birth       BANGLADESH                     0%                   NA                 0.1266348   -0.1249721    0.3782418
0-3 months     NIH-Crypto      BANGLADESH                     0%                   NA                 0.1042281    0.0349395    0.1735167
0-3 months     PROVIDE         BANGLADESH                     0%                   NA                 0.1132591   -0.1400789    0.3665970
3-6 months     CONTENT         PERU                           0%                   NA                -0.0091161   -0.2966190    0.2783867
3-6 months     JiVitA-4        BANGLADESH                     0%                   NA                -0.1695655   -0.3387659   -0.0003651
3-6 months     MAL-ED          BANGLADESH                     0%                   NA                 0.0804035   -0.1806311    0.3414380
3-6 months     MAL-ED          NEPAL                          0%                   NA                -0.1983795   -0.4901752    0.0934161
3-6 months     MAL-ED          PERU                           0%                   NA                 0.1152898   -0.1980254    0.4286050
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.2868766   -0.1284995    0.7022528
3-6 months     NIH-Birth       BANGLADESH                     0%                   NA                 0.0281949   -0.2939096    0.3502995
3-6 months     NIH-Crypto      BANGLADESH                     0%                   NA                -0.0681655   -0.1422278    0.0058967
3-6 months     PROVIDE         BANGLADESH                     0%                   NA                 0.1930123   -0.0213126    0.4073373
6-9 months     CONTENT         PERU                           0%                   NA                 0.1804985    0.0767461    0.2842509
6-9 months     Guatemala BSC   GUATEMALA                      0%                   NA                -0.0041621   -0.1827780    0.1744537
6-9 months     JiVitA-4        BANGLADESH                     0%                   NA                -0.0293035   -0.1558744    0.0972675
6-9 months     MAL-ED          BANGLADESH                     0%                   NA                 0.1175331   -0.0515149    0.2865810
6-9 months     MAL-ED          NEPAL                          0%                   NA                 0.1742401   -0.0181742    0.3666544
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0995197   -0.3804288    0.5794681
6-9 months     NIH-Birth       BANGLADESH                     0%                   NA                -0.0850118   -0.2200138    0.0499902
6-9 months     NIH-Crypto      BANGLADESH                     0%                   NA                -0.0014060   -0.0688723    0.0660603
6-9 months     PROVIDE         BANGLADESH                     0%                   NA                -0.1043810   -0.2435525    0.0347904
6-9 months     SAS-FoodSuppl   INDIA                          0%                   NA                -0.0176618   -0.1084975    0.0731740
9-12 months    CONTENT         PERU                           0%                   NA                 0.0140513   -0.2260767    0.2541794
9-12 months    Guatemala BSC   GUATEMALA                      0%                   NA                -0.0324126   -0.1751232    0.1102979
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%                   NA                -0.0448397   -0.1325638    0.0428844
9-12 months    JiVitA-4        BANGLADESH                     0%                   NA                 0.0565049   -0.0447614    0.1577712
9-12 months    MAL-ED          BANGLADESH                     0%                   NA                -0.0987290   -0.4358726    0.2384147
9-12 months    MAL-ED          NEPAL                          0%                   NA                -0.1579007   -0.3433868    0.0275854
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0000091   -0.4809269    0.4809451
9-12 months    NIH-Birth       BANGLADESH                     0%                   NA                -0.1116123   -0.2113638   -0.0118609
9-12 months    NIH-Crypto      BANGLADESH                     0%                   NA                -0.0402578   -0.0958603    0.0153447
9-12 months    PROVIDE         BANGLADESH                     0%                   NA                 0.3029199    0.1996547    0.4061851
9-12 months    SAS-FoodSuppl   INDIA                          0%                   NA                -0.2069704   -0.6073924    0.1934515
12-15 months   CONTENT         PERU                           0%                   NA                 0.2462390    0.0938362    0.3986418
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                 0.0445547   -0.0334580    0.1225673
12-15 months   JiVitA-4        BANGLADESH                     0%                   NA                -0.0456436   -0.1198360    0.0285487
12-15 months   MAL-ED          BANGLADESH                     0%                   NA                -0.2891186   -0.5575319   -0.0207054
12-15 months   MAL-ED          NEPAL                          0%                   NA                 0.0272605   -0.2069342    0.2614553
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1456319   -0.2660804    0.5573442
12-15 months   NIH-Birth       BANGLADESH                     0%                   NA                 0.1224897   -0.0268358    0.2718152
12-15 months   NIH-Crypto      BANGLADESH                     0%                   NA                 0.0237156   -0.0319071    0.0793383
12-15 months   PROVIDE         BANGLADESH                     0%                   NA                -0.1729744   -0.3525601    0.0066113
12-15 months   SAS-FoodSuppl   INDIA                          0%                   NA                 0.2020857   -0.1210550    0.5252265
15-18 months   CONTENT         PERU                           0%                   NA                -0.1870040   -0.4503770    0.0763691
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                 0.0300980   -0.0416168    0.1018128
15-18 months   JiVitA-4        BANGLADESH                     0%                   NA                -0.0381655   -0.1201394    0.0438085
15-18 months   MAL-ED          BANGLADESH                     0%                   NA                 0.0270985   -0.2379674    0.2921645
15-18 months   MAL-ED          NEPAL                          0%                   NA                -0.0868895   -0.2698991    0.0961201
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0748518   -0.5126196    0.3629160
15-18 months   NIH-Birth       BANGLADESH                     0%                   NA                -0.4858222   -0.7689518   -0.2026925
15-18 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0021731   -0.0491456    0.0447995
15-18 months   PROVIDE         BANGLADESH                     0%                   NA                -0.0676554   -0.2010284    0.0657177
15-18 months   SAS-FoodSuppl   INDIA                          0%                   NA                -0.0470668   -0.1094267    0.0152930
18-21 months   MAL-ED          BANGLADESH                     0%                   NA                -0.0070236   -0.1903920    0.1763448
18-21 months   MAL-ED          NEPAL                          0%                   NA                -0.0617643   -0.2985848    0.1750562
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0615898   -0.6499036    0.5267241
18-21 months   NIH-Birth       BANGLADESH                     0%                   NA                 0.2492178    0.1645772    0.3338584
18-21 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0135841   -0.0626600    0.0354918
18-21 months   PROVIDE         BANGLADESH                     0%                   NA                -0.0760381   -0.1724972    0.0204211
21-24 months   MAL-ED          BANGLADESH                     0%                   NA                -0.0508806   -0.1804032    0.0786420
21-24 months   MAL-ED          NEPAL                          0%                   NA                 0.0987037   -0.0337076    0.2311151
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1872471   -0.1189333    0.4934274
21-24 months   NIH-Birth       BANGLADESH                     0%                   NA                -0.1528330   -0.2991821   -0.0064838
21-24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0073405   -0.0520448    0.0373637
21-24 months   PROVIDE         BANGLADESH                     0%                   NA                 0.2234908    0.1641755    0.2828061
