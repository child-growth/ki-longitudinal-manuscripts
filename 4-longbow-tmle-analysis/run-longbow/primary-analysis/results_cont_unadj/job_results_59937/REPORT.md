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
0-3 months     EE              PAKISTAN                       0%              219    320
0-3 months     EE              PAKISTAN                       (0%, 5%]        101    320
0-3 months     EE              PAKISTAN                       >5%               0    320
0-3 months     JiVitA-4        BANGLADESH                     0%               43   1795
0-3 months     JiVitA-4        BANGLADESH                     (0%, 5%]       1572   1795
0-3 months     JiVitA-4        BANGLADESH                     >5%             180   1795
0-3 months     MAL-ED          BANGLADESH                     0%                8    246
0-3 months     MAL-ED          BANGLADESH                     (0%, 5%]        145    246
0-3 months     MAL-ED          BANGLADESH                     >5%              93    246
0-3 months     MAL-ED          BRAZIL                         0%              115    218
0-3 months     MAL-ED          BRAZIL                         (0%, 5%]        101    218
0-3 months     MAL-ED          BRAZIL                         >5%               2    218
0-3 months     MAL-ED          INDIA                          0%                5    238
0-3 months     MAL-ED          INDIA                          (0%, 5%]        190    238
0-3 months     MAL-ED          INDIA                          >5%              43    238
0-3 months     MAL-ED          NEPAL                          0%               14    232
0-3 months     MAL-ED          NEPAL                          (0%, 5%]        140    232
0-3 months     MAL-ED          NEPAL                          >5%              78    232
0-3 months     MAL-ED          PERU                           0%               10    282
0-3 months     MAL-ED          PERU                           (0%, 5%]        113    282
0-3 months     MAL-ED          PERU                           >5%             159    282
0-3 months     MAL-ED          SOUTH AFRICA                   0%               90    272
0-3 months     MAL-ED          SOUTH AFRICA                   (0%, 5%]        179    272
0-3 months     MAL-ED          SOUTH AFRICA                   >5%               3    272
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%               10    237
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        172    237
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              55    237
0-3 months     NIH-Birth       BANGLADESH                     0%               29    565
0-3 months     NIH-Birth       BANGLADESH                     (0%, 5%]        340    565
0-3 months     NIH-Birth       BANGLADESH                     >5%             196    565
0-3 months     NIH-Crypto      BANGLADESH                     0%              136    725
0-3 months     NIH-Crypto      BANGLADESH                     (0%, 5%]        386    725
0-3 months     NIH-Crypto      BANGLADESH                     >5%             203    725
0-3 months     PROVIDE         BANGLADESH                     0%               21    640
0-3 months     PROVIDE         BANGLADESH                     (0%, 5%]        425    640
0-3 months     PROVIDE         BANGLADESH                     >5%             194    640
3-6 months     CMIN            BANGLADESH                     0%                0    184
3-6 months     CMIN            BANGLADESH                     (0%, 5%]         89    184
3-6 months     CMIN            BANGLADESH                     >5%              95    184
3-6 months     CONTENT         PERU                           0%                6    214
3-6 months     CONTENT         PERU                           (0%, 5%]        142    214
3-6 months     CONTENT         PERU                           >5%              66    214
3-6 months     EE              PAKISTAN                       0%              186    275
3-6 months     EE              PAKISTAN                       (0%, 5%]         89    275
3-6 months     EE              PAKISTAN                       >5%               0    275
3-6 months     JiVitA-4        BANGLADESH                     0%               38   1818
3-6 months     JiVitA-4        BANGLADESH                     (0%, 5%]       1606   1818
3-6 months     JiVitA-4        BANGLADESH                     >5%             174   1818
3-6 months     MAL-ED          BANGLADESH                     0%                6    233
3-6 months     MAL-ED          BANGLADESH                     (0%, 5%]        138    233
3-6 months     MAL-ED          BANGLADESH                     >5%              89    233
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
3-6 months     NIH-Birth       BANGLADESH                     0%               15    522
3-6 months     NIH-Birth       BANGLADESH                     (0%, 5%]        326    522
3-6 months     NIH-Birth       BANGLADESH                     >5%             181    522
3-6 months     NIH-Crypto      BANGLADESH                     0%              129    702
3-6 months     NIH-Crypto      BANGLADESH                     (0%, 5%]        377    702
3-6 months     NIH-Crypto      BANGLADESH                     >5%             196    702
3-6 months     PROVIDE         BANGLADESH                     0%               12    601
3-6 months     PROVIDE         BANGLADESH                     (0%, 5%]        406    601
3-6 months     PROVIDE         BANGLADESH                     >5%             183    601
6-9 months     CMIN            BANGLADESH                     0%                0    177
6-9 months     CMIN            BANGLADESH                     (0%, 5%]         75    177
6-9 months     CMIN            BANGLADESH                     >5%             102    177
6-9 months     CONTENT         PERU                           0%                6    214
6-9 months     CONTENT         PERU                           (0%, 5%]        141    214
6-9 months     CONTENT         PERU                           >5%              67    214
6-9 months     EE              PAKISTAN                       0%              205    301
6-9 months     EE              PAKISTAN                       (0%, 5%]         96    301
6-9 months     EE              PAKISTAN                       >5%               0    301
6-9 months     Guatemala BSC   GUATEMALA                      0%                9    214
6-9 months     Guatemala BSC   GUATEMALA                      (0%, 5%]         57    214
6-9 months     Guatemala BSC   GUATEMALA                      >5%             148    214
6-9 months     JiVitA-4        BANGLADESH                     0%               91   3073
6-9 months     JiVitA-4        BANGLADESH                     (0%, 5%]       2668   3073
6-9 months     JiVitA-4        BANGLADESH                     >5%             314   3073
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
6-9 months     NIH-Crypto      BANGLADESH                     0%              131    693
6-9 months     NIH-Crypto      BANGLADESH                     (0%, 5%]        374    693
6-9 months     NIH-Crypto      BANGLADESH                     >5%             188    693
6-9 months     PROVIDE         BANGLADESH                     0%               10    576
6-9 months     PROVIDE         BANGLADESH                     (0%, 5%]        388    576
6-9 months     PROVIDE         BANGLADESH                     >5%             178    576
6-9 months     SAS-FoodSuppl   INDIA                          0%               53    309
6-9 months     SAS-FoodSuppl   INDIA                          (0%, 5%]         35    309
6-9 months     SAS-FoodSuppl   INDIA                          >5%             221    309
9-12 months    CMIN            BANGLADESH                     0%                0    160
9-12 months    CMIN            BANGLADESH                     (0%, 5%]         68    160
9-12 months    CMIN            BANGLADESH                     >5%              92    160
9-12 months    CONTENT         PERU                           0%                6    212
9-12 months    CONTENT         PERU                           (0%, 5%]        140    212
9-12 months    CONTENT         PERU                           >5%              66    212
9-12 months    EE              PAKISTAN                       0%              225    325
9-12 months    EE              PAKISTAN                       (0%, 5%]        100    325
9-12 months    EE              PAKISTAN                       >5%               0    325
9-12 months    Guatemala BSC   GUATEMALA                      0%                8    186
9-12 months    Guatemala BSC   GUATEMALA                      (0%, 5%]         48    186
9-12 months    Guatemala BSC   GUATEMALA                      >5%             130    186
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%              134   1120
9-12 months    iLiNS-Zinc      BURKINA FASO                   (0%, 5%]        611   1120
9-12 months    iLiNS-Zinc      BURKINA FASO                   >5%             375   1120
9-12 months    JiVitA-4        BANGLADESH                     0%              125   3518
9-12 months    JiVitA-4        BANGLADESH                     (0%, 5%]       3039   3518
9-12 months    JiVitA-4        BANGLADESH                     >5%             354   3518
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
9-12 months    NIH-Birth       BANGLADESH                     0%                9    481
9-12 months    NIH-Birth       BANGLADESH                     (0%, 5%]        309    481
9-12 months    NIH-Birth       BANGLADESH                     >5%             163    481
9-12 months    NIH-Crypto      BANGLADESH                     0%              130    683
9-12 months    NIH-Crypto      BANGLADESH                     (0%, 5%]        369    683
9-12 months    NIH-Crypto      BANGLADESH                     >5%             184    683
9-12 months    PROVIDE         BANGLADESH                     0%                9    569
9-12 months    PROVIDE         BANGLADESH                     (0%, 5%]        384    569
9-12 months    PROVIDE         BANGLADESH                     >5%             176    569
9-12 months    SAS-FoodSuppl   INDIA                          0%               51    298
9-12 months    SAS-FoodSuppl   INDIA                          (0%, 5%]         35    298
9-12 months    SAS-FoodSuppl   INDIA                          >5%             212    298
12-15 months   CMIN            BANGLADESH                     0%                2    159
12-15 months   CMIN            BANGLADESH                     (0%, 5%]         69    159
12-15 months   CMIN            BANGLADESH                     >5%              88    159
12-15 months   CONTENT         PERU                           0%                5    199
12-15 months   CONTENT         PERU                           (0%, 5%]        132    199
12-15 months   CONTENT         PERU                           >5%              62    199
12-15 months   EE              PAKISTAN                       0%              202    298
12-15 months   EE              PAKISTAN                       (0%, 5%]         96    298
12-15 months   EE              PAKISTAN                       >5%               0    298
12-15 months   Guatemala BSC   GUATEMALA                      0%                2     96
12-15 months   Guatemala BSC   GUATEMALA                      (0%, 5%]         30     96
12-15 months   Guatemala BSC   GUATEMALA                      >5%              64     96
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%               88    982
12-15 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]        551    982
12-15 months   iLiNS-Zinc      BURKINA FASO                   >5%             343    982
12-15 months   JiVitA-4        BANGLADESH                     0%              132   3551
12-15 months   JiVitA-4        BANGLADESH                     (0%, 5%]       3070   3551
12-15 months   JiVitA-4        BANGLADESH                     >5%             349   3551
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
12-15 months   NIH-Crypto      BANGLADESH                     0%              127    666
12-15 months   NIH-Crypto      BANGLADESH                     (0%, 5%]        355    666
12-15 months   NIH-Crypto      BANGLADESH                     >5%             184    666
12-15 months   PROVIDE         BANGLADESH                     0%                8    537
12-15 months   PROVIDE         BANGLADESH                     (0%, 5%]        359    537
12-15 months   PROVIDE         BANGLADESH                     >5%             170    537
12-15 months   SAS-FoodSuppl   INDIA                          0%               54    300
12-15 months   SAS-FoodSuppl   INDIA                          (0%, 5%]         35    300
12-15 months   SAS-FoodSuppl   INDIA                          >5%             211    300
15-18 months   CMIN            BANGLADESH                     0%                3    163
15-18 months   CMIN            BANGLADESH                     (0%, 5%]         70    163
15-18 months   CMIN            BANGLADESH                     >5%              90    163
15-18 months   CONTENT         PERU                           0%                5    189
15-18 months   CONTENT         PERU                           (0%, 5%]        124    189
15-18 months   CONTENT         PERU                           >5%              60    189
15-18 months   EE              PAKISTAN                       0%              188    277
15-18 months   EE              PAKISTAN                       (0%, 5%]         89    277
15-18 months   EE              PAKISTAN                       >5%               0    277
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%               80   1053
15-18 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]        605   1053
15-18 months   iLiNS-Zinc      BURKINA FASO                   >5%             368   1053
15-18 months   JiVitA-4        BANGLADESH                     0%              119   3510
15-18 months   JiVitA-4        BANGLADESH                     (0%, 5%]       3045   3510
15-18 months   JiVitA-4        BANGLADESH                     >5%             346   3510
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
15-18 months   MAL-ED          PERU                           0%                1    214
15-18 months   MAL-ED          PERU                           (0%, 5%]         86    214
15-18 months   MAL-ED          PERU                           >5%             127    214
15-18 months   MAL-ED          SOUTH AFRICA                   0%               68    225
15-18 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]        156    225
15-18 months   MAL-ED          SOUTH AFRICA                   >5%               1    225
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    220
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        159    220
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              55    220
15-18 months   NIH-Birth       BANGLADESH                     0%                7    449
15-18 months   NIH-Birth       BANGLADESH                     (0%, 5%]        295    449
15-18 months   NIH-Birth       BANGLADESH                     >5%             147    449
15-18 months   NIH-Crypto      BANGLADESH                     0%              125    605
15-18 months   NIH-Crypto      BANGLADESH                     (0%, 5%]        321    605
15-18 months   NIH-Crypto      BANGLADESH                     >5%             159    605
15-18 months   PROVIDE         BANGLADESH                     0%                8    533
15-18 months   PROVIDE         BANGLADESH                     (0%, 5%]        358    533
15-18 months   PROVIDE         BANGLADESH                     >5%             167    533
15-18 months   SAS-FoodSuppl   INDIA                          0%               56    290
15-18 months   SAS-FoodSuppl   INDIA                          (0%, 5%]         33    290
15-18 months   SAS-FoodSuppl   INDIA                          >5%             201    290
18-21 months   CMIN            BANGLADESH                     0%                2    165
18-21 months   CMIN            BANGLADESH                     (0%, 5%]         72    165
18-21 months   CMIN            BANGLADESH                     >5%              91    165
18-21 months   CONTENT         PERU                           0%                4    183
18-21 months   CONTENT         PERU                           (0%, 5%]        122    183
18-21 months   CONTENT         PERU                           >5%              57    183
18-21 months   EE              PAKISTAN                       0%              174    255
18-21 months   EE              PAKISTAN                       (0%, 5%]         81    255
18-21 months   EE              PAKISTAN                       >5%               0    255
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
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    208
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        150    208
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52    208
18-21 months   NIH-Birth       BANGLADESH                     0%                5    422
18-21 months   NIH-Birth       BANGLADESH                     (0%, 5%]        274    422
18-21 months   NIH-Birth       BANGLADESH                     >5%             143    422
18-21 months   NIH-Crypto      BANGLADESH                     0%              123    547
18-21 months   NIH-Crypto      BANGLADESH                     (0%, 5%]        291    547
18-21 months   NIH-Crypto      BANGLADESH                     >5%             133    547
18-21 months   PROVIDE         BANGLADESH                     0%                7    542
18-21 months   PROVIDE         BANGLADESH                     (0%, 5%]        368    542
18-21 months   PROVIDE         BANGLADESH                     >5%             167    542
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
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    206
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        150    206
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              50    206
21-24 months   NIH-Birth       BANGLADESH                     0%                5    411
21-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]        267    411
21-24 months   NIH-Birth       BANGLADESH                     >5%             139    411
21-24 months   NIH-Crypto      BANGLADESH                     0%              122    493
21-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]        261    493
21-24 months   NIH-Crypto      BANGLADESH                     >5%             110    493
21-24 months   PROVIDE         BANGLADESH                     0%                8    485
21-24 months   PROVIDE         BANGLADESH                     (0%, 5%]        328    485
21-24 months   PROVIDE         BANGLADESH                     >5%             149    485


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
![](/tmp/d9f9a168-8a57-42b6-8766-fb7b27062fd3/acb2f6e3-c99f-4a33-860f-08271003ba1b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d9f9a168-8a57-42b6-8766-fb7b27062fd3/acb2f6e3-c99f-4a33-860f-08271003ba1b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d9f9a168-8a57-42b6-8766-fb7b27062fd3/acb2f6e3-c99f-4a33-860f-08271003ba1b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     JiVitA-4        BANGLADESH                     0%                   NA                0.8367356    0.7720161   0.9014551
0-3 months     JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.8904313    0.8791945   0.9016681
0-3 months     JiVitA-4        BANGLADESH                     >5%                  NA                0.8944162    0.8679757   0.9208567
0-3 months     MAL-ED          BANGLADESH                     0%                   NA                0.9482045    0.8548350   1.0415740
0-3 months     MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.8826296    0.8526112   0.9126480
0-3 months     MAL-ED          BANGLADESH                     >5%                  NA                0.8666716    0.8286540   0.9046893
0-3 months     MAL-ED          INDIA                          0%                   NA                0.7826866    0.6826237   0.8827494
0-3 months     MAL-ED          INDIA                          (0%, 5%]             NA                0.7596252    0.7350040   0.7842464
0-3 months     MAL-ED          INDIA                          >5%                  NA                0.7559222    0.7005207   0.8113237
0-3 months     MAL-ED          NEPAL                          0%                   NA                0.9164988    0.7857271   1.0472705
0-3 months     MAL-ED          NEPAL                          (0%, 5%]             NA                0.9427211    0.9089608   0.9764814
0-3 months     MAL-ED          NEPAL                          >5%                  NA                0.9897498    0.9446663   1.0348334
0-3 months     MAL-ED          PERU                           0%                   NA                0.9441731    0.8529119   1.0354342
0-3 months     MAL-ED          PERU                           (0%, 5%]             NA                0.9588733    0.9184824   0.9992642
0-3 months     MAL-ED          PERU                           >5%                  NA                0.9796588    0.9463511   1.0129665
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8646023    0.7032345   1.0259700
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8839100    0.8469165   0.9209035
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8903993    0.8382367   0.9425620
0-3 months     NIH-Birth       BANGLADESH                     0%                   NA                0.8083121    0.7479819   0.8686424
0-3 months     NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.8131821    0.7908263   0.8355380
0-3 months     NIH-Birth       BANGLADESH                     >5%                  NA                0.8230345    0.7953749   0.8506940
0-3 months     NIH-Crypto      BANGLADESH                     0%                   NA                0.8939245    0.8612324   0.9266166
0-3 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.8800410    0.8600309   0.9000511
0-3 months     NIH-Crypto      BANGLADESH                     >5%                  NA                0.8867431    0.8589947   0.9144914
0-3 months     PROVIDE         BANGLADESH                     0%                   NA                0.8789980    0.7953537   0.9626423
0-3 months     PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.8948671    0.8767824   0.9129518
0-3 months     PROVIDE         BANGLADESH                     >5%                  NA                0.9189521    0.8923256   0.9455786
3-6 months     CONTENT         PERU                           0%                   NA                0.6082765    0.5304823   0.6860707
3-6 months     CONTENT         PERU                           (0%, 5%]             NA                0.5830688    0.5573404   0.6087971
3-6 months     CONTENT         PERU                           >5%                  NA                0.5979411    0.5585844   0.6372978
3-6 months     JiVitA-4        BANGLADESH                     0%                   NA                0.4758820    0.4419799   0.5097842
3-6 months     JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.4377991    0.4283960   0.4472023
3-6 months     JiVitA-4        BANGLADESH                     >5%                  NA                0.4437589    0.4155773   0.4719405
3-6 months     MAL-ED          BANGLADESH                     0%                   NA                0.5185723    0.4373284   0.5998162
3-6 months     MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.4750128    0.4548227   0.4952029
3-6 months     MAL-ED          BANGLADESH                     >5%                  NA                0.4711266    0.4413059   0.5009473
3-6 months     MAL-ED          NEPAL                          0%                   NA                0.5502816    0.4642227   0.6363406
3-6 months     MAL-ED          NEPAL                          (0%, 5%]             NA                0.5244984    0.4968500   0.5521468
3-6 months     MAL-ED          NEPAL                          >5%                  NA                0.5120500    0.4821445   0.5419556
3-6 months     MAL-ED          PERU                           0%                   NA                0.4573821    0.3803718   0.5343923
3-6 months     MAL-ED          PERU                           (0%, 5%]             NA                0.4915364    0.4641275   0.5189453
3-6 months     MAL-ED          PERU                           >5%                  NA                0.5043947    0.4779293   0.5308602
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.4145590    0.3150654   0.5140527
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.4488320    0.4195651   0.4780988
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.4870255    0.4422917   0.5317594
3-6 months     NIH-Birth       BANGLADESH                     0%                   NA                0.4521763    0.3829659   0.5213867
3-6 months     NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.4639620    0.4414771   0.4864469
3-6 months     NIH-Birth       BANGLADESH                     >5%                  NA                0.4517747    0.4238733   0.4796760
3-6 months     NIH-Crypto      BANGLADESH                     0%                   NA                0.5003172    0.4724735   0.5281608
3-6 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.4923975    0.4786473   0.5061477
3-6 months     NIH-Crypto      BANGLADESH                     >5%                  NA                0.5074460    0.4843740   0.5305180
3-6 months     PROVIDE         BANGLADESH                     0%                   NA                0.4468311    0.3929837   0.5006786
3-6 months     PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.4834538    0.4671370   0.4997705
3-6 months     PROVIDE         BANGLADESH                     >5%                  NA                0.5042707    0.4819213   0.5266201
6-9 months     CONTENT         PERU                           0%                   NA                0.2759377    0.1866140   0.3652614
6-9 months     CONTENT         PERU                           (0%, 5%]             NA                0.3218146    0.2971645   0.3464647
6-9 months     CONTENT         PERU                           >5%                  NA                0.3206759    0.2874798   0.3538720
6-9 months     Guatemala BSC   GUATEMALA                      0%                   NA                0.2094165    0.1486658   0.2701672
6-9 months     Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                0.2315695    0.2030816   0.2600575
6-9 months     Guatemala BSC   GUATEMALA                      >5%                  NA                0.2535564    0.2306703   0.2764425
6-9 months     JiVitA-4        BANGLADESH                     0%                   NA                0.2433699    0.1962080   0.2905318
6-9 months     JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.2403993    0.2349500   0.2458486
6-9 months     JiVitA-4        BANGLADESH                     >5%                  NA                0.2332475    0.2179912   0.2485039
6-9 months     MAL-ED          BANGLADESH                     0%                   NA                0.2098061    0.0936993   0.3259128
6-9 months     MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.2366790    0.2188227   0.2545353
6-9 months     MAL-ED          BANGLADESH                     >5%                  NA                0.2548520    0.2302781   0.2794258
6-9 months     MAL-ED          NEPAL                          0%                   NA                0.2899906    0.2523416   0.3276395
6-9 months     MAL-ED          NEPAL                          (0%, 5%]             NA                0.2774819    0.2589697   0.2959940
6-9 months     MAL-ED          NEPAL                          >5%                  NA                0.2519095    0.2261790   0.2776399
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1747407    0.0838264   0.2656550
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.2616129    0.2367324   0.2864934
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1774470    0.1181553   0.2367387
6-9 months     NIH-Birth       BANGLADESH                     0%                   NA                0.2571397    0.1717517   0.3425276
6-9 months     NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.2353907    0.2186929   0.2520885
6-9 months     NIH-Birth       BANGLADESH                     >5%                  NA                0.2367928    0.2123525   0.2612331
6-9 months     NIH-Crypto      BANGLADESH                     0%                   NA                0.3004803    0.2760540   0.3249067
6-9 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.2644783    0.2498114   0.2791452
6-9 months     NIH-Crypto      BANGLADESH                     >5%                  NA                0.2505660    0.2318087   0.2693232
6-9 months     PROVIDE         BANGLADESH                     0%                   NA                0.2120297    0.1669345   0.2571249
6-9 months     PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.2477893    0.2323005   0.2632780
6-9 months     PROVIDE         BANGLADESH                     >5%                  NA                0.2542511    0.2351343   0.2733679
6-9 months     SAS-FoodSuppl   INDIA                          0%                   NA                0.1942298    0.1551453   0.2333143
6-9 months     SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.1722037    0.1202312   0.2241762
6-9 months     SAS-FoodSuppl   INDIA                          >5%                  NA                0.2032952    0.1841623   0.2224281
9-12 months    CONTENT         PERU                           0%                   NA                0.1529913    0.0832865   0.2226962
9-12 months    CONTENT         PERU                           (0%, 5%]             NA                0.2302618    0.2089013   0.2516224
9-12 months    CONTENT         PERU                           >5%                  NA                0.2188389    0.1832601   0.2544178
9-12 months    Guatemala BSC   GUATEMALA                      0%                   NA                0.1530875    0.0968166   0.2093584
9-12 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                0.2116576    0.1731347   0.2501804
9-12 months    Guatemala BSC   GUATEMALA                      >5%                  NA                0.2092510    0.1833996   0.2351024
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%                   NA                0.2691932    0.2235650   0.3148214
9-12 months    iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                0.2430597    0.2279831   0.2581362
9-12 months    iLiNS-Zinc      BURKINA FASO                   >5%                  NA                0.2334440    0.2173663   0.2495217
9-12 months    JiVitA-4        BANGLADESH                     0%                   NA                0.1600612    0.1412660   0.1788564
9-12 months    JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.1543613    0.1497995   0.1589231
9-12 months    JiVitA-4        BANGLADESH                     >5%                  NA                0.1541752    0.1418974   0.1664529
9-12 months    MAL-ED          BANGLADESH                     0%                   NA                0.2437701    0.1845535   0.3029867
9-12 months    MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.1716742    0.1542935   0.1890549
9-12 months    MAL-ED          BANGLADESH                     >5%                  NA                0.1701861    0.1472988   0.1930735
9-12 months    MAL-ED          NEPAL                          0%                   NA                0.2177746    0.1834675   0.2520816
9-12 months    MAL-ED          NEPAL                          (0%, 5%]             NA                0.1888899    0.1720080   0.2057718
9-12 months    MAL-ED          NEPAL                          >5%                  NA                0.1757700    0.1466095   0.2049304
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1755024    0.0489702   0.3020346
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1755260    0.1523100   0.1987420
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1403511    0.0982775   0.1824248
9-12 months    NIH-Birth       BANGLADESH                     0%                   NA                0.1613334    0.0940561   0.2286107
9-12 months    NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.1704021    0.1563364   0.1844679
9-12 months    NIH-Birth       BANGLADESH                     >5%                  NA                0.1508932    0.1233008   0.1784857
9-12 months    NIH-Crypto      BANGLADESH                     0%                   NA                0.2166828    0.1944093   0.2389563
9-12 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.1914677    0.1769427   0.2059926
9-12 months    NIH-Crypto      BANGLADESH                     >5%                  NA                0.1973246    0.1776749   0.2169742
9-12 months    PROVIDE         BANGLADESH                     0%                   NA                0.1750036    0.1409474   0.2090598
9-12 months    PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.1801369    0.1691869   0.1910870
9-12 months    PROVIDE         BANGLADESH                     >5%                  NA                0.1719765    0.1537717   0.1901813
9-12 months    SAS-FoodSuppl   INDIA                          0%                   NA                0.1365324    0.0857358   0.1873291
9-12 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.1532415    0.1102030   0.1962799
9-12 months    SAS-FoodSuppl   INDIA                          >5%                  NA                0.1401201    0.1173380   0.1629022
12-15 months   CONTENT         PERU                           0%                   NA                0.1739165    0.0827927   0.2650402
12-15 months   CONTENT         PERU                           (0%, 5%]             NA                0.1938290    0.1708414   0.2168167
12-15 months   CONTENT         PERU                           >5%                  NA                0.1545051    0.1216706   0.1873397
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                0.1701282    0.1364804   0.2037760
12-15 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                0.1990800    0.1860835   0.2120766
12-15 months   iLiNS-Zinc      BURKINA FASO                   >5%                  NA                0.1890186    0.1637957   0.2142415
12-15 months   JiVitA-4        BANGLADESH                     0%                   NA                0.1354627    0.1159129   0.1550124
12-15 months   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.1301928    0.1258270   0.1345585
12-15 months   JiVitA-4        BANGLADESH                     >5%                  NA                0.1312011    0.1186528   0.1437494
12-15 months   MAL-ED          BANGLADESH                     0%                   NA                0.1280951   -0.0554597   0.3116499
12-15 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.1415821    0.1223288   0.1608355
12-15 months   MAL-ED          BANGLADESH                     >5%                  NA                0.1257044    0.1005616   0.1508473
12-15 months   MAL-ED          NEPAL                          0%                   NA                0.2006556    0.1307305   0.2705807
12-15 months   MAL-ED          NEPAL                          (0%, 5%]             NA                0.1508975    0.1311677   0.1706273
12-15 months   MAL-ED          NEPAL                          >5%                  NA                0.1485089    0.1166241   0.1803936
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.2560672    0.1544730   0.3576613
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1517760    0.1224466   0.1811054
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1715477    0.1230609   0.2200344
12-15 months   NIH-Birth       BANGLADESH                     0%                   NA                0.1862096    0.1167904   0.2556289
12-15 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.1282324    0.1139477   0.1425171
12-15 months   NIH-Birth       BANGLADESH                     >5%                  NA                0.1316733    0.1092871   0.1540594
12-15 months   NIH-Crypto      BANGLADESH                     0%                   NA                0.1519652    0.1269378   0.1769926
12-15 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.1675041    0.1524162   0.1825920
12-15 months   NIH-Crypto      BANGLADESH                     >5%                  NA                0.1657642    0.1482386   0.1832897
12-15 months   PROVIDE         BANGLADESH                     0%                   NA                0.1253398    0.0851013   0.1655782
12-15 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.1774823    0.1634984   0.1914662
12-15 months   PROVIDE         BANGLADESH                     >5%                  NA                0.1879913    0.1660818   0.2099008
12-15 months   SAS-FoodSuppl   INDIA                          0%                   NA                0.1850838    0.1510997   0.2190679
12-15 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.1181229    0.0755861   0.1606597
12-15 months   SAS-FoodSuppl   INDIA                          >5%                  NA                0.1821511    0.1623750   0.2019271
15-18 months   CONTENT         PERU                           0%                   NA                0.1012072   -0.0082394   0.2106537
15-18 months   CONTENT         PERU                           (0%, 5%]             NA                0.1753558    0.1512590   0.1994526
15-18 months   CONTENT         PERU                           >5%                  NA                0.1683409    0.1407393   0.1959424
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                0.1866179    0.1621045   0.2111312
15-18 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                0.1814410    0.1683402   0.1945419
15-18 months   iLiNS-Zinc      BURKINA FASO                   >5%                  NA                0.1613833    0.1411848   0.1815819
15-18 months   JiVitA-4        BANGLADESH                     0%                   NA                0.1329878    0.1093306   0.1566449
15-18 months   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.1614208    0.1563270   0.1665147
15-18 months   JiVitA-4        BANGLADESH                     >5%                  NA                0.1516623    0.1379904   0.1653342
15-18 months   MAL-ED          BANGLADESH                     0%                   NA                0.1103982   -0.0199936   0.2407900
15-18 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.1340033    0.1147718   0.1532347
15-18 months   MAL-ED          BANGLADESH                     >5%                  NA                0.1593708    0.1333576   0.1853840
15-18 months   MAL-ED          NEPAL                          0%                   NA                0.1864681    0.1087181   0.2642182
15-18 months   MAL-ED          NEPAL                          (0%, 5%]             NA                0.1742252    0.1541539   0.1942964
15-18 months   MAL-ED          NEPAL                          >5%                  NA                0.1700993    0.1433990   0.1967996
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1299329    0.0017684   0.2580974
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1475884    0.1217691   0.1734076
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1303698    0.0788003   0.1819394
15-18 months   NIH-Birth       BANGLADESH                     0%                   NA                0.1235269    0.0686434   0.1784104
15-18 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.1554873    0.1368336   0.1741409
15-18 months   NIH-Birth       BANGLADESH                     >5%                  NA                0.1493640    0.1258636   0.1728643
15-18 months   NIH-Crypto      BANGLADESH                     0%                   NA                0.1795601    0.1535009   0.2056193
15-18 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.1601500    0.1461812   0.1741188
15-18 months   NIH-Crypto      BANGLADESH                     >5%                  NA                0.1488755    0.1293330   0.1684179
15-18 months   PROVIDE         BANGLADESH                     0%                   NA                0.0942782    0.0506144   0.1379421
15-18 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.1561557    0.1415025   0.1708089
15-18 months   PROVIDE         BANGLADESH                     >5%                  NA                0.1597447    0.1395568   0.1799325
15-18 months   SAS-FoodSuppl   INDIA                          0%                   NA                0.1774659    0.1406415   0.2142903
15-18 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.1565807    0.1153813   0.1977801
15-18 months   SAS-FoodSuppl   INDIA                          >5%                  NA                0.1627426    0.1436249   0.1818603
18-21 months   MAL-ED          BANGLADESH                     0%                   NA                0.0819354   -0.0037817   0.1676526
18-21 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.1349158    0.1148689   0.1549626
18-21 months   MAL-ED          BANGLADESH                     >5%                  NA                0.1612380    0.1300105   0.1924656
18-21 months   MAL-ED          NEPAL                          0%                   NA                0.0382940   -0.1020781   0.1786660
18-21 months   MAL-ED          NEPAL                          (0%, 5%]             NA                0.1437483    0.1239658   0.1635309
18-21 months   MAL-ED          NEPAL                          >5%                  NA                0.1716039    0.1423871   0.2008206
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1790104    0.0838409   0.2741798
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1553768    0.1266226   0.1841309
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1165580    0.0634435   0.1696726
18-21 months   NIH-Birth       BANGLADESH                     0%                   NA                0.0914335    0.0711077   0.1117593
18-21 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.1624848    0.1424008   0.1825688
18-21 months   NIH-Birth       BANGLADESH                     >5%                  NA                0.1943450    0.1668654   0.2218247
18-21 months   NIH-Crypto      BANGLADESH                     0%                   NA                0.1369938    0.1123407   0.1616468
18-21 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.1413379    0.1269895   0.1556863
18-21 months   NIH-Crypto      BANGLADESH                     >5%                  NA                0.1507967    0.1298606   0.1717328
18-21 months   PROVIDE         BANGLADESH                     0%                   NA                0.1191791    0.0822611   0.1560971
18-21 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.1343572    0.1202741   0.1484402
18-21 months   PROVIDE         BANGLADESH                     >5%                  NA                0.1289276    0.1087556   0.1490996
21-24 months   MAL-ED          BANGLADESH                     0%                   NA                0.1482128    0.1206417   0.1757840
21-24 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.1589932    0.1394091   0.1785773
21-24 months   MAL-ED          BANGLADESH                     >5%                  NA                0.1406285    0.1152439   0.1660131
21-24 months   MAL-ED          NEPAL                          0%                   NA                0.2418832    0.1773772   0.3063892
21-24 months   MAL-ED          NEPAL                          (0%, 5%]             NA                0.1699806    0.1439874   0.1959737
21-24 months   MAL-ED          NEPAL                          >5%                  NA                0.1567679    0.1234691   0.1900666
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1257023    0.0495553   0.2018493
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1388567    0.1086344   0.1690790
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1505787    0.0821796   0.2189778
21-24 months   NIH-Birth       BANGLADESH                     0%                   NA                0.2050493    0.1530641   0.2570344
21-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.1379214    0.1184856   0.1573573
21-24 months   NIH-Birth       BANGLADESH                     >5%                  NA                0.1474866    0.1228956   0.1720776
21-24 months   NIH-Crypto      BANGLADESH                     0%                   NA                0.2041652    0.1782258   0.2301045
21-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.1746503    0.1571472   0.1921534
21-24 months   NIH-Crypto      BANGLADESH                     >5%                  NA                0.1437072    0.1202895   0.1671248
21-24 months   PROVIDE         BANGLADESH                     0%                   NA                0.1261917    0.0970910   0.1552923
21-24 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.1455640    0.1315653   0.1595627
21-24 months   PROVIDE         BANGLADESH                     >5%                  NA                0.1349070    0.1142113   0.1556028


### Parameter: E(Y)


agecat         studyid         country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     JiVitA-4        BANGLADESH                     NA                   NA                0.8895446   0.8790300   0.9000593
0-3 months     MAL-ED          BANGLADESH                     NA                   NA                0.8787293   0.8556572   0.9018013
0-3 months     MAL-ED          INDIA                          NA                   NA                0.7594406   0.7372368   0.7816445
0-3 months     MAL-ED          NEPAL                          NA                   NA                0.9569501   0.9301779   0.9837223
0-3 months     MAL-ED          PERU                           NA                   NA                0.9700715   0.9450349   0.9951081
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     NIH-Birth       BANGLADESH                     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     NIH-Crypto      BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROVIDE         BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
3-6 months     CONTENT         PERU                           NA                   NA                0.5883623   0.5672770   0.6094476
3-6 months     JiVitA-4        BANGLADESH                     NA                   NA                0.4391655   0.4303725   0.4479585
3-6 months     MAL-ED          BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     MAL-ED          NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     MAL-ED          PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     NIH-Birth       BANGLADESH                     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     NIH-Crypto      BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROVIDE         BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
6-9 months     CONTENT         PERU                           NA                   NA                0.3201718   0.3007014   0.3396422
6-9 months     Guatemala BSC   GUATEMALA                      NA                   NA                0.2458437   0.2280295   0.2636580
6-9 months     JiVitA-4        BANGLADESH                     NA                   NA                0.2397565   0.2344749   0.2450382
6-9 months     MAL-ED          BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     MAL-ED          NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     NIH-Birth       BANGLADESH                     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     NIH-Crypto      BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     SAS-FoodSuppl   INDIA                          NA                   NA                0.1982186   0.1818458   0.2145914
9-12 months    CONTENT         PERU                           NA                   NA                0.2245187   0.2063866   0.2426509
9-12 months    Guatemala BSC   GUATEMALA                      NA                   NA                0.2074564   0.1866255   0.2282874
9-12 months    iLiNS-Zinc      BURKINA FASO                   NA                   NA                0.2429668   0.2299104   0.2560232
9-12 months    JiVitA-4        BANGLADESH                     NA                   NA                0.1545451   0.1502955   0.1587946
9-12 months    MAL-ED          BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    MAL-ED          NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    NIH-Birth       BANGLADESH                     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    NIH-Crypto      BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    SAS-FoodSuppl   INDIA                          NA                   NA                0.1410472   0.1219662   0.1601282
12-15 months   CONTENT         PERU                           NA                   NA                0.1810771   0.1624014   0.1997528
12-15 months   iLiNS-Zinc      BURKINA FASO                   NA                   NA                0.1929712   0.1819725   0.2039700
12-15 months   JiVitA-4        BANGLADESH                     NA                   NA                0.1304878   0.1263700   0.1346055
12-15 months   MAL-ED          BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   MAL-ED          NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   NIH-Birth       BANGLADESH                     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   NIH-Crypto      BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   SAS-FoodSuppl   INDIA                          NA                   NA                0.1752090   0.1590517   0.1913663
15-18 months   CONTENT         PERU                           NA                   NA                0.1711673   0.1527815   0.1895531
15-18 months   iLiNS-Zinc      BURKINA FASO                   NA                   NA                0.1748246   0.1641572   0.1854921
15-18 months   JiVitA-4        BANGLADESH                     NA                   NA                0.1594949   0.1548064   0.1641834
15-18 months   MAL-ED          BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   MAL-ED          NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   NIH-Birth       BANGLADESH                     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   NIH-Crypto      BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROVIDE         BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   SAS-FoodSuppl   INDIA                          NA                   NA                0.1648845   0.1491151   0.1806540
18-21 months   MAL-ED          BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   MAL-ED          NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   NIH-Birth       BANGLADESH                     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   NIH-Crypto      BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROVIDE         BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
21-24 months   MAL-ED          BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   MAL-ED          NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   NIH-Birth       BANGLADESH                     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   NIH-Crypto      BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROVIDE         BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075


### Parameter: ATE


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0536957   -0.0118576    0.1192491
0-3 months     JiVitA-4        BANGLADESH                     >5%                  0%                 0.0576806   -0.0114588    0.1268200
0-3 months     MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0655749   -0.1636512    0.0325015
0-3 months     MAL-ED          BANGLADESH                     >5%                  0%                -0.0815328   -0.1823455    0.0192799
0-3 months     MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          INDIA                          (0%, 5%]             0%                -0.0230614   -0.1261088    0.0799861
0-3 months     MAL-ED          INDIA                          >5%                  0%                -0.0267644   -0.1411405    0.0876118
0-3 months     MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          NEPAL                          (0%, 5%]             0%                 0.0262223   -0.1088369    0.1612815
0-3 months     MAL-ED          NEPAL                          >5%                  0%                 0.0732510   -0.0650738    0.2115759
0-3 months     MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          PERU                           (0%, 5%]             0%                 0.0147002   -0.0850997    0.1145001
0-3 months     MAL-ED          PERU                           >5%                  0%                 0.0354857   -0.0616636    0.1326351
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0193078   -0.1462461    0.1848616
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0257971   -0.1437921    0.1953863
0-3 months     NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0048700   -0.0594691    0.0692091
0-3 months     NIH-Birth       BANGLADESH                     >5%                  0%                 0.0147223   -0.0516463    0.0810909
0-3 months     NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0138835   -0.0522133    0.0244464
0-3 months     NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0071815   -0.0500621    0.0356991
0-3 months     PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0158691   -0.0697079    0.1014461
0-3 months     PROVIDE         BANGLADESH                     >5%                  0%                 0.0399541   -0.0478260    0.1277342
3-6 months     CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     CONTENT         PERU                           (0%, 5%]             0%                -0.0252077   -0.1071460    0.0567306
3-6 months     CONTENT         PERU                           >5%                  0%                -0.0103355   -0.0975185    0.0768476
3-6 months     JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0380829   -0.0734415   -0.0027243
3-6 months     JiVitA-4        BANGLADESH                     >5%                  0%                -0.0321231   -0.0748324    0.0105862
3-6 months     MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0435595   -0.1272746    0.0401555
3-6 months     MAL-ED          BANGLADESH                     >5%                  0%                -0.0474458   -0.1339897    0.0390981
3-6 months     MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0257832   -0.1161745    0.0646080
3-6 months     MAL-ED          NEPAL                          >5%                  0%                -0.0382316   -0.1293386    0.0528754
3-6 months     MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          PERU                           (0%, 5%]             0%                 0.0341543   -0.0475881    0.1158968
3-6 months     MAL-ED          PERU                           >5%                  0%                 0.0470127   -0.0344183    0.1284436
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0342729   -0.0694360    0.1379819
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0724665   -0.0366211    0.1815541
3-6 months     NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0117858   -0.0609855    0.0845570
3-6 months     NIH-Birth       BANGLADESH                     >5%                  0%                -0.0004016   -0.0750244    0.0742212
3-6 months     NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0079197   -0.0389734    0.0231341
3-6 months     NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0071288   -0.0290317    0.0432894
3-6 months     PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0366226   -0.0196427    0.0928879
3-6 months     PROVIDE         BANGLADESH                     >5%                  0%                 0.0574396   -0.0008618    0.1157409
6-9 months     CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     CONTENT         PERU                           (0%, 5%]             0%                 0.0458769   -0.0467856    0.1385395
6-9 months     CONTENT         PERU                           >5%                  0%                 0.0447382   -0.0505545    0.1400309
6-9 months     Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                 0.0221530   -0.0449455    0.0892515
6-9 months     Guatemala BSC   GUATEMALA                      >5%                  0%                 0.0441399   -0.0207786    0.1090585
6-9 months     JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0029706   -0.0502644    0.0443232
6-9 months     JiVitA-4        BANGLADESH                     >5%                  0%                -0.0101224   -0.0596189    0.0393741
6-9 months     MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0268730   -0.0905988    0.1443448
6-9 months     MAL-ED          BANGLADESH                     >5%                  0%                 0.0450459   -0.0736329    0.1637247
6-9 months     MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0125087   -0.0544628    0.0294454
6-9 months     MAL-ED          NEPAL                          >5%                  0%                -0.0380811   -0.0836827    0.0075205
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0868722   -0.0073852    0.1811296
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0027063   -0.1058337    0.1112462
6-9 months     NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0217489   -0.1087542    0.0652564
6-9 months     NIH-Birth       BANGLADESH                     >5%                  0%                -0.0203468   -0.1091637    0.0684700
6-9 months     NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0360020   -0.0644935   -0.0075106
6-9 months     NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0499144   -0.0807118   -0.0191170
6-9 months     PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0357595   -0.0119215    0.0834405
6-9 months     PROVIDE         BANGLADESH                     >5%                  0%                 0.0422214   -0.0067585    0.0912013
6-9 months     SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0220261   -0.0870549    0.0430027
6-9 months     SAS-FoodSuppl   INDIA                          >5%                  0%                 0.0090654   -0.0344509    0.0525816
9-12 months    CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    CONTENT         PERU                           (0%, 5%]             0%                 0.0772705    0.0043662    0.1501748
9-12 months    CONTENT         PERU                           >5%                  0%                 0.0658476   -0.0124123    0.1441075
9-12 months    Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                 0.0585701   -0.0096239    0.1267641
9-12 months    Guatemala BSC   GUATEMALA                      >5%                  0%                 0.0561635   -0.0057615    0.1180885
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                -0.0261335   -0.0712310    0.0189640
9-12 months    iLiNS-Zinc      BURKINA FASO                   >5%                  0%                -0.0357492   -0.0800245    0.0085261
9-12 months    JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0056999   -0.0249378    0.0135379
9-12 months    JiVitA-4        BANGLADESH                     >5%                  0%                -0.0058860   -0.0277497    0.0159777
9-12 months    MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0720959   -0.1338105   -0.0103813
9-12 months    MAL-ED          BANGLADESH                     >5%                  0%                -0.0735839   -0.1370696   -0.0100982
9-12 months    MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0288847   -0.0671204    0.0093511
9-12 months    MAL-ED          NEPAL                          >5%                  0%                -0.0420046   -0.0870302    0.0030210
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0000236   -0.1286208    0.1286680
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0351513   -0.1684951    0.0981926
9-12 months    NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0090687   -0.0596633    0.0778006
9-12 months    NIH-Birth       BANGLADESH                     >5%                  0%                -0.0104402   -0.0831559    0.0622755
9-12 months    NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0252151   -0.0518062    0.0013759
9-12 months    NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0193582   -0.0490604    0.0103439
9-12 months    PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0051334   -0.0306399    0.0409067
9-12 months    PROVIDE         BANGLADESH                     >5%                  0%                -0.0030271   -0.0416437    0.0355895
9-12 months    SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.0167090   -0.0498688    0.0832869
9-12 months    SAS-FoodSuppl   INDIA                          >5%                  0%                 0.0035877   -0.0520839    0.0592592
12-15 months   CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   CONTENT         PERU                           (0%, 5%]             0%                 0.0199126   -0.0740660    0.1138911
12-15 months   CONTENT         PERU                           >5%                  0%                -0.0194113   -0.1162702    0.0774475
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                 0.0289518   -0.0118648    0.0697685
12-15 months   iLiNS-Zinc      BURKINA FASO                   >5%                  0%                 0.0188904   -0.0248467    0.0626274
12-15 months   JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0052699   -0.0252743    0.0147344
12-15 months   JiVitA-4        BANGLADESH                     >5%                  0%                -0.0042616   -0.0275297    0.0190065
12-15 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0134870   -0.1710748    0.1980488
12-15 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.0023907   -0.1876595    0.1828781
12-15 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0497581   -0.1224134    0.0228971
12-15 months   MAL-ED          NEPAL                          >5%                  0%                -0.0521467   -0.1289983    0.0247048
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.1042912   -0.2100342    0.0014518
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0845195   -0.1970910    0.0280519
12-15 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0579772   -0.1288509    0.0128965
12-15 months   NIH-Birth       BANGLADESH                     >5%                  0%                -0.0545364   -0.1274759    0.0184031
12-15 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0155389   -0.0136847    0.0447624
12-15 months   NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0137990   -0.0167545    0.0443525
12-15 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0521425    0.0095435    0.0947416
12-15 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.0626516    0.0168350    0.1084681
12-15 months   SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0669609   -0.1214063   -0.0125155
12-15 months   SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0029327   -0.0422521    0.0363866
15-18 months   CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   CONTENT         PERU                           (0%, 5%]             0%                 0.0741486   -0.0379192    0.1862165
15-18 months   CONTENT         PERU                           >5%                  0%                 0.0671337   -0.0457397    0.1800070
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                -0.0051768   -0.0315580    0.0212043
15-18 months   iLiNS-Zinc      BURKINA FASO                   >5%                  0%                -0.0252345   -0.0598921    0.0094230
15-18 months   JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0284331    0.0042802    0.0525859
15-18 months   JiVitA-4        BANGLADESH                     >5%                  0%                 0.0186745   -0.0085498    0.0458988
15-18 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0236051   -0.1081973    0.1554074
15-18 months   MAL-ED          BANGLADESH                     >5%                  0%                 0.0489726   -0.0839887    0.1819338
15-18 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0122430   -0.0925420    0.0680560
15-18 months   MAL-ED          NEPAL                          >5%                  0%                -0.0163688   -0.0985758    0.0658381
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0176555   -0.1130839    0.1483949
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0004370   -0.1377136    0.1385875
15-18 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0319604   -0.0260065    0.0899273
15-18 months   NIH-Birth       BANGLADESH                     >5%                  0%                 0.0258371   -0.0338660    0.0855402
15-18 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0194101   -0.0489772    0.0101569
15-18 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0306847   -0.0632575    0.0018882
15-18 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0618775    0.0158205    0.1079345
15-18 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.0654664    0.0173615    0.1135713
15-18 months   SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0208852   -0.0761431    0.0343726
15-18 months   SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0147233   -0.0562146    0.0267680
18-21 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0529803   -0.0350498    0.1410105
18-21 months   MAL-ED          BANGLADESH                     >5%                  0%                 0.0793026   -0.0119256    0.1705309
18-21 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          NEPAL                          (0%, 5%]             0%                 0.1054544   -0.0363048    0.2472135
18-21 months   MAL-ED          NEPAL                          >5%                  0%                 0.1333099   -0.0100705    0.2766903
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0236336   -0.1230521    0.0757848
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0624524   -0.1714403    0.0465356
18-21 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0710513    0.0424768    0.0996259
18-21 months   NIH-Birth       BANGLADESH                     >5%                  0%                 0.1029116    0.0687316    0.1370915
18-21 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0043441   -0.0241804    0.0328686
18-21 months   NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0138029   -0.0185405    0.0461463
18-21 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0151781   -0.0243349    0.0546910
18-21 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.0097485   -0.0323211    0.0518181
21-24 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0107803   -0.0230384    0.0445991
21-24 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.0075843   -0.0450616    0.0298930
21-24 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0719026   -0.1414488   -0.0023565
21-24 months   MAL-ED          NEPAL                          >5%                  0%                -0.0851153   -0.1577089   -0.0125217
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0131544   -0.0687708    0.0950797
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0248764   -0.0774798    0.1272326
21-24 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0671278   -0.1226274   -0.0116282
21-24 months   NIH-Birth       BANGLADESH                     >5%                  0%                -0.0575627   -0.1150707   -0.0000546
21-24 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0295148   -0.0608072    0.0017775
21-24 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0604580   -0.0954042   -0.0255118
21-24 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0193724   -0.0129202    0.0516650
21-24 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.0087154   -0.0269940    0.0444248


### Parameter: PAR


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-4        BANGLADESH                     0%                   NA                 0.0528090   -0.0109181    0.1165362
0-3 months     MAL-ED          BANGLADESH                     0%                   NA                -0.0694752   -0.1626587    0.0237083
0-3 months     MAL-ED          INDIA                          0%                   NA                -0.0232459   -0.1232707    0.0767789
0-3 months     MAL-ED          NEPAL                          0%                   NA                 0.0404513   -0.0850638    0.1659664
0-3 months     MAL-ED          PERU                           0%                   NA                 0.0258984   -0.0655606    0.1173574
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0199991   -0.1373420    0.1773401
0-3 months     NIH-Birth       BANGLADESH                     0%                   NA                 0.0080378   -0.0515349    0.0676106
0-3 months     NIH-Crypto      BANGLADESH                     0%                   NA                -0.0094026   -0.0390577    0.0202526
0-3 months     PROVIDE         BANGLADESH                     0%                   NA                 0.0226492   -0.0595394    0.1048377
3-6 months     CONTENT         PERU                           0%                   NA                -0.0199142   -0.0983818    0.0585534
3-6 months     JiVitA-4        BANGLADESH                     0%                   NA                -0.0367165   -0.0709557   -0.0024772
3-6 months     MAL-ED          BANGLADESH                     0%                   NA                -0.0439223   -0.1247842    0.0369397
3-6 months     MAL-ED          NEPAL                          0%                   NA                -0.0285654   -0.1121529    0.0550222
3-6 months     MAL-ED          PERU                           0%                   NA                 0.0408514   -0.0365652    0.1182680
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0425707   -0.0560827    0.1412241
3-6 months     NIH-Birth       BANGLADESH                     0%                   NA                 0.0072212   -0.0621314    0.0765738
3-6 months     NIH-Crypto      BANGLADESH                     0%                   NA                -0.0022628   -0.0270172    0.0224916
3-6 months     PROVIDE         BANGLADESH                     0%                   NA                 0.0422300   -0.0118533    0.0963133
6-9 months     CONTENT         PERU                           0%                   NA                 0.0442341   -0.0447064    0.1331746
6-9 months     Guatemala BSC   GUATEMALA                      0%                   NA                 0.0364273   -0.0243804    0.0972349
6-9 months     JiVitA-4        BANGLADESH                     0%                   NA                -0.0036134   -0.0494921    0.0422653
6-9 months     MAL-ED          BANGLADESH                     0%                   NA                 0.0330491   -0.0808344    0.1469327
6-9 months     MAL-ED          NEPAL                          0%                   NA                -0.0204173   -0.0588770    0.0180425
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0636197   -0.0282073    0.1554467
6-9 months     NIH-Birth       BANGLADESH                     0%                   NA                -0.0208801   -0.1052310    0.0634709
6-9 months     NIH-Crypto      BANGLADESH                     0%                   NA                -0.0329707   -0.0549375   -0.0110038
6-9 months     PROVIDE         BANGLADESH                     0%                   NA                 0.0371356   -0.0084401    0.0827113
6-9 months     SAS-FoodSuppl   INDIA                          0%                   NA                 0.0039888   -0.0316712    0.0396488
9-12 months    CONTENT         PERU                           0%                   NA                 0.0715274    0.0014381    0.1416167
9-12 months    Guatemala BSC   GUATEMALA                      0%                   NA                 0.0543689   -0.0033195    0.1120574
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%                   NA                -0.0262263   -0.0638382    0.0113855
9-12 months    JiVitA-4        BANGLADESH                     0%                   NA                -0.0055161   -0.0239703    0.0129380
9-12 months    MAL-ED          BANGLADESH                     0%                   NA                -0.0707355   -0.1299498   -0.0115211
9-12 months    MAL-ED          NEPAL                          0%                   NA                -0.0317826   -0.0672943    0.0037292
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0086136   -0.1335915    0.1163642
9-12 months    NIH-Birth       BANGLADESH                     0%                   NA                 0.0022879   -0.0645889    0.0691647
9-12 months    NIH-Crypto      BANGLADESH                     0%                   NA                -0.0188379   -0.0392176    0.0015418
9-12 months    PROVIDE         BANGLADESH                     0%                   NA                 0.0025280   -0.0319535    0.0370095
9-12 months    SAS-FoodSuppl   INDIA                          0%                   NA                 0.0045148   -0.0408856    0.0499151
12-15 months   CONTENT         PERU                           0%                   NA                 0.0071606   -0.0835866    0.0979078
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                 0.0228430   -0.0133917    0.0590778
12-15 months   JiVitA-4        BANGLADESH                     0%                   NA                -0.0049749   -0.0242087    0.0142588
12-15 months   MAL-ED          BANGLADESH                     0%                   NA                 0.0072635   -0.1717170    0.1862440
12-15 months   MAL-ED          NEPAL                          0%                   NA                -0.0479617   -0.1161893    0.0202659
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0966232   -0.1985227    0.0052763
12-15 months   NIH-Birth       BANGLADESH                     0%                   NA                -0.0557034   -0.1244250    0.0130183
12-15 months   NIH-Crypto      BANGLADESH                     0%                   NA                 0.0120951   -0.0102340    0.0344241
12-15 months   PROVIDE         BANGLADESH                     0%                   NA                 0.0546926    0.0137636    0.0956216
12-15 months   SAS-FoodSuppl   INDIA                          0%                   NA                -0.0098748   -0.0415008    0.0217512
15-18 months   CONTENT         PERU                           0%                   NA                 0.0699601   -0.0381269    0.1780471
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                -0.0117932   -0.0371823    0.0135958
15-18 months   JiVitA-4        BANGLADESH                     0%                   NA                 0.0265072    0.0031766    0.0498378
15-18 months   MAL-ED          BANGLADESH                     0%                   NA                 0.0323900   -0.0952156    0.1599956
15-18 months   MAL-ED          NEPAL                          0%                   NA                -0.0129771   -0.0881704    0.0622161
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0128693   -0.1138503    0.1395890
15-18 months   NIH-Birth       BANGLADESH                     0%                   NA                 0.0294574   -0.0259778    0.0848926
15-18 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0183628   -0.0409342    0.0042086
15-18 months   PROVIDE         BANGLADESH                     0%                   NA                 0.0620732    0.0179176    0.1062288
15-18 months   SAS-FoodSuppl   INDIA                          0%                   NA                -0.0125814   -0.0454599    0.0202972
18-21 months   MAL-ED          BANGLADESH                     0%                   NA                 0.0607792   -0.0241435    0.1457020
18-21 months   MAL-ED          NEPAL                          0%                   NA                 0.1092058   -0.0247073    0.2431188
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0326566   -0.1283348    0.0630216
18-21 months   NIH-Birth       BANGLADESH                     0%                   NA                 0.0810057    0.0554660    0.1065455
18-21 months   NIH-Crypto      BANGLADESH                     0%                   NA                 0.0056671   -0.0155348    0.0268691
18-21 months   PROVIDE         BANGLADESH                     0%                   NA                 0.0133091   -0.0244502    0.0510684
21-24 months   MAL-ED          BANGLADESH                     0%                   NA                 0.0039027   -0.0268363    0.0346418
21-24 months   MAL-ED          NEPAL                          0%                   NA                -0.0728420   -0.1372938   -0.0083902
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0156164   -0.0632887    0.0945216
21-24 months   NIH-Birth       BANGLADESH                     0%                   NA                -0.0630763   -0.1159748   -0.0101777
21-24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0291151   -0.0514211   -0.0068091
21-24 months   PROVIDE         BANGLADESH                     0%                   NA                 0.0157788   -0.0148040    0.0463617
