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




# Results Detail

## Results Plots
![](/tmp/716781bb-f5a2-4aef-94c5-f963ea4736cf/a68d73d0-77b3-4139-b7ac-08dee02feee3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/716781bb-f5a2-4aef-94c5-f963ea4736cf/a68d73d0-77b3-4139-b7ac-08dee02feee3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/716781bb-f5a2-4aef-94c5-f963ea4736cf/a68d73d0-77b3-4139-b7ac-08dee02feee3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     JiVitA-4        BANGLADESH                     0%                   NA                0.8367781    0.7736165   0.8999397
0-3 months     JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.8904559    0.8792419   0.9016698
0-3 months     JiVitA-4        BANGLADESH                     >5%                  NA                0.8908098    0.8647714   0.9168483
0-3 months     MAL-ED          BANGLADESH                     0%                   NA                0.9482045    0.8548350   1.0415740
0-3 months     MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.8826296    0.8526112   0.9126480
0-3 months     MAL-ED          BANGLADESH                     >5%                  NA                0.8666716    0.8286540   0.9046893
0-3 months     MAL-ED          INDIA                          0%                   NA                0.7826866    0.6826237   0.8827494
0-3 months     MAL-ED          INDIA                          (0%, 5%]             NA                0.7596252    0.7350040   0.7842464
0-3 months     MAL-ED          INDIA                          >5%                  NA                0.7559222    0.7005207   0.8113237
0-3 months     MAL-ED          NEPAL                          0%                   NA                0.9148170    0.7668657   1.0627682
0-3 months     MAL-ED          NEPAL                          (0%, 5%]             NA                0.9425213    0.9086084   0.9764342
0-3 months     MAL-ED          NEPAL                          >5%                  NA                0.9893791    0.9436705   1.0350877
0-3 months     MAL-ED          PERU                           0%                   NA                0.9753953    0.8853751   1.0654154
0-3 months     MAL-ED          PERU                           (0%, 5%]             NA                0.9584700    0.9168782   1.0000618
0-3 months     MAL-ED          PERU                           >5%                  NA                0.9855538    0.9518693   1.0192382
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8970233    0.6924728   1.1015739
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8832429    0.8462620   0.9202239
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8946087    0.8421862   0.9470312
0-3 months     NIH-Birth       BANGLADESH                     0%                   NA                0.8091726    0.7463572   0.8719880
0-3 months     NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.8124977    0.7901517   0.8348436
0-3 months     NIH-Birth       BANGLADESH                     >5%                  NA                0.8267483    0.7992683   0.8542283
0-3 months     NIH-Crypto      BANGLADESH                     0%                   NA                0.9009987    0.8669696   0.9350279
0-3 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.8783482    0.8579998   0.8986966
0-3 months     NIH-Crypto      BANGLADESH                     >5%                  NA                0.8883917    0.8611242   0.9156592
0-3 months     PROVIDE         BANGLADESH                     0%                   NA                0.9092400    0.8184718   1.0000081
0-3 months     PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.8953689    0.8772774   0.9134604
0-3 months     PROVIDE         BANGLADESH                     >5%                  NA                0.9193855    0.8929480   0.9458229
3-6 months     CONTENT         PERU                           0%                   NA                0.6082765    0.5304823   0.6860707
3-6 months     CONTENT         PERU                           (0%, 5%]             NA                0.5830688    0.5573404   0.6087971
3-6 months     CONTENT         PERU                           >5%                  NA                0.5979411    0.5585844   0.6372978
3-6 months     JiVitA-4        BANGLADESH                     0%                   NA                0.4709802    0.4339660   0.5079943
3-6 months     JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.4378872    0.4284908   0.4472835
3-6 months     JiVitA-4        BANGLADESH                     >5%                  NA                0.4434304    0.4149988   0.4718620
3-6 months     MAL-ED          BANGLADESH                     0%                   NA                0.5185723    0.4373284   0.5998162
3-6 months     MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.4750128    0.4548227   0.4952029
3-6 months     MAL-ED          BANGLADESH                     >5%                  NA                0.4711266    0.4413059   0.5009473
3-6 months     MAL-ED          NEPAL                          0%                   NA                0.5550514    0.4493211   0.6607817
3-6 months     MAL-ED          NEPAL                          (0%, 5%]             NA                0.5256056    0.4977823   0.5534289
3-6 months     MAL-ED          NEPAL                          >5%                  NA                0.5127535    0.4814972   0.5440099
3-6 months     MAL-ED          PERU                           0%                   NA                0.4573821    0.3803718   0.5343923
3-6 months     MAL-ED          PERU                           (0%, 5%]             NA                0.4915364    0.4641275   0.5189453
3-6 months     MAL-ED          PERU                           >5%                  NA                0.5043947    0.4779293   0.5308602
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.4145590    0.3150654   0.5140527
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.4488320    0.4195651   0.4780988
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.4870255    0.4422917   0.5317594
3-6 months     NIH-Birth       BANGLADESH                     0%                   NA                0.4717061    0.3863502   0.5570620
3-6 months     NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.4648422    0.4422874   0.4873969
3-6 months     NIH-Birth       BANGLADESH                     >5%                  NA                0.4497647    0.4208589   0.4786705
3-6 months     NIH-Crypto      BANGLADESH                     0%                   NA                0.5104401    0.4798137   0.5410664
3-6 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.4910471    0.4766948   0.5053995
3-6 months     NIH-Crypto      BANGLADESH                     >5%                  NA                0.5102177    0.4851385   0.5352968
3-6 months     PROVIDE         BANGLADESH                     0%                   NA                0.4546603    0.4028479   0.5064727
3-6 months     PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.4839292    0.4675416   0.5003168
3-6 months     PROVIDE         BANGLADESH                     >5%                  NA                0.5043785    0.4820184   0.5267385
6-9 months     CONTENT         PERU                           0%                   NA                0.2759377    0.1866140   0.3652614
6-9 months     CONTENT         PERU                           (0%, 5%]             NA                0.3218146    0.2971645   0.3464647
6-9 months     CONTENT         PERU                           >5%                  NA                0.3206759    0.2874798   0.3538720
6-9 months     Guatemala BSC   GUATEMALA                      0%                   NA                0.2094165    0.1486658   0.2701672
6-9 months     Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                0.2315695    0.2030816   0.2600575
6-9 months     Guatemala BSC   GUATEMALA                      >5%                  NA                0.2535564    0.2306703   0.2764425
6-9 months     JiVitA-4        BANGLADESH                     0%                   NA                0.2479684    0.1992053   0.2967315
6-9 months     JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.2402014    0.2347565   0.2456464
6-9 months     JiVitA-4        BANGLADESH                     >5%                  NA                0.2348815    0.2198043   0.2499588
6-9 months     MAL-ED          BANGLADESH                     0%                   NA                0.2098061    0.0936993   0.3259128
6-9 months     MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.2366790    0.2188227   0.2545353
6-9 months     MAL-ED          BANGLADESH                     >5%                  NA                0.2548520    0.2302781   0.2794258
6-9 months     MAL-ED          NEPAL                          0%                   NA                0.2781648    0.2321664   0.3241633
6-9 months     MAL-ED          NEPAL                          (0%, 5%]             NA                0.2775796    0.2589021   0.2962571
6-9 months     MAL-ED          NEPAL                          >5%                  NA                0.2516105    0.2254808   0.2777403
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1747407    0.0838264   0.2656550
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.2616129    0.2367324   0.2864934
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1774470    0.1181553   0.2367387
6-9 months     NIH-Birth       BANGLADESH                     0%                   NA                0.2571397    0.1717517   0.3425276
6-9 months     NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.2353907    0.2186929   0.2520885
6-9 months     NIH-Birth       BANGLADESH                     >5%                  NA                0.2367928    0.2123525   0.2612331
6-9 months     NIH-Crypto      BANGLADESH                     0%                   NA                0.2978302    0.2696326   0.3260278
6-9 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.2644494    0.2493698   0.2795290
6-9 months     NIH-Crypto      BANGLADESH                     >5%                  NA                0.2533554    0.2352543   0.2714564
6-9 months     PROVIDE         BANGLADESH                     0%                   NA                0.2127788    0.1581557   0.2674018
6-9 months     PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.2472203    0.2317933   0.2626473
6-9 months     PROVIDE         BANGLADESH                     >5%                  NA                0.2521859    0.2330912   0.2712807
6-9 months     SAS-FoodSuppl   INDIA                          0%                   NA                0.1985056    0.1596144   0.2373969
6-9 months     SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.1716111    0.1196498   0.2235724
6-9 months     SAS-FoodSuppl   INDIA                          >5%                  NA                0.2034006    0.1843656   0.2224355
9-12 months    CONTENT         PERU                           0%                   NA                0.1529913    0.0832865   0.2226962
9-12 months    CONTENT         PERU                           (0%, 5%]             NA                0.2302618    0.2089013   0.2516224
9-12 months    CONTENT         PERU                           >5%                  NA                0.2188389    0.1832601   0.2544178
9-12 months    Guatemala BSC   GUATEMALA                      0%                   NA                0.1530875    0.0968166   0.2093584
9-12 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                0.2116576    0.1731347   0.2501804
9-12 months    Guatemala BSC   GUATEMALA                      >5%                  NA                0.2092510    0.1833996   0.2351024
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%                   NA                0.2704182    0.2222587   0.3185776
9-12 months    iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                0.2428651    0.2276081   0.2581220
9-12 months    iLiNS-Zinc      BURKINA FASO                   >5%                  NA                0.2369066    0.2200965   0.2537168
9-12 months    JiVitA-4        BANGLADESH                     0%                   NA                0.1553079    0.1366521   0.1739637
9-12 months    JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.1545104    0.1499588   0.1590621
9-12 months    JiVitA-4        BANGLADESH                     >5%                  NA                0.1573412    0.1451620   0.1695203
9-12 months    MAL-ED          BANGLADESH                     0%                   NA                0.2437701    0.1845535   0.3029867
9-12 months    MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.1716742    0.1542935   0.1890549
9-12 months    MAL-ED          BANGLADESH                     >5%                  NA                0.1701861    0.1472988   0.1930735
9-12 months    MAL-ED          NEPAL                          0%                   NA                0.2185491    0.1792261   0.2578721
9-12 months    MAL-ED          NEPAL                          (0%, 5%]             NA                0.1892110    0.1722774   0.2061446
9-12 months    MAL-ED          NEPAL                          >5%                  NA                0.1759527    0.1467685   0.2051368
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1755024    0.0489702   0.3020346
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1755260    0.1523100   0.1987420
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1403511    0.0982775   0.1824248
9-12 months    NIH-Birth       BANGLADESH                     0%                   NA                0.1613334    0.0940561   0.2286107
9-12 months    NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.1704021    0.1563364   0.1844679
9-12 months    NIH-Birth       BANGLADESH                     >5%                  NA                0.1508932    0.1233008   0.1784857
9-12 months    NIH-Crypto      BANGLADESH                     0%                   NA                0.2171636    0.1920775   0.2422498
9-12 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.1906870    0.1762247   0.2051492
9-12 months    NIH-Crypto      BANGLADESH                     >5%                  NA                0.2015761    0.1821004   0.2210518
9-12 months    PROVIDE         BANGLADESH                     0%                   NA                0.1750036    0.1409474   0.2090598
9-12 months    PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.1801369    0.1691869   0.1910870
9-12 months    PROVIDE         BANGLADESH                     >5%                  NA                0.1719765    0.1537717   0.1901813
9-12 months    SAS-FoodSuppl   INDIA                          0%                   NA                0.1297500    0.0793385   0.1801615
9-12 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.1418041    0.0996495   0.1839587
9-12 months    SAS-FoodSuppl   INDIA                          >5%                  NA                0.1399271    0.1172015   0.1626526
12-15 months   CONTENT         PERU                           0%                   NA                0.1739165    0.0827927   0.2650402
12-15 months   CONTENT         PERU                           (0%, 5%]             NA                0.1938290    0.1708414   0.2168167
12-15 months   CONTENT         PERU                           >5%                  NA                0.1545051    0.1216706   0.1873397
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                0.1732285    0.1342611   0.2121959
12-15 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                0.1987888    0.1856152   0.2119623
12-15 months   iLiNS-Zinc      BURKINA FASO                   >5%                  NA                0.1879304    0.1630780   0.2127827
12-15 months   JiVitA-4        BANGLADESH                     0%                   NA                0.1343152    0.1148157   0.1538147
12-15 months   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.1299314    0.1255757   0.1342871
12-15 months   JiVitA-4        BANGLADESH                     >5%                  NA                0.1306615    0.1185329   0.1427900
12-15 months   MAL-ED          BANGLADESH                     0%                   NA                0.1280951   -0.0554597   0.3116499
12-15 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.1415821    0.1223288   0.1608355
12-15 months   MAL-ED          BANGLADESH                     >5%                  NA                0.1257044    0.1005616   0.1508473
12-15 months   MAL-ED          NEPAL                          0%                   NA                0.1970900    0.1130309   0.2811490
12-15 months   MAL-ED          NEPAL                          (0%, 5%]             NA                0.1527302    0.1323965   0.1730639
12-15 months   MAL-ED          NEPAL                          >5%                  NA                0.1395988    0.1069147   0.1722829
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.2560672    0.1544730   0.3576613
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1517760    0.1224466   0.1811054
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1715477    0.1230609   0.2200344
12-15 months   NIH-Birth       BANGLADESH                     0%                   NA                0.1862096    0.1167904   0.2556289
12-15 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.1282324    0.1139477   0.1425171
12-15 months   NIH-Birth       BANGLADESH                     >5%                  NA                0.1316733    0.1092871   0.1540594
12-15 months   NIH-Crypto      BANGLADESH                     0%                   NA                0.1475939    0.1234355   0.1717524
12-15 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.1667882    0.1515235   0.1820530
12-15 months   NIH-Crypto      BANGLADESH                     >5%                  NA                0.1699187    0.1518922   0.1879453
12-15 months   PROVIDE         BANGLADESH                     0%                   NA                0.1253398    0.0851013   0.1655782
12-15 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.1774823    0.1634984   0.1914662
12-15 months   PROVIDE         BANGLADESH                     >5%                  NA                0.1879913    0.1660818   0.2099008
12-15 months   SAS-FoodSuppl   INDIA                          0%                   NA                0.1861691    0.1522874   0.2200508
12-15 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.1290083    0.0836167   0.1744000
12-15 months   SAS-FoodSuppl   INDIA                          >5%                  NA                0.1813914    0.1614916   0.2012912
15-18 months   CONTENT         PERU                           0%                   NA                0.1012072   -0.0082394   0.2106537
15-18 months   CONTENT         PERU                           (0%, 5%]             NA                0.1753558    0.1512590   0.1994526
15-18 months   CONTENT         PERU                           >5%                  NA                0.1683409    0.1407393   0.1959424
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                0.1927553    0.1672351   0.2182756
15-18 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                0.1801652    0.1676014   0.1927290
15-18 months   iLiNS-Zinc      BURKINA FASO                   >5%                  NA                0.1607848    0.1399435   0.1816260
15-18 months   JiVitA-4        BANGLADESH                     0%                   NA                0.1350377    0.1110879   0.1589874
15-18 months   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.1612292    0.1561314   0.1663270
15-18 months   JiVitA-4        BANGLADESH                     >5%                  NA                0.1532998    0.1397361   0.1668635
15-18 months   MAL-ED          BANGLADESH                     0%                   NA                0.1103982   -0.0199936   0.2407900
15-18 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.1340033    0.1147718   0.1532347
15-18 months   MAL-ED          BANGLADESH                     >5%                  NA                0.1593708    0.1333576   0.1853840
15-18 months   MAL-ED          NEPAL                          0%                   NA                0.1809509    0.1074094   0.2544924
15-18 months   MAL-ED          NEPAL                          (0%, 5%]             NA                0.1778637    0.1569110   0.1988165
15-18 months   MAL-ED          NEPAL                          >5%                  NA                0.1645941    0.1370302   0.1921580
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1299329    0.0017684   0.2580974
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1475884    0.1217691   0.1734076
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1303698    0.0788003   0.1819394
15-18 months   NIH-Birth       BANGLADESH                     0%                   NA                0.1235269    0.0686434   0.1784104
15-18 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.1554873    0.1368336   0.1741409
15-18 months   NIH-Birth       BANGLADESH                     >5%                  NA                0.1493640    0.1258636   0.1728643
15-18 months   NIH-Crypto      BANGLADESH                     0%                   NA                0.1814635    0.1513280   0.2115989
15-18 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.1607859    0.1461170   0.1754547
15-18 months   NIH-Crypto      BANGLADESH                     >5%                  NA                0.1446723    0.1237635   0.1655812
15-18 months   PROVIDE         BANGLADESH                     0%                   NA                0.0942782    0.0506144   0.1379421
15-18 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.1561557    0.1415025   0.1708089
15-18 months   PROVIDE         BANGLADESH                     >5%                  NA                0.1597447    0.1395568   0.1799325
15-18 months   SAS-FoodSuppl   INDIA                          0%                   NA                0.1767781    0.1403753   0.2131810
15-18 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.1558908    0.1157750   0.1960067
15-18 months   SAS-FoodSuppl   INDIA                          >5%                  NA                0.1623828    0.1434178   0.1813479
18-21 months   MAL-ED          BANGLADESH                     0%                   NA                0.0819354   -0.0037817   0.1676526
18-21 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.1349158    0.1148689   0.1549626
18-21 months   MAL-ED          BANGLADESH                     >5%                  NA                0.1612380    0.1300105   0.1924656
18-21 months   MAL-ED          NEPAL                          0%                   NA                0.0422922   -0.1058970   0.1904814
18-21 months   MAL-ED          NEPAL                          (0%, 5%]             NA                0.1446024    0.1246350   0.1645698
18-21 months   MAL-ED          NEPAL                          >5%                  NA                0.1721635    0.1425375   0.2017895
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1790104    0.0838409   0.2741798
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1553768    0.1266226   0.1841309
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1165580    0.0634435   0.1696726
18-21 months   NIH-Birth       BANGLADESH                     0%                   NA                0.0914335    0.0711077   0.1117593
18-21 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.1624848    0.1424008   0.1825688
18-21 months   NIH-Birth       BANGLADESH                     >5%                  NA                0.1943450    0.1668654   0.2218247
18-21 months   NIH-Crypto      BANGLADESH                     0%                   NA                0.1322514    0.1059686   0.1585342
18-21 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.1410222    0.1260703   0.1559741
18-21 months   NIH-Crypto      BANGLADESH                     >5%                  NA                0.1529723    0.1318773   0.1740673
18-21 months   PROVIDE         BANGLADESH                     0%                   NA                0.1191791    0.0822611   0.1560971
18-21 months   PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.1343572    0.1202741   0.1484402
18-21 months   PROVIDE         BANGLADESH                     >5%                  NA                0.1289276    0.1087556   0.1490996
21-24 months   MAL-ED          BANGLADESH                     0%                   NA                0.1482128    0.1206417   0.1757840
21-24 months   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.1589932    0.1394091   0.1785773
21-24 months   MAL-ED          BANGLADESH                     >5%                  NA                0.1406285    0.1152439   0.1660131
21-24 months   MAL-ED          NEPAL                          0%                   NA                0.1986776    0.1425588   0.2547965
21-24 months   MAL-ED          NEPAL                          (0%, 5%]             NA                0.1772504    0.1500114   0.2044894
21-24 months   MAL-ED          NEPAL                          >5%                  NA                0.1541945    0.1163784   0.1920107
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.1257023    0.0495553   0.2018493
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1388567    0.1086344   0.1690790
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1505787    0.0821796   0.2189778
21-24 months   NIH-Birth       BANGLADESH                     0%                   NA                0.2050493    0.1530641   0.2570344
21-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.1379214    0.1184856   0.1573573
21-24 months   NIH-Birth       BANGLADESH                     >5%                  NA                0.1474866    0.1228956   0.1720776
21-24 months   NIH-Crypto      BANGLADESH                     0%                   NA                0.1934234    0.1648096   0.2220373
21-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.1751332    0.1566487   0.1936177
21-24 months   NIH-Crypto      BANGLADESH                     >5%                  NA                0.1554586    0.1286899   0.1822273
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
0-3 months     JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0536777   -0.0103045    0.1176600
0-3 months     JiVitA-4        BANGLADESH                     >5%                  0%                 0.0540317   -0.0134829    0.1215464
0-3 months     MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0655749   -0.1636512    0.0325015
0-3 months     MAL-ED          BANGLADESH                     >5%                  0%                -0.0815328   -0.1823455    0.0192799
0-3 months     MAL-ED          INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          INDIA                          (0%, 5%]             0%                -0.0230614   -0.1261088    0.0799861
0-3 months     MAL-ED          INDIA                          >5%                  0%                -0.0267644   -0.1411405    0.0876118
0-3 months     MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          NEPAL                          (0%, 5%]             0%                 0.0277043   -0.1240916    0.1795002
0-3 months     MAL-ED          NEPAL                          >5%                  0%                 0.0745621   -0.0803062    0.2294304
0-3 months     MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          PERU                           (0%, 5%]             0%                -0.0169253   -0.1160619    0.0822113
0-3 months     MAL-ED          PERU                           >5%                  0%                 0.0101585   -0.0858627    0.1061798
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0137804   -0.2217215    0.1941607
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0024146   -0.2136319    0.2088027
0-3 months     NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0033251   -0.0632349    0.0698851
0-3 months     NIH-Birth       BANGLADESH                     >5%                  0%                 0.0175757   -0.0508335    0.0859849
0-3 months     NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0226505   -0.0621092    0.0168081
0-3 months     NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0126071   -0.0560094    0.0307952
0-3 months     PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE         BANGLADESH                     (0%, 5%]             0%                -0.0138711   -0.1064841    0.0787420
0-3 months     PROVIDE         BANGLADESH                     >5%                  0%                 0.0101455   -0.0843719    0.1046629
3-6 months     CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     CONTENT         PERU                           (0%, 5%]             0%                -0.0252077   -0.1071460    0.0567306
3-6 months     CONTENT         PERU                           >5%                  0%                -0.0103355   -0.0975185    0.0768476
3-6 months     JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0330930   -0.0715048    0.0053188
3-6 months     JiVitA-4        BANGLADESH                     >5%                  0%                -0.0275497   -0.0728955    0.0177960
3-6 months     MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0435595   -0.1272746    0.0401555
3-6 months     MAL-ED          BANGLADESH                     >5%                  0%                -0.0474458   -0.1339897    0.0390981
3-6 months     MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0294458   -0.1387193    0.0798276
3-6 months     MAL-ED          NEPAL                          >5%                  0%                -0.0422979   -0.1526431    0.0680473
3-6 months     MAL-ED          PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          PERU                           (0%, 5%]             0%                 0.0341543   -0.0475881    0.1158968
3-6 months     MAL-ED          PERU                           >5%                  0%                 0.0470127   -0.0344183    0.1284436
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0342729   -0.0694360    0.1379819
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0724665   -0.0366211    0.1815541
3-6 months     NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0068639   -0.0952618    0.0815340
3-6 months     NIH-Birth       BANGLADESH                     >5%                  0%                -0.0219414   -0.1121252    0.0682425
3-6 months     NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0193929   -0.0531627    0.0143769
3-6 months     NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0002224   -0.0397701    0.0393253
3-6 months     PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0292689   -0.0250390    0.0835767
3-6 months     PROVIDE         BANGLADESH                     >5%                  0%                 0.0497181   -0.0065412    0.1059775
6-9 months     CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     CONTENT         PERU                           (0%, 5%]             0%                 0.0458769   -0.0467856    0.1385395
6-9 months     CONTENT         PERU                           >5%                  0%                 0.0447382   -0.0505545    0.1400309
6-9 months     Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                 0.0221530   -0.0449455    0.0892515
6-9 months     Guatemala BSC   GUATEMALA                      >5%                  0%                 0.0441399   -0.0207786    0.1090585
6-9 months     JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0077670   -0.0566192    0.0410852
6-9 months     JiVitA-4        BANGLADESH                     >5%                  0%                -0.0130869   -0.0639283    0.0377546
6-9 months     MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0268730   -0.0905988    0.1443448
6-9 months     MAL-ED          BANGLADESH                     >5%                  0%                 0.0450459   -0.0736329    0.1637247
6-9 months     MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0005852   -0.0502330    0.0490626
6-9 months     MAL-ED          NEPAL                          >5%                  0%                -0.0265543   -0.0795308    0.0264222
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0868722   -0.0073852    0.1811296
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0027063   -0.1058337    0.1112462
6-9 months     NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0217489   -0.1087542    0.0652564
6-9 months     NIH-Birth       BANGLADESH                     >5%                  0%                -0.0203468   -0.1091637    0.0684700
6-9 months     NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0333808   -0.0654219   -0.0013398
6-9 months     NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0444748   -0.0780241   -0.0109255
6-9 months     PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0344415   -0.0223734    0.0912565
6-9 months     PROVIDE         BANGLADESH                     >5%                  0%                 0.0394072   -0.0185257    0.0973401
6-9 months     SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0268945   -0.0918169    0.0380278
6-9 months     SAS-FoodSuppl   INDIA                          >5%                  0%                 0.0048949   -0.0381347    0.0479246
9-12 months    CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    CONTENT         PERU                           (0%, 5%]             0%                 0.0772705    0.0043662    0.1501748
9-12 months    CONTENT         PERU                           >5%                  0%                 0.0658476   -0.0124123    0.1441075
9-12 months    Guatemala BSC   GUATEMALA                      0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                 0.0585701   -0.0096239    0.1267641
9-12 months    Guatemala BSC   GUATEMALA                      >5%                  0%                 0.0561635   -0.0057615    0.1180885
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                -0.0275531   -0.0752178    0.0201117
9-12 months    iLiNS-Zinc      BURKINA FASO                   >5%                  0%                -0.0335115   -0.0806874    0.0136643
9-12 months    JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0007975   -0.0198096    0.0182147
9-12 months    JiVitA-4        BANGLADESH                     >5%                  0%                 0.0020333   -0.0195363    0.0236029
9-12 months    MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          BANGLADESH                     (0%, 5%]             0%                -0.0720959   -0.1338105   -0.0103813
9-12 months    MAL-ED          BANGLADESH                     >5%                  0%                -0.0735839   -0.1370696   -0.0100982
9-12 months    MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0293382   -0.0721682    0.0134919
9-12 months    MAL-ED          NEPAL                          >5%                  0%                -0.0425964   -0.0915990    0.0064061
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0000236   -0.1286208    0.1286680
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0351513   -0.1684951    0.0981926
9-12 months    NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0090687   -0.0596633    0.0778006
9-12 months    NIH-Birth       BANGLADESH                     >5%                  0%                -0.0104402   -0.0831559    0.0622755
9-12 months    NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0264767   -0.0553056    0.0023523
9-12 months    NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0155875   -0.0473183    0.0161432
9-12 months    PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0051334   -0.0306399    0.0409067
9-12 months    PROVIDE         BANGLADESH                     >5%                  0%                -0.0030271   -0.0416437    0.0355895
9-12 months    SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                 0.0120540   -0.0533925    0.0775006
9-12 months    SAS-FoodSuppl   INDIA                          >5%                  0%                 0.0101771   -0.0447624    0.0651165
12-15 months   CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   CONTENT         PERU                           (0%, 5%]             0%                 0.0199126   -0.0740660    0.1138911
12-15 months   CONTENT         PERU                           >5%                  0%                -0.0194113   -0.1162702    0.0774475
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                 0.0255603   -0.0224066    0.0735271
12-15 months   iLiNS-Zinc      BURKINA FASO                   >5%                  0%                 0.0147018   -0.0313570    0.0607607
12-15 months   JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                -0.0043839   -0.0242690    0.0155012
12-15 months   JiVitA-4        BANGLADESH                     >5%                  0%                -0.0036538   -0.0266400    0.0193324
12-15 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0134870   -0.1710748    0.1980488
12-15 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.0023907   -0.1876595    0.1828781
12-15 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0443598   -0.1309319    0.0422123
12-15 months   MAL-ED          NEPAL                          >5%                  0%                -0.0574912   -0.1478412    0.0328588
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.1042912   -0.2100342    0.0014518
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0845195   -0.1970910    0.0280519
12-15 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0579772   -0.1288509    0.0128965
12-15 months   NIH-Birth       BANGLADESH                     >5%                  0%                -0.0545364   -0.1274759    0.0184031
12-15 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0191943   -0.0093894    0.0477780
12-15 months   NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0223248   -0.0078318    0.0524814
12-15 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0521425    0.0095435    0.0947416
12-15 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.0626516    0.0168350    0.1084681
12-15 months   SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0571608   -0.1137664   -0.0005551
12-15 months   SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0047777   -0.0439789    0.0344235
15-18 months   CONTENT         PERU                           0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   CONTENT         PERU                           (0%, 5%]             0%                 0.0741486   -0.0379192    0.1862165
15-18 months   CONTENT         PERU                           >5%                  0%                 0.0671337   -0.0457397    0.1800070
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                -0.0125902   -0.0400200    0.0148397
15-18 months   iLiNS-Zinc      BURKINA FASO                   >5%                  0%                -0.0319706   -0.0670269    0.0030857
15-18 months   JiVitA-4        BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                 0.0261915    0.0017219    0.0506611
15-18 months   JiVitA-4        BANGLADESH                     >5%                  0%                 0.0182621   -0.0091699    0.0456941
15-18 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0236051   -0.1081973    0.1554074
15-18 months   MAL-ED          BANGLADESH                     >5%                  0%                 0.0489726   -0.0839887    0.1819338
15-18 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0030872   -0.0790797    0.0729054
15-18 months   MAL-ED          NEPAL                          >5%                  0%                -0.0163568   -0.0941842    0.0614706
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0176555   -0.1130839    0.1483949
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0004370   -0.1377136    0.1385875
15-18 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0319604   -0.0260065    0.0899273
15-18 months   NIH-Birth       BANGLADESH                     >5%                  0%                 0.0258371   -0.0338660    0.0855402
15-18 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0206776   -0.0542197    0.0128646
15-18 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0367911   -0.0734699   -0.0001124
15-18 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0618775    0.0158205    0.1079345
15-18 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.0654664    0.0173615    0.1135713
15-18 months   SAS-FoodSuppl   INDIA                          0%                   0%                 0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                -0.0208873   -0.0746630    0.0328885
15-18 months   SAS-FoodSuppl   INDIA                          >5%                  0%                -0.0143953   -0.0549761    0.0261855
18-21 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0529803   -0.0350498    0.1410105
18-21 months   MAL-ED          BANGLADESH                     >5%                  0%                 0.0793026   -0.0119256    0.1705309
18-21 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          NEPAL                          (0%, 5%]             0%                 0.1023102   -0.0473181    0.2519385
18-21 months   MAL-ED          NEPAL                          >5%                  0%                 0.1298713   -0.0212857    0.2810283
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                -0.0236336   -0.1230521    0.0757848
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                -0.0624524   -0.1714403    0.0465356
18-21 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                 0.0710513    0.0424768    0.0996259
18-21 months   NIH-Birth       BANGLADESH                     >5%                  0%                 0.1029116    0.0687316    0.1370915
18-21 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                 0.0087708   -0.0216893    0.0392309
18-21 months   NIH-Crypto      BANGLADESH                     >5%                  0%                 0.0207209   -0.0130852    0.0545270
18-21 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0151781   -0.0243349    0.0546910
18-21 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.0097485   -0.0323211    0.0518181
21-24 months   MAL-ED          BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          BANGLADESH                     (0%, 5%]             0%                 0.0107803   -0.0230384    0.0445991
21-24 months   MAL-ED          BANGLADESH                     >5%                  0%                -0.0075843   -0.0450616    0.0298930
21-24 months   MAL-ED          NEPAL                          0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          NEPAL                          (0%, 5%]             0%                -0.0214273   -0.0843708    0.0415163
21-24 months   MAL-ED          NEPAL                          >5%                  0%                -0.0444831   -0.1129752    0.0240090
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                 0.0131544   -0.0687708    0.0950797
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                 0.0248764   -0.0774798    0.1272326
21-24 months   NIH-Birth       BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                -0.0671278   -0.1226274   -0.0116282
21-24 months   NIH-Birth       BANGLADESH                     >5%                  0%                -0.0575627   -0.1150707   -0.0000546
21-24 months   NIH-Crypto      BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                -0.0182902   -0.0526295    0.0160490
21-24 months   NIH-Crypto      BANGLADESH                     >5%                  0%                -0.0379648   -0.0774630    0.0015333
21-24 months   PROVIDE         BANGLADESH                     0%                   0%                 0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE         BANGLADESH                     (0%, 5%]             0%                 0.0193724   -0.0129202    0.0516650
21-24 months   PROVIDE         BANGLADESH                     >5%                  0%                 0.0087154   -0.0269940    0.0444248


### Parameter: PAR


agecat         studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-4        BANGLADESH                     0%                   NA                 0.0527665   -0.0094495    0.1149825
0-3 months     MAL-ED          BANGLADESH                     0%                   NA                -0.0694752   -0.1626587    0.0237083
0-3 months     MAL-ED          INDIA                          0%                   NA                -0.0232459   -0.1232707    0.0767789
0-3 months     MAL-ED          NEPAL                          0%                   NA                 0.0421331   -0.1003046    0.1845708
0-3 months     MAL-ED          PERU                           0%                   NA                -0.0053237   -0.0957769    0.0851294
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0124220   -0.2124221    0.1875780
0-3 months     NIH-Birth       BANGLADESH                     0%                   NA                 0.0071774   -0.0547366    0.0690914
0-3 months     NIH-Crypto      BANGLADESH                     0%                   NA                -0.0164768   -0.0475575    0.0146039
0-3 months     PROVIDE         BANGLADESH                     0%                   NA                -0.0075928   -0.0968470    0.0816614
3-6 months     CONTENT         PERU                           0%                   NA                -0.0199142   -0.0983818    0.0585534
3-6 months     JiVitA-4        BANGLADESH                     0%                   NA                -0.0318146   -0.0691109    0.0054816
3-6 months     MAL-ED          BANGLADESH                     0%                   NA                -0.0439223   -0.1247842    0.0369397
3-6 months     MAL-ED          NEPAL                          0%                   NA                -0.0333351   -0.1361205    0.0694502
3-6 months     MAL-ED          PERU                           0%                   NA                 0.0408514   -0.0365652    0.1182680
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0425707   -0.0560827    0.1412241
3-6 months     NIH-Birth       BANGLADESH                     0%                   NA                -0.0123086   -0.0974741    0.0728569
3-6 months     NIH-Crypto      BANGLADESH                     0%                   NA                -0.0123857   -0.0400312    0.0152598
3-6 months     PROVIDE         BANGLADESH                     0%                   NA                 0.0344008   -0.0177236    0.0865253
6-9 months     CONTENT         PERU                           0%                   NA                 0.0442341   -0.0447064    0.1331746
6-9 months     Guatemala BSC   GUATEMALA                      0%                   NA                 0.0364273   -0.0243804    0.0972349
6-9 months     JiVitA-4        BANGLADESH                     0%                   NA                -0.0082119   -0.0556740    0.0392503
6-9 months     MAL-ED          BANGLADESH                     0%                   NA                 0.0330491   -0.0808344    0.1469327
6-9 months     MAL-ED          NEPAL                          0%                   NA                -0.0085915   -0.0549278    0.0377447
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0636197   -0.0282073    0.1554467
6-9 months     NIH-Birth       BANGLADESH                     0%                   NA                -0.0208801   -0.1052310    0.0634709
6-9 months     NIH-Crypto      BANGLADESH                     0%                   NA                -0.0303205   -0.0559940   -0.0046470
6-9 months     PROVIDE         BANGLADESH                     0%                   NA                 0.0363866   -0.0184370    0.0912101
6-9 months     SAS-FoodSuppl   INDIA                          0%                   NA                -0.0002870   -0.0356576    0.0350835
9-12 months    CONTENT         PERU                           0%                   NA                 0.0715274    0.0014381    0.1416167
9-12 months    Guatemala BSC   GUATEMALA                      0%                   NA                 0.0543689   -0.0033195    0.1120574
9-12 months    iLiNS-Zinc      BURKINA FASO                   0%                   NA                -0.0274513   -0.0677180    0.0128154
9-12 months    JiVitA-4        BANGLADESH                     0%                   NA                -0.0007628   -0.0190441    0.0175184
9-12 months    MAL-ED          BANGLADESH                     0%                   NA                -0.0707355   -0.1299498   -0.0115211
9-12 months    MAL-ED          NEPAL                          0%                   NA                -0.0325571   -0.0727375    0.0076233
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0086136   -0.1335915    0.1163642
9-12 months    NIH-Birth       BANGLADESH                     0%                   NA                 0.0022879   -0.0645889    0.0691647
9-12 months    NIH-Crypto      BANGLADESH                     0%                   NA                -0.0193187   -0.0424928    0.0038553
9-12 months    PROVIDE         BANGLADESH                     0%                   NA                 0.0025280   -0.0319535    0.0370095
9-12 months    SAS-FoodSuppl   INDIA                          0%                   NA                 0.0112972   -0.0336074    0.0562017
12-15 months   CONTENT         PERU                           0%                   NA                 0.0071606   -0.0835866    0.0979078
12-15 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                 0.0197427   -0.0217679    0.0612533
12-15 months   JiVitA-4        BANGLADESH                     0%                   NA                -0.0038275   -0.0229896    0.0153346
12-15 months   MAL-ED          BANGLADESH                     0%                   NA                 0.0072635   -0.1717170    0.1862440
12-15 months   MAL-ED          NEPAL                          0%                   NA                -0.0443961   -0.1266426    0.0378505
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0966232   -0.1985227    0.0052763
12-15 months   NIH-Birth       BANGLADESH                     0%                   NA                -0.0557034   -0.1244250    0.0130183
12-15 months   NIH-Crypto      BANGLADESH                     0%                   NA                 0.0164663   -0.0051811    0.0381138
12-15 months   PROVIDE         BANGLADESH                     0%                   NA                 0.0546926    0.0137636    0.0956216
12-15 months   SAS-FoodSuppl   INDIA                          0%                   NA                -0.0109601   -0.0424750    0.0205547
15-18 months   CONTENT         PERU                           0%                   NA                 0.0699601   -0.0381269    0.1780471
15-18 months   iLiNS-Zinc      BURKINA FASO                   0%                   NA                -0.0179307   -0.0443056    0.0084441
15-18 months   JiVitA-4        BANGLADESH                     0%                   NA                 0.0244572    0.0008102    0.0481042
15-18 months   MAL-ED          BANGLADESH                     0%                   NA                 0.0323900   -0.0952156    0.1599956
15-18 months   MAL-ED          NEPAL                          0%                   NA                -0.0074599   -0.0785335    0.0636138
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0128693   -0.1138503    0.1395890
15-18 months   NIH-Birth       BANGLADESH                     0%                   NA                 0.0294574   -0.0259778    0.0848926
15-18 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0202662   -0.0469537    0.0064213
15-18 months   PROVIDE         BANGLADESH                     0%                   NA                 0.0620732    0.0179176    0.1062288
15-18 months   SAS-FoodSuppl   INDIA                          0%                   NA                -0.0118936   -0.0441795    0.0203923
18-21 months   MAL-ED          BANGLADESH                     0%                   NA                 0.0607792   -0.0241435    0.1457020
18-21 months   MAL-ED          NEPAL                          0%                   NA                 0.1052075   -0.0364974    0.2469125
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0326566   -0.1283348    0.0630216
18-21 months   NIH-Birth       BANGLADESH                     0%                   NA                 0.0810057    0.0554660    0.1065455
18-21 months   NIH-Crypto      BANGLADESH                     0%                   NA                 0.0104095   -0.0124788    0.0332978
18-21 months   PROVIDE         BANGLADESH                     0%                   NA                 0.0133091   -0.0244502    0.0510684
21-24 months   MAL-ED          BANGLADESH                     0%                   NA                 0.0039027   -0.0268363    0.0346418
21-24 months   MAL-ED          NEPAL                          0%                   NA                -0.0296365   -0.0864752    0.0272023
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0156164   -0.0632887    0.0945216
21-24 months   NIH-Birth       BANGLADESH                     0%                   NA                -0.0630763   -0.1159748   -0.0101777
21-24 months   NIH-Crypto      BANGLADESH                     0%                   NA                -0.0183734   -0.0435048    0.0067580
21-24 months   PROVIDE         BANGLADESH                     0%                   NA                 0.0157788   -0.0148040    0.0463617
