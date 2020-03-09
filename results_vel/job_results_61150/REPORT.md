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

**Intervention Variable:** nrooms

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
* W_parity
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
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        nrooms    n_cell       n
-------------  ---------------  -----------------------------  -------  -------  ------
0-3 months     CMC-V-BCS-2002   INDIA                          4+            12     331
0-3 months     CMC-V-BCS-2002   INDIA                          1            177     331
0-3 months     CMC-V-BCS-2002   INDIA                          2             93     331
0-3 months     CMC-V-BCS-2002   INDIA                          3             49     331
0-3 months     COHORTS          INDIA                          4+            93    4795
0-3 months     COHORTS          INDIA                          1           3140    4795
0-3 months     COHORTS          INDIA                          2           1392    4795
0-3 months     COHORTS          INDIA                          3            170    4795
0-3 months     CONTENT          PERU                           4+            12      29
0-3 months     CONTENT          PERU                           1              6      29
0-3 months     CONTENT          PERU                           2              7      29
0-3 months     CONTENT          PERU                           3              4      29
0-3 months     GMS-Nepal        NEPAL                          4+           243     509
0-3 months     GMS-Nepal        NEPAL                          1             34     509
0-3 months     GMS-Nepal        NEPAL                          2            106     509
0-3 months     GMS-Nepal        NEPAL                          3            126     509
0-3 months     IRC              INDIA                          4+            17     392
0-3 months     IRC              INDIA                          1            177     392
0-3 months     IRC              INDIA                          2            162     392
0-3 months     IRC              INDIA                          3             36     392
0-3 months     JiVitA-3         BANGLADESH                     4+           693   20268
0-3 months     JiVitA-3         BANGLADESH                     1          12615   20268
0-3 months     JiVitA-3         BANGLADESH                     2           5247   20268
0-3 months     JiVitA-3         BANGLADESH                     3           1713   20268
0-3 months     JiVitA-4         BANGLADESH                     4+            69    1793
0-3 months     JiVitA-4         BANGLADESH                     1           1104    1793
0-3 months     JiVitA-4         BANGLADESH                     2            453    1793
0-3 months     JiVitA-4         BANGLADESH                     3            167    1793
0-3 months     MAL-ED           BANGLADESH                     4+            11     239
0-3 months     MAL-ED           BANGLADESH                     1            150     239
0-3 months     MAL-ED           BANGLADESH                     2             50     239
0-3 months     MAL-ED           BANGLADESH                     3             28     239
0-3 months     MAL-ED           BRAZIL                         4+           127     210
0-3 months     MAL-ED           BRAZIL                         1              4     210
0-3 months     MAL-ED           BRAZIL                         2             20     210
0-3 months     MAL-ED           BRAZIL                         3             59     210
0-3 months     MAL-ED           INDIA                          4+            25     232
0-3 months     MAL-ED           INDIA                          1             84     232
0-3 months     MAL-ED           INDIA                          2             77     232
0-3 months     MAL-ED           INDIA                          3             46     232
0-3 months     MAL-ED           NEPAL                          4+           129     230
0-3 months     MAL-ED           NEPAL                          1             49     230
0-3 months     MAL-ED           NEPAL                          2             31     230
0-3 months     MAL-ED           NEPAL                          3             21     230
0-3 months     MAL-ED           PERU                           4+           138     270
0-3 months     MAL-ED           PERU                           1             19     270
0-3 months     MAL-ED           PERU                           2             51     270
0-3 months     MAL-ED           PERU                           3             62     270
0-3 months     MAL-ED           SOUTH AFRICA                   4+           195     254
0-3 months     MAL-ED           SOUTH AFRICA                   1             13     254
0-3 months     MAL-ED           SOUTH AFRICA                   2             21     254
0-3 months     MAL-ED           SOUTH AFRICA                   3             25     254
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            98     233
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             13     233
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             57     233
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             65     233
0-3 months     NIH-Crypto       BANGLADESH                     4+            91     725
0-3 months     NIH-Crypto       BANGLADESH                     1            347     725
0-3 months     NIH-Crypto       BANGLADESH                     2            184     725
0-3 months     NIH-Crypto       BANGLADESH                     3            103     725
0-3 months     PROVIDE          BANGLADESH                     4+            22     640
0-3 months     PROVIDE          BANGLADESH                     1            458     640
0-3 months     PROVIDE          BANGLADESH                     2            101     640
0-3 months     PROVIDE          BANGLADESH                     3             59     640
3-6 months     CMC-V-BCS-2002   INDIA                          4+            12     322
3-6 months     CMC-V-BCS-2002   INDIA                          1            171     322
3-6 months     CMC-V-BCS-2002   INDIA                          2             91     322
3-6 months     CMC-V-BCS-2002   INDIA                          3             48     322
3-6 months     COHORTS          INDIA                          4+            89    4850
3-6 months     COHORTS          INDIA                          1           3145    4850
3-6 months     COHORTS          INDIA                          2           1437    4850
3-6 months     COHORTS          INDIA                          3            179    4850
3-6 months     CONTENT          PERU                           4+            78     214
3-6 months     CONTENT          PERU                           1             44     214
3-6 months     CONTENT          PERU                           2             54     214
3-6 months     CONTENT          PERU                           3             38     214
3-6 months     GMS-Nepal        NEPAL                          4+           225     469
3-6 months     GMS-Nepal        NEPAL                          1             32     469
3-6 months     GMS-Nepal        NEPAL                          2             95     469
3-6 months     GMS-Nepal        NEPAL                          3            117     469
3-6 months     IRC              INDIA                          4+            17     397
3-6 months     IRC              INDIA                          1            181     397
3-6 months     IRC              INDIA                          2            163     397
3-6 months     IRC              INDIA                          3             36     397
3-6 months     JiVitA-3         BANGLADESH                     4+           508   12711
3-6 months     JiVitA-3         BANGLADESH                     1           7439   12711
3-6 months     JiVitA-3         BANGLADESH                     2           3558   12711
3-6 months     JiVitA-3         BANGLADESH                     3           1206   12711
3-6 months     JiVitA-4         BANGLADESH                     4+            77    1817
3-6 months     JiVitA-4         BANGLADESH                     1           1113    1817
3-6 months     JiVitA-4         BANGLADESH                     2            465    1817
3-6 months     JiVitA-4         BANGLADESH                     3            162    1817
3-6 months     MAL-ED           BANGLADESH                     4+            11     233
3-6 months     MAL-ED           BANGLADESH                     1            145     233
3-6 months     MAL-ED           BANGLADESH                     2             50     233
3-6 months     MAL-ED           BANGLADESH                     3             27     233
3-6 months     MAL-ED           BRAZIL                         4+           126     208
3-6 months     MAL-ED           BRAZIL                         1              4     208
3-6 months     MAL-ED           BRAZIL                         2             19     208
3-6 months     MAL-ED           BRAZIL                         3             59     208
3-6 months     MAL-ED           INDIA                          4+            25     230
3-6 months     MAL-ED           INDIA                          1             84     230
3-6 months     MAL-ED           INDIA                          2             75     230
3-6 months     MAL-ED           INDIA                          3             46     230
3-6 months     MAL-ED           NEPAL                          4+           130     233
3-6 months     MAL-ED           NEPAL                          1             51     233
3-6 months     MAL-ED           NEPAL                          2             31     233
3-6 months     MAL-ED           NEPAL                          3             21     233
3-6 months     MAL-ED           PERU                           4+           137     267
3-6 months     MAL-ED           PERU                           1             19     267
3-6 months     MAL-ED           PERU                           2             49     267
3-6 months     MAL-ED           PERU                           3             62     267
3-6 months     MAL-ED           SOUTH AFRICA                   4+           188     241
3-6 months     MAL-ED           SOUTH AFRICA                   1             12     241
3-6 months     MAL-ED           SOUTH AFRICA                   2             20     241
3-6 months     MAL-ED           SOUTH AFRICA                   3             21     241
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           104     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             12     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             60     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             63     239
3-6 months     NIH-Crypto       BANGLADESH                     4+            90     702
3-6 months     NIH-Crypto       BANGLADESH                     1            332     702
3-6 months     NIH-Crypto       BANGLADESH                     2            179     702
3-6 months     NIH-Crypto       BANGLADESH                     3            101     702
3-6 months     PROVIDE          BANGLADESH                     4+            21     601
3-6 months     PROVIDE          BANGLADESH                     1            427     601
3-6 months     PROVIDE          BANGLADESH                     2             94     601
3-6 months     PROVIDE          BANGLADESH                     3             59     601
6-9 months     CMC-V-BCS-2002   INDIA                          4+            14     325
6-9 months     CMC-V-BCS-2002   INDIA                          1            176     325
6-9 months     CMC-V-BCS-2002   INDIA                          2             86     325
6-9 months     CMC-V-BCS-2002   INDIA                          3             49     325
6-9 months     COHORTS          INDIA                          4+            85    4338
6-9 months     COHORTS          INDIA                          1           2781    4338
6-9 months     COHORTS          INDIA                          2           1317    4338
6-9 months     COHORTS          INDIA                          3            155    4338
6-9 months     CONTENT          PERU                           4+            78     214
6-9 months     CONTENT          PERU                           1             44     214
6-9 months     CONTENT          PERU                           2             54     214
6-9 months     CONTENT          PERU                           3             38     214
6-9 months     GMS-Nepal        NEPAL                          4+           225     477
6-9 months     GMS-Nepal        NEPAL                          1             33     477
6-9 months     GMS-Nepal        NEPAL                          2             97     477
6-9 months     GMS-Nepal        NEPAL                          3            122     477
6-9 months     IRC              INDIA                          4+            17     408
6-9 months     IRC              INDIA                          1            185     408
6-9 months     IRC              INDIA                          2            170     408
6-9 months     IRC              INDIA                          3             36     408
6-9 months     JiVitA-4         BANGLADESH                     4+           153    3071
6-9 months     JiVitA-4         BANGLADESH                     1           1828    3071
6-9 months     JiVitA-4         BANGLADESH                     2            776    3071
6-9 months     JiVitA-4         BANGLADESH                     3            314    3071
6-9 months     MAL-ED           BANGLADESH                     4+            11     224
6-9 months     MAL-ED           BANGLADESH                     1            142     224
6-9 months     MAL-ED           BANGLADESH                     2             45     224
6-9 months     MAL-ED           BANGLADESH                     3             26     224
6-9 months     MAL-ED           BRAZIL                         4+           118     198
6-9 months     MAL-ED           BRAZIL                         1              3     198
6-9 months     MAL-ED           BRAZIL                         2             18     198
6-9 months     MAL-ED           BRAZIL                         3             59     198
6-9 months     MAL-ED           INDIA                          4+            25     230
6-9 months     MAL-ED           INDIA                          1             83     230
6-9 months     MAL-ED           INDIA                          2             74     230
6-9 months     MAL-ED           INDIA                          3             48     230
6-9 months     MAL-ED           NEPAL                          4+           128     230
6-9 months     MAL-ED           NEPAL                          1             49     230
6-9 months     MAL-ED           NEPAL                          2             31     230
6-9 months     MAL-ED           NEPAL                          3             22     230
6-9 months     MAL-ED           PERU                           4+           130     245
6-9 months     MAL-ED           PERU                           1             19     245
6-9 months     MAL-ED           PERU                           2             44     245
6-9 months     MAL-ED           PERU                           3             52     245
6-9 months     MAL-ED           SOUTH AFRICA                   4+           182     231
6-9 months     MAL-ED           SOUTH AFRICA                   1             10     231
6-9 months     MAL-ED           SOUTH AFRICA                   2             18     231
6-9 months     MAL-ED           SOUTH AFRICA                   3             21     231
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           100     225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             11     225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             55     225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             59     225
6-9 months     NIH-Crypto       BANGLADESH                     4+            89     693
6-9 months     NIH-Crypto       BANGLADESH                     1            325     693
6-9 months     NIH-Crypto       BANGLADESH                     2            182     693
6-9 months     NIH-Crypto       BANGLADESH                     3             97     693
6-9 months     PROVIDE          BANGLADESH                     4+            20     576
6-9 months     PROVIDE          BANGLADESH                     1            412     576
6-9 months     PROVIDE          BANGLADESH                     2             89     576
6-9 months     PROVIDE          BANGLADESH                     3             55     576
9-12 months    CMC-V-BCS-2002   INDIA                          4+            14     327
9-12 months    CMC-V-BCS-2002   INDIA                          1            182     327
9-12 months    CMC-V-BCS-2002   INDIA                          2             85     327
9-12 months    CMC-V-BCS-2002   INDIA                          3             46     327
9-12 months    COHORTS          INDIA                          4+            77    3742
9-12 months    COHORTS          INDIA                          1           2355    3742
9-12 months    COHORTS          INDIA                          2           1175    3742
9-12 months    COHORTS          INDIA                          3            135    3742
9-12 months    CONTENT          PERU                           4+            77     212
9-12 months    CONTENT          PERU                           1             44     212
9-12 months    CONTENT          PERU                           2             53     212
9-12 months    CONTENT          PERU                           3             38     212
9-12 months    GMS-Nepal        NEPAL                          4+           213     454
9-12 months    GMS-Nepal        NEPAL                          1             33     454
9-12 months    GMS-Nepal        NEPAL                          2             93     454
9-12 months    GMS-Nepal        NEPAL                          3            115     454
9-12 months    IRC              INDIA                          4+            16     401
9-12 months    IRC              INDIA                          1            183     401
9-12 months    IRC              INDIA                          2            167     401
9-12 months    IRC              INDIA                          3             35     401
9-12 months    JiVitA-4         BANGLADESH                     4+           173    3516
9-12 months    JiVitA-4         BANGLADESH                     1           2088    3516
9-12 months    JiVitA-4         BANGLADESH                     2            889    3516
9-12 months    JiVitA-4         BANGLADESH                     3            366    3516
9-12 months    MAL-ED           BANGLADESH                     4+            11     225
9-12 months    MAL-ED           BANGLADESH                     1            144     225
9-12 months    MAL-ED           BANGLADESH                     2             43     225
9-12 months    MAL-ED           BANGLADESH                     3             27     225
9-12 months    MAL-ED           BRAZIL                         4+           117     194
9-12 months    MAL-ED           BRAZIL                         1              2     194
9-12 months    MAL-ED           BRAZIL                         2             18     194
9-12 months    MAL-ED           BRAZIL                         3             57     194
9-12 months    MAL-ED           INDIA                          4+            25     227
9-12 months    MAL-ED           INDIA                          1             81     227
9-12 months    MAL-ED           INDIA                          2             74     227
9-12 months    MAL-ED           INDIA                          3             47     227
9-12 months    MAL-ED           NEPAL                          4+           128     229
9-12 months    MAL-ED           NEPAL                          1             48     229
9-12 months    MAL-ED           NEPAL                          2             31     229
9-12 months    MAL-ED           NEPAL                          3             22     229
9-12 months    MAL-ED           PERU                           4+           123     235
9-12 months    MAL-ED           PERU                           1             18     235
9-12 months    MAL-ED           PERU                           2             43     235
9-12 months    MAL-ED           PERU                           3             51     235
9-12 months    MAL-ED           SOUTH AFRICA                   4+           182     233
9-12 months    MAL-ED           SOUTH AFRICA                   1             11     233
9-12 months    MAL-ED           SOUTH AFRICA                   2             17     233
9-12 months    MAL-ED           SOUTH AFRICA                   3             23     233
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           102     224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             11     224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             52     224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             59     224
9-12 months    NIH-Crypto       BANGLADESH                     4+            88     683
9-12 months    NIH-Crypto       BANGLADESH                     1            316     683
9-12 months    NIH-Crypto       BANGLADESH                     2            180     683
9-12 months    NIH-Crypto       BANGLADESH                     3             99     683
9-12 months    PROVIDE          BANGLADESH                     4+            20     569
9-12 months    PROVIDE          BANGLADESH                     1            405     569
9-12 months    PROVIDE          BANGLADESH                     2             90     569
9-12 months    PROVIDE          BANGLADESH                     3             54     569
12-15 months   CMC-V-BCS-2002   INDIA                          4+            13     334
12-15 months   CMC-V-BCS-2002   INDIA                          1            183     334
12-15 months   CMC-V-BCS-2002   INDIA                          2             92     334
12-15 months   CMC-V-BCS-2002   INDIA                          3             46     334
12-15 months   CONTENT          PERU                           4+            70     199
12-15 months   CONTENT          PERU                           1             41     199
12-15 months   CONTENT          PERU                           2             51     199
12-15 months   CONTENT          PERU                           3             37     199
12-15 months   GMS-Nepal        NEPAL                          4+           214     452
12-15 months   GMS-Nepal        NEPAL                          1             34     452
12-15 months   GMS-Nepal        NEPAL                          2             95     452
12-15 months   GMS-Nepal        NEPAL                          3            109     452
12-15 months   IRC              INDIA                          4+            15     390
12-15 months   IRC              INDIA                          1            178     390
12-15 months   IRC              INDIA                          2            162     390
12-15 months   IRC              INDIA                          3             35     390
12-15 months   JiVitA-4         BANGLADESH                     4+           169    3549
12-15 months   JiVitA-4         BANGLADESH                     1           2109    3549
12-15 months   JiVitA-4         BANGLADESH                     2            907    3549
12-15 months   JiVitA-4         BANGLADESH                     3            364    3549
12-15 months   MAL-ED           BANGLADESH                     4+            10     212
12-15 months   MAL-ED           BANGLADESH                     1            135     212
12-15 months   MAL-ED           BANGLADESH                     2             40     212
12-15 months   MAL-ED           BANGLADESH                     3             27     212
12-15 months   MAL-ED           BRAZIL                         4+           113     184
12-15 months   MAL-ED           BRAZIL                         1              2     184
12-15 months   MAL-ED           BRAZIL                         2             17     184
12-15 months   MAL-ED           BRAZIL                         3             52     184
12-15 months   MAL-ED           INDIA                          4+            25     226
12-15 months   MAL-ED           INDIA                          1             81     226
12-15 months   MAL-ED           INDIA                          2             73     226
12-15 months   MAL-ED           INDIA                          3             47     226
12-15 months   MAL-ED           NEPAL                          4+           129     230
12-15 months   MAL-ED           NEPAL                          1             48     230
12-15 months   MAL-ED           NEPAL                          2             31     230
12-15 months   MAL-ED           NEPAL                          3             22     230
12-15 months   MAL-ED           PERU                           4+           116     224
12-15 months   MAL-ED           PERU                           1             17     224
12-15 months   MAL-ED           PERU                           2             40     224
12-15 months   MAL-ED           PERU                           3             51     224
12-15 months   MAL-ED           SOUTH AFRICA                   4+           173     228
12-15 months   MAL-ED           SOUTH AFRICA                   1             14     228
12-15 months   MAL-ED           SOUTH AFRICA                   2             18     228
12-15 months   MAL-ED           SOUTH AFRICA                   3             23     228
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           103     226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             11     226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             53     226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             59     226
12-15 months   NIH-Crypto       BANGLADESH                     4+            89     666
12-15 months   NIH-Crypto       BANGLADESH                     1            307     666
12-15 months   NIH-Crypto       BANGLADESH                     2            176     666
12-15 months   NIH-Crypto       BANGLADESH                     3             94     666
12-15 months   PROVIDE          BANGLADESH                     4+            20     537
12-15 months   PROVIDE          BANGLADESH                     1            375     537
12-15 months   PROVIDE          BANGLADESH                     2             88     537
12-15 months   PROVIDE          BANGLADESH                     3             54     537
15-18 months   CMC-V-BCS-2002   INDIA                          4+            11     325
15-18 months   CMC-V-BCS-2002   INDIA                          1            173     325
15-18 months   CMC-V-BCS-2002   INDIA                          2             93     325
15-18 months   CMC-V-BCS-2002   INDIA                          3             48     325
15-18 months   CONTENT          PERU                           4+            67     189
15-18 months   CONTENT          PERU                           1             36     189
15-18 months   CONTENT          PERU                           2             49     189
15-18 months   CONTENT          PERU                           3             37     189
15-18 months   GMS-Nepal        NEPAL                          4+           224     477
15-18 months   GMS-Nepal        NEPAL                          1             35     477
15-18 months   GMS-Nepal        NEPAL                          2            104     477
15-18 months   GMS-Nepal        NEPAL                          3            114     477
15-18 months   IRC              INDIA                          4+            15     381
15-18 months   IRC              INDIA                          1            172     381
15-18 months   IRC              INDIA                          2            159     381
15-18 months   IRC              INDIA                          3             35     381
15-18 months   JiVitA-4         BANGLADESH                     4+           176    3508
15-18 months   JiVitA-4         BANGLADESH                     1           2104    3508
15-18 months   JiVitA-4         BANGLADESH                     2            887    3508
15-18 months   JiVitA-4         BANGLADESH                     3            341    3508
15-18 months   MAL-ED           BANGLADESH                     4+            10     212
15-18 months   MAL-ED           BANGLADESH                     1            134     212
15-18 months   MAL-ED           BANGLADESH                     2             41     212
15-18 months   MAL-ED           BANGLADESH                     3             27     212
15-18 months   MAL-ED           BRAZIL                         4+           108     175
15-18 months   MAL-ED           BRAZIL                         1              1     175
15-18 months   MAL-ED           BRAZIL                         2             17     175
15-18 months   MAL-ED           BRAZIL                         3             49     175
15-18 months   MAL-ED           INDIA                          4+            25     226
15-18 months   MAL-ED           INDIA                          1             82     226
15-18 months   MAL-ED           INDIA                          2             72     226
15-18 months   MAL-ED           INDIA                          3             47     226
15-18 months   MAL-ED           NEPAL                          4+           127     227
15-18 months   MAL-ED           NEPAL                          1             47     227
15-18 months   MAL-ED           NEPAL                          2             31     227
15-18 months   MAL-ED           NEPAL                          3             22     227
15-18 months   MAL-ED           PERU                           4+           112     214
15-18 months   MAL-ED           PERU                           1             17     214
15-18 months   MAL-ED           PERU                           2             38     214
15-18 months   MAL-ED           PERU                           3             47     214
15-18 months   MAL-ED           SOUTH AFRICA                   4+           172     225
15-18 months   MAL-ED           SOUTH AFRICA                   1             13     225
15-18 months   MAL-ED           SOUTH AFRICA                   2             19     225
15-18 months   MAL-ED           SOUTH AFRICA                   3             21     225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           102     220
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             10     220
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             50     220
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             58     220
15-18 months   NIH-Crypto       BANGLADESH                     4+            84     605
15-18 months   NIH-Crypto       BANGLADESH                     1            269     605
15-18 months   NIH-Crypto       BANGLADESH                     2            165     605
15-18 months   NIH-Crypto       BANGLADESH                     3             87     605
15-18 months   PROVIDE          BANGLADESH                     4+            22     533
15-18 months   PROVIDE          BANGLADESH                     1            368     533
15-18 months   PROVIDE          BANGLADESH                     2             87     533
15-18 months   PROVIDE          BANGLADESH                     3             56     533
18-21 months   CMC-V-BCS-2002   INDIA                          4+            11     310
18-21 months   CMC-V-BCS-2002   INDIA                          1            167     310
18-21 months   CMC-V-BCS-2002   INDIA                          2             85     310
18-21 months   CMC-V-BCS-2002   INDIA                          3             47     310
18-21 months   CONTENT          PERU                           4+            66     183
18-21 months   CONTENT          PERU                           1             34     183
18-21 months   CONTENT          PERU                           2             47     183
18-21 months   CONTENT          PERU                           3             36     183
18-21 months   GMS-Nepal        NEPAL                          4+           206     447
18-21 months   GMS-Nepal        NEPAL                          1             30     447
18-21 months   GMS-Nepal        NEPAL                          2            102     447
18-21 months   GMS-Nepal        NEPAL                          3            109     447
18-21 months   IRC              INDIA                          4+            15     378
18-21 months   IRC              INDIA                          1            169     378
18-21 months   IRC              INDIA                          2            161     378
18-21 months   IRC              INDIA                          3             33     378
18-21 months   MAL-ED           BANGLADESH                     4+            11     209
18-21 months   MAL-ED           BANGLADESH                     1            131     209
18-21 months   MAL-ED           BANGLADESH                     2             40     209
18-21 months   MAL-ED           BANGLADESH                     3             27     209
18-21 months   MAL-ED           BRAZIL                         4+           104     167
18-21 months   MAL-ED           BRAZIL                         1              0     167
18-21 months   MAL-ED           BRAZIL                         2             16     167
18-21 months   MAL-ED           BRAZIL                         3             47     167
18-21 months   MAL-ED           INDIA                          4+            25     226
18-21 months   MAL-ED           INDIA                          1             82     226
18-21 months   MAL-ED           INDIA                          2             72     226
18-21 months   MAL-ED           INDIA                          3             47     226
18-21 months   MAL-ED           NEPAL                          4+           127     227
18-21 months   MAL-ED           NEPAL                          1             47     227
18-21 months   MAL-ED           NEPAL                          2             31     227
18-21 months   MAL-ED           NEPAL                          3             22     227
18-21 months   MAL-ED           PERU                           4+           110     202
18-21 months   MAL-ED           PERU                           1             16     202
18-21 months   MAL-ED           PERU                           2             32     202
18-21 months   MAL-ED           PERU                           3             44     202
18-21 months   MAL-ED           SOUTH AFRICA                   4+           178     233
18-21 months   MAL-ED           SOUTH AFRICA                   1             13     233
18-21 months   MAL-ED           SOUTH AFRICA                   2             20     233
18-21 months   MAL-ED           SOUTH AFRICA                   3             22     233
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            98     208
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     208
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             46     208
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             55     208
18-21 months   NIH-Crypto       BANGLADESH                     4+            83     547
18-21 months   NIH-Crypto       BANGLADESH                     1            237     547
18-21 months   NIH-Crypto       BANGLADESH                     2            149     547
18-21 months   NIH-Crypto       BANGLADESH                     3             78     547
18-21 months   PROVIDE          BANGLADESH                     4+            21     542
18-21 months   PROVIDE          BANGLADESH                     1            378     542
18-21 months   PROVIDE          BANGLADESH                     2             88     542
18-21 months   PROVIDE          BANGLADESH                     3             55     542
21-24 months   CMC-V-BCS-2002   INDIA                          4+            12     311
21-24 months   CMC-V-BCS-2002   INDIA                          1            170     311
21-24 months   CMC-V-BCS-2002   INDIA                          2             85     311
21-24 months   CMC-V-BCS-2002   INDIA                          3             44     311
21-24 months   CONTENT          PERU                           4+            10      38
21-24 months   CONTENT          PERU                           1              7      38
21-24 months   CONTENT          PERU                           2             12      38
21-24 months   CONTENT          PERU                           3              9      38
21-24 months   GMS-Nepal        NEPAL                          4+           163     343
21-24 months   GMS-Nepal        NEPAL                          1             24     343
21-24 months   GMS-Nepal        NEPAL                          2             74     343
21-24 months   GMS-Nepal        NEPAL                          3             82     343
21-24 months   IRC              INDIA                          4+            15     387
21-24 months   IRC              INDIA                          1            175     387
21-24 months   IRC              INDIA                          2            163     387
21-24 months   IRC              INDIA                          3             34     387
21-24 months   MAL-ED           BANGLADESH                     4+            11     207
21-24 months   MAL-ED           BANGLADESH                     1            130     207
21-24 months   MAL-ED           BANGLADESH                     2             39     207
21-24 months   MAL-ED           BANGLADESH                     3             27     207
21-24 months   MAL-ED           BRAZIL                         4+           102     165
21-24 months   MAL-ED           BRAZIL                         1              0     165
21-24 months   MAL-ED           BRAZIL                         2             15     165
21-24 months   MAL-ED           BRAZIL                         3             48     165
21-24 months   MAL-ED           INDIA                          4+            25     226
21-24 months   MAL-ED           INDIA                          1             82     226
21-24 months   MAL-ED           INDIA                          2             73     226
21-24 months   MAL-ED           INDIA                          3             46     226
21-24 months   MAL-ED           NEPAL                          4+           127     227
21-24 months   MAL-ED           NEPAL                          1             47     227
21-24 months   MAL-ED           NEPAL                          2             31     227
21-24 months   MAL-ED           NEPAL                          3             22     227
21-24 months   MAL-ED           PERU                           4+           105     189
21-24 months   MAL-ED           PERU                           1             15     189
21-24 months   MAL-ED           PERU                           2             28     189
21-24 months   MAL-ED           PERU                           3             41     189
21-24 months   MAL-ED           SOUTH AFRICA                   4+           181     235
21-24 months   MAL-ED           SOUTH AFRICA                   1             13     235
21-24 months   MAL-ED           SOUTH AFRICA                   2             19     235
21-24 months   MAL-ED           SOUTH AFRICA                   3             22     235
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            96     206
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     206
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             47     206
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             54     206
21-24 months   NIH-Crypto       BANGLADESH                     4+            81     493
21-24 months   NIH-Crypto       BANGLADESH                     1            206     493
21-24 months   NIH-Crypto       BANGLADESH                     2            133     493
21-24 months   NIH-Crypto       BANGLADESH                     3             73     493
21-24 months   PROVIDE          BANGLADESH                     4+            18     485
21-24 months   PROVIDE          BANGLADESH                     1            340     485
21-24 months   PROVIDE          BANGLADESH                     2             80     485
21-24 months   PROVIDE          BANGLADESH                     3             47     485


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: CONTENT, country: PERU
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/87a227e8-fb9f-4c17-bbfa-854f8ba4e162/7acf56fb-6346-4a8a-9bf6-8e0012804065/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/87a227e8-fb9f-4c17-bbfa-854f8ba4e162/7acf56fb-6346-4a8a-9bf6-8e0012804065/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/87a227e8-fb9f-4c17-bbfa-854f8ba4e162/7acf56fb-6346-4a8a-9bf6-8e0012804065/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          4+                   NA                0.7153400    0.5903403   0.8403397
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                0.7163071    0.6860036   0.7466106
0-3 months     CMC-V-BCS-2002   INDIA                          2                    NA                0.7394535    0.6918333   0.7870737
0-3 months     CMC-V-BCS-2002   INDIA                          3                    NA                0.8117616    0.7455844   0.8779389
0-3 months     COHORTS          INDIA                          4+                   NA                0.8745313    0.8526760   0.8963866
0-3 months     COHORTS          INDIA                          1                    NA                0.7968353    0.7895264   0.8041441
0-3 months     COHORTS          INDIA                          2                    NA                0.8163825    0.8045965   0.8281685
0-3 months     COHORTS          INDIA                          3                    NA                0.8098551    0.7860406   0.8336696
0-3 months     GMS-Nepal        NEPAL                          4+                   NA                0.8187916    0.7941821   0.8434010
0-3 months     GMS-Nepal        NEPAL                          1                    NA                0.7866600    0.7097134   0.8636066
0-3 months     GMS-Nepal        NEPAL                          2                    NA                0.8474932    0.8081938   0.8867925
0-3 months     GMS-Nepal        NEPAL                          3                    NA                0.8346728    0.8004439   0.8689017
0-3 months     IRC              INDIA                          4+                   NA                0.8442452    0.7684219   0.9200686
0-3 months     IRC              INDIA                          1                    NA                0.7743376    0.7431200   0.8055552
0-3 months     IRC              INDIA                          2                    NA                0.7493078    0.7179881   0.7806274
0-3 months     IRC              INDIA                          3                    NA                0.7722292    0.7195522   0.8249063
0-3 months     JiVitA-3         BANGLADESH                     4+                   NA                0.8756623    0.8688039   0.8825207
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                0.8719281    0.8670668   0.8767894
0-3 months     JiVitA-3         BANGLADESH                     2                    NA                0.8723328    0.8640820   0.8805835
0-3 months     JiVitA-3         BANGLADESH                     3                    NA                0.8701894    0.8604542   0.8799246
0-3 months     JiVitA-4         BANGLADESH                     4+                   NA                0.8768351    0.7959923   0.9576779
0-3 months     JiVitA-4         BANGLADESH                     1                    NA                0.8932051    0.8797857   0.9066246
0-3 months     JiVitA-4         BANGLADESH                     2                    NA                0.8785451    0.8522982   0.9047921
0-3 months     JiVitA-4         BANGLADESH                     3                    NA                0.8726360    0.8438586   0.9014133
0-3 months     MAL-ED           BANGLADESH                     4+                   NA                0.8967377    0.7693956   1.0240799
0-3 months     MAL-ED           BANGLADESH                     1                    NA                0.8696243    0.8393894   0.8998591
0-3 months     MAL-ED           BANGLADESH                     2                    NA                0.8937948    0.8394919   0.9480978
0-3 months     MAL-ED           BANGLADESH                     3                    NA                0.8783296    0.8191156   0.9375436
0-3 months     MAL-ED           INDIA                          4+                   NA                0.7748464    0.7200374   0.8296554
0-3 months     MAL-ED           INDIA                          1                    NA                0.7470637    0.7044024   0.7897250
0-3 months     MAL-ED           INDIA                          2                    NA                0.7745463    0.7360881   0.8130045
0-3 months     MAL-ED           INDIA                          3                    NA                0.7571967    0.7075360   0.8068573
0-3 months     MAL-ED           NEPAL                          4+                   NA                0.9480510    0.9146597   0.9814424
0-3 months     MAL-ED           NEPAL                          1                    NA                0.9318107    0.8639998   0.9996216
0-3 months     MAL-ED           NEPAL                          2                    NA                1.0369712    0.9678473   1.1060951
0-3 months     MAL-ED           NEPAL                          3                    NA                0.9068454    0.8140784   0.9996123
0-3 months     MAL-ED           PERU                           4+                   NA                0.9872306    0.9474810   1.0269802
0-3 months     MAL-ED           PERU                           1                    NA                0.8658527    0.7671292   0.9645761
0-3 months     MAL-ED           PERU                           2                    NA                0.9735753    0.9113495   1.0358011
0-3 months     MAL-ED           PERU                           3                    NA                0.9695872    0.9177787   1.0213958
0-3 months     MAL-ED           SOUTH AFRICA                   4+                   NA                0.9406705    0.9077042   0.9736368
0-3 months     MAL-ED           SOUTH AFRICA                   1                    NA                0.8893096    0.8062911   0.9723282
0-3 months     MAL-ED           SOUTH AFRICA                   2                    NA                1.0067867    0.9211683   1.0924051
0-3 months     MAL-ED           SOUTH AFRICA                   3                    NA                0.9551148    0.8758242   1.0344055
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.8963178    0.8487677   0.9438680
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9219213    0.7843051   1.0595375
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8560869    0.7934438   0.9187299
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.8825887    0.8237848   0.9413926
0-3 months     NIH-Crypto       BANGLADESH                     4+                   NA                0.8851113    0.8411745   0.9290482
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                0.8770170    0.8567355   0.8972984
0-3 months     NIH-Crypto       BANGLADESH                     2                    NA                0.8746944    0.8430732   0.9063155
0-3 months     NIH-Crypto       BANGLADESH                     3                    NA                0.9277718    0.8772083   0.9783353
0-3 months     PROVIDE          BANGLADESH                     4+                   NA                0.9198778    0.8334387   1.0063169
0-3 months     PROVIDE          BANGLADESH                     1                    NA                0.8929701    0.8752656   0.9106747
0-3 months     PROVIDE          BANGLADESH                     2                    NA                0.9270855    0.8909533   0.9632177
0-3 months     PROVIDE          BANGLADESH                     3                    NA                0.9115240    0.8654302   0.9576177
3-6 months     CMC-V-BCS-2002   INDIA                          4+                   NA                0.5150513    0.3994910   0.6306116
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                0.4494592    0.4268499   0.4720686
3-6 months     CMC-V-BCS-2002   INDIA                          2                    NA                0.4982166    0.4567139   0.5397192
3-6 months     CMC-V-BCS-2002   INDIA                          3                    NA                0.4958783    0.4380736   0.5536831
3-6 months     COHORTS          INDIA                          4+                   NA                0.5207789    0.5060596   0.5354981
3-6 months     COHORTS          INDIA                          1                    NA                0.4693293    0.4634333   0.4752252
3-6 months     COHORTS          INDIA                          2                    NA                0.4893912    0.4798283   0.4989542
3-6 months     COHORTS          INDIA                          3                    NA                0.4820481    0.4635529   0.5005433
3-6 months     CONTENT          PERU                           4+                   NA                0.5875964    0.5604486   0.6147442
3-6 months     CONTENT          PERU                           1                    NA                0.5596091    0.5021245   0.6170937
3-6 months     CONTENT          PERU                           2                    NA                0.5783180    0.5187759   0.6378602
3-6 months     CONTENT          PERU                           3                    NA                0.5875654    0.5304066   0.6447242
3-6 months     GMS-Nepal        NEPAL                          4+                   NA                0.4843030    0.4652151   0.5033908
3-6 months     GMS-Nepal        NEPAL                          1                    NA                0.4920492    0.4273096   0.5567889
3-6 months     GMS-Nepal        NEPAL                          2                    NA                0.4982040    0.4677558   0.5286522
3-6 months     GMS-Nepal        NEPAL                          3                    NA                0.5197131    0.4898940   0.5495322
3-6 months     IRC              INDIA                          4+                   NA                0.3982267    0.3144737   0.4819796
3-6 months     IRC              INDIA                          1                    NA                0.4531354    0.4289403   0.4773305
3-6 months     IRC              INDIA                          2                    NA                0.4992539    0.4687072   0.5298006
3-6 months     IRC              INDIA                          3                    NA                0.4243971    0.3691106   0.4796836
3-6 months     JiVitA-3         BANGLADESH                     4+                   NA                0.4399242    0.4262721   0.4535764
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                0.4435209    0.4387185   0.4483233
3-6 months     JiVitA-3         BANGLADESH                     2                    NA                0.4419405    0.4345734   0.4493075
3-6 months     JiVitA-3         BANGLADESH                     3                    NA                0.4442588    0.4358230   0.4526947
3-6 months     JiVitA-4         BANGLADESH                     4+                   NA                0.4891289    0.4447198   0.5335379
3-6 months     JiVitA-4         BANGLADESH                     1                    NA                0.4421900    0.4298839   0.4544960
3-6 months     JiVitA-4         BANGLADESH                     2                    NA                0.4347472    0.4103422   0.4591522
3-6 months     JiVitA-4         BANGLADESH                     3                    NA                0.4359169    0.4066432   0.4651906
3-6 months     MAL-ED           BANGLADESH                     4+                   NA                0.4629094    0.3652482   0.5605707
3-6 months     MAL-ED           BANGLADESH                     1                    NA                0.4654156    0.4445511   0.4862801
3-6 months     MAL-ED           BANGLADESH                     2                    NA                0.5186908    0.4788878   0.5584938
3-6 months     MAL-ED           BANGLADESH                     3                    NA                0.4662696    0.4187718   0.5137673
3-6 months     MAL-ED           INDIA                          4+                   NA                0.4247013    0.3829413   0.4664612
3-6 months     MAL-ED           INDIA                          1                    NA                0.4391976    0.4100026   0.4683926
3-6 months     MAL-ED           INDIA                          2                    NA                0.4514057    0.4216364   0.4811751
3-6 months     MAL-ED           INDIA                          3                    NA                0.4550984    0.4071486   0.5030483
3-6 months     MAL-ED           NEPAL                          4+                   NA                0.5335714    0.5069344   0.5602084
3-6 months     MAL-ED           NEPAL                          1                    NA                0.4865867    0.4382320   0.5349415
3-6 months     MAL-ED           NEPAL                          2                    NA                0.5292822    0.4871421   0.5714224
3-6 months     MAL-ED           NEPAL                          3                    NA                0.5199717    0.4676087   0.5723347
3-6 months     MAL-ED           PERU                           4+                   NA                0.4960827    0.4686587   0.5235066
3-6 months     MAL-ED           PERU                           1                    NA                0.4684828    0.4111010   0.5258646
3-6 months     MAL-ED           PERU                           2                    NA                0.5141846    0.4606610   0.5677082
3-6 months     MAL-ED           PERU                           3                    NA                0.5023684    0.4681770   0.5365598
3-6 months     MAL-ED           SOUTH AFRICA                   4+                   NA                0.4765855    0.4472386   0.5059324
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                0.3864082    0.3016025   0.4712138
3-6 months     MAL-ED           SOUTH AFRICA                   2                    NA                0.4718668    0.3729669   0.5707668
3-6 months     MAL-ED           SOUTH AFRICA                   3                    NA                0.4133472    0.3348689   0.4918256
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.4557982    0.4195207   0.4920757
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4840539    0.3300670   0.6380407
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4563197    0.4099417   0.5026978
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.4757370    0.4248223   0.5266517
3-6 months     NIH-Crypto       BANGLADESH                     4+                   NA                0.5071116    0.4757332   0.5384901
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                0.4867161    0.4701310   0.5033011
3-6 months     NIH-Crypto       BANGLADESH                     2                    NA                0.4954106    0.4678819   0.5229393
3-6 months     NIH-Crypto       BANGLADESH                     3                    NA                0.5293997    0.4962131   0.5625862
3-6 months     PROVIDE          BANGLADESH                     4+                   NA                0.4968293    0.4475366   0.5461220
3-6 months     PROVIDE          BANGLADESH                     1                    NA                0.4849393    0.4690220   0.5008566
3-6 months     PROVIDE          BANGLADESH                     2                    NA                0.5036260    0.4781459   0.5291060
3-6 months     PROVIDE          BANGLADESH                     3                    NA                0.5069850    0.4562961   0.5576739
6-9 months     CMC-V-BCS-2002   INDIA                          4+                   NA                0.2657249    0.2232215   0.3082282
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                0.2495956    0.2268092   0.2723821
6-9 months     CMC-V-BCS-2002   INDIA                          2                    NA                0.2659992    0.2354860   0.2965123
6-9 months     CMC-V-BCS-2002   INDIA                          3                    NA                0.2924860    0.2485975   0.3363746
6-9 months     COHORTS          INDIA                          4+                   NA                0.3154498    0.2991254   0.3317741
6-9 months     COHORTS          INDIA                          1                    NA                0.2619452    0.2556943   0.2681961
6-9 months     COHORTS          INDIA                          2                    NA                0.2882764    0.2788497   0.2977031
6-9 months     COHORTS          INDIA                          3                    NA                0.3116736    0.2892341   0.3341131
6-9 months     CONTENT          PERU                           4+                   NA                0.3449742    0.3040079   0.3859404
6-9 months     CONTENT          PERU                           1                    NA                0.3142326    0.2446926   0.3837726
6-9 months     CONTENT          PERU                           2                    NA                0.2998137    0.2635448   0.3360826
6-9 months     CONTENT          PERU                           3                    NA                0.3598934    0.2774490   0.4423379
6-9 months     GMS-Nepal        NEPAL                          4+                   NA                0.1861312    0.1666464   0.2056161
6-9 months     GMS-Nepal        NEPAL                          1                    NA                0.1967602    0.1553773   0.2381431
6-9 months     GMS-Nepal        NEPAL                          2                    NA                0.1915893    0.1629323   0.2202462
6-9 months     GMS-Nepal        NEPAL                          3                    NA                0.1836627    0.1595781   0.2077474
6-9 months     IRC              INDIA                          4+                   NA                0.2085284    0.1478150   0.2692418
6-9 months     IRC              INDIA                          1                    NA                0.2631107    0.2421621   0.2840593
6-9 months     IRC              INDIA                          2                    NA                0.2719838    0.2488835   0.2950840
6-9 months     IRC              INDIA                          3                    NA                0.2434322    0.2109042   0.2759602
6-9 months     JiVitA-4         BANGLADESH                     4+                   NA                0.2423104    0.2300318   0.2545890
6-9 months     JiVitA-4         BANGLADESH                     1                    NA                0.2405852    0.2307939   0.2503764
6-9 months     JiVitA-4         BANGLADESH                     2                    NA                0.2397530    0.2287820   0.2507240
6-9 months     JiVitA-4         BANGLADESH                     3                    NA                0.2580312    0.2440298   0.2720325
6-9 months     MAL-ED           BANGLADESH                     4+                   NA                0.2988651    0.2142466   0.3834837
6-9 months     MAL-ED           BANGLADESH                     1                    NA                0.2372725    0.2183767   0.2561683
6-9 months     MAL-ED           BANGLADESH                     2                    NA                0.2558072    0.2239486   0.2876657
6-9 months     MAL-ED           BANGLADESH                     3                    NA                0.2545572    0.2209480   0.2881664
6-9 months     MAL-ED           INDIA                          4+                   NA                0.2033355    0.1652579   0.2414132
6-9 months     MAL-ED           INDIA                          1                    NA                0.2563602    0.2299718   0.2827487
6-9 months     MAL-ED           INDIA                          2                    NA                0.2129270    0.1888736   0.2369805
6-9 months     MAL-ED           INDIA                          3                    NA                0.2340591    0.1967994   0.2713188
6-9 months     MAL-ED           NEPAL                          4+                   NA                0.2684123    0.2503123   0.2865123
6-9 months     MAL-ED           NEPAL                          1                    NA                0.2647327    0.2263303   0.3031350
6-9 months     MAL-ED           NEPAL                          2                    NA                0.2651635    0.2122554   0.3180716
6-9 months     MAL-ED           NEPAL                          3                    NA                0.3010949    0.2424251   0.3597648
6-9 months     MAL-ED           PERU                           4+                   NA                0.2672546    0.2477261   0.2867830
6-9 months     MAL-ED           PERU                           1                    NA                0.2670448    0.2213988   0.3126908
6-9 months     MAL-ED           PERU                           2                    NA                0.2427092    0.2140282   0.2713902
6-9 months     MAL-ED           PERU                           3                    NA                0.2540280    0.2096667   0.2983893
6-9 months     MAL-ED           SOUTH AFRICA                   4+                   NA                0.2560934    0.2324195   0.2797673
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                0.2177522    0.0921908   0.3433136
6-9 months     MAL-ED           SOUTH AFRICA                   2                    NA                0.3173474    0.2176634   0.4170314
6-9 months     MAL-ED           SOUTH AFRICA                   3                    NA                0.2688774    0.2025870   0.3351679
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.2634334    0.2299638   0.2969031
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2558472    0.1351076   0.3765868
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2085928    0.1684664   0.2487193
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2239424    0.1621619   0.2857229
6-9 months     NIH-Crypto       BANGLADESH                     4+                   NA                0.2812703    0.2557867   0.3067538
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                0.2654387    0.2496467   0.2812308
6-9 months     NIH-Crypto       BANGLADESH                     2                    NA                0.2545118    0.2346259   0.2743977
6-9 months     NIH-Crypto       BANGLADESH                     3                    NA                0.2760491    0.2294441   0.3226542
6-9 months     PROVIDE          BANGLADESH                     4+                   NA                0.2799109    0.2265723   0.3332495
6-9 months     PROVIDE          BANGLADESH                     1                    NA                0.2408396    0.2259567   0.2557225
6-9 months     PROVIDE          BANGLADESH                     2                    NA                0.2592561    0.2342099   0.2843024
6-9 months     PROVIDE          BANGLADESH                     3                    NA                0.2775189    0.2416885   0.3133493
9-12 months    CMC-V-BCS-2002   INDIA                          4+                   NA                0.2525279    0.1869206   0.3181351
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.2101646    0.1857140   0.2346153
9-12 months    CMC-V-BCS-2002   INDIA                          2                    NA                0.1766274    0.1453015   0.2079533
9-12 months    CMC-V-BCS-2002   INDIA                          3                    NA                0.2763699    0.2243272   0.3284126
9-12 months    COHORTS          INDIA                          4+                   NA                0.2508801    0.2316710   0.2700892
9-12 months    COHORTS          INDIA                          1                    NA                0.2067723    0.1997983   0.2137464
9-12 months    COHORTS          INDIA                          2                    NA                0.2206145    0.2111454   0.2300836
9-12 months    COHORTS          INDIA                          3                    NA                0.2302687    0.2080001   0.2525374
9-12 months    CONTENT          PERU                           4+                   NA                0.2706626    0.2438533   0.2974718
9-12 months    CONTENT          PERU                           1                    NA                0.2079437    0.1596337   0.2562537
9-12 months    CONTENT          PERU                           2                    NA                0.1856131    0.1571321   0.2140941
9-12 months    CONTENT          PERU                           3                    NA                0.2115994    0.1558770   0.2673218
9-12 months    GMS-Nepal        NEPAL                          4+                   NA                0.1509723    0.1317661   0.1701784
9-12 months    GMS-Nepal        NEPAL                          1                    NA                0.1467349    0.1095055   0.1839642
9-12 months    GMS-Nepal        NEPAL                          2                    NA                0.1266465    0.0942704   0.1590227
9-12 months    GMS-Nepal        NEPAL                          3                    NA                0.1470372    0.1233219   0.1707525
9-12 months    IRC              INDIA                          4+                   NA                0.2151958    0.1506128   0.2797789
9-12 months    IRC              INDIA                          1                    NA                0.2072401    0.1851808   0.2292994
9-12 months    IRC              INDIA                          2                    NA                0.2182841    0.1952258   0.2413423
9-12 months    IRC              INDIA                          3                    NA                0.2194963    0.1798817   0.2591109
9-12 months    JiVitA-4         BANGLADESH                     4+                   NA                0.1691622    0.1602590   0.1780655
9-12 months    JiVitA-4         BANGLADESH                     1                    NA                0.1541604    0.1474672   0.1608536
9-12 months    JiVitA-4         BANGLADESH                     2                    NA                0.1514898    0.1391039   0.1638757
9-12 months    JiVitA-4         BANGLADESH                     3                    NA                0.1590797    0.1476869   0.1704726
9-12 months    MAL-ED           BANGLADESH                     4+                   NA                0.2157103    0.1233702   0.3080504
9-12 months    MAL-ED           BANGLADESH                     1                    NA                0.1728988    0.1550401   0.1907575
9-12 months    MAL-ED           BANGLADESH                     2                    NA                0.1639693    0.1331168   0.1948218
9-12 months    MAL-ED           BANGLADESH                     3                    NA                0.1655231    0.1309646   0.2000816
9-12 months    MAL-ED           INDIA                          4+                   NA                0.1948902    0.1464222   0.2433582
9-12 months    MAL-ED           INDIA                          1                    NA                0.1787162    0.1553652   0.2020672
9-12 months    MAL-ED           INDIA                          2                    NA                0.1791315    0.1514310   0.2068320
9-12 months    MAL-ED           INDIA                          3                    NA                0.1762051    0.1466209   0.2057893
9-12 months    MAL-ED           NEPAL                          4+                   NA                0.1899414    0.1719475   0.2079353
9-12 months    MAL-ED           NEPAL                          1                    NA                0.1558038    0.1120631   0.1995445
9-12 months    MAL-ED           NEPAL                          2                    NA                0.1961360    0.1619431   0.2303289
9-12 months    MAL-ED           NEPAL                          3                    NA                0.1892544    0.1576154   0.2208934
9-12 months    MAL-ED           PERU                           4+                   NA                0.1838786    0.1625306   0.2052266
9-12 months    MAL-ED           PERU                           1                    NA                0.1364800    0.1107838   0.1621763
9-12 months    MAL-ED           PERU                           2                    NA                0.2045533    0.1689889   0.2401177
9-12 months    MAL-ED           PERU                           3                    NA                0.2025969    0.1629793   0.2422146
9-12 months    MAL-ED           SOUTH AFRICA                   4+                   NA                0.2165856    0.1908005   0.2423706
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                0.2744360    0.2093907   0.3394813
9-12 months    MAL-ED           SOUTH AFRICA                   2                    NA                0.1982045    0.1204181   0.2759910
9-12 months    MAL-ED           SOUTH AFRICA                   3                    NA                0.1871099    0.1098247   0.2643950
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.1795177    0.1503943   0.2086411
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1209802   -0.0114983   0.2534587
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1375140    0.0928539   0.1821740
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1731657    0.1353177   0.2110138
9-12 months    NIH-Crypto       BANGLADESH                     4+                   NA                0.2071070    0.1867288   0.2274852
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                0.1878007    0.1719145   0.2036870
9-12 months    NIH-Crypto       BANGLADESH                     2                    NA                0.1895076    0.1694086   0.2096066
9-12 months    NIH-Crypto       BANGLADESH                     3                    NA                0.2389329    0.1960850   0.2817807
9-12 months    PROVIDE          BANGLADESH                     4+                   NA                0.1760853    0.1255974   0.2265731
9-12 months    PROVIDE          BANGLADESH                     1                    NA                0.1771309    0.1662525   0.1880093
9-12 months    PROVIDE          BANGLADESH                     2                    NA                0.1795208    0.1530558   0.2059859
9-12 months    PROVIDE          BANGLADESH                     3                    NA                0.1804462    0.1492958   0.2115965
12-15 months   CMC-V-BCS-2002   INDIA                          4+                   NA                0.1193398    0.0453165   0.1933630
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.1631837    0.1433949   0.1829725
12-15 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.1433297    0.1184368   0.1682226
12-15 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.1142869    0.0787227   0.1498510
12-15 months   CONTENT          PERU                           4+                   NA                0.1842835    0.1595057   0.2090614
12-15 months   CONTENT          PERU                           1                    NA                0.2130656    0.1800836   0.2460476
12-15 months   CONTENT          PERU                           2                    NA                0.1660817    0.1031791   0.2289843
12-15 months   CONTENT          PERU                           3                    NA                0.1536985    0.0799592   0.2274379
12-15 months   GMS-Nepal        NEPAL                          4+                   NA                0.1581540    0.1373795   0.1789286
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.1531105    0.1097100   0.1965111
12-15 months   GMS-Nepal        NEPAL                          2                    NA                0.1984190    0.1716564   0.2251816
12-15 months   GMS-Nepal        NEPAL                          3                    NA                0.1821783    0.1559543   0.2084024
12-15 months   IRC              INDIA                          4+                   NA                0.1632755    0.1088979   0.2176531
12-15 months   IRC              INDIA                          1                    NA                0.1856019    0.1651898   0.2060140
12-15 months   IRC              INDIA                          2                    NA                0.1743409    0.1550860   0.1935958
12-15 months   IRC              INDIA                          3                    NA                0.2168941    0.1771259   0.2566623
12-15 months   JiVitA-4         BANGLADESH                     4+                   NA                0.1258477    0.1082137   0.1434818
12-15 months   JiVitA-4         BANGLADESH                     1                    NA                0.1302221    0.1249744   0.1354699
12-15 months   JiVitA-4         BANGLADESH                     2                    NA                0.1348419    0.1246614   0.1450224
12-15 months   JiVitA-4         BANGLADESH                     3                    NA                0.1397705    0.1260471   0.1534938
12-15 months   MAL-ED           BANGLADESH                     4+                   NA                0.1747680    0.1122080   0.2373280
12-15 months   MAL-ED           BANGLADESH                     1                    NA                0.1353010    0.1145996   0.1560024
12-15 months   MAL-ED           BANGLADESH                     2                    NA                0.1292253    0.0948747   0.1635760
12-15 months   MAL-ED           BANGLADESH                     3                    NA                0.1257521    0.0862627   0.1652415
12-15 months   MAL-ED           INDIA                          4+                   NA                0.1706985    0.1279567   0.2134403
12-15 months   MAL-ED           INDIA                          1                    NA                0.1780612    0.1518760   0.2042463
12-15 months   MAL-ED           INDIA                          2                    NA                0.1814961    0.1514585   0.2115338
12-15 months   MAL-ED           INDIA                          3                    NA                0.1565329    0.1201775   0.1928883
12-15 months   MAL-ED           NEPAL                          4+                   NA                0.1523049    0.1328920   0.1717178
12-15 months   MAL-ED           NEPAL                          1                    NA                0.1613640    0.1068482   0.2158799
12-15 months   MAL-ED           NEPAL                          2                    NA                0.1680737    0.1235759   0.2125714
12-15 months   MAL-ED           NEPAL                          3                    NA                0.1362757    0.0813410   0.1912104
12-15 months   MAL-ED           PERU                           4+                   NA                0.1479928    0.1243527   0.1716330
12-15 months   MAL-ED           PERU                           1                    NA                0.1703762    0.1214845   0.2192679
12-15 months   MAL-ED           PERU                           2                    NA                0.1037088    0.0673563   0.1400613
12-15 months   MAL-ED           PERU                           3                    NA                0.1343972    0.0970057   0.1717888
12-15 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.1965918    0.1687947   0.2243888
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.1333191   -0.0724599   0.3390981
12-15 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.1478085    0.0633750   0.2322420
12-15 months   MAL-ED           SOUTH AFRICA                   3                    NA                0.1981958    0.1292714   0.2671202
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.1385195    0.1042012   0.1728378
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2753119    0.1328176   0.4178062
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1834904    0.1249659   0.2420149
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1616492    0.1146646   0.2086338
12-15 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.1750327    0.1475756   0.2024899
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1606384    0.1456509   0.1756259
12-15 months   NIH-Crypto       BANGLADESH                     2                    NA                0.1690840    0.1455772   0.1925909
12-15 months   NIH-Crypto       BANGLADESH                     3                    NA                0.1625662    0.1123099   0.2128225
12-15 months   PROVIDE          BANGLADESH                     4+                   NA                0.2374579    0.1601867   0.3147290
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.1795165    0.1652718   0.1937612
12-15 months   PROVIDE          BANGLADESH                     2                    NA                0.1669037    0.1388012   0.1950061
12-15 months   PROVIDE          BANGLADESH                     3                    NA                0.1952684    0.1598487   0.2306881
15-18 months   CMC-V-BCS-2002   INDIA                          4+                   NA                0.1763517    0.0896296   0.2630737
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.1373917    0.1195450   0.1552384
15-18 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.1744524    0.1418305   0.2070744
15-18 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.1502041    0.1236304   0.1767778
15-18 months   CONTENT          PERU                           4+                   NA                0.1946419    0.1691224   0.2201615
15-18 months   CONTENT          PERU                           1                    NA                0.2187290    0.1772885   0.2601695
15-18 months   CONTENT          PERU                           2                    NA                0.1859901    0.1455140   0.2264662
15-18 months   CONTENT          PERU                           3                    NA                0.2069831    0.1296158   0.2843504
15-18 months   GMS-Nepal        NEPAL                          4+                   NA                0.2341480    0.2104074   0.2578885
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.2660807    0.2130491   0.3191124
15-18 months   GMS-Nepal        NEPAL                          2                    NA                0.2241224    0.1937854   0.2544595
15-18 months   GMS-Nepal        NEPAL                          3                    NA                0.2373897    0.2022877   0.2724916
15-18 months   IRC              INDIA                          4+                   NA                0.1667999    0.1059123   0.2276875
15-18 months   IRC              INDIA                          1                    NA                0.1453521    0.1241259   0.1665784
15-18 months   IRC              INDIA                          2                    NA                0.1863009    0.1658136   0.2067881
15-18 months   IRC              INDIA                          3                    NA                0.1004848    0.0593764   0.1415932
15-18 months   JiVitA-4         BANGLADESH                     4+                   NA                0.1512499    0.1371853   0.1653144
15-18 months   JiVitA-4         BANGLADESH                     1                    NA                0.1601771    0.1524328   0.1679215
15-18 months   JiVitA-4         BANGLADESH                     2                    NA                0.1659826    0.1527947   0.1791706
15-18 months   JiVitA-4         BANGLADESH                     3                    NA                0.1380440    0.1266222   0.1494657
15-18 months   MAL-ED           BANGLADESH                     4+                   NA                0.1392085    0.0765931   0.2018238
15-18 months   MAL-ED           BANGLADESH                     1                    NA                0.1427988    0.1241191   0.1614784
15-18 months   MAL-ED           BANGLADESH                     2                    NA                0.1634414    0.1180544   0.2088284
15-18 months   MAL-ED           BANGLADESH                     3                    NA                0.1437652    0.1013376   0.1861927
15-18 months   MAL-ED           INDIA                          4+                   NA                0.1496987    0.1076935   0.1917038
15-18 months   MAL-ED           INDIA                          1                    NA                0.1604185    0.1359769   0.1848601
15-18 months   MAL-ED           INDIA                          2                    NA                0.1606058    0.1319433   0.1892683
15-18 months   MAL-ED           INDIA                          3                    NA                0.1770342    0.1426457   0.2114227
15-18 months   MAL-ED           NEPAL                          4+                   NA                0.1659519    0.1455802   0.1863237
15-18 months   MAL-ED           NEPAL                          1                    NA                0.1925020    0.1467779   0.2382260
15-18 months   MAL-ED           NEPAL                          2                    NA                0.1571086    0.1139033   0.2003138
15-18 months   MAL-ED           NEPAL                          3                    NA                0.2029608    0.1481832   0.2577384
15-18 months   MAL-ED           PERU                           4+                   NA                0.1555837    0.1314789   0.1796885
15-18 months   MAL-ED           PERU                           1                    NA                0.1595127    0.0831726   0.2358528
15-18 months   MAL-ED           PERU                           2                    NA                0.1420214    0.0887311   0.1953117
15-18 months   MAL-ED           PERU                           3                    NA                0.1280866    0.0835332   0.1726400
15-18 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.2289841    0.1969903   0.2609778
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.2234346   -0.0389087   0.4857778
15-18 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.2528826    0.1644008   0.3413645
15-18 months   MAL-ED           SOUTH AFRICA                   3                    NA                0.1647473    0.0843792   0.2451153
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.1244579    0.0931141   0.1558017
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1465503    0.0115626   0.2815380
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1617791    0.1119370   0.2116213
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1564356    0.1067501   0.2061210
15-18 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.1724019    0.1429573   0.2018465
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1651321    0.1501151   0.1801491
15-18 months   NIH-Crypto       BANGLADESH                     2                    NA                0.1524478    0.1264792   0.1784163
15-18 months   NIH-Crypto       BANGLADESH                     3                    NA                0.1619134    0.1278685   0.1959584
15-18 months   PROVIDE          BANGLADESH                     4+                   NA                0.1868393    0.1273071   0.2463715
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.1545934    0.1407377   0.1684491
15-18 months   PROVIDE          BANGLADESH                     2                    NA                0.1501634    0.1186409   0.1816859
15-18 months   PROVIDE          BANGLADESH                     3                    NA                0.1466534    0.1040296   0.1892772
18-21 months   CMC-V-BCS-2002   INDIA                          4+                   NA                0.1714638    0.1108497   0.2320778
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.1375472    0.1208473   0.1542471
18-21 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.1227608    0.0817792   0.1637425
18-21 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.1496085    0.1143473   0.1848696
18-21 months   CONTENT          PERU                           4+                   NA                0.2257843    0.1880506   0.2635180
18-21 months   CONTENT          PERU                           1                    NA                0.1800402    0.1247433   0.2353372
18-21 months   CONTENT          PERU                           2                    NA                0.1727712    0.1351829   0.2103595
18-21 months   CONTENT          PERU                           3                    NA                0.2090023    0.1151383   0.3028664
18-21 months   GMS-Nepal        NEPAL                          4+                   NA                0.1336958    0.1106854   0.1567063
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.0731948    0.0063932   0.1399965
18-21 months   GMS-Nepal        NEPAL                          2                    NA                0.1676836    0.1370720   0.1982951
18-21 months   GMS-Nepal        NEPAL                          3                    NA                0.1595023    0.1243800   0.1946246
18-21 months   IRC              INDIA                          4+                   NA                0.2718196    0.1606836   0.3829557
18-21 months   IRC              INDIA                          1                    NA                0.1559317    0.1353122   0.1765511
18-21 months   IRC              INDIA                          2                    NA                0.1620789    0.1432313   0.1809265
18-21 months   IRC              INDIA                          3                    NA                0.1149820    0.0762831   0.1536809
18-21 months   MAL-ED           BANGLADESH                     4+                   NA                0.1657151    0.0706575   0.2607727
18-21 months   MAL-ED           BANGLADESH                     1                    NA                0.1278539    0.1066616   0.1490462
18-21 months   MAL-ED           BANGLADESH                     2                    NA                0.1735013    0.1355636   0.2114390
18-21 months   MAL-ED           BANGLADESH                     3                    NA                0.1611325    0.1043750   0.2178900
18-21 months   MAL-ED           INDIA                          4+                   NA                0.2030858    0.1610276   0.2451439
18-21 months   MAL-ED           INDIA                          1                    NA                0.1889676    0.1638700   0.2140652
18-21 months   MAL-ED           INDIA                          2                    NA                0.1595347    0.1308177   0.1882517
18-21 months   MAL-ED           INDIA                          3                    NA                0.1472837    0.1176447   0.1769228
18-21 months   MAL-ED           NEPAL                          4+                   NA                0.1632990    0.1422532   0.1843449
18-21 months   MAL-ED           NEPAL                          1                    NA                0.1332407    0.0986170   0.1678643
18-21 months   MAL-ED           NEPAL                          2                    NA                0.1264160    0.0644792   0.1883528
18-21 months   MAL-ED           NEPAL                          3                    NA                0.1203934    0.0420257   0.1987612
18-21 months   MAL-ED           PERU                           4+                   NA                0.1677991    0.1399763   0.1956218
18-21 months   MAL-ED           PERU                           1                    NA                0.1843187    0.1167116   0.2519257
18-21 months   MAL-ED           PERU                           2                    NA                0.1719923    0.1192581   0.2247265
18-21 months   MAL-ED           PERU                           3                    NA                0.1380055    0.0983137   0.1776973
18-21 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.1775814    0.1473072   0.2078557
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.1380396   -0.0246102   0.3006895
18-21 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.1927783    0.1119899   0.2735667
18-21 months   MAL-ED           SOUTH AFRICA                   3                    NA                0.1790694    0.0654864   0.2926525
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.1466844    0.1099825   0.1833863
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1503309   -0.0013370   0.3019988
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1247956    0.0665246   0.1830666
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1631445    0.1238131   0.2024759
18-21 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.1366287    0.1075740   0.1656835
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1357649    0.1199959   0.1515339
18-21 months   NIH-Crypto       BANGLADESH                     2                    NA                0.1556207    0.1328623   0.1783790
18-21 months   NIH-Crypto       BANGLADESH                     3                    NA                0.1448030    0.1124155   0.1771906
18-21 months   PROVIDE          BANGLADESH                     4+                   NA                0.1691447    0.1197093   0.2185801
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.1276381    0.1140585   0.1412177
18-21 months   PROVIDE          BANGLADESH                     2                    NA                0.1451902    0.1156836   0.1746969
18-21 months   PROVIDE          BANGLADESH                     3                    NA                0.1385679    0.0999737   0.1771620
21-24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                0.1417832    0.0586686   0.2248978
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.1402706    0.1235122   0.1570290
21-24 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.1597663    0.1282124   0.1913202
21-24 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.1442262    0.1010365   0.1874160
21-24 months   CONTENT          PERU                           4+                   NA                0.1756855    0.0697331   0.2816379
21-24 months   CONTENT          PERU                           1                    NA                0.1792042    0.0676774   0.2907310
21-24 months   CONTENT          PERU                           2                    NA                0.2696916    0.1841620   0.3552212
21-24 months   CONTENT          PERU                           3                    NA                0.1731815    0.1024381   0.2439249
21-24 months   GMS-Nepal        NEPAL                          4+                   NA                0.1950203    0.1581236   0.2319170
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.2404506    0.1478808   0.3330204
21-24 months   GMS-Nepal        NEPAL                          2                    NA                0.1779797    0.1246679   0.2312915
21-24 months   GMS-Nepal        NEPAL                          3                    NA                0.1472543    0.0947482   0.1997605
21-24 months   IRC              INDIA                          4+                   NA                0.1750935    0.0964744   0.2537125
21-24 months   IRC              INDIA                          1                    NA                0.1777063    0.1558268   0.1995858
21-24 months   IRC              INDIA                          2                    NA                0.1744281    0.1539450   0.1949112
21-24 months   IRC              INDIA                          3                    NA                0.1936962    0.1417030   0.2456893
21-24 months   MAL-ED           BANGLADESH                     4+                   NA                0.1427215    0.0750642   0.2103788
21-24 months   MAL-ED           BANGLADESH                     1                    NA                0.1575578    0.1397569   0.1753587
21-24 months   MAL-ED           BANGLADESH                     2                    NA                0.1542724    0.1122962   0.1962487
21-24 months   MAL-ED           BANGLADESH                     3                    NA                0.1552267    0.1077207   0.2027327
21-24 months   MAL-ED           INDIA                          4+                   NA                0.1432508    0.0978195   0.1886821
21-24 months   MAL-ED           INDIA                          1                    NA                0.1492898    0.1273451   0.1712345
21-24 months   MAL-ED           INDIA                          2                    NA                0.1674858    0.1413899   0.1935818
21-24 months   MAL-ED           INDIA                          3                    NA                0.1559459    0.1292655   0.1826262
21-24 months   MAL-ED           NEPAL                          4+                   NA                0.1639616    0.1346440   0.1932792
21-24 months   MAL-ED           NEPAL                          1                    NA                0.1701613    0.1303713   0.2099514
21-24 months   MAL-ED           NEPAL                          2                    NA                0.1832833    0.1364799   0.2300866
21-24 months   MAL-ED           NEPAL                          3                    NA                0.1783403    0.1209761   0.2357046
21-24 months   MAL-ED           PERU                           4+                   NA                0.1767992    0.1490174   0.2045809
21-24 months   MAL-ED           PERU                           1                    NA                0.2063104    0.1517238   0.2608969
21-24 months   MAL-ED           PERU                           2                    NA                0.1310768    0.0878950   0.1742586
21-24 months   MAL-ED           PERU                           3                    NA                0.2055169    0.1653693   0.2456646
21-24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.1799601    0.1527324   0.2071878
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.2919725    0.1462643   0.4376807
21-24 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.1599419    0.0863612   0.2335227
21-24 months   MAL-ED           SOUTH AFRICA                   3                    NA                0.2095185    0.1159468   0.3030903
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.1709775    0.1316376   0.2103174
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0468868   -0.1172676   0.2110412
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0962359    0.0404165   0.1520554
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1435694    0.0907097   0.1964290
21-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.2046181    0.1747550   0.2344813
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1671426    0.1479604   0.1863249
21-24 months   NIH-Crypto       BANGLADESH                     2                    NA                0.1655686    0.1402593   0.1908779
21-24 months   NIH-Crypto       BANGLADESH                     3                    NA                0.1914623    0.1501372   0.2327873
21-24 months   PROVIDE          BANGLADESH                     4+                   NA                0.1527885    0.1088785   0.1966986
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1376109    0.1243582   0.1508636
21-24 months   PROVIDE          BANGLADESH                     2                    NA                0.1461064    0.1129152   0.1792976
21-24 months   PROVIDE          BANGLADESH                     3                    NA                0.1765168    0.1359134   0.2171203


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     COHORTS          INDIA                          NA                   NA                0.8057950   0.8003517   0.8112383
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     IRC              INDIA                          NA                   NA                0.7675304   0.7480134   0.7870474
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                0.8710388   0.8679566   0.8741210
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                0.8897517   0.8792503   0.9002532
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                0.8772390   0.8535646   0.9009134
0-3 months     MAL-ED           INDIA                          NA                   NA                0.7600956   0.7374283   0.7827630
0-3 months     MAL-ED           NEPAL                          NA                   NA                0.9579130   0.9310445   0.9847815
0-3 months     MAL-ED           PERU                           NA                   NA                0.9711748   0.9453625   0.9969872
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.9442402   0.9164250   0.9720554
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8849237   0.8543694   0.9154779
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.4751567   0.4562440   0.4940693
3-6 months     COHORTS          INDIA                          NA                   NA                0.4761053   0.4716349   0.4805758
3-6 months     CONTENT          PERU                           NA                   NA                0.5883623   0.5672770   0.6094476
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     IRC              INDIA                          NA                   NA                0.4667726   0.4491630   0.4843822
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                0.4414088   0.4384396   0.4443780
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                0.4391710   0.4303780   0.4479640
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     MAL-ED           INDIA                          NA                   NA                0.4452214   0.4276818   0.4627610
3-6 months     MAL-ED           NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     MAL-ED           PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.4668324   0.4408845   0.4927803
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.2595889   0.2435057   0.2756721
6-9 months     COHORTS          INDIA                          NA                   NA                0.2731093   0.2684405   0.2777781
6-9 months     CONTENT          PERU                           NA                   NA                0.3201718   0.3007014   0.3396422
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                0.1874500   0.1753777   0.1995223
6-9 months     IRC              INDIA                          NA                   NA                0.2623667   0.2484364   0.2762970
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                0.2398525   0.2345783   0.2451267
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     MAL-ED           INDIA                          NA                   NA                0.2318230   0.2168658   0.2467803
6-9 months     MAL-ED           NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     MAL-ED           PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.2593884   0.2383337   0.2804432
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.2123308   0.1948351   0.2298265
9-12 months    COHORTS          INDIA                          NA                   NA                0.2136356   0.2088035   0.2184677
9-12 months    CONTENT          PERU                           NA                   NA                0.2245187   0.2063866   0.2426509
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.1439907   0.1312935   0.1566879
9-12 months    IRC              INDIA                          NA                   NA                0.2127049   0.1984247   0.2269852
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1545123   0.1502488   0.1587759
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    MAL-ED           INDIA                          NA                   NA                0.1788440   0.1647878   0.1929001
9-12 months    MAL-ED           NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    MAL-ED           PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.2146445   0.1925652   0.2367238
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1504668   0.1366572   0.1642764
12-15 months   CONTENT          PERU                           NA                   NA                0.1810771   0.1624014   0.1997528
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.1721075   0.1589812   0.1852337
12-15 months   IRC              INDIA                          NA                   NA                0.1828907   0.1700739   0.1957075
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1304576   0.1263404   0.1345747
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   MAL-ED           INDIA                          NA                   NA                0.1739561   0.1580675   0.1898447
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   MAL-ED           PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1894245   0.1641813   0.2146678
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1521835   0.1380291   0.1663379
15-18 months   CONTENT          PERU                           NA                   NA                0.1711673   0.1527815   0.1895531
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   IRC              INDIA                          NA                   NA                0.1601431   0.1465285   0.1737577
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1595310   0.1548323   0.1642296
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   MAL-ED           INDIA                          NA                   NA                0.1625746   0.1476285   0.1775207
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   MAL-ED           PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2236104   0.1952383   0.2519826
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1352327   0.1200477   0.1504178
18-21 months   CONTENT          PERU                           NA                   NA                0.1921646   0.1732990   0.2110302
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   IRC              INDIA                          NA                   NA                0.1597303   0.1463244   0.1731363
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   MAL-ED           INDIA                          NA                   NA                0.1726665   0.1577530   0.1875800
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   MAL-ED           PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1770799   0.1505223   0.2036374
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1484491   0.1344875   0.1624106
21-24 months   CONTENT          PERU                           NA                   NA                0.2054267   0.1563552   0.2544983
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1768175   0.1523979   0.2012370
21-24 months   IRC              INDIA                          NA                   NA                0.1777368   0.1639302   0.1915434
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   MAL-ED           INDIA                          NA                   NA                0.1562703   0.1431057   0.1694349
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   MAL-ED           PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1876561   0.1639063   0.2114059
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          1                    4+                 0.0009671   -0.1277070    0.1296411
0-3 months     CMC-V-BCS-2002   INDIA                          2                    4+                 0.0241135   -0.1093192    0.1575461
0-3 months     CMC-V-BCS-2002   INDIA                          3                    4+                 0.0964216   -0.0448923    0.2377355
0-3 months     COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          1                    4+                -0.0776960   -0.1007408   -0.0546513
0-3 months     COHORTS          INDIA                          2                    4+                -0.0581488   -0.0829746   -0.0333230
0-3 months     COHORTS          INDIA                          3                    4+                -0.0646762   -0.0969998   -0.0323527
0-3 months     GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    4+                -0.0321315   -0.1129372    0.0486741
0-3 months     GMS-Nepal        NEPAL                          2                    4+                 0.0287016   -0.0178562    0.0752595
0-3 months     GMS-Nepal        NEPAL                          3                    4+                 0.0158812   -0.0260520    0.0578145
0-3 months     IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    4+                -0.0699076   -0.1519885    0.0121733
0-3 months     IRC              INDIA                          2                    4+                -0.0949374   -0.1770579   -0.0128170
0-3 months     IRC              INDIA                          3                    4+                -0.0720160   -0.1645270    0.0204951
0-3 months     JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     1                    4+                -0.0037342   -0.0115495    0.0040811
0-3 months     JiVitA-3         BANGLADESH                     2                    4+                -0.0033295   -0.0141113    0.0074522
0-3 months     JiVitA-3         BANGLADESH                     3                    4+                -0.0054729   -0.0174738    0.0065279
0-3 months     JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     1                    4+                 0.0163700   -0.0658070    0.0985470
0-3 months     JiVitA-4         BANGLADESH                     2                    4+                 0.0017100   -0.0830922    0.0865122
0-3 months     JiVitA-4         BANGLADESH                     3                    4+                -0.0041991   -0.0896476    0.0812494
0-3 months     MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     1                    4+                -0.0271135   -0.1578061    0.1035791
0-3 months     MAL-ED           BANGLADESH                     2                    4+                -0.0029429   -0.1411273    0.1352415
0-3 months     MAL-ED           BANGLADESH                     3                    4+                -0.0184081   -0.1588591    0.1220428
0-3 months     MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          1                    4+                -0.0277827   -0.0973148    0.0417494
0-3 months     MAL-ED           INDIA                          2                    4+                -0.0003001   -0.0673248    0.0667246
0-3 months     MAL-ED           INDIA                          3                    4+                -0.0176497   -0.0918853    0.0565858
0-3 months     MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          1                    4+                -0.0162403   -0.0921064    0.0596259
0-3 months     MAL-ED           NEPAL                          2                    4+                 0.0889202    0.0121034    0.1657369
0-3 months     MAL-ED           NEPAL                          3                    4+                -0.0412056   -0.1399393    0.0575280
0-3 months     MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           1                    4+                -0.1213780   -0.2280797   -0.0146763
0-3 months     MAL-ED           PERU                           2                    4+                -0.0136553   -0.0884274    0.0611167
0-3 months     MAL-ED           PERU                           3                    4+                -0.0176434   -0.0830484    0.0477617
0-3 months     MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   1                    4+                -0.0513608   -0.1408327    0.0381111
0-3 months     MAL-ED           SOUTH AFRICA                   2                    4+                 0.0661162   -0.0251580    0.1573905
0-3 months     MAL-ED           SOUTH AFRICA                   3                    4+                 0.0144444   -0.0712225    0.1001112
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0256035   -0.1201047    0.1713116
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0402310   -0.1189178    0.0384558
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0137292   -0.0895848    0.0621264
0-3 months     NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    4+                -0.0080944   -0.0563307    0.0401420
0-3 months     NIH-Crypto       BANGLADESH                     2                    4+                -0.0104170   -0.0644076    0.0435737
0-3 months     NIH-Crypto       BANGLADESH                     3                    4+                 0.0426605   -0.0242134    0.1095343
0-3 months     PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    4+                -0.0269076   -0.1151502    0.0613349
0-3 months     PROVIDE          BANGLADESH                     2                    4+                 0.0072077   -0.0865303    0.1009458
0-3 months     PROVIDE          BANGLADESH                     3                    4+                -0.0083538   -0.1063621    0.0896545
3-6 months     CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    4+                -0.0655921   -0.1834517    0.0522675
3-6 months     CMC-V-BCS-2002   INDIA                          2                    4+                -0.0168348   -0.1401297    0.1064602
3-6 months     CMC-V-BCS-2002   INDIA                          3                    4+                -0.0191730   -0.1492077    0.1108617
3-6 months     COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    4+                -0.0514496   -0.0672265   -0.0356727
3-6 months     COHORTS          INDIA                          2                    4+                -0.0313876   -0.0488843   -0.0138910
3-6 months     COHORTS          INDIA                          3                    4+                -0.0387308   -0.0623221   -0.0151395
3-6 months     CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     CONTENT          PERU                           1                    4+                -0.0279872   -0.0916334    0.0356589
3-6 months     CONTENT          PERU                           2                    4+                -0.0092783   -0.0748817    0.0563251
3-6 months     CONTENT          PERU                           3                    4+                -0.0000310   -0.0633016    0.0632397
3-6 months     GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    4+                 0.0077463   -0.0600239    0.0755165
3-6 months     GMS-Nepal        NEPAL                          2                    4+                 0.0139011   -0.0219781    0.0497802
3-6 months     GMS-Nepal        NEPAL                          3                    4+                 0.0354101    0.0001053    0.0707149
3-6 months     IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    4+                 0.0549087   -0.0324524    0.1422698
3-6 months     IRC              INDIA                          2                    4+                 0.1010273    0.0112702    0.1907843
3-6 months     IRC              INDIA                          3                    4+                 0.0261704   -0.0743597    0.1267006
3-6 months     JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     1                    4+                 0.0035967   -0.0107515    0.0179448
3-6 months     JiVitA-3         BANGLADESH                     2                    4+                 0.0020162   -0.0137474    0.0177799
3-6 months     JiVitA-3         BANGLADESH                     3                    4+                 0.0043346   -0.0117072    0.0203763
3-6 months     JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     1                    4+                -0.0469389   -0.0929638   -0.0009140
3-6 months     JiVitA-4         BANGLADESH                     2                    4+                -0.0543817   -0.1051067   -0.0036566
3-6 months     JiVitA-4         BANGLADESH                     3                    4+                -0.0532119   -0.1067650    0.0003411
3-6 months     MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     1                    4+                 0.0025062   -0.0978911    0.1029035
3-6 months     MAL-ED           BANGLADESH                     2                    4+                 0.0557814   -0.0496702    0.1612330
3-6 months     MAL-ED           BANGLADESH                     3                    4+                 0.0033601   -0.1056123    0.1123326
3-6 months     MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          1                    4+                 0.0144963   -0.0365470    0.0655396
3-6 months     MAL-ED           INDIA                          2                    4+                 0.0267045   -0.0246364    0.0780453
3-6 months     MAL-ED           INDIA                          3                    4+                 0.0303971   -0.0332980    0.0940923
3-6 months     MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          1                    4+                -0.0469847   -0.1023593    0.0083899
3-6 months     MAL-ED           NEPAL                          2                    4+                -0.0042892   -0.0541408    0.0455624
3-6 months     MAL-ED           NEPAL                          3                    4+                -0.0135997   -0.0724291    0.0452296
3-6 months     MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           1                    4+                -0.0275999   -0.0910518    0.0358520
3-6 months     MAL-ED           PERU                           2                    4+                 0.0181019   -0.0420581    0.0782620
3-6 months     MAL-ED           PERU                           3                    4+                 0.0062858   -0.0374649    0.0500364
3-6 months     MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   1                    4+                -0.0901774   -0.1798108   -0.0005439
3-6 months     MAL-ED           SOUTH AFRICA                   2                    4+                -0.0047187   -0.1074920    0.0980547
3-6 months     MAL-ED           SOUTH AFRICA                   3                    4+                -0.0632383   -0.1467902    0.0203137
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0282557   -0.1302713    0.1867826
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0005215   -0.0591547    0.0601977
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0199388   -0.0426766    0.0825541
3-6 months     NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    4+                -0.0203956   -0.0558194    0.0150282
3-6 months     NIH-Crypto       BANGLADESH                     2                    4+                -0.0117010   -0.0533980    0.0299960
3-6 months     NIH-Crypto       BANGLADESH                     3                    4+                 0.0222880   -0.0233841    0.0679601
3-6 months     PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    4+                -0.0118900   -0.0637465    0.0399665
3-6 months     PROVIDE          BANGLADESH                     2                    4+                 0.0067966   -0.0486474    0.0622407
3-6 months     PROVIDE          BANGLADESH                     3                    4+                 0.0101557   -0.0607082    0.0810196
6-9 months     CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    4+                -0.0161292   -0.0644281    0.0321696
6-9 months     CMC-V-BCS-2002   INDIA                          2                    4+                 0.0002743   -0.0521463    0.0526949
6-9 months     CMC-V-BCS-2002   INDIA                          3                    4+                 0.0267612   -0.0343960    0.0879184
6-9 months     COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    4+                -0.0535045   -0.0709568   -0.0360522
6-9 months     COHORTS          INDIA                          2                    4+                -0.0271734   -0.0459964   -0.0083503
6-9 months     COHORTS          INDIA                          3                    4+                -0.0037762   -0.0315030    0.0239506
6-9 months     CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     CONTENT          PERU                           1                    4+                -0.0307416   -0.1117877    0.0503046
6-9 months     CONTENT          PERU                           2                    4+                -0.0451605   -0.0996794    0.0093584
6-9 months     CONTENT          PERU                           3                    4+                 0.0149193   -0.0771007    0.1069392
6-9 months     GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    4+                 0.0106289   -0.0349829    0.0562408
6-9 months     GMS-Nepal        NEPAL                          2                    4+                 0.0054580   -0.0291769    0.0400929
6-9 months     GMS-Nepal        NEPAL                          3                    4+                -0.0024685   -0.0333551    0.0284181
6-9 months     IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    4+                 0.0545823   -0.0097397    0.1189042
6-9 months     IRC              INDIA                          2                    4+                 0.0634554   -0.0015678    0.1284785
6-9 months     IRC              INDIA                          3                    4+                 0.0349038   -0.0340237    0.1038313
6-9 months     JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     1                    4+                -0.0017252   -0.0172318    0.0137813
6-9 months     JiVitA-4         BANGLADESH                     2                    4+                -0.0025574   -0.0182232    0.0131084
6-9 months     JiVitA-4         BANGLADESH                     3                    4+                 0.0157208   -0.0034014    0.0348429
6-9 months     MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     1                    4+                -0.0615926   -0.1483734    0.0251882
6-9 months     MAL-ED           BANGLADESH                     2                    4+                -0.0430580   -0.1334347    0.0473187
6-9 months     MAL-ED           BANGLADESH                     3                    4+                -0.0443079   -0.1353002    0.0466844
6-9 months     MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          1                    4+                 0.0530247    0.0065038    0.0995456
6-9 months     MAL-ED           INDIA                          2                    4+                 0.0095915   -0.0355322    0.0547153
6-9 months     MAL-ED           INDIA                          3                    4+                 0.0307235   -0.0225777    0.0840248
6-9 months     MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          1                    4+                -0.0036796   -0.0462327    0.0388734
6-9 months     MAL-ED           NEPAL                          2                    4+                -0.0032488   -0.0593402    0.0528426
6-9 months     MAL-ED           NEPAL                          3                    4+                 0.0326827   -0.0293678    0.0947331
6-9 months     MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           1                    4+                -0.0002098   -0.0499063    0.0494868
6-9 months     MAL-ED           PERU                           2                    4+                -0.0245454   -0.0592538    0.0101631
6-9 months     MAL-ED           PERU                           3                    4+                -0.0132266   -0.0616868    0.0352337
6-9 months     MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   1                    4+                -0.0383412   -0.1665956    0.0899132
6-9 months     MAL-ED           SOUTH AFRICA                   2                    4+                 0.0612540   -0.0412363    0.1637442
6-9 months     MAL-ED           SOUTH AFRICA                   3                    4+                 0.0127840   -0.0575733    0.0831413
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0075862   -0.1328795    0.1177070
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0548406   -0.1071433   -0.0025379
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0394911   -0.1097031    0.0307210
6-9 months     NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    4+                -0.0158315   -0.0458189    0.0141558
6-9 months     NIH-Crypto       BANGLADESH                     2                    4+                -0.0267584   -0.0591975    0.0056806
6-9 months     NIH-Crypto       BANGLADESH                     3                    4+                -0.0052211   -0.0584782    0.0480360
6-9 months     PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    4+                -0.0390713   -0.0945059    0.0163633
6-9 months     PROVIDE          BANGLADESH                     2                    4+                -0.0206548   -0.0794805    0.0381709
6-9 months     PROVIDE          BANGLADESH                     3                    4+                -0.0023920   -0.0666827    0.0618987
9-12 months    CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    4+                -0.0423632   -0.1124036    0.0276771
9-12 months    CMC-V-BCS-2002   INDIA                          2                    4+                -0.0759005   -0.1484671   -0.0033338
9-12 months    CMC-V-BCS-2002   INDIA                          3                    4+                 0.0238421   -0.0600121    0.1076962
9-12 months    COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    4+                -0.0441078   -0.0645500   -0.0236656
9-12 months    COHORTS          INDIA                          2                    4+                -0.0302656   -0.0516879   -0.0088434
9-12 months    COHORTS          INDIA                          3                    4+                -0.0206114   -0.0500249    0.0088021
9-12 months    CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    CONTENT          PERU                           1                    4+                -0.0627189   -0.1178788   -0.0075589
9-12 months    CONTENT          PERU                           2                    4+                -0.0850494   -0.1236165   -0.0464824
9-12 months    CONTENT          PERU                           3                    4+                -0.0590631   -0.1215974    0.0034712
9-12 months    GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    4+                -0.0042374   -0.0462256    0.0377509
9-12 months    GMS-Nepal        NEPAL                          2                    4+                -0.0243257   -0.0621861    0.0135346
9-12 months    GMS-Nepal        NEPAL                          3                    4+                -0.0039351   -0.0344423    0.0265722
9-12 months    IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    4+                -0.0079557   -0.0763636    0.0604521
9-12 months    IRC              INDIA                          2                    4+                 0.0030883   -0.0655830    0.0717595
9-12 months    IRC              INDIA                          3                    4+                 0.0043004   -0.0713846    0.0799855
9-12 months    JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     1                    4+                -0.0150018   -0.0259115   -0.0040921
9-12 months    JiVitA-4         BANGLADESH                     2                    4+                -0.0176724   -0.0327233   -0.0026215
9-12 months    JiVitA-4         BANGLADESH                     3                    4+                -0.0100825   -0.0244408    0.0042757
9-12 months    MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     1                    4+                -0.0428114   -0.1369333    0.0513104
9-12 months    MAL-ED           BANGLADESH                     2                    4+                -0.0517409   -0.1491537    0.0456718
9-12 months    MAL-ED           BANGLADESH                     3                    4+                -0.0501871   -0.1488065    0.0484322
9-12 months    MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          1                    4+                -0.0161740   -0.0701259    0.0377778
9-12 months    MAL-ED           INDIA                          2                    4+                -0.0157587   -0.0714587    0.0399412
9-12 months    MAL-ED           INDIA                          3                    4+                -0.0186851   -0.0751470    0.0377767
9-12 months    MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          1                    4+                -0.0341376   -0.0814674    0.0131922
9-12 months    MAL-ED           NEPAL                          2                    4+                 0.0061946   -0.0325461    0.0449353
9-12 months    MAL-ED           NEPAL                          3                    4+                -0.0006870   -0.0371035    0.0357294
9-12 months    MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           1                    4+                -0.0473986   -0.0804965   -0.0143007
9-12 months    MAL-ED           PERU                           2                    4+                 0.0206747   -0.0211452    0.0624947
9-12 months    MAL-ED           PERU                           3                    4+                 0.0187183   -0.0263830    0.0638196
9-12 months    MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   1                    4+                 0.0578504   -0.0121411    0.1278420
9-12 months    MAL-ED           SOUTH AFRICA                   2                    4+                -0.0183810   -0.1003789    0.0636169
9-12 months    MAL-ED           SOUTH AFRICA                   3                    4+                -0.0294757   -0.1108783    0.0519268
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0585375   -0.1941545    0.0770796
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0420037   -0.0948225    0.0108151
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0063520   -0.0543246    0.0416206
9-12 months    NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    4+                -0.0193063   -0.0451304    0.0065178
9-12 months    NIH-Crypto       BANGLADESH                     2                    4+                -0.0175994   -0.0461940    0.0109951
9-12 months    NIH-Crypto       BANGLADESH                     3                    4+                 0.0318259   -0.0155989    0.0792506
9-12 months    PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    4+                 0.0010457   -0.0507730    0.0528644
9-12 months    PROVIDE          BANGLADESH                     2                    4+                 0.0034356   -0.0536856    0.0605568
9-12 months    PROVIDE          BANGLADESH                     3                    4+                 0.0043609   -0.0552119    0.0639337
12-15 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    4+                 0.0438439   -0.0327162    0.1204041
12-15 months   CMC-V-BCS-2002   INDIA                          2                    4+                 0.0239899   -0.0540795    0.1020593
12-15 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.0050529   -0.0871396    0.0770338
12-15 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   CONTENT          PERU                           1                    4+                 0.0287820   -0.0127671    0.0703311
12-15 months   CONTENT          PERU                           2                    4+                -0.0182018   -0.0857033    0.0492996
12-15 months   CONTENT          PERU                           3                    4+                -0.0305850   -0.1084740    0.0473040
12-15 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    4+                -0.0050435   -0.0531940    0.0431070
12-15 months   GMS-Nepal        NEPAL                          2                    4+                 0.0402650    0.0064357    0.0740943
12-15 months   GMS-Nepal        NEPAL                          3                    4+                 0.0240243   -0.0094406    0.0574893
12-15 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    4+                 0.0223264   -0.0355965    0.0802492
12-15 months   IRC              INDIA                          2                    4+                 0.0110654   -0.0467683    0.0688990
12-15 months   IRC              INDIA                          3                    4+                 0.0536186   -0.0137924    0.1210296
12-15 months   JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     1                    4+                 0.0043744   -0.0140688    0.0228176
12-15 months   JiVitA-4         BANGLADESH                     2                    4+                 0.0089941   -0.0112037    0.0291920
12-15 months   JiVitA-4         BANGLADESH                     3                    4+                 0.0139227   -0.0068722    0.0347176
12-15 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     1                    4+                -0.0394670   -0.1053104    0.0263764
12-15 months   MAL-ED           BANGLADESH                     2                    4+                -0.0455427   -0.1167995    0.0257141
12-15 months   MAL-ED           BANGLADESH                     3                    4+                -0.0490159   -0.1230510    0.0250192
12-15 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          1                    4+                 0.0073626   -0.0427667    0.0574920
12-15 months   MAL-ED           INDIA                          2                    4+                 0.0107976   -0.0413158    0.0629110
12-15 months   MAL-ED           INDIA                          3                    4+                -0.0141656   -0.0701715    0.0418402
12-15 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          1                    4+                 0.0090591   -0.0492426    0.0673607
12-15 months   MAL-ED           NEPAL                          2                    4+                 0.0157687   -0.0331564    0.0646939
12-15 months   MAL-ED           NEPAL                          3                    4+                -0.0160292   -0.0746585    0.0426000
12-15 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           1                    4+                 0.0223834   -0.0320105    0.0767773
12-15 months   MAL-ED           PERU                           2                    4+                -0.0442840   -0.0876644   -0.0009036
12-15 months   MAL-ED           PERU                           3                    4+                -0.0135956   -0.0579270    0.0307358
12-15 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.0632727   -0.2710610    0.1445157
12-15 months   MAL-ED           SOUTH AFRICA                   2                    4+                -0.0487832   -0.1380200    0.0404536
12-15 months   MAL-ED           SOUTH AFRICA                   3                    4+                 0.0016040   -0.0723432    0.0755513
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.1367924   -0.0095972    0.2831820
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0449709   -0.0230282    0.1129700
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0231297   -0.0350530    0.0813124
12-15 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.0143943   -0.0456897    0.0169011
12-15 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.0059487   -0.0421283    0.0302309
12-15 months   NIH-Crypto       BANGLADESH                     3                    4+                -0.0124665   -0.0698201    0.0448870
12-15 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    4+                -0.0579414   -0.1364543    0.0205715
12-15 months   PROVIDE          BANGLADESH                     2                    4+                -0.0705542   -0.1529886    0.0118801
12-15 months   PROVIDE          BANGLADESH                     3                    4+                -0.0421895   -0.1273573    0.0429783
15-18 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.0389600   -0.1275886    0.0496687
15-18 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.0018993   -0.0944731    0.0906746
15-18 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.0261476   -0.1169265    0.0646313
15-18 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   CONTENT          PERU                           1                    4+                 0.0240871   -0.0251591    0.0733333
15-18 months   CONTENT          PERU                           2                    4+                -0.0086519   -0.0570787    0.0397750
15-18 months   CONTENT          PERU                           3                    4+                 0.0123412   -0.0684552    0.0931376
15-18 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    4+                 0.0319328   -0.0262274    0.0900929
15-18 months   GMS-Nepal        NEPAL                          2                    4+                -0.0100255   -0.0485677    0.0285166
15-18 months   GMS-Nepal        NEPAL                          3                    4+                 0.0032417   -0.0391699    0.0456533
15-18 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    4+                -0.0214478   -0.0859295    0.0430340
15-18 months   IRC              INDIA                          2                    4+                 0.0195010   -0.0447526    0.0837546
15-18 months   IRC              INDIA                          3                    4+                -0.0663151   -0.1397467    0.0071165
15-18 months   JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     1                    4+                 0.0089273   -0.0070183    0.0248729
15-18 months   JiVitA-4         BANGLADESH                     2                    4+                 0.0147328   -0.0046868    0.0341524
15-18 months   JiVitA-4         BANGLADESH                     3                    4+                -0.0132059   -0.0312417    0.0048299
15-18 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     1                    4+                 0.0035903   -0.0618965    0.0690771
15-18 months   MAL-ED           BANGLADESH                     2                    4+                 0.0242329   -0.0531839    0.1016497
15-18 months   MAL-ED           BANGLADESH                     3                    4+                 0.0045567   -0.0712935    0.0804069
15-18 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          1                    4+                 0.0107199   -0.0380086    0.0594483
15-18 months   MAL-ED           INDIA                          2                    4+                 0.0109071   -0.0402211    0.0620353
15-18 months   MAL-ED           INDIA                          3                    4+                 0.0273356   -0.0271512    0.0818223
15-18 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          1                    4+                 0.0265500   -0.0242556    0.0773556
15-18 months   MAL-ED           NEPAL                          2                    4+                -0.0088434   -0.0567475    0.0390607
15-18 months   MAL-ED           NEPAL                          3                    4+                 0.0370089   -0.0215860    0.0956037
15-18 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           1                    4+                 0.0039290   -0.0761299    0.0839878
15-18 months   MAL-ED           PERU                           2                    4+                -0.0135623   -0.0721540    0.0450294
15-18 months   MAL-ED           PERU                           3                    4+                -0.0274971   -0.0781461    0.0231519
15-18 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.0055495   -0.2698572    0.2587582
15-18 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.0238986   -0.0703637    0.1181608
15-18 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.0642368   -0.1505805    0.0221069
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0220924   -0.1166600    0.1608448
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0373212   -0.0217125    0.0963548
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0319776   -0.0270432    0.0909984
15-18 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.0072699   -0.0403433    0.0258036
15-18 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.0199542   -0.0592023    0.0192940
15-18 months   NIH-Crypto       BANGLADESH                     3                    4+                -0.0104885   -0.0554334    0.0344564
15-18 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    4+                -0.0322459   -0.0934182    0.0289264
15-18 months   PROVIDE          BANGLADESH                     2                    4+                -0.0366759   -0.1040623    0.0307104
15-18 months   PROVIDE          BANGLADESH                     3                    4+                -0.0401859   -0.1134672    0.0330954
18-21 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.0339166   -0.0968448    0.0290116
18-21 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.0487029   -0.1219307    0.0245248
18-21 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.0218553   -0.0919219    0.0482112
18-21 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   CONTENT          PERU                           1                    4+                -0.0457441   -0.1130631    0.0215749
18-21 months   CONTENT          PERU                           2                    4+                -0.0530132   -0.1061208    0.0000945
18-21 months   CONTENT          PERU                           3                    4+                -0.0167820   -0.1183837    0.0848197
18-21 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    4+                -0.0605010   -0.1311475    0.0101455
18-21 months   GMS-Nepal        NEPAL                          2                    4+                 0.0339878   -0.0042689    0.0722444
18-21 months   GMS-Nepal        NEPAL                          3                    4+                 0.0258065   -0.0161889    0.0678019
18-21 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    4+                -0.1158880   -0.2289332   -0.0028428
18-21 months   IRC              INDIA                          2                    4+                -0.1097407   -0.2224703    0.0029889
18-21 months   IRC              INDIA                          3                    4+                -0.1568376   -0.2745344   -0.0391408
18-21 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     1                    4+                -0.0378612   -0.1352266    0.0595042
18-21 months   MAL-ED           BANGLADESH                     2                    4+                 0.0077862   -0.0946579    0.1102304
18-21 months   MAL-ED           BANGLADESH                     3                    4+                -0.0045826   -0.1152139    0.1060487
18-21 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          1                    4+                -0.0141182   -0.0631510    0.0349147
18-21 months   MAL-ED           INDIA                          2                    4+                -0.0435511   -0.0945503    0.0074482
18-21 months   MAL-ED           INDIA                          3                    4+                -0.0558020   -0.1072828   -0.0043213
18-21 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          1                    4+                -0.0300584   -0.0705493    0.0104326
18-21 months   MAL-ED           NEPAL                          2                    4+                -0.0368830   -0.1023982    0.0286322
18-21 months   MAL-ED           NEPAL                          3                    4+                -0.0429056   -0.1241614    0.0383502
18-21 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           1                    4+                 0.0165196   -0.0570738    0.0901130
18-21 months   MAL-ED           PERU                           2                    4+                 0.0041932   -0.0560812    0.0644676
18-21 months   MAL-ED           PERU                           3                    4+                -0.0297936   -0.0786114    0.0190242
18-21 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.0395418   -0.2051047    0.1260212
18-21 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.0151969   -0.0710998    0.1014935
18-21 months   MAL-ED           SOUTH AFRICA                   3                    4+                 0.0014880   -0.1161064    0.1190824
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0036465   -0.1523989    0.1596920
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0218888   -0.0907549    0.0469773
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0164600   -0.0373357    0.0702558
18-21 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.0008638   -0.0340695    0.0323419
18-21 months   NIH-Crypto       BANGLADESH                     2                    4+                 0.0189919   -0.0180189    0.0560028
18-21 months   NIH-Crypto       BANGLADESH                     3                    4+                 0.0081743   -0.0353177    0.0516663
18-21 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    4+                -0.0415066   -0.0927884    0.0097752
18-21 months   PROVIDE          BANGLADESH                     2                    4+                -0.0239544   -0.0815386    0.0336297
18-21 months   PROVIDE          BANGLADESH                     3                    4+                -0.0305768   -0.0933182    0.0321646
21-24 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.0015126   -0.0863036    0.0832784
21-24 months   CMC-V-BCS-2002   INDIA                          2                    4+                 0.0179831   -0.0709616    0.1069279
21-24 months   CMC-V-BCS-2002   INDIA                          3                    4+                 0.0024430   -0.0913467    0.0962327
21-24 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   CONTENT          PERU                           1                    4+                 0.0035187   -0.1503128    0.1573502
21-24 months   CONTENT          PERU                           2                    4+                 0.0940061   -0.0421601    0.2301722
21-24 months   CONTENT          PERU                           3                    4+                -0.0025040   -0.1299032    0.1248951
21-24 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    4+                 0.0454303   -0.0543680    0.1452285
21-24 months   GMS-Nepal        NEPAL                          2                    4+                -0.0170406   -0.0824838    0.0484026
21-24 months   GMS-Nepal        NEPAL                          3                    4+                -0.0477660   -0.1121385    0.0166065
21-24 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    4+                 0.0026128   -0.0791336    0.0843592
21-24 months   IRC              INDIA                          2                    4+                -0.0006654   -0.0820309    0.0807001
21-24 months   IRC              INDIA                          3                    4+                 0.0186027   -0.0759063    0.1131118
21-24 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     1                    4+                 0.0148363   -0.0551674    0.0848399
21-24 months   MAL-ED           BANGLADESH                     2                    4+                 0.0115509   -0.0679332    0.0910350
21-24 months   MAL-ED           BANGLADESH                     3                    4+                 0.0125052   -0.0698730    0.0948834
21-24 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          1                    4+                 0.0060390   -0.0441035    0.0561814
21-24 months   MAL-ED           INDIA                          2                    4+                 0.0242350   -0.0279750    0.0764451
21-24 months   MAL-ED           INDIA                          3                    4+                 0.0126951   -0.0400311    0.0654212
21-24 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          1                    4+                 0.0061997   -0.0432721    0.0556715
21-24 months   MAL-ED           NEPAL                          2                    4+                 0.0193217   -0.0362880    0.0749314
21-24 months   MAL-ED           NEPAL                          3                    4+                 0.0143787   -0.0499015    0.0786590
21-24 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           1                    4+                 0.0295112   -0.0317734    0.0907958
21-24 months   MAL-ED           PERU                           2                    4+                -0.0457224   -0.0971595    0.0057147
21-24 months   MAL-ED           PERU                           3                    4+                 0.0287178   -0.0201465    0.0775820
21-24 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   1                    4+                 0.1120124   -0.0362615    0.2602864
21-24 months   MAL-ED           SOUTH AFRICA                   2                    4+                -0.0200182   -0.0985434    0.0585071
21-24 months   MAL-ED           SOUTH AFRICA                   3                    4+                 0.0295585   -0.0679867    0.1271036
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.1240907   -0.2928932    0.0447119
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0747416   -0.1430309   -0.0064522
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0274081   -0.0933003    0.0384840
21-24 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.0374755   -0.0729598   -0.0019912
21-24 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.0390495   -0.0782874    0.0001883
21-24 months   NIH-Crypto       BANGLADESH                     3                    4+                -0.0131559   -0.0640747    0.0377629
21-24 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    4+                -0.0151777   -0.0610102    0.0306549
21-24 months   PROVIDE          BANGLADESH                     2                    4+                -0.0066821   -0.0616263    0.0482621
21-24 months   PROVIDE          BANGLADESH                     3                    4+                 0.0237283   -0.0360573    0.0835139


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0314159   -0.0921687    0.1550004
0-3 months     COHORTS          INDIA                          4+                   NA                -0.0687363   -0.0906179   -0.0468547
0-3 months     GMS-Nepal        NEPAL                          4+                   NA                 0.0082206   -0.0097060    0.0261472
0-3 months     IRC              INDIA                          4+                   NA                -0.0767148   -0.1521936   -0.0012361
0-3 months     JiVitA-3         BANGLADESH                     4+                   NA                -0.0046235   -0.0114947    0.0022477
0-3 months     JiVitA-4         BANGLADESH                     4+                   NA                 0.0129166   -0.0660457    0.0918789
0-3 months     MAL-ED           BANGLADESH                     4+                   NA                -0.0194987   -0.1436619    0.1046645
0-3 months     MAL-ED           INDIA                          4+                   NA                -0.0147508   -0.0683047    0.0388032
0-3 months     MAL-ED           NEPAL                          4+                   NA                 0.0098620   -0.0146930    0.0344170
0-3 months     MAL-ED           PERU                           4+                   NA                -0.0160558   -0.0424424    0.0103309
0-3 months     MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0035697   -0.0103806    0.0175200
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0113942   -0.0477629    0.0249746
0-3 months     NIH-Crypto       BANGLADESH                     4+                   NA                -0.0005894   -0.0421128    0.0409341
0-3 months     PROVIDE          BANGLADESH                     4+                   NA                -0.0182306   -0.1032359    0.0667747
3-6 months     CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0398947   -0.1536534    0.0738640
3-6 months     COHORTS          INDIA                          4+                   NA                -0.0446735   -0.0594901   -0.0298569
3-6 months     CONTENT          PERU                           4+                   NA                 0.0007660   -0.0239976    0.0255295
3-6 months     GMS-Nepal        NEPAL                          4+                   NA                 0.0133088   -0.0010390    0.0276565
3-6 months     IRC              INDIA                          4+                   NA                 0.0685459   -0.0142441    0.1513359
3-6 months     JiVitA-3         BANGLADESH                     4+                   NA                 0.0014846   -0.0119327    0.0149019
3-6 months     JiVitA-4         BANGLADESH                     4+                   NA                -0.0499578   -0.0936355   -0.0062801
3-6 months     MAL-ED           BANGLADESH                     4+                   NA                 0.0117406   -0.0837749    0.1072562
3-6 months     MAL-ED           INDIA                          4+                   NA                 0.0205201   -0.0207693    0.0618096
3-6 months     MAL-ED           NEPAL                          4+                   NA                -0.0118551   -0.0300859    0.0063756
3-6 months     MAL-ED           PERU                           4+                   NA                 0.0021508   -0.0165487    0.0208503
3-6 months     MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0097531   -0.0233805    0.0038743
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0013315   -0.0271159    0.0297788
3-6 months     NIH-Crypto       BANGLADESH                     4+                   NA                -0.0090572   -0.0384655    0.0203510
3-6 months     PROVIDE          BANGLADESH                     4+                   NA                -0.0077682   -0.0572204    0.0416841
6-9 months     CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0061360   -0.0498908    0.0376189
6-9 months     COHORTS          INDIA                          4+                   NA                -0.0423405   -0.0588367   -0.0258442
6-9 months     CONTENT          PERU                           4+                   NA                -0.0248024   -0.0626767    0.0130720
6-9 months     GMS-Nepal        NEPAL                          4+                   NA                 0.0013187   -0.0125053    0.0151428
6-9 months     IRC              INDIA                          4+                   NA                 0.0538383   -0.0059569    0.1136335
6-9 months     JiVitA-4         BANGLADESH                     4+                   NA                -0.0024579   -0.0149550    0.0100392
6-9 months     MAL-ED           BANGLADESH                     4+                   NA                -0.0560100   -0.1380440    0.0260241
6-9 months     MAL-ED           INDIA                          4+                   NA                 0.0284875   -0.0085480    0.0655231
6-9 months     MAL-ED           NEPAL                          4+                   NA                 0.0011610   -0.0125209    0.0148429
6-9 months     MAL-ED           PERU                           4+                   NA                -0.0058613   -0.0206657    0.0089432
6-9 months     MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0032950   -0.0082900    0.0148800
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0250730   -0.0517946    0.0016486
6-9 months     NIH-Crypto       BANGLADESH                     4+                   NA                -0.0137606   -0.0381914    0.0106702
6-9 months     PROVIDE          BANGLADESH                     4+                   NA                -0.0307456   -0.0838624    0.0223713
9-12 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0401970   -0.1059115    0.0255174
9-12 months    COHORTS          INDIA                          4+                   NA                -0.0372445   -0.0565169   -0.0179721
9-12 months    CONTENT          PERU                           4+                   NA                -0.0461438   -0.0696832   -0.0226044
9-12 months    GMS-Nepal        NEPAL                          4+                   NA                -0.0069815   -0.0209172    0.0069541
9-12 months    IRC              INDIA                          4+                   NA                -0.0024909   -0.0663041    0.0613223
9-12 months    JiVitA-4         BANGLADESH                     4+                   NA                -0.0146499   -0.0236784   -0.0056213
9-12 months    MAL-ED           BANGLADESH                     4+                   NA                -0.0426757   -0.1320996    0.0467483
9-12 months    MAL-ED           INDIA                          4+                   NA                -0.0160462   -0.0612957    0.0292032
9-12 months    MAL-ED           NEPAL                          4+                   NA                -0.0039494   -0.0169885    0.0090897
9-12 months    MAL-ED           PERU                           4+                   NA                 0.0036020   -0.0118771    0.0190812
9-12 months    MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0019411   -0.0127803    0.0088981
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0126289   -0.0341795    0.0089217
9-12 months    NIH-Crypto       BANGLADESH                     4+                   NA                -0.0092621   -0.0292460    0.0107218
9-12 months    PROVIDE          BANGLADESH                     4+                   NA                 0.0014463   -0.0483009    0.0511936
12-15 months   CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0311270   -0.0418660    0.1041201
12-15 months   CONTENT          PERU                           4+                   NA                -0.0032065   -0.0259171    0.0195041
12-15 months   GMS-Nepal        NEPAL                          4+                   NA                 0.0139535   -0.0004500    0.0283569
12-15 months   IRC              INDIA                          4+                   NA                 0.0196152   -0.0345113    0.0737418
12-15 months   JiVitA-4         BANGLADESH                     4+                   NA                 0.0046098   -0.0123052    0.0215248
12-15 months   MAL-ED           BANGLADESH                     4+                   NA                -0.0394094   -0.1010208    0.0222020
12-15 months   MAL-ED           INDIA                          4+                   NA                 0.0032576   -0.0379223    0.0444374
12-15 months   MAL-ED           NEPAL                          4+                   NA                 0.0003890   -0.0153939    0.0161718
12-15 months   MAL-ED           PERU                           4+                   NA                -0.0062538   -0.0225465    0.0100389
12-15 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0071672   -0.0225033    0.0081688
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0209245   -0.0062170    0.0480660
12-15 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0109725   -0.0369977    0.0150527
12-15 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0574255   -0.1329712    0.0181201
15-18 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0241682   -0.1095010    0.0611646
15-18 months   CONTENT          PERU                           4+                   NA                -0.0234747   -0.0499800    0.0030307
15-18 months   GMS-Nepal        NEPAL                          4+                   NA                 0.0006256   -0.0168014    0.0180526
15-18 months   IRC              INDIA                          4+                   NA                -0.0066568   -0.0670556    0.0537421
15-18 months   JiVitA-4         BANGLADESH                     4+                   NA                 0.0082811   -0.0054506    0.0220129
15-18 months   MAL-ED           BANGLADESH                     4+                   NA                 0.0035797   -0.0581708    0.0653302
15-18 months   MAL-ED           INDIA                          4+                   NA                 0.0128759   -0.0274715    0.0532233
15-18 months   MAL-ED           NEPAL                          4+                   NA                 0.0075391   -0.0076575    0.0227357
15-18 months   MAL-ED           PERU                           4+                   NA                -0.0093948   -0.0278051    0.0090154
15-18 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0053736   -0.0218180    0.0110707
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0183443   -0.0068713    0.0435599
15-18 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0112047   -0.0387692    0.0163599
15-18 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0304879   -0.0890452    0.0280694
18-21 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0362310   -0.0968923    0.0244302
18-21 months   CONTENT          PERU                           4+                   NA                -0.0336198   -0.0658049   -0.0014346
18-21 months   GMS-Nepal        NEPAL                          4+                   NA                 0.0086989   -0.0086380    0.0260359
18-21 months   IRC              INDIA                          4+                   NA                -0.1120893   -0.2199872   -0.0041914
18-21 months   MAL-ED           BANGLADESH                     4+                   NA                -0.0230005   -0.1150853    0.0690843
18-21 months   MAL-ED           INDIA                          4+                   NA                -0.0304193   -0.0711454    0.0103068
18-21 months   MAL-ED           NEPAL                          4+                   NA                -0.0157993   -0.0321206    0.0005220
18-21 months   MAL-ED           PERU                           4+                   NA                -0.0062338   -0.0241603    0.0116926
18-21 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0005016   -0.0162809    0.0152777
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0003306   -0.0267378    0.0260766
18-21 months   NIH-Crypto       BANGLADESH                     4+                   NA                 0.0060322   -0.0209818    0.0330461
18-21 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0366565   -0.0855565    0.0122435
21-24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0066659   -0.0751951    0.0885268
21-24 months   CONTENT          PERU                           4+                   NA                 0.0297412   -0.0581539    0.1176364
21-24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0182028   -0.0451724    0.0087667
21-24 months   IRC              INDIA                          4+                   NA                 0.0026433   -0.0746981    0.0799847
21-24 months   MAL-ED           BANGLADESH                     4+                   NA                 0.0093940   -0.0566948    0.0754828
21-24 months   MAL-ED           INDIA                          4+                   NA                 0.0130195   -0.0297264    0.0557655
21-24 months   MAL-ED           NEPAL                          4+                   NA                 0.0050796   -0.0121963    0.0223556
21-24 months   MAL-ED           PERU                           4+                   NA                 0.0046679   -0.0119317    0.0212676
21-24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0076960   -0.0064870    0.0218790
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0296588   -0.0591649   -0.0001527
21-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0295681   -0.0575380   -0.0015982
21-24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0108181   -0.0547662    0.0331300
