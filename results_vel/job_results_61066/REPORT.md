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
0-3 months     CMC-V-BCS-2002   INDIA                          4+             4      88
0-3 months     CMC-V-BCS-2002   INDIA                          1             33      88
0-3 months     CMC-V-BCS-2002   INDIA                          2             33      88
0-3 months     CMC-V-BCS-2002   INDIA                          3             18      88
0-3 months     COHORTS          INDIA                          4+            89    4653
0-3 months     COHORTS          INDIA                          1           3049    4653
0-3 months     COHORTS          INDIA                          2           1351    4653
0-3 months     COHORTS          INDIA                          3            164    4653
0-3 months     CONTENT          PERU                           4+            12      29
0-3 months     CONTENT          PERU                           1              6      29
0-3 months     CONTENT          PERU                           2              7      29
0-3 months     CONTENT          PERU                           3              4      29
0-3 months     GMS-Nepal        NEPAL                          4+           242     509
0-3 months     GMS-Nepal        NEPAL                          1             34     509
0-3 months     GMS-Nepal        NEPAL                          2            108     509
0-3 months     GMS-Nepal        NEPAL                          3            125     509
0-3 months     IRC              INDIA                          4+            17     375
0-3 months     IRC              INDIA                          1            171     375
0-3 months     IRC              INDIA                          2            154     375
0-3 months     IRC              INDIA                          3             33     375
0-3 months     JiVitA-3         BANGLADESH                     4+           675   19859
0-3 months     JiVitA-3         BANGLADESH                     1          12371   19859
0-3 months     JiVitA-3         BANGLADESH                     2           5138   19859
0-3 months     JiVitA-3         BANGLADESH                     3           1675   19859
0-3 months     JiVitA-4         BANGLADESH                     4+            70    1805
0-3 months     JiVitA-4         BANGLADESH                     1           1111    1805
0-3 months     JiVitA-4         BANGLADESH                     2            452    1805
0-3 months     JiVitA-4         BANGLADESH                     3            172    1805
0-3 months     MAL-ED           BANGLADESH                     4+            11     236
0-3 months     MAL-ED           BANGLADESH                     1            148     236
0-3 months     MAL-ED           BANGLADESH                     2             49     236
0-3 months     MAL-ED           BANGLADESH                     3             28     236
0-3 months     MAL-ED           BRAZIL                         4+            99     163
0-3 months     MAL-ED           BRAZIL                         1              3     163
0-3 months     MAL-ED           BRAZIL                         2             18     163
0-3 months     MAL-ED           BRAZIL                         3             43     163
0-3 months     MAL-ED           INDIA                          4+            21     177
0-3 months     MAL-ED           INDIA                          1             67     177
0-3 months     MAL-ED           INDIA                          2             62     177
0-3 months     MAL-ED           INDIA                          3             27     177
0-3 months     MAL-ED           NEPAL                          4+            88     155
0-3 months     MAL-ED           NEPAL                          1             32     155
0-3 months     MAL-ED           NEPAL                          2             20     155
0-3 months     MAL-ED           NEPAL                          3             15     155
0-3 months     MAL-ED           PERU                           4+           131     254
0-3 months     MAL-ED           PERU                           1             17     254
0-3 months     MAL-ED           PERU                           2             47     254
0-3 months     MAL-ED           PERU                           3             59     254
0-3 months     MAL-ED           SOUTH AFRICA                   4+           145     198
0-3 months     MAL-ED           SOUTH AFRICA                   1             11     198
0-3 months     MAL-ED           SOUTH AFRICA                   2             19     198
0-3 months     MAL-ED           SOUTH AFRICA                   3             23     198
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            94     225
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             13     225
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             55     225
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             63     225
0-3 months     NIH-Crypto       BANGLADESH                     4+            91     721
0-3 months     NIH-Crypto       BANGLADESH                     1            345     721
0-3 months     NIH-Crypto       BANGLADESH                     2            183     721
0-3 months     NIH-Crypto       BANGLADESH                     3            102     721
0-3 months     PROVIDE          BANGLADESH                     4+            22     640
0-3 months     PROVIDE          BANGLADESH                     1            458     640
0-3 months     PROVIDE          BANGLADESH                     2            101     640
0-3 months     PROVIDE          BANGLADESH                     3             59     640
3-6 months     CMC-V-BCS-2002   INDIA                          4+            12     307
3-6 months     CMC-V-BCS-2002   INDIA                          1            161     307
3-6 months     CMC-V-BCS-2002   INDIA                          2             86     307
3-6 months     CMC-V-BCS-2002   INDIA                          3             48     307
3-6 months     COHORTS          INDIA                          4+            85    4710
3-6 months     COHORTS          INDIA                          1           3056    4710
3-6 months     COHORTS          INDIA                          2           1396    4710
3-6 months     COHORTS          INDIA                          3            173    4710
3-6 months     CONTENT          PERU                           4+            78     214
3-6 months     CONTENT          PERU                           1             44     214
3-6 months     CONTENT          PERU                           2             54     214
3-6 months     CONTENT          PERU                           3             38     214
3-6 months     GMS-Nepal        NEPAL                          4+           225     469
3-6 months     GMS-Nepal        NEPAL                          1             32     469
3-6 months     GMS-Nepal        NEPAL                          2             96     469
3-6 months     GMS-Nepal        NEPAL                          3            116     469
3-6 months     IRC              INDIA                          4+            17     395
3-6 months     IRC              INDIA                          1            180     395
3-6 months     IRC              INDIA                          2            163     395
3-6 months     IRC              INDIA                          3             35     395
3-6 months     JiVitA-3         BANGLADESH                     4+           504   12572
3-6 months     JiVitA-3         BANGLADESH                     1           7357   12572
3-6 months     JiVitA-3         BANGLADESH                     2           3524   12572
3-6 months     JiVitA-3         BANGLADESH                     3           1187   12572
3-6 months     JiVitA-4         BANGLADESH                     4+            79    1839
3-6 months     JiVitA-4         BANGLADESH                     1           1129    1839
3-6 months     JiVitA-4         BANGLADESH                     2            466    1839
3-6 months     JiVitA-4         BANGLADESH                     3            165    1839
3-6 months     MAL-ED           BANGLADESH                     4+            11     231
3-6 months     MAL-ED           BANGLADESH                     1            145     231
3-6 months     MAL-ED           BANGLADESH                     2             48     231
3-6 months     MAL-ED           BANGLADESH                     3             27     231
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
3-6 months     NIH-Crypto       BANGLADESH                     4+            90     695
3-6 months     NIH-Crypto       BANGLADESH                     1            328     695
3-6 months     NIH-Crypto       BANGLADESH                     2            177     695
3-6 months     NIH-Crypto       BANGLADESH                     3            100     695
3-6 months     PROVIDE          BANGLADESH                     4+            21     598
3-6 months     PROVIDE          BANGLADESH                     1            425     598
3-6 months     PROVIDE          BANGLADESH                     2             94     598
3-6 months     PROVIDE          BANGLADESH                     3             58     598
6-9 months     CMC-V-BCS-2002   INDIA                          4+            14     313
6-9 months     CMC-V-BCS-2002   INDIA                          1            168     313
6-9 months     CMC-V-BCS-2002   INDIA                          2             83     313
6-9 months     CMC-V-BCS-2002   INDIA                          3             48     313
6-9 months     COHORTS          INDIA                          4+            82    4321
6-9 months     COHORTS          INDIA                          1           2778    4321
6-9 months     COHORTS          INDIA                          2           1305    4321
6-9 months     COHORTS          INDIA                          3            156    4321
6-9 months     CONTENT          PERU                           4+            78     214
6-9 months     CONTENT          PERU                           1             44     214
6-9 months     CONTENT          PERU                           2             54     214
6-9 months     CONTENT          PERU                           3             38     214
6-9 months     GMS-Nepal        NEPAL                          4+           228     481
6-9 months     GMS-Nepal        NEPAL                          1             33     481
6-9 months     GMS-Nepal        NEPAL                          2             97     481
6-9 months     GMS-Nepal        NEPAL                          3            123     481
6-9 months     IRC              INDIA                          4+            17     405
6-9 months     IRC              INDIA                          1            183     405
6-9 months     IRC              INDIA                          2            170     405
6-9 months     IRC              INDIA                          3             35     405
6-9 months     JiVitA-4         BANGLADESH                     4+           154    3052
6-9 months     JiVitA-4         BANGLADESH                     1           1817    3052
6-9 months     JiVitA-4         BANGLADESH                     2            771    3052
6-9 months     JiVitA-4         BANGLADESH                     3            310    3052
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
6-9 months     NIH-Crypto       BANGLADESH                     4+            89     688
6-9 months     NIH-Crypto       BANGLADESH                     1            322     688
6-9 months     NIH-Crypto       BANGLADESH                     2            180     688
6-9 months     NIH-Crypto       BANGLADESH                     3             97     688
6-9 months     PROVIDE          BANGLADESH                     4+            20     565
6-9 months     PROVIDE          BANGLADESH                     1            404     565
6-9 months     PROVIDE          BANGLADESH                     2             87     565
6-9 months     PROVIDE          BANGLADESH                     3             54     565
9-12 months    CMC-V-BCS-2002   INDIA                          4+            14     317
9-12 months    CMC-V-BCS-2002   INDIA                          1            178     317
9-12 months    CMC-V-BCS-2002   INDIA                          2             81     317
9-12 months    CMC-V-BCS-2002   INDIA                          3             44     317
9-12 months    COHORTS          INDIA                          4+            74    3720
9-12 months    COHORTS          INDIA                          1           2349    3720
9-12 months    COHORTS          INDIA                          2           1162    3720
9-12 months    COHORTS          INDIA                          3            135    3720
9-12 months    CONTENT          PERU                           4+            77     212
9-12 months    CONTENT          PERU                           1             44     212
9-12 months    CONTENT          PERU                           2             53     212
9-12 months    CONTENT          PERU                           3             38     212
9-12 months    GMS-Nepal        NEPAL                          4+           223     469
9-12 months    GMS-Nepal        NEPAL                          1             33     469
9-12 months    GMS-Nepal        NEPAL                          2             97     469
9-12 months    GMS-Nepal        NEPAL                          3            116     469
9-12 months    IRC              INDIA                          4+            16     398
9-12 months    IRC              INDIA                          1            181     398
9-12 months    IRC              INDIA                          2            167     398
9-12 months    IRC              INDIA                          3             34     398
9-12 months    JiVitA-4         BANGLADESH                     4+           172    3499
9-12 months    JiVitA-4         BANGLADESH                     1           2078    3499
9-12 months    JiVitA-4         BANGLADESH                     2            882    3499
9-12 months    JiVitA-4         BANGLADESH                     3            367    3499
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
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             53     224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             58     224
9-12 months    NIH-Crypto       BANGLADESH                     4+            88     674
9-12 months    NIH-Crypto       BANGLADESH                     1            310     674
9-12 months    NIH-Crypto       BANGLADESH                     2            178     674
9-12 months    NIH-Crypto       BANGLADESH                     3             98     674
9-12 months    PROVIDE          BANGLADESH                     4+            20     566
9-12 months    PROVIDE          BANGLADESH                     1            403     566
9-12 months    PROVIDE          BANGLADESH                     2             89     566
9-12 months    PROVIDE          BANGLADESH                     3             54     566
12-15 months   CMC-V-BCS-2002   INDIA                          4+            13     329
12-15 months   CMC-V-BCS-2002   INDIA                          1            182     329
12-15 months   CMC-V-BCS-2002   INDIA                          2             89     329
12-15 months   CMC-V-BCS-2002   INDIA                          3             45     329
12-15 months   CONTENT          PERU                           4+            70     199
12-15 months   CONTENT          PERU                           1             41     199
12-15 months   CONTENT          PERU                           2             51     199
12-15 months   CONTENT          PERU                           3             37     199
12-15 months   GMS-Nepal        NEPAL                          4+           220     469
12-15 months   GMS-Nepal        NEPAL                          1             34     469
12-15 months   GMS-Nepal        NEPAL                          2            102     469
12-15 months   GMS-Nepal        NEPAL                          3            113     469
12-15 months   IRC              INDIA                          4+            15     388
12-15 months   IRC              INDIA                          1            177     388
12-15 months   IRC              INDIA                          2            162     388
12-15 months   IRC              INDIA                          3             34     388
12-15 months   JiVitA-4         BANGLADESH                     4+           167    3547
12-15 months   JiVitA-4         BANGLADESH                     1           2106    3547
12-15 months   JiVitA-4         BANGLADESH                     2            910    3547
12-15 months   JiVitA-4         BANGLADESH                     3            364    3547
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
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             54     226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             58     226
12-15 months   NIH-Crypto       BANGLADESH                     4+            89     660
12-15 months   NIH-Crypto       BANGLADESH                     1            303     660
12-15 months   NIH-Crypto       BANGLADESH                     2            175     660
12-15 months   NIH-Crypto       BANGLADESH                     3             93     660
12-15 months   PROVIDE          BANGLADESH                     4+            20     532
12-15 months   PROVIDE          BANGLADESH                     1            370     532
12-15 months   PROVIDE          BANGLADESH                     2             88     532
12-15 months   PROVIDE          BANGLADESH                     3             54     532
15-18 months   CMC-V-BCS-2002   INDIA                          4+            11     321
15-18 months   CMC-V-BCS-2002   INDIA                          1            172     321
15-18 months   CMC-V-BCS-2002   INDIA                          2             90     321
15-18 months   CMC-V-BCS-2002   INDIA                          3             48     321
15-18 months   CONTENT          PERU                           4+            67     189
15-18 months   CONTENT          PERU                           1             36     189
15-18 months   CONTENT          PERU                           2             49     189
15-18 months   CONTENT          PERU                           3             37     189
15-18 months   GMS-Nepal        NEPAL                          4+           222     480
15-18 months   GMS-Nepal        NEPAL                          1             35     480
15-18 months   GMS-Nepal        NEPAL                          2            106     480
15-18 months   GMS-Nepal        NEPAL                          3            117     480
15-18 months   IRC              INDIA                          4+            15     380
15-18 months   IRC              INDIA                          1            172     380
15-18 months   IRC              INDIA                          2            159     380
15-18 months   IRC              INDIA                          3             34     380
15-18 months   JiVitA-4         BANGLADESH                     4+           179    3548
15-18 months   JiVitA-4         BANGLADESH                     1           2129    3548
15-18 months   JiVitA-4         BANGLADESH                     2            898    3548
15-18 months   JiVitA-4         BANGLADESH                     3            342    3548
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
15-18 months   MAL-ED           PERU                           4+           112     213
15-18 months   MAL-ED           PERU                           1             17     213
15-18 months   MAL-ED           PERU                           2             37     213
15-18 months   MAL-ED           PERU                           3             47     213
15-18 months   MAL-ED           SOUTH AFRICA                   4+           172     225
15-18 months   MAL-ED           SOUTH AFRICA                   1             13     225
15-18 months   MAL-ED           SOUTH AFRICA                   2             19     225
15-18 months   MAL-ED           SOUTH AFRICA                   3             21     225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           101     217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             10     217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             48     217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             58     217
15-18 months   NIH-Crypto       BANGLADESH                     4+            84     604
15-18 months   NIH-Crypto       BANGLADESH                     1            268     604
15-18 months   NIH-Crypto       BANGLADESH                     2            165     604
15-18 months   NIH-Crypto       BANGLADESH                     3             87     604
15-18 months   PROVIDE          BANGLADESH                     4+            22     528
15-18 months   PROVIDE          BANGLADESH                     1            363     528
15-18 months   PROVIDE          BANGLADESH                     2             87     528
15-18 months   PROVIDE          BANGLADESH                     3             56     528
18-21 months   CMC-V-BCS-2002   INDIA                          4+            11     305
18-21 months   CMC-V-BCS-2002   INDIA                          1            165     305
18-21 months   CMC-V-BCS-2002   INDIA                          2             82     305
18-21 months   CMC-V-BCS-2002   INDIA                          3             47     305
18-21 months   CONTENT          PERU                           4+            66     183
18-21 months   CONTENT          PERU                           1             34     183
18-21 months   CONTENT          PERU                           2             47     183
18-21 months   CONTENT          PERU                           3             36     183
18-21 months   GMS-Nepal        NEPAL                          4+           204     445
18-21 months   GMS-Nepal        NEPAL                          1             30     445
18-21 months   GMS-Nepal        NEPAL                          2            102     445
18-21 months   GMS-Nepal        NEPAL                          3            109     445
18-21 months   IRC              INDIA                          4+            15     377
18-21 months   IRC              INDIA                          1            169     377
18-21 months   IRC              INDIA                          2            161     377
18-21 months   IRC              INDIA                          3             32     377
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            96     204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             44     204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             55     204
18-21 months   NIH-Crypto       BANGLADESH                     4+            83     546
18-21 months   NIH-Crypto       BANGLADESH                     1            237     546
18-21 months   NIH-Crypto       BANGLADESH                     2            148     546
18-21 months   NIH-Crypto       BANGLADESH                     3             78     546
18-21 months   PROVIDE          BANGLADESH                     4+            21     541
18-21 months   PROVIDE          BANGLADESH                     1            377     541
18-21 months   PROVIDE          BANGLADESH                     2             88     541
18-21 months   PROVIDE          BANGLADESH                     3             55     541
21-24 months   CMC-V-BCS-2002   INDIA                          4+            12     308
21-24 months   CMC-V-BCS-2002   INDIA                          1            169     308
21-24 months   CMC-V-BCS-2002   INDIA                          2             83     308
21-24 months   CMC-V-BCS-2002   INDIA                          3             44     308
21-24 months   CONTENT          PERU                           4+            10      38
21-24 months   CONTENT          PERU                           1              7      38
21-24 months   CONTENT          PERU                           2             12      38
21-24 months   CONTENT          PERU                           3              9      38
21-24 months   GMS-Nepal        NEPAL                          4+           161     342
21-24 months   GMS-Nepal        NEPAL                          1             25     342
21-24 months   GMS-Nepal        NEPAL                          2             74     342
21-24 months   GMS-Nepal        NEPAL                          3             82     342
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            95     204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             46     204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             54     204
21-24 months   NIH-Crypto       BANGLADESH                     4+            81     490
21-24 months   NIH-Crypto       BANGLADESH                     1            205     490
21-24 months   NIH-Crypto       BANGLADESH                     2            132     490
21-24 months   NIH-Crypto       BANGLADESH                     3             72     490
21-24 months   PROVIDE          BANGLADESH                     4+            18     471
21-24 months   PROVIDE          BANGLADESH                     1            327     471
21-24 months   PROVIDE          BANGLADESH                     2             80     471
21-24 months   PROVIDE          BANGLADESH                     3             46     471


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

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
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
![](/tmp/6e6532f3-f0bb-479a-95ad-bb06b81926de/5cce6786-653d-40d2-b702-7d024b9444de/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6e6532f3-f0bb-479a-95ad-bb06b81926de/5cce6786-653d-40d2-b702-7d024b9444de/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6e6532f3-f0bb-479a-95ad-bb06b81926de/5cce6786-653d-40d2-b702-7d024b9444de/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          INDIA                          4+                   NA                3.6026486   3.5373877   3.6679094
0-3 months     COHORTS          INDIA                          1                    NA                3.4667937   3.4440858   3.4895017
0-3 months     COHORTS          INDIA                          2                    NA                3.5245446   3.4857584   3.5633308
0-3 months     COHORTS          INDIA                          3                    NA                3.5342480   3.4591201   3.6093760
0-3 months     GMS-Nepal        NEPAL                          4+                   NA                3.5720352   3.4947158   3.6493546
0-3 months     GMS-Nepal        NEPAL                          1                    NA                3.5538802   3.2947471   3.8130133
0-3 months     GMS-Nepal        NEPAL                          2                    NA                3.6237419   3.5201072   3.7273765
0-3 months     GMS-Nepal        NEPAL                          3                    NA                3.6463448   3.5428294   3.7498603
0-3 months     IRC              INDIA                          4+                   NA                2.8032166   2.2900199   3.3164133
0-3 months     IRC              INDIA                          1                    NA                3.1321544   2.9735135   3.2907953
0-3 months     IRC              INDIA                          2                    NA                3.1267816   2.9409729   3.3125903
0-3 months     IRC              INDIA                          3                    NA                3.2775838   2.8578569   3.6973106
0-3 months     JiVitA-3         BANGLADESH                     4+                   NA                3.7049001   3.6809811   3.7288190
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                3.7200574   3.7061408   3.7339740
0-3 months     JiVitA-3         BANGLADESH                     2                    NA                3.7231097   3.6967650   3.7494545
0-3 months     JiVitA-3         BANGLADESH                     3                    NA                3.7004572   3.6663873   3.7345272
0-3 months     JiVitA-4         BANGLADESH                     4+                   NA                3.5270990   3.3833800   3.6708179
0-3 months     JiVitA-4         BANGLADESH                     1                    NA                3.6348963   3.5875210   3.6822717
0-3 months     JiVitA-4         BANGLADESH                     2                    NA                3.6591562   3.5776033   3.7407092
0-3 months     JiVitA-4         BANGLADESH                     3                    NA                3.4801613   3.3785533   3.5817693
0-3 months     MAL-ED           BANGLADESH                     4+                   NA                3.0925935   2.8211778   3.3640092
0-3 months     MAL-ED           BANGLADESH                     1                    NA                3.3375845   3.2526972   3.4224719
0-3 months     MAL-ED           BANGLADESH                     2                    NA                3.3528772   3.2023964   3.5033580
0-3 months     MAL-ED           BANGLADESH                     3                    NA                3.4187647   3.2456468   3.5918827
0-3 months     MAL-ED           INDIA                          4+                   NA                3.3706872   3.1061704   3.6352040
0-3 months     MAL-ED           INDIA                          1                    NA                3.3244523   3.1694046   3.4795000
0-3 months     MAL-ED           INDIA                          2                    NA                3.3799152   3.2445618   3.5152686
0-3 months     MAL-ED           INDIA                          3                    NA                3.2668691   3.0020820   3.5316562
0-3 months     MAL-ED           NEPAL                          4+                   NA                3.6092099   3.4869950   3.7314249
0-3 months     MAL-ED           NEPAL                          1                    NA                3.6202185   3.4581402   3.7822969
0-3 months     MAL-ED           NEPAL                          2                    NA                3.7642796   3.4635409   4.0650183
0-3 months     MAL-ED           NEPAL                          3                    NA                3.5657835   3.1982081   3.9333589
0-3 months     MAL-ED           PERU                           4+                   NA                3.0999141   3.0141847   3.1856434
0-3 months     MAL-ED           PERU                           1                    NA                2.7846534   2.4715463   3.0977606
0-3 months     MAL-ED           PERU                           2                    NA                3.0643913   2.9122440   3.2165387
0-3 months     MAL-ED           PERU                           3                    NA                3.0508752   2.9034207   3.1983297
0-3 months     MAL-ED           SOUTH AFRICA                   4+                   NA                3.1697412   3.0453783   3.2941041
0-3 months     MAL-ED           SOUTH AFRICA                   1                    NA                3.0911595   2.6837496   3.4985695
0-3 months     MAL-ED           SOUTH AFRICA                   2                    NA                3.2072245   2.8286524   3.5857967
0-3 months     MAL-ED           SOUTH AFRICA                   3                    NA                3.1841933   2.8775042   3.4908825
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                3.2455968   3.1293268   3.3618668
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                3.2263790   2.8967114   3.5560467
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                3.2097714   3.0616053   3.3579375
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                3.3294256   3.1607496   3.4981017
0-3 months     NIH-Crypto       BANGLADESH                     4+                   NA                3.0676549   2.9789144   3.1563955
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                3.1666350   3.1092951   3.2239749
0-3 months     NIH-Crypto       BANGLADESH                     2                    NA                3.0886408   3.0019517   3.1753298
0-3 months     NIH-Crypto       BANGLADESH                     3                    NA                3.1258960   3.0186571   3.2331349
0-3 months     PROVIDE          BANGLADESH                     4+                   NA                3.3912304   3.1590385   3.6234223
0-3 months     PROVIDE          BANGLADESH                     1                    NA                3.2390143   3.1947866   3.2832419
0-3 months     PROVIDE          BANGLADESH                     2                    NA                3.2849788   3.1976750   3.3722826
0-3 months     PROVIDE          BANGLADESH                     3                    NA                3.2436471   3.1236729   3.3636213
3-6 months     CMC-V-BCS-2002   INDIA                          4+                   NA                2.0500552   1.4380125   2.6620978
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.8065098   1.6669066   1.9461129
3-6 months     CMC-V-BCS-2002   INDIA                          2                    NA                1.7377673   1.5454484   1.9300862
3-6 months     CMC-V-BCS-2002   INDIA                          3                    NA                1.8185456   1.5526892   2.0844020
3-6 months     COHORTS          INDIA                          4+                   NA                1.8937838   1.8379816   1.9495859
3-6 months     COHORTS          INDIA                          1                    NA                1.8486713   1.8287998   1.8685428
3-6 months     COHORTS          INDIA                          2                    NA                1.8873013   1.8567733   1.9178292
3-6 months     COHORTS          INDIA                          3                    NA                1.8152886   1.7543946   1.8761826
3-6 months     CONTENT          PERU                           4+                   NA                2.1201927   2.0468159   2.1935695
3-6 months     CONTENT          PERU                           1                    NA                1.9552665   1.8470203   2.0635127
3-6 months     CONTENT          PERU                           2                    NA                2.3281541   2.2428464   2.4134618
3-6 months     CONTENT          PERU                           3                    NA                2.1143735   1.8290169   2.3997301
3-6 months     GMS-Nepal        NEPAL                          4+                   NA                1.6691635   1.6112208   1.7271062
3-6 months     GMS-Nepal        NEPAL                          1                    NA                1.7340812   1.5991707   1.8689918
3-6 months     GMS-Nepal        NEPAL                          2                    NA                1.7687489   1.6897023   1.8477956
3-6 months     GMS-Nepal        NEPAL                          3                    NA                1.7348757   1.6460024   1.8237491
3-6 months     IRC              INDIA                          4+                   NA                1.9499585   1.5776516   2.3222655
3-6 months     IRC              INDIA                          1                    NA                1.8240696   1.7361232   1.9120160
3-6 months     IRC              INDIA                          2                    NA                1.9366837   1.8303354   2.0430319
3-6 months     IRC              INDIA                          3                    NA                1.8023923   1.5961500   2.0086345
3-6 months     JiVitA-3         BANGLADESH                     4+                   NA                1.9334931   1.9104938   1.9564925
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                1.9331150   1.9171553   1.9490748
3-6 months     JiVitA-3         BANGLADESH                     2                    NA                1.9174179   1.8908730   1.9439629
3-6 months     JiVitA-3         BANGLADESH                     3                    NA                1.9317830   1.8999697   1.9635962
3-6 months     JiVitA-4         BANGLADESH                     4+                   NA                2.2162381   2.0908385   2.3416377
3-6 months     JiVitA-4         BANGLADESH                     1                    NA                1.8867036   1.8418808   1.9315265
3-6 months     JiVitA-4         BANGLADESH                     2                    NA                1.8647363   1.7918109   1.9376617
3-6 months     JiVitA-4         BANGLADESH                     3                    NA                2.0589853   1.9811674   2.1368032
3-6 months     MAL-ED           BANGLADESH                     4+                   NA                1.8408144   1.6458046   2.0358242
3-6 months     MAL-ED           BANGLADESH                     1                    NA                1.9254726   1.8598486   1.9910965
3-6 months     MAL-ED           BANGLADESH                     2                    NA                1.9694045   1.8553266   2.0834825
3-6 months     MAL-ED           BANGLADESH                     3                    NA                1.8951010   1.7183324   2.0718696
3-6 months     MAL-ED           INDIA                          4+                   NA                1.8997109   1.6755239   2.1238979
3-6 months     MAL-ED           INDIA                          1                    NA                1.8973063   1.7781227   2.0164899
3-6 months     MAL-ED           INDIA                          2                    NA                1.8573166   1.7539000   1.9607332
3-6 months     MAL-ED           INDIA                          3                    NA                1.9462685   1.7855839   2.1069531
3-6 months     MAL-ED           NEPAL                          4+                   NA                2.0045763   1.9314883   2.0776643
3-6 months     MAL-ED           NEPAL                          1                    NA                1.9380210   1.8036977   2.0723443
3-6 months     MAL-ED           NEPAL                          2                    NA                1.8674193   1.7149392   2.0198994
3-6 months     MAL-ED           NEPAL                          3                    NA                1.9269710   1.7337927   2.1201492
3-6 months     MAL-ED           PERU                           4+                   NA                1.9190861   1.8349695   2.0032026
3-6 months     MAL-ED           PERU                           1                    NA                2.2368816   2.0182428   2.4555204
3-6 months     MAL-ED           PERU                           2                    NA                2.0745087   1.8878890   2.2611283
3-6 months     MAL-ED           PERU                           3                    NA                2.0802717   1.9317973   2.2287462
3-6 months     MAL-ED           SOUTH AFRICA                   4+                   NA                1.9904875   1.8968609   2.0841141
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                1.8493626   1.5680720   2.1306532
3-6 months     MAL-ED           SOUTH AFRICA                   2                    NA                1.9894812   1.6986596   2.2803029
3-6 months     MAL-ED           SOUTH AFRICA                   3                    NA                1.8557648   1.5835458   2.1279839
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                1.8755593   1.7798693   1.9712492
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                1.9353444   1.5325229   2.3381659
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                1.8438473   1.6884569   1.9992378
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                1.8175143   1.6915844   1.9434442
3-6 months     NIH-Crypto       BANGLADESH                     4+                   NA                2.0891917   1.9829512   2.1954321
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                1.9560132   1.9057013   2.0063250
3-6 months     NIH-Crypto       BANGLADESH                     2                    NA                2.0026252   1.9143135   2.0909370
3-6 months     NIH-Crypto       BANGLADESH                     3                    NA                2.1091859   1.9745057   2.2438660
3-6 months     PROVIDE          BANGLADESH                     4+                   NA                2.0209577   1.8573483   2.1845672
3-6 months     PROVIDE          BANGLADESH                     1                    NA                1.9633744   1.9228565   2.0038922
3-6 months     PROVIDE          BANGLADESH                     2                    NA                1.9608358   1.8726354   2.0490362
3-6 months     PROVIDE          BANGLADESH                     3                    NA                1.9970490   1.8800334   2.1140646
6-9 months     CMC-V-BCS-2002   INDIA                          4+                   NA                1.1689745   0.8135978   1.5243512
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.2617810   1.1481608   1.3754012
6-9 months     CMC-V-BCS-2002   INDIA                          2                    NA                1.2347631   1.0937664   1.3757598
6-9 months     CMC-V-BCS-2002   INDIA                          3                    NA                1.1161155   0.9251186   1.3071123
6-9 months     COHORTS          INDIA                          4+                   NA                1.3157430   1.2672055   1.3642806
6-9 months     COHORTS          INDIA                          1                    NA                1.1712020   1.1534577   1.1889462
6-9 months     COHORTS          INDIA                          2                    NA                1.1842693   1.1583232   1.2102153
6-9 months     COHORTS          INDIA                          3                    NA                1.1940194   1.1407409   1.2472979
6-9 months     CONTENT          PERU                           4+                   NA                1.4397642   1.3514830   1.5280453
6-9 months     CONTENT          PERU                           1                    NA                1.3027727   1.1786554   1.4268901
6-9 months     CONTENT          PERU                           2                    NA                1.1865391   1.0632725   1.3098057
6-9 months     CONTENT          PERU                           3                    NA                1.4022598   1.1954165   1.6091030
6-9 months     GMS-Nepal        NEPAL                          4+                   NA                1.3098589   1.2404126   1.3793053
6-9 months     GMS-Nepal        NEPAL                          1                    NA                1.3487526   1.2487506   1.4487546
6-9 months     GMS-Nepal        NEPAL                          2                    NA                1.3145270   1.2197410   1.4093130
6-9 months     GMS-Nepal        NEPAL                          3                    NA                1.3356652   1.2584570   1.4128735
6-9 months     IRC              INDIA                          4+                   NA                1.4402965   1.2282702   1.6523227
6-9 months     IRC              INDIA                          1                    NA                1.3574374   1.2940208   1.4208539
6-9 months     IRC              INDIA                          2                    NA                1.4105619   1.3270010   1.4941228
6-9 months     IRC              INDIA                          3                    NA                1.3849648   1.1784312   1.5914985
6-9 months     JiVitA-4         BANGLADESH                     4+                   NA                1.3666336   1.3078623   1.4254049
6-9 months     JiVitA-4         BANGLADESH                     1                    NA                1.3205685   1.2845687   1.3565683
6-9 months     JiVitA-4         BANGLADESH                     2                    NA                1.3190730   1.2487511   1.3893950
6-9 months     JiVitA-4         BANGLADESH                     3                    NA                1.2802797   1.1870495   1.3735099
6-9 months     MAL-ED           BANGLADESH                     4+                   NA                1.4119672   1.2597638   1.5641706
6-9 months     MAL-ED           BANGLADESH                     1                    NA                1.2372562   1.1856098   1.2889026
6-9 months     MAL-ED           BANGLADESH                     2                    NA                1.2406561   1.1405044   1.3408077
6-9 months     MAL-ED           BANGLADESH                     3                    NA                1.2543850   1.1484430   1.3603270
6-9 months     MAL-ED           INDIA                          4+                   NA                1.1691847   1.0173474   1.3210221
6-9 months     MAL-ED           INDIA                          1                    NA                1.2867690   1.1817726   1.3917655
6-9 months     MAL-ED           INDIA                          2                    NA                1.2860934   1.2007878   1.3713990
6-9 months     MAL-ED           INDIA                          3                    NA                1.1838204   1.0890071   1.2786336
6-9 months     MAL-ED           NEPAL                          4+                   NA                1.3719276   1.3092064   1.4346488
6-9 months     MAL-ED           NEPAL                          1                    NA                1.3138625   1.2093001   1.4184249
6-9 months     MAL-ED           NEPAL                          2                    NA                1.3979135   1.2934604   1.5023666
6-9 months     MAL-ED           NEPAL                          3                    NA                1.2811038   1.1266214   1.4355861
6-9 months     MAL-ED           PERU                           4+                   NA                1.2999262   1.2300178   1.3698347
6-9 months     MAL-ED           PERU                           1                    NA                1.5594203   1.3130916   1.8057490
6-9 months     MAL-ED           PERU                           2                    NA                1.3646120   1.2269645   1.5022594
6-9 months     MAL-ED           PERU                           3                    NA                1.3001174   1.1670371   1.4331976
6-9 months     MAL-ED           SOUTH AFRICA                   4+                   NA                1.3961636   1.3232720   1.4690552
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                1.1245517   0.7317099   1.5173934
6-9 months     MAL-ED           SOUTH AFRICA                   2                    NA                1.4050978   1.0714576   1.7387380
6-9 months     MAL-ED           SOUTH AFRICA                   3                    NA                1.3109542   1.1069023   1.5150062
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                1.1879318   1.0505621   1.3253015
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2622777   0.7119905   1.8125648
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                1.1901271   1.0755229   1.3047313
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                1.2136149   1.0733472   1.3538826
6-9 months     NIH-Crypto       BANGLADESH                     4+                   NA                1.2917276   1.2108885   1.3725666
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                1.3582453   1.3160663   1.4004243
6-9 months     NIH-Crypto       BANGLADESH                     2                    NA                1.2833634   1.2183345   1.3483922
6-9 months     NIH-Crypto       BANGLADESH                     3                    NA                1.3015347   1.2222166   1.3808528
6-9 months     PROVIDE          BANGLADESH                     4+                   NA                1.3787794   1.2172802   1.5402787
6-9 months     PROVIDE          BANGLADESH                     1                    NA                1.2703286   1.2409135   1.2997438
6-9 months     PROVIDE          BANGLADESH                     2                    NA                1.3139570   1.2457395   1.3821745
6-9 months     PROVIDE          BANGLADESH                     3                    NA                1.3266838   1.2438139   1.4095538
9-12 months    CMC-V-BCS-2002   INDIA                          4+                   NA                1.1014078   0.7725139   1.4303017
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.8657832   0.7804227   0.9511437
9-12 months    CMC-V-BCS-2002   INDIA                          2                    NA                0.9386858   0.7675228   1.1098489
9-12 months    CMC-V-BCS-2002   INDIA                          3                    NA                0.8592750   0.7183040   1.0002461
9-12 months    COHORTS          INDIA                          4+                   NA                1.1096133   1.0585941   1.1606326
9-12 months    COHORTS          INDIA                          1                    NA                0.9717883   0.9526850   0.9908916
9-12 months    COHORTS          INDIA                          2                    NA                0.9952445   0.9660834   1.0244056
9-12 months    COHORTS          INDIA                          3                    NA                1.0457766   0.9829574   1.1085958
9-12 months    CONTENT          PERU                           4+                   NA                1.3477523   1.2572056   1.4382991
9-12 months    CONTENT          PERU                           1                    NA                1.1925642   1.0682993   1.3168290
9-12 months    CONTENT          PERU                           2                    NA                1.2834608   1.2172351   1.3496866
9-12 months    CONTENT          PERU                           3                    NA                1.2079419   1.1064638   1.3094200
9-12 months    GMS-Nepal        NEPAL                          4+                   NA                1.0009912   0.9491132   1.0528691
9-12 months    GMS-Nepal        NEPAL                          1                    NA                0.9493952   0.8423882   1.0564021
9-12 months    GMS-Nepal        NEPAL                          2                    NA                0.9281011   0.8476190   1.0085832
9-12 months    GMS-Nepal        NEPAL                          3                    NA                1.0579390   1.0069182   1.1089599
9-12 months    IRC              INDIA                          4+                   NA                1.0252713   0.8564094   1.1941331
9-12 months    IRC              INDIA                          1                    NA                1.1365086   1.0797216   1.1932957
9-12 months    IRC              INDIA                          2                    NA                1.1590429   1.0945157   1.2235702
9-12 months    IRC              INDIA                          3                    NA                1.0652790   0.9358217   1.1947363
9-12 months    JiVitA-4         BANGLADESH                     4+                   NA                0.9800643   0.9369461   1.0231825
9-12 months    JiVitA-4         BANGLADESH                     1                    NA                1.0632758   1.0326771   1.0938746
9-12 months    JiVitA-4         BANGLADESH                     2                    NA                1.0813626   1.0246611   1.1380641
9-12 months    JiVitA-4         BANGLADESH                     3                    NA                1.0536630   1.0004366   1.1068894
9-12 months    MAL-ED           BANGLADESH                     4+                   NA                0.9890163   0.7797550   1.1982777
9-12 months    MAL-ED           BANGLADESH                     1                    NA                0.9933082   0.9448540   1.0417624
9-12 months    MAL-ED           BANGLADESH                     2                    NA                1.0344318   0.9448429   1.1240208
9-12 months    MAL-ED           BANGLADESH                     3                    NA                1.0115644   0.9063011   1.1168278
9-12 months    MAL-ED           INDIA                          4+                   NA                0.9033162   0.8020465   1.0045860
9-12 months    MAL-ED           INDIA                          1                    NA                1.0091896   0.9423641   1.0760152
9-12 months    MAL-ED           INDIA                          2                    NA                0.9481731   0.8821266   1.0142197
9-12 months    MAL-ED           INDIA                          3                    NA                1.0274226   0.9402114   1.1146337
9-12 months    MAL-ED           NEPAL                          4+                   NA                1.0659948   1.0090776   1.1229120
9-12 months    MAL-ED           NEPAL                          1                    NA                1.1358202   1.0402913   1.2313491
9-12 months    MAL-ED           NEPAL                          2                    NA                1.1192516   1.0339722   1.2045310
9-12 months    MAL-ED           NEPAL                          3                    NA                1.0679797   0.9353909   1.2005685
9-12 months    MAL-ED           PERU                           4+                   NA                1.1556042   1.0843532   1.2268552
9-12 months    MAL-ED           PERU                           1                    NA                0.9616803   0.8167509   1.1066096
9-12 months    MAL-ED           PERU                           2                    NA                1.0159241   0.8924450   1.1394033
9-12 months    MAL-ED           PERU                           3                    NA                1.0863298   0.9708643   1.2017952
9-12 months    MAL-ED           SOUTH AFRICA                   4+                   NA                1.0221899   0.9498288   1.0945510
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                1.0004434   0.7737288   1.2271580
9-12 months    MAL-ED           SOUTH AFRICA                   2                    NA                1.0914935   0.8274866   1.3555004
9-12 months    MAL-ED           SOUTH AFRICA                   3                    NA                0.8986298   0.6375593   1.1597003
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.8170154   0.6792254   0.9548054
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8875682   0.4645293   1.3106072
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7986110   0.6424874   0.9547347
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.8085676   0.6684116   0.9487235
9-12 months    NIH-Crypto       BANGLADESH                     4+                   NA                1.1727456   1.0915086   1.2539827
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                1.1226576   1.0813122   1.1640029
9-12 months    NIH-Crypto       BANGLADESH                     2                    NA                1.0999281   1.0469659   1.1528903
9-12 months    NIH-Crypto       BANGLADESH                     3                    NA                1.1764608   1.1085371   1.2443845
9-12 months    PROVIDE          BANGLADESH                     4+                   NA                1.0383913   0.8662302   1.2105524
9-12 months    PROVIDE          BANGLADESH                     1                    NA                1.0467064   1.0150905   1.0783222
9-12 months    PROVIDE          BANGLADESH                     2                    NA                1.0485481   0.9737368   1.1233594
9-12 months    PROVIDE          BANGLADESH                     3                    NA                1.0957316   1.0053086   1.1861546
12-15 months   CMC-V-BCS-2002   INDIA                          4+                   NA                0.8385023   0.6083035   1.0687011
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.8396854   0.7522486   0.9271222
12-15 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.8320308   0.6709809   0.9930807
12-15 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.9340942   0.7312701   1.1369182
12-15 months   CONTENT          PERU                           4+                   NA                0.9163248   0.8446476   0.9880021
12-15 months   CONTENT          PERU                           1                    NA                0.9548692   0.8441620   1.0655764
12-15 months   CONTENT          PERU                           2                    NA                0.9310389   0.8350496   1.0270281
12-15 months   CONTENT          PERU                           3                    NA                0.9004856   0.7259455   1.0750257
12-15 months   GMS-Nepal        NEPAL                          4+                   NA                0.9047606   0.8541102   0.9554111
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.8343521   0.7359527   0.9327515
12-15 months   GMS-Nepal        NEPAL                          2                    NA                0.8707281   0.8182975   0.9231588
12-15 months   GMS-Nepal        NEPAL                          3                    NA                0.8610223   0.8039510   0.9180936
12-15 months   IRC              INDIA                          4+                   NA                0.8646173   0.7333055   0.9959291
12-15 months   IRC              INDIA                          1                    NA                0.9436166   0.8897646   0.9974686
12-15 months   IRC              INDIA                          2                    NA                0.9807853   0.9072581   1.0543126
12-15 months   IRC              INDIA                          3                    NA                0.9871361   0.8352764   1.1389958
12-15 months   JiVitA-4         BANGLADESH                     4+                   NA                0.9510649   0.8918552   1.0102746
12-15 months   JiVitA-4         BANGLADESH                     1                    NA                0.9467309   0.9230797   0.9703821
12-15 months   JiVitA-4         BANGLADESH                     2                    NA                0.9467793   0.8994352   0.9941235
12-15 months   JiVitA-4         BANGLADESH                     3                    NA                0.9547811   0.9101674   0.9993947
12-15 months   MAL-ED           BANGLADESH                     4+                   NA                1.0873328   0.9226509   1.2520148
12-15 months   MAL-ED           BANGLADESH                     1                    NA                0.9023182   0.8523337   0.9523027
12-15 months   MAL-ED           BANGLADESH                     2                    NA                0.8803869   0.7863768   0.9743971
12-15 months   MAL-ED           BANGLADESH                     3                    NA                0.9876247   0.8603719   1.1148774
12-15 months   MAL-ED           INDIA                          4+                   NA                1.0302484   0.9096299   1.1508668
12-15 months   MAL-ED           INDIA                          1                    NA                0.8648994   0.7980516   0.9317471
12-15 months   MAL-ED           INDIA                          2                    NA                0.9393842   0.8723623   1.0064062
12-15 months   MAL-ED           INDIA                          3                    NA                0.8891028   0.8030025   0.9752031
12-15 months   MAL-ED           NEPAL                          4+                   NA                0.9596679   0.9096871   1.0096487
12-15 months   MAL-ED           NEPAL                          1                    NA                0.8447601   0.7587948   0.9307254
12-15 months   MAL-ED           NEPAL                          2                    NA                1.0705548   0.9351128   1.2059968
12-15 months   MAL-ED           NEPAL                          3                    NA                0.9791339   0.8605711   1.0976966
12-15 months   MAL-ED           PERU                           4+                   NA                0.8625151   0.7961868   0.9288435
12-15 months   MAL-ED           PERU                           1                    NA                0.9031001   0.6806369   1.1255632
12-15 months   MAL-ED           PERU                           2                    NA                0.8916866   0.7845971   0.9987760
12-15 months   MAL-ED           PERU                           3                    NA                0.9514395   0.8743492   1.0285298
12-15 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.9177935   0.8496015   0.9859856
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                1.1857928   0.9560320   1.4155536
12-15 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.8524794   0.6296618   1.0752969
12-15 months   MAL-ED           SOUTH AFRICA                   3                    NA                0.8619954   0.6733223   1.0506686
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.8734879   0.7762817   0.9706941
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1684925   0.8465695   1.4904156
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7679843   0.6221458   0.9138228
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.9082830   0.7985850   1.0179810
12-15 months   NIH-Crypto       BANGLADESH                     4+                   NA                1.0624314   1.0042226   1.1206402
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.9659478   0.9267130   1.0051825
12-15 months   NIH-Crypto       BANGLADESH                     2                    NA                0.9754260   0.9260424   1.0248095
12-15 months   NIH-Crypto       BANGLADESH                     3                    NA                0.9960682   0.9191832   1.0729532
12-15 months   PROVIDE          BANGLADESH                     4+                   NA                1.0600938   0.9020633   1.2181244
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.9477877   0.9161490   0.9794263
12-15 months   PROVIDE          BANGLADESH                     2                    NA                0.9987912   0.9366193   1.0609630
12-15 months   PROVIDE          BANGLADESH                     3                    NA                0.9535544   0.8739378   1.0331709
15-18 months   CMC-V-BCS-2002   INDIA                          4+                   NA                0.8981340   0.7032378   1.0930302
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6803007   0.6036114   0.7569900
15-18 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.8031626   0.6616113   0.9447139
15-18 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.7620528   0.5780846   0.9460211
15-18 months   CONTENT          PERU                           4+                   NA                1.0150093   0.9368220   1.0931967
15-18 months   CONTENT          PERU                           1                    NA                1.0063143   0.9013649   1.1112637
15-18 months   CONTENT          PERU                           2                    NA                1.1970554   1.0504810   1.3436299
15-18 months   CONTENT          PERU                           3                    NA                0.9507276   0.7542904   1.1471649
15-18 months   GMS-Nepal        NEPAL                          4+                   NA                0.7112383   0.6424342   0.7800425
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.7744909   0.6906306   0.8583512
15-18 months   GMS-Nepal        NEPAL                          2                    NA                0.7821694   0.7264574   0.8378814
15-18 months   GMS-Nepal        NEPAL                          3                    NA                0.7832525   0.7093131   0.8571919
15-18 months   IRC              INDIA                          4+                   NA                0.7679916   0.5483906   0.9875927
15-18 months   IRC              INDIA                          1                    NA                0.8585846   0.7935437   0.9236255
15-18 months   IRC              INDIA                          2                    NA                0.8666390   0.8077481   0.9255298
15-18 months   IRC              INDIA                          3                    NA                0.8800335   0.7782800   0.9817870
15-18 months   JiVitA-4         BANGLADESH                     4+                   NA                0.8667673   0.7975540   0.9359807
15-18 months   JiVitA-4         BANGLADESH                     1                    NA                0.8737928   0.8486349   0.8989507
15-18 months   JiVitA-4         BANGLADESH                     2                    NA                0.8332534   0.7818635   0.8846434
15-18 months   JiVitA-4         BANGLADESH                     3                    NA                0.8995617   0.8515247   0.9475988
15-18 months   MAL-ED           BANGLADESH                     4+                   NA                0.9340309   0.7338874   1.1341744
15-18 months   MAL-ED           BANGLADESH                     1                    NA                0.8167772   0.7729796   0.8605749
15-18 months   MAL-ED           BANGLADESH                     2                    NA                0.8198077   0.7258507   0.9137647
15-18 months   MAL-ED           BANGLADESH                     3                    NA                0.8565683   0.7336929   0.9794437
15-18 months   MAL-ED           INDIA                          4+                   NA                0.7692938   0.6684685   0.8701191
15-18 months   MAL-ED           INDIA                          1                    NA                0.8864781   0.8243598   0.9485965
15-18 months   MAL-ED           INDIA                          2                    NA                0.7861939   0.7281982   0.8441895
15-18 months   MAL-ED           INDIA                          3                    NA                0.9056565   0.8238401   0.9874728
15-18 months   MAL-ED           NEPAL                          4+                   NA                0.8337980   0.7811494   0.8864466
15-18 months   MAL-ED           NEPAL                          1                    NA                0.8649541   0.7796354   0.9502728
15-18 months   MAL-ED           NEPAL                          2                    NA                0.8467124   0.7085469   0.9848778
15-18 months   MAL-ED           NEPAL                          3                    NA                0.9375390   0.7863219   1.0887560
15-18 months   MAL-ED           PERU                           4+                   NA                0.8625049   0.8032359   0.9217738
15-18 months   MAL-ED           PERU                           1                    NA                0.7644639   0.6275035   0.9014243
15-18 months   MAL-ED           PERU                           2                    NA                0.7954592   0.7188078   0.8721107
15-18 months   MAL-ED           PERU                           3                    NA                0.9021305   0.7952704   1.0089906
15-18 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.8855613   0.8250210   0.9461017
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.8813492   0.6485704   1.1141281
15-18 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.9688103   0.7659322   1.1716883
15-18 months   MAL-ED           SOUTH AFRICA                   3                    NA                0.8393997   0.6354135   1.0433859
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.6778976   0.5905422   0.7652530
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6077377   0.1861946   1.0292808
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7248841   0.5877286   0.8620397
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.6641036   0.5445137   0.7836936
15-18 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.9030559   0.8472833   0.9588285
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.9135616   0.8753591   0.9517641
15-18 months   NIH-Crypto       BANGLADESH                     2                    NA                0.8988054   0.8537625   0.9438484
15-18 months   NIH-Crypto       BANGLADESH                     3                    NA                0.9500979   0.8710408   1.0291549
15-18 months   PROVIDE          BANGLADESH                     4+                   NA                0.9581681   0.8046497   1.1116864
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.8607639   0.8319758   0.8895520
15-18 months   PROVIDE          BANGLADESH                     2                    NA                0.8293185   0.7729710   0.8856660
15-18 months   PROVIDE          BANGLADESH                     3                    NA                0.8773210   0.7978378   0.9568041
18-21 months   CMC-V-BCS-2002   INDIA                          4+                   NA                0.9842049   0.7151508   1.2532590
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6570299   0.5746885   0.7393713
18-21 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.7870037   0.6603730   0.9136343
18-21 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.6912964   0.4995830   0.8830097
18-21 months   CONTENT          PERU                           4+                   NA                1.0125299   0.9214769   1.1035829
18-21 months   CONTENT          PERU                           1                    NA                0.9300530   0.8075896   1.0525164
18-21 months   CONTENT          PERU                           2                    NA                0.8325823   0.7039232   0.9612414
18-21 months   CONTENT          PERU                           3                    NA                0.9366926   0.8334108   1.0399745
18-21 months   GMS-Nepal        NEPAL                          4+                   NA                0.9037527   0.8433560   0.9641494
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.8837822   0.7778725   0.9896919
18-21 months   GMS-Nepal        NEPAL                          2                    NA                0.8895977   0.8429401   0.9362553
18-21 months   GMS-Nepal        NEPAL                          3                    NA                0.9516597   0.8706705   1.0326489
18-21 months   IRC              INDIA                          4+                   NA                0.9343056   0.6982800   1.1703313
18-21 months   IRC              INDIA                          1                    NA                0.7384018   0.6799244   0.7968792
18-21 months   IRC              INDIA                          2                    NA                0.7824095   0.7253830   0.8394360
18-21 months   IRC              INDIA                          3                    NA                0.6763319   0.5273699   0.8252940
18-21 months   MAL-ED           BANGLADESH                     4+                   NA                0.9140783   0.7323674   1.0957892
18-21 months   MAL-ED           BANGLADESH                     1                    NA                0.7850482   0.7453784   0.8247179
18-21 months   MAL-ED           BANGLADESH                     2                    NA                0.8463087   0.7512798   0.9413375
18-21 months   MAL-ED           BANGLADESH                     3                    NA                0.8518250   0.7565346   0.9471154
18-21 months   MAL-ED           INDIA                          4+                   NA                0.9336176   0.8445215   1.0227137
18-21 months   MAL-ED           INDIA                          1                    NA                0.9072151   0.8464737   0.9679565
18-21 months   MAL-ED           INDIA                          2                    NA                0.8482438   0.7843266   0.9121610
18-21 months   MAL-ED           INDIA                          3                    NA                0.8548687   0.7804698   0.9292676
18-21 months   MAL-ED           NEPAL                          4+                   NA                0.8528594   0.8028603   0.9028586
18-21 months   MAL-ED           NEPAL                          1                    NA                0.8215235   0.7345539   0.9084931
18-21 months   MAL-ED           NEPAL                          2                    NA                0.8149428   0.7150628   0.9148229
18-21 months   MAL-ED           NEPAL                          3                    NA                0.5976993   0.4607917   0.7346069
18-21 months   MAL-ED           PERU                           4+                   NA                0.8857295   0.8245887   0.9468703
18-21 months   MAL-ED           PERU                           1                    NA                0.7041128   0.5560226   0.8522030
18-21 months   MAL-ED           PERU                           2                    NA                0.8821191   0.7735198   0.9907184
18-21 months   MAL-ED           PERU                           3                    NA                0.7840704   0.6805680   0.8875728
18-21 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.7948941   0.7299191   0.8598692
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.7606508   0.5623480   0.9589535
18-21 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.7876924   0.5999884   0.9753965
18-21 months   MAL-ED           SOUTH AFRICA                   3                    NA                0.6921407   0.5090882   0.8751933
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.7435774   0.6524664   0.8346885
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7995370   0.3703102   1.2287638
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6799996   0.5289758   0.8310234
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7857515   0.6534590   0.9180439
18-21 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.8533458   0.7905743   0.9161173
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.7638046   0.7270960   0.8005132
18-21 months   NIH-Crypto       BANGLADESH                     2                    NA                0.8077571   0.7548665   0.8606476
18-21 months   NIH-Crypto       BANGLADESH                     3                    NA                0.8412233   0.7829341   0.8995126
18-21 months   PROVIDE          BANGLADESH                     4+                   NA                0.9836802   0.8551279   1.1122325
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.8194880   0.7902990   0.8486770
18-21 months   PROVIDE          BANGLADESH                     2                    NA                0.8634653   0.8040263   0.9229043
18-21 months   PROVIDE          BANGLADESH                     3                    NA                0.8846402   0.8146825   0.9545980
21-24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                0.4359525   0.1348566   0.7370483
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7213020   0.6422215   0.8003825
21-24 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.6443490   0.5135544   0.7751437
21-24 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.6353834   0.4611457   0.8096211
21-24 months   CONTENT          PERU                           4+                   NA                0.8723352   0.7299557   1.0147147
21-24 months   CONTENT          PERU                           1                    NA                0.8823901   0.6161633   1.1486170
21-24 months   CONTENT          PERU                           2                    NA                0.9111434   0.7974266   1.0248603
21-24 months   CONTENT          PERU                           3                    NA                1.0776957   0.9629678   1.1924236
21-24 months   GMS-Nepal        NEPAL                          4+                   NA                0.8195686   0.7440001   0.8951371
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.6405380   0.5485552   0.7325207
21-24 months   GMS-Nepal        NEPAL                          2                    NA                0.8166075   0.7349502   0.8982648
21-24 months   GMS-Nepal        NEPAL                          3                    NA                0.8058291   0.7205985   0.8910597
21-24 months   IRC              INDIA                          4+                   NA                0.5980206   0.4517652   0.7442760
21-24 months   IRC              INDIA                          1                    NA                0.6787428   0.6184547   0.7390308
21-24 months   IRC              INDIA                          2                    NA                0.7730380   0.7059086   0.8401674
21-24 months   IRC              INDIA                          3                    NA                0.5793558   0.4462028   0.7125088
21-24 months   MAL-ED           BANGLADESH                     4+                   NA                0.7377143   0.6313492   0.8440795
21-24 months   MAL-ED           BANGLADESH                     1                    NA                0.7569727   0.7124384   0.8015070
21-24 months   MAL-ED           BANGLADESH                     2                    NA                0.8312186   0.7417998   0.9206374
21-24 months   MAL-ED           BANGLADESH                     3                    NA                0.7383034   0.6321710   0.8444358
21-24 months   MAL-ED           INDIA                          4+                   NA                0.7520191   0.6590935   0.8449448
21-24 months   MAL-ED           INDIA                          1                    NA                0.8450428   0.7916911   0.8983945
21-24 months   MAL-ED           INDIA                          2                    NA                0.8372984   0.7797130   0.8948838
21-24 months   MAL-ED           INDIA                          3                    NA                0.8130267   0.7537316   0.8723219
21-24 months   MAL-ED           NEPAL                          4+                   NA                0.7901039   0.7367249   0.8434828
21-24 months   MAL-ED           NEPAL                          1                    NA                0.7299491   0.6353269   0.8245713
21-24 months   MAL-ED           NEPAL                          2                    NA                0.7860621   0.6851285   0.8869957
21-24 months   MAL-ED           NEPAL                          3                    NA                0.8597366   0.7128728   1.0066003
21-24 months   MAL-ED           PERU                           4+                   NA                0.7299124   0.6702946   0.7895303
21-24 months   MAL-ED           PERU                           1                    NA                0.8798492   0.6264404   1.1332581
21-24 months   MAL-ED           PERU                           2                    NA                0.8292110   0.6613398   0.9970822
21-24 months   MAL-ED           PERU                           3                    NA                0.7529323   0.6371369   0.8687276
21-24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.8108380   0.7570086   0.8646674
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.8266622   0.6252499   1.0280745
21-24 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.9391452   0.7611715   1.1171189
21-24 months   MAL-ED           SOUTH AFRICA                   3                    NA                1.0844742   0.7619462   1.4070021
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.7905556   0.6956631   0.8854481
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6457188   0.3143334   0.9771041
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.5517181   0.3978775   0.7055586
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7475741   0.6536756   0.8414726
21-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.7707897   0.7176704   0.8239090
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.8240304   0.7824690   0.8655919
21-24 months   NIH-Crypto       BANGLADESH                     2                    NA                0.7860542   0.7329640   0.8391444
21-24 months   NIH-Crypto       BANGLADESH                     3                    NA                0.8174647   0.7424339   0.8924956
21-24 months   PROVIDE          BANGLADESH                     4+                   NA                0.7875045   0.6564862   0.9185228
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.7616714   0.7313175   0.7920253
21-24 months   PROVIDE          BANGLADESH                     2                    NA                0.7556174   0.6965024   0.8147325
21-24 months   PROVIDE          BANGLADESH                     3                    NA                0.7234715   0.6294202   0.8175228


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          INDIA                          NA                   NA                3.4941028   3.4773973   3.5108084
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     IRC              INDIA                          NA                   NA                3.1339697   3.0229598   3.2449797
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                3.7232936   3.7129896   3.7335975
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                3.6386177   3.6075243   3.6697112
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                3.3470101   3.2814494   3.4125709
0-3 months     MAL-ED           INDIA                          NA                   NA                3.3306152   3.2408417   3.4203888
0-3 months     MAL-ED           NEPAL                          NA                   NA                3.6214116   3.5288934   3.7139297
0-3 months     MAL-ED           PERU                           NA                   NA                3.0720111   3.0070171   3.1370050
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                3.1667059   3.0657224   3.2676894
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2602600   3.1826202   3.3378997
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     COHORTS          INDIA                          NA                   NA                1.8574178   1.8434023   1.8714334
3-6 months     CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     IRC              INDIA                          NA                   NA                1.8759294   1.8124309   1.9394280
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                1.9202801   1.9098197   1.9307405
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                1.8987567   1.8688242   1.9286892
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     MAL-ED           INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     MAL-ED           NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     MAL-ED           PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.9768255   1.8961556   2.0574955
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.2173381   1.1398153   1.2948610
6-9 months     COHORTS          INDIA                          NA                   NA                1.1816465   1.1687340   1.1945589
6-9 months     CONTENT          PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                1.3172026   1.2765236   1.3578817
6-9 months     IRC              INDIA                          NA                   NA                1.3707119   1.3221131   1.4193108
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                1.3241671   1.3034835   1.3448507
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     MAL-ED           INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     MAL-ED           NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     MAL-ED           PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.8995224   0.8316661   0.9673787
9-12 months    COHORTS          INDIA                          NA                   NA                0.9847780   0.9708596   0.9986963
9-12 months    CONTENT          PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.9983761   0.9658898   1.0308625
9-12 months    IRC              INDIA                          NA                   NA                1.1267660   1.0874844   1.1660476
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                1.0714466   1.0534634   1.0894298
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    MAL-ED           INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    MAL-ED           NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    MAL-ED           PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.8533724   0.7837188   0.9230260
12-15 months   CONTENT          PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.8797046   0.8507834   0.9086259
12-15 months   IRC              INDIA                          NA                   NA                0.9580320   0.9164204   0.9996435
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                0.9414130   0.9256041   0.9572219
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   MAL-ED           INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   MAL-ED           PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7339135   0.6710399   0.7967871
15-18 months   CONTENT          PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   IRC              INDIA                          NA                   NA                0.8591967   0.8198344   0.8985590
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                0.8599047   0.8433807   0.8764287
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   MAL-ED           INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   MAL-ED           PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6999920   0.6362204   0.7637635
18-21 months   CONTENT          PERU                           NA                   NA                0.9146338   0.8709588   0.9583088
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   IRC              INDIA                          NA                   NA                0.7608543   0.7223844   0.7993242
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   MAL-ED           INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   MAL-ED           PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7068472   0.6454809   0.7682134
21-24 months   CONTENT          PERU                           NA                   NA                0.9350807   0.8543561   1.0158053
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   IRC              INDIA                          NA                   NA                0.7088420   0.6678130   0.7498711
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   MAL-ED           INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   MAL-ED           PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          1                    4+                -0.1358548   -0.2049517   -0.0667580
0-3 months     COHORTS          INDIA                          2                    4+                -0.0781040   -0.1540388   -0.0021691
0-3 months     COHORTS          INDIA                          3                    4+                -0.0684005   -0.1679600    0.0311590
0-3 months     GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    4+                -0.0181550   -0.2889157    0.2526058
0-3 months     GMS-Nepal        NEPAL                          2                    4+                 0.0517067   -0.0775131    0.1809264
0-3 months     GMS-Nepal        NEPAL                          3                    4+                 0.0743096   -0.0544063    0.2030256
0-3 months     IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    4+                 0.3289378   -0.2086807    0.8665563
0-3 months     IRC              INDIA                          2                    4+                 0.3235650   -0.2239807    0.8711107
0-3 months     IRC              INDIA                          3                    4+                 0.4743672   -0.1893142    1.1380485
0-3 months     JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     1                    4+                 0.0151573   -0.0117514    0.0420661
0-3 months     JiVitA-3         BANGLADESH                     2                    4+                 0.0182097   -0.0162019    0.0526213
0-3 months     JiVitA-3         BANGLADESH                     3                    4+                -0.0044428   -0.0453038    0.0364182
0-3 months     JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     1                    4+                 0.1077974   -0.0451378    0.2607325
0-3 months     JiVitA-4         BANGLADESH                     2                    4+                 0.1320573   -0.0329218    0.2970363
0-3 months     JiVitA-4         BANGLADESH                     3                    4+                -0.0469377   -0.2224555    0.1285801
0-3 months     MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     1                    4+                 0.2449910   -0.0401046    0.5300866
0-3 months     MAL-ED           BANGLADESH                     2                    4+                 0.2602837   -0.0499470    0.5705144
0-3 months     MAL-ED           BANGLADESH                     3                    4+                 0.3261712    0.0042149    0.6481275
0-3 months     MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          1                    4+                -0.0462349   -0.3529169    0.2604472
0-3 months     MAL-ED           INDIA                          2                    4+                 0.0092281   -0.2881956    0.3066518
0-3 months     MAL-ED           INDIA                          3                    4+                -0.1038180   -0.4782999    0.2706638
0-3 months     MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          1                    4+                 0.0110086   -0.1922231    0.2142403
0-3 months     MAL-ED           NEPAL                          2                    4+                 0.1550696   -0.1700589    0.4801982
0-3 months     MAL-ED           NEPAL                          3                    4+                -0.0434265   -0.4316322    0.3447792
0-3 months     MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           1                    4+                -0.3152607   -0.6400773    0.0095560
0-3 months     MAL-ED           PERU                           2                    4+                -0.0355227   -0.2102629    0.1392174
0-3 months     MAL-ED           PERU                           3                    4+                -0.0490389   -0.2198764    0.1217986
0-3 months     MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   1                    4+                -0.0785817   -0.5053038    0.3481404
0-3 months     MAL-ED           SOUTH AFRICA                   2                    4+                 0.0374833   -0.3626478    0.4376144
0-3 months     MAL-ED           SOUTH AFRICA                   3                    4+                 0.0144521   -0.3173119    0.3462161
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0192178   -0.3692052    0.3307697
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0358254   -0.2246296    0.1529789
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0838288   -0.1210161    0.2886738
0-3 months     NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    4+                 0.0989801   -0.0067371    0.2046972
0-3 months     NIH-Crypto       BANGLADESH                     2                    4+                 0.0209858   -0.1030061    0.1449778
0-3 months     NIH-Crypto       BANGLADESH                     3                    4+                 0.0582411   -0.0809894    0.1974715
0-3 months     PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    4+                -0.1522161   -0.3883702    0.0839380
0-3 months     PROVIDE          BANGLADESH                     2                    4+                -0.1062516   -0.3541413    0.1416381
0-3 months     PROVIDE          BANGLADESH                     3                    4+                -0.1475833   -0.4084926    0.1133260
3-6 months     CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    4+                -0.2435454   -0.8716450    0.3845542
3-6 months     CMC-V-BCS-2002   INDIA                          2                    4+                -0.3122879   -0.9537230    0.3291472
3-6 months     CMC-V-BCS-2002   INDIA                          3                    4+                -0.2315096   -0.8987855    0.4357663
3-6 months     COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    4+                -0.0451125   -0.1042791    0.0140541
3-6 months     COHORTS          INDIA                          2                    4+                -0.0064825   -0.0700664    0.0571014
3-6 months     COHORTS          INDIA                          3                    4+                -0.0784952   -0.1610649    0.0040745
3-6 months     CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     CONTENT          PERU                           1                    4+                -0.1649262   -0.2964842   -0.0333682
3-6 months     CONTENT          PERU                           2                    4+                 0.2079614    0.0948994    0.3210234
3-6 months     CONTENT          PERU                           3                    4+                -0.0058192   -0.3010161    0.2893777
3-6 months     GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    4+                 0.0649177   -0.0819134    0.2117488
3-6 months     GMS-Nepal        NEPAL                          2                    4+                 0.0995854    0.0016238    0.1975470
3-6 months     GMS-Nepal        NEPAL                          3                    4+                 0.0657122   -0.0405464    0.1719708
3-6 months     IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    4+                -0.1258889   -0.5104686    0.2586907
3-6 months     IRC              INDIA                          2                    4+                -0.0132748   -0.4018026    0.3752530
3-6 months     IRC              INDIA                          3                    4+                -0.1475663   -0.5742437    0.2791112
3-6 months     JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     1                    4+                -0.0003781   -0.0280032    0.0272470
3-6 months     JiVitA-3         BANGLADESH                     2                    4+                -0.0160752   -0.0505266    0.0183762
3-6 months     JiVitA-3         BANGLADESH                     3                    4+                -0.0017102   -0.0410617    0.0376414
3-6 months     JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     1                    4+                -0.3295344   -0.4630446   -0.1960243
3-6 months     JiVitA-4         BANGLADESH                     2                    4+                -0.3515018   -0.4969764   -0.2060271
3-6 months     JiVitA-4         BANGLADESH                     3                    4+                -0.1572528   -0.3050709   -0.0094347
3-6 months     MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     1                    4+                 0.0846582   -0.1219842    0.2913005
3-6 months     MAL-ED           BANGLADESH                     2                    4+                 0.1285901   -0.0977073    0.3548876
3-6 months     MAL-ED           BANGLADESH                     3                    4+                 0.0542866   -0.2095945    0.3181677
3-6 months     MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          1                    4+                -0.0024046   -0.2605221    0.2557129
3-6 months     MAL-ED           INDIA                          2                    4+                -0.0423943   -0.2924538    0.2076653
3-6 months     MAL-ED           INDIA                          3                    4+                 0.0465576   -0.2318740    0.3249893
3-6 months     MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          1                    4+                -0.0665553   -0.2193723    0.0862616
3-6 months     MAL-ED           NEPAL                          2                    4+                -0.1371570   -0.3060357    0.0317216
3-6 months     MAL-ED           NEPAL                          3                    4+                -0.0776054   -0.2841032    0.1288924
3-6 months     MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           1                    4+                 0.3177955    0.0830336    0.5525575
3-6 months     MAL-ED           PERU                           2                    4+                 0.1554226   -0.0498675    0.3607127
3-6 months     MAL-ED           PERU                           3                    4+                 0.1611857   -0.0108390    0.3332104
3-6 months     MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   1                    4+                -0.1411250   -0.4380678    0.1558179
3-6 months     MAL-ED           SOUTH AFRICA                   2                    4+                -0.0010063   -0.3069486    0.3049360
3-6 months     MAL-ED           SOUTH AFRICA                   3                    4+                -0.1347227   -0.4229849    0.1535395
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0597851   -0.3541880    0.4737582
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0317119   -0.2147072    0.1512833
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0580450   -0.2167286    0.1006386
3-6 months     NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    4+                -0.1331785   -0.2510469   -0.0153101
3-6 months     NIH-Crypto       BANGLADESH                     2                    4+                -0.0865664   -0.2251880    0.0520551
3-6 months     NIH-Crypto       BANGLADESH                     3                    4+                 0.0199942   -0.1514839    0.1914722
3-6 months     PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    4+                -0.0575834   -0.2261252    0.1109585
3-6 months     PROVIDE          BANGLADESH                     2                    4+                -0.0601219   -0.2459290    0.1256851
3-6 months     PROVIDE          BANGLADESH                     3                    4+                -0.0239087   -0.2250809    0.1772634
6-9 months     CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    4+                 0.0928065   -0.2808145    0.4664275
6-9 months     CMC-V-BCS-2002   INDIA                          2                    4+                 0.0657886   -0.3161481    0.4477253
6-9 months     CMC-V-BCS-2002   INDIA                          3                    4+                -0.0528590   -0.4566184    0.3509004
6-9 months     COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    4+                -0.1445411   -0.1961945   -0.0928876
6-9 months     COHORTS          INDIA                          2                    4+                -0.1314738   -0.1864966   -0.0764509
6-9 months     COHORTS          INDIA                          3                    4+                -0.1217236   -0.1938144   -0.0496328
6-9 months     CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     CONTENT          PERU                           1                    4+                -0.1369914   -0.2896198    0.0156370
6-9 months     CONTENT          PERU                           2                    4+                -0.2532250   -0.4050332   -0.1014169
6-9 months     CONTENT          PERU                           3                    4+                -0.0375044   -0.2624633    0.1874546
6-9 months     GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    4+                 0.0388937   -0.0830450    0.1608324
6-9 months     GMS-Nepal        NEPAL                          2                    4+                 0.0046681   -0.1128688    0.1222049
6-9 months     GMS-Nepal        NEPAL                          3                    4+                 0.0258063   -0.0778772    0.1294897
6-9 months     IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    4+                -0.0828591   -0.3040098    0.1382916
6-9 months     IRC              INDIA                          2                    4+                -0.0297345   -0.2581018    0.1986328
6-9 months     IRC              INDIA                          3                    4+                -0.0553316   -0.3520787    0.2414155
6-9 months     JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     1                    4+                -0.0460651   -0.1135526    0.0214224
6-9 months     JiVitA-4         BANGLADESH                     2                    4+                -0.0475606   -0.1385554    0.0434342
6-9 months     JiVitA-4         BANGLADESH                     3                    4+                -0.0863539   -0.1962763    0.0235685
6-9 months     MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     1                    4+                -0.1747110   -0.3353207   -0.0141012
6-9 months     MAL-ED           BANGLADESH                     2                    4+                -0.1713111   -0.3538153    0.0111930
6-9 months     MAL-ED           BANGLADESH                     3                    4+                -0.1575822   -0.3430689    0.0279045
6-9 months     MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          1                    4+                 0.1175843   -0.0674154    0.3025840
6-9 months     MAL-ED           INDIA                          2                    4+                 0.1169087   -0.0574521    0.2912694
6-9 months     MAL-ED           INDIA                          3                    4+                 0.0146356   -0.1644664    0.1937377
6-9 months     MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          1                    4+                -0.0580651   -0.1803740    0.0642438
6-9 months     MAL-ED           NEPAL                          2                    4+                 0.0259860   -0.0961628    0.1481347
6-9 months     MAL-ED           NEPAL                          3                    4+                -0.0908238   -0.2582699    0.0766222
6-9 months     MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           1                    4+                 0.2594940    0.0012526    0.5177355
6-9 months     MAL-ED           PERU                           2                    4+                 0.0646857   -0.0902728    0.2196443
6-9 months     MAL-ED           PERU                           3                    4+                 0.0001911   -0.1523986    0.1527809
6-9 months     MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   1                    4+                -0.2716120   -0.6721412    0.1289173
6-9 months     MAL-ED           SOUTH AFRICA                   2                    4+                 0.0089342   -0.3346902    0.3525585
6-9 months     MAL-ED           SOUTH AFRICA                   3                    4+                -0.0852094   -0.3023472    0.1319284
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0743458   -0.4947064    0.6433981
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0021953   -0.1757734    0.1801640
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0256831   -0.1702105    0.2215766
6-9 months     NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    4+                 0.0665177   -0.0243588    0.1573943
6-9 months     NIH-Crypto       BANGLADESH                     2                    4+                -0.0083642   -0.1119368    0.0952084
6-9 months     NIH-Crypto       BANGLADESH                     3                    4+                 0.0098071   -0.1034123    0.1230266
6-9 months     PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    4+                -0.1084508   -0.2727001    0.0557985
6-9 months     PROVIDE          BANGLADESH                     2                    4+                -0.0648224   -0.2401087    0.1104639
6-9 months     PROVIDE          BANGLADESH                     3                    4+                -0.0520956   -0.2336735    0.1294824
9-12 months    CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    4+                -0.2356246   -0.5761285    0.1048793
9-12 months    CMC-V-BCS-2002   INDIA                          2                    4+                -0.1627220   -0.5337787    0.2083348
9-12 months    CMC-V-BCS-2002   INDIA                          3                    4+                -0.2421328   -0.6019862    0.1177207
9-12 months    COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    4+                -0.1378250   -0.1922491   -0.0834010
9-12 months    COHORTS          INDIA                          2                    4+                -0.1143689   -0.1730956   -0.0556421
9-12 months    COHORTS          INDIA                          3                    4+                -0.0638368   -0.1447589    0.0170854
9-12 months    CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    CONTENT          PERU                           1                    4+                -0.1551882   -0.3102013   -0.0001751
9-12 months    CONTENT          PERU                           2                    4+                -0.0642915   -0.1774878    0.0489048
9-12 months    CONTENT          PERU                           3                    4+                -0.1398105   -0.2781253   -0.0014956
9-12 months    GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    4+                -0.0515960   -0.1706963    0.0675043
9-12 months    GMS-Nepal        NEPAL                          2                    4+                -0.0728901   -0.1687903    0.0230102
9-12 months    GMS-Nepal        NEPAL                          3                    4+                 0.0569479   -0.0157925    0.1296883
9-12 months    IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    4+                 0.1112374   -0.0676331    0.2901079
9-12 months    IRC              INDIA                          2                    4+                 0.1337717   -0.0476378    0.3151811
9-12 months    IRC              INDIA                          3                    4+                 0.0400077   -0.1727774    0.2527929
9-12 months    JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     1                    4+                 0.0832116    0.0304072    0.1360160
9-12 months    JiVitA-4         BANGLADESH                     2                    4+                 0.1012983    0.0298156    0.1727810
9-12 months    JiVitA-4         BANGLADESH                     3                    4+                 0.0735987    0.0050439    0.1421536
9-12 months    MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     1                    4+                 0.0042919   -0.2108869    0.2194706
9-12 months    MAL-ED           BANGLADESH                     2                    4+                 0.0454155   -0.1823272    0.2731581
9-12 months    MAL-ED           BANGLADESH                     3                    4+                 0.0225481   -0.2117988    0.2568949
9-12 months    MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          1                    4+                 0.1058734   -0.0150739    0.2268207
9-12 months    MAL-ED           INDIA                          2                    4+                 0.0448569   -0.0764392    0.1661530
9-12 months    MAL-ED           INDIA                          3                    4+                 0.1241063   -0.0093666    0.2575793
9-12 months    MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          1                    4+                 0.0698253   -0.0413098    0.1809605
9-12 months    MAL-ED           NEPAL                          2                    4+                 0.0532568   -0.0488964    0.1554099
9-12 months    MAL-ED           NEPAL                          3                    4+                 0.0019849   -0.1430864    0.1470561
9-12 months    MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           1                    4+                -0.1939239   -0.3553517   -0.0324962
9-12 months    MAL-ED           PERU                           2                    4+                -0.1396801   -0.2821980    0.0028379
9-12 months    MAL-ED           PERU                           3                    4+                -0.0692744   -0.2046230    0.0660742
9-12 months    MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   1                    4+                -0.0217465   -0.2596946    0.2162017
9-12 months    MAL-ED           SOUTH AFRICA                   2                    4+                 0.0693036   -0.2046033    0.3432105
9-12 months    MAL-ED           SOUTH AFRICA                   3                    4+                -0.1235600   -0.3949182    0.1477981
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0705528   -0.3746055    0.5157111
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0184044   -0.2271936    0.1903848
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0084479   -0.2057610    0.1888653
9-12 months    NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    4+                -0.0500880   -0.1413424    0.0411663
9-12 months    NIH-Crypto       BANGLADESH                     2                    4+                -0.0728175   -0.1697339    0.0240989
9-12 months    NIH-Crypto       BANGLADESH                     3                    4+                 0.0037152   -0.1021971    0.1096274
9-12 months    PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    4+                 0.0083151   -0.1670793    0.1837095
9-12 months    PROVIDE          BANGLADESH                     2                    4+                 0.0101568   -0.1778595    0.1981732
9-12 months    PROVIDE          BANGLADESH                     3                    4+                 0.0573403   -0.1374673    0.2521479
12-15 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    4+                 0.0011831   -0.2457521    0.2481183
12-15 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.0064715   -0.2874941    0.2745512
12-15 months   CMC-V-BCS-2002   INDIA                          3                    4+                 0.0955919   -0.2138067    0.4049905
12-15 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   CONTENT          PERU                           1                    4+                 0.0385444   -0.0934181    0.1705069
12-15 months   CONTENT          PERU                           2                    4+                 0.0147141   -0.1053357    0.1347638
12-15 months   CONTENT          PERU                           3                    4+                -0.0158392   -0.2046486    0.1729702
12-15 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    4+                -0.0704085   -0.1809700    0.0401529
12-15 months   GMS-Nepal        NEPAL                          2                    4+                -0.0340325   -0.1068850    0.0388199
12-15 months   GMS-Nepal        NEPAL                          3                    4+                -0.0437383   -0.1201623    0.0326857
12-15 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    4+                 0.0789993   -0.0632414    0.2212401
12-15 months   IRC              INDIA                          2                    4+                 0.1161680   -0.0348449    0.2671810
12-15 months   IRC              INDIA                          3                    4+                 0.1225188   -0.0789743    0.3240119
12-15 months   JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     1                    4+                -0.0043340   -0.0669069    0.0582388
12-15 months   JiVitA-4         BANGLADESH                     2                    4+                -0.0042856   -0.0812990    0.0727279
12-15 months   JiVitA-4         BANGLADESH                     3                    4+                 0.0037162   -0.0719110    0.0793433
12-15 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     1                    4+                -0.1850146   -0.3571070   -0.0129222
12-15 months   MAL-ED           BANGLADESH                     2                    4+                -0.2069459   -0.3968614   -0.0170304
12-15 months   MAL-ED           BANGLADESH                     3                    4+                -0.0997082   -0.3079341    0.1085177
12-15 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          1                    4+                -0.1653490   -0.3031014   -0.0275966
12-15 months   MAL-ED           INDIA                          2                    4+                -0.0908641   -0.2291502    0.0474220
12-15 months   MAL-ED           INDIA                          3                    4+                -0.1411456   -0.2897045    0.0074133
12-15 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          1                    4+                -0.1149078   -0.2144492   -0.0153664
12-15 months   MAL-ED           NEPAL                          2                    4+                 0.1108868   -0.0337349    0.2555086
12-15 months   MAL-ED           NEPAL                          3                    4+                 0.0194659   -0.1093246    0.1482564
12-15 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           1                    4+                 0.0405849   -0.1914090    0.2725789
12-15 months   MAL-ED           PERU                           2                    4+                 0.0291714   -0.0956377    0.1539806
12-15 months   MAL-ED           PERU                           3                    4+                 0.0889244   -0.0136245    0.1914732
12-15 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   1                    4+                 0.2679993    0.0275458    0.5084527
12-15 months   MAL-ED           SOUTH AFRICA                   2                    4+                -0.0653142   -0.2981344    0.1675061
12-15 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.0557981   -0.2570189    0.1454227
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.2950046   -0.0414315    0.6314407
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1055036   -0.2806787    0.0696715
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0347951   -0.1123446    0.1819349
12-15 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.0964836   -0.1667102   -0.0262570
12-15 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.0870054   -0.1636490   -0.0103619
12-15 months   NIH-Crypto       BANGLADESH                     3                    4+                -0.0663632   -0.1629666    0.0302402
12-15 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    4+                -0.1123062   -0.2733590    0.0487467
12-15 months   PROVIDE          BANGLADESH                     2                    4+                -0.0613027   -0.2310188    0.1084135
12-15 months   PROVIDE          BANGLADESH                     3                    4+                -0.1065395   -0.2834098    0.0703309
15-18 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.2178333   -0.4269857   -0.0086809
15-18 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.0949714   -0.3359641    0.1460214
15-18 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.1360811   -0.4038098    0.1316475
15-18 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   CONTENT          PERU                           1                    4+                -0.0086950   -0.1400489    0.1226588
15-18 months   CONTENT          PERU                           2                    4+                 0.1820461    0.0155702    0.3485220
15-18 months   CONTENT          PERU                           3                    4+                -0.0642817   -0.2753273    0.1467638
15-18 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    4+                 0.0632525   -0.0455108    0.1720159
15-18 months   GMS-Nepal        NEPAL                          2                    4+                 0.0709311   -0.0176016    0.1594637
15-18 months   GMS-Nepal        NEPAL                          3                    4+                 0.0720142   -0.0292987    0.1733270
15-18 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    4+                 0.0905930   -0.1390394    0.3202253
15-18 months   IRC              INDIA                          2                    4+                 0.0986473   -0.1293451    0.3266398
15-18 months   IRC              INDIA                          3                    4+                 0.1120419   -0.1300613    0.3541451
15-18 months   JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     1                    4+                 0.0070255   -0.0662083    0.0802592
15-18 months   JiVitA-4         BANGLADESH                     2                    4+                -0.0335139   -0.1191601    0.0521323
15-18 months   JiVitA-4         BANGLADESH                     3                    4+                 0.0327944   -0.0522848    0.1178736
15-18 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     1                    4+                -0.1172537   -0.3222682    0.0877608
15-18 months   MAL-ED           BANGLADESH                     2                    4+                -0.1142233   -0.3354901    0.1070436
15-18 months   MAL-ED           BANGLADESH                     3                    4+                -0.0774626   -0.3125572    0.1576319
15-18 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          1                    4+                 0.1171843   -0.0009591    0.2353278
15-18 months   MAL-ED           INDIA                          2                    4+                 0.0169000   -0.0998647    0.1336647
15-18 months   MAL-ED           INDIA                          3                    4+                 0.1363627    0.0062592    0.2664661
15-18 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          1                    4+                 0.0311561   -0.0690837    0.1313958
15-18 months   MAL-ED           NEPAL                          2                    4+                 0.0129144   -0.1350496    0.1608784
15-18 months   MAL-ED           NEPAL                          3                    4+                 0.1037409   -0.0565368    0.2640187
15-18 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           1                    4+                -0.0980410   -0.2474702    0.0513883
15-18 months   MAL-ED           PERU                           2                    4+                -0.0670456   -0.1640429    0.0299516
15-18 months   MAL-ED           PERU                           3                    4+                 0.0396256   -0.0827420    0.1619933
15-18 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.0042121   -0.2449555    0.2365313
15-18 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.0832490   -0.1296998    0.2961977
15-18 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.0461616   -0.2583825    0.1660593
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0701599   -0.5007105    0.3603907
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0469865   -0.1159818    0.2099549
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0137940   -0.1619109    0.1343229
15-18 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    4+                 0.0105057   -0.0570470    0.0780584
15-18 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.0042505   -0.0759097    0.0674087
15-18 months   NIH-Crypto       BANGLADESH                     3                    4+                 0.0470419   -0.0496109    0.1436948
15-18 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    4+                -0.0974042   -0.2535134    0.0587051
15-18 months   PROVIDE          BANGLADESH                     2                    4+                -0.1288496   -0.2922945    0.0345953
15-18 months   PROVIDE          BANGLADESH                     3                    4+                -0.0808471   -0.2535512    0.0918570
18-21 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.3271750   -0.6084616   -0.0458885
18-21 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.1972013   -0.4950297    0.1006272
18-21 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.2929086   -0.6237050    0.0378879
18-21 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   CONTENT          PERU                           1                    4+                -0.0824769   -0.2380170    0.0730632
18-21 months   CONTENT          PERU                           2                    4+                -0.1799476   -0.3366768   -0.0232184
18-21 months   CONTENT          PERU                           3                    4+                -0.0758372   -0.2130642    0.0613897
18-21 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    4+                -0.0199705   -0.1421464    0.1022054
18-21 months   GMS-Nepal        NEPAL                          2                    4+                -0.0141550   -0.0903008    0.0619908
18-21 months   GMS-Nepal        NEPAL                          3                    4+                 0.0479070   -0.0535211    0.1493352
18-21 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    4+                -0.1959038   -0.4388415    0.0470339
18-21 months   IRC              INDIA                          2                    4+                -0.1518961   -0.3947060    0.0909137
18-21 months   IRC              INDIA                          3                    4+                -0.2579737   -0.5366455    0.0206982
18-21 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     1                    4+                -0.1290301   -0.3150830    0.0570227
18-21 months   MAL-ED           BANGLADESH                     2                    4+                -0.0677697   -0.2725156    0.1369763
18-21 months   MAL-ED           BANGLADESH                     3                    4+                -0.0622533   -0.2675061    0.1429995
18-21 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          1                    4+                -0.0264025   -0.1339229    0.0811179
18-21 months   MAL-ED           INDIA                          2                    4+                -0.0853738   -0.1946699    0.0239222
18-21 months   MAL-ED           INDIA                          3                    4+                -0.0787489   -0.1947345    0.0372366
18-21 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          1                    4+                -0.0313359   -0.1317161    0.0690443
18-21 months   MAL-ED           NEPAL                          2                    4+                -0.0379166   -0.1494973    0.0736641
18-21 months   MAL-ED           NEPAL                          3                    4+                -0.2551601   -0.4008107   -0.1095095
18-21 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           1                    4+                -0.1816167   -0.3412204   -0.0220130
18-21 months   MAL-ED           PERU                           2                    4+                -0.0036104   -0.1286270    0.1214063
18-21 months   MAL-ED           PERU                           3                    4+                -0.1016591   -0.2215334    0.0182152
18-21 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.0342434   -0.2427287    0.1742420
18-21 months   MAL-ED           SOUTH AFRICA                   2                    4+                -0.0072017   -0.2061249    0.1917215
18-21 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.1027534   -0.2972862    0.0917794
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0559595   -0.3828307    0.4947498
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0635779   -0.2399565    0.1128007
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0421740   -0.1184576    0.2028057
18-21 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.0895412   -0.1623417   -0.0167408
18-21 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.0455888   -0.1278457    0.0366681
18-21 months   NIH-Crypto       BANGLADESH                     3                    4+                -0.0121225   -0.0975904    0.0733454
18-21 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    4+                -0.1641922   -0.2960725   -0.0323118
18-21 months   PROVIDE          BANGLADESH                     2                    4+                -0.1202149   -0.2620045    0.0215747
18-21 months   PROVIDE          BANGLADESH                     3                    4+                -0.0990399   -0.2454002    0.0473203
21-24 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    4+                 0.2853496   -0.0248947    0.5955938
21-24 months   CMC-V-BCS-2002   INDIA                          2                    4+                 0.2083966   -0.1207281    0.5375212
21-24 months   CMC-V-BCS-2002   INDIA                          3                    4+                 0.1994309   -0.1475080    0.5463699
21-24 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   CONTENT          PERU                           1                    4+                 0.0100549   -0.2918535    0.3119633
21-24 months   CONTENT          PERU                           2                    4+                 0.0388082   -0.1434099    0.2210263
21-24 months   CONTENT          PERU                           3                    4+                 0.2053605    0.0225097    0.3882113
21-24 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    4+                -0.1790307   -0.2978419   -0.0602195
21-24 months   GMS-Nepal        NEPAL                          2                    4+                -0.0029612   -0.1140910    0.1081687
21-24 months   GMS-Nepal        NEPAL                          3                    4+                -0.0137396   -0.1279834    0.1005042
21-24 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    4+                 0.0807222   -0.0779439    0.2393884
21-24 months   IRC              INDIA                          2                    4+                 0.1750174    0.0140339    0.3360009
21-24 months   IRC              INDIA                          3                    4+                -0.0186647   -0.2169500    0.1796205
21-24 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     1                    4+                 0.0192584   -0.0960512    0.1345679
21-24 months   MAL-ED           BANGLADESH                     2                    4+                 0.0935043   -0.0453325    0.2323410
21-24 months   MAL-ED           BANGLADESH                     3                    4+                 0.0005891   -0.1496909    0.1508691
21-24 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          1                    4+                 0.0930236   -0.0142926    0.2003398
21-24 months   MAL-ED           INDIA                          2                    4+                 0.0852792   -0.0241692    0.1947276
21-24 months   MAL-ED           INDIA                          3                    4+                 0.0610076   -0.0491399    0.1711551
21-24 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          1                    4+                -0.0601547   -0.1689890    0.0486796
21-24 months   MAL-ED           NEPAL                          2                    4+                -0.0040417   -0.1187941    0.1107107
21-24 months   MAL-ED           NEPAL                          3                    4+                 0.0696327   -0.0868845    0.2261499
21-24 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           1                    4+                 0.1499368   -0.1108810    0.4107546
21-24 months   MAL-ED           PERU                           2                    4+                 0.0992986   -0.0795643    0.2781614
21-24 months   MAL-ED           PERU                           3                    4+                 0.0230198   -0.1072847    0.1533244
21-24 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   1                    4+                 0.0158242   -0.1931057    0.2247541
21-24 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.1283072   -0.0580579    0.3146723
21-24 months   MAL-ED           SOUTH AFRICA                   3                    4+                 0.2736362   -0.0544493    0.6017216
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.1448369   -0.4895409    0.1998671
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.2388376   -0.4195902   -0.0580849
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0429815   -0.1764788    0.0905158
21-24 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    4+                 0.0532407   -0.0141449    0.1206263
21-24 months   NIH-Crypto       BANGLADESH                     2                    4+                 0.0152645   -0.0598847    0.0904136
21-24 months   NIH-Crypto       BANGLADESH                     3                    4+                 0.0466750   -0.0454230    0.1387731
21-24 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    4+                -0.0258331   -0.1603331    0.1086668
21-24 months   PROVIDE          BANGLADESH                     2                    4+                -0.0318871   -0.1756126    0.1118384
21-24 months   PROVIDE          BANGLADESH                     3                    4+                -0.0640330   -0.2254208    0.0973547


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          4+                   NA                -0.1085457   -0.1739331   -0.0431584
0-3 months     GMS-Nepal        NEPAL                          4+                   NA                 0.0269331   -0.0280359    0.0819021
0-3 months     IRC              INDIA                          4+                   NA                 0.3307532   -0.1722755    0.8337818
0-3 months     JiVitA-3         BANGLADESH                     4+                   NA                 0.0183935   -0.0050588    0.0418458
0-3 months     JiVitA-4         BANGLADESH                     4+                   NA                 0.1115187   -0.0306410    0.2536785
0-3 months     MAL-ED           BANGLADESH                     4+                   NA                 0.2544166   -0.0147120    0.5235453
0-3 months     MAL-ED           INDIA                          4+                   NA                -0.0400719   -0.2897017    0.2095578
0-3 months     MAL-ED           NEPAL                          4+                   NA                 0.0122016   -0.0698896    0.0942928
0-3 months     MAL-ED           PERU                           4+                   NA                -0.0279030   -0.0923572    0.0365511
0-3 months     MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0030354   -0.0602114    0.0541407
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0146632   -0.0769259    0.1062523
0-3 months     NIH-Crypto       BANGLADESH                     4+                   NA                 0.0615899   -0.0254841    0.1486640
0-3 months     PROVIDE          BANGLADESH                     4+                   NA                -0.1335494   -0.3610567    0.0939579
3-6 months     CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2462672   -0.8466097    0.3540753
3-6 months     COHORTS          INDIA                          4+                   NA                -0.0363659   -0.0921365    0.0194047
3-6 months     CONTENT          PERU                           4+                   NA                -0.0360086   -0.0994058    0.0273887
3-6 months     GMS-Nepal        NEPAL                          4+                   NA                 0.0404050   -0.0018152    0.0826252
3-6 months     IRC              INDIA                          4+                   NA                -0.0740291   -0.4397014    0.2916432
3-6 months     JiVitA-3         BANGLADESH                     4+                   NA                -0.0132130   -0.0366336    0.0102075
3-6 months     JiVitA-4         BANGLADESH                     4+                   NA                -0.3174814   -0.4412886   -0.1936742
3-6 months     MAL-ED           BANGLADESH                     4+                   NA                 0.0868263   -0.1069661    0.2806187
3-6 months     MAL-ED           INDIA                          4+                   NA                -0.0074129   -0.2202415    0.2054157
3-6 months     MAL-ED           NEPAL                          4+                   NA                -0.0401163   -0.0903807    0.0101482
3-6 months     MAL-ED           PERU                           4+                   NA                 0.0965961    0.0296700    0.1635221
3-6 months     MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0136620   -0.0553200    0.0279961
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0454691   -0.1219411    0.0310029
3-6 months     NIH-Crypto       BANGLADESH                     4+                   NA                -0.0833944   -0.1834826    0.0166938
3-6 months     PROVIDE          BANGLADESH                     4+                   NA                -0.0552120   -0.2168464    0.1064224
6-9 months     CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0483636   -0.3052461    0.4019734
6-9 months     COHORTS          INDIA                          4+                   NA                -0.1340966   -0.1829087   -0.0852845
6-9 months     CONTENT          PERU                           4+                   NA                -0.0423405   -0.1241826    0.0395015
6-9 months     GMS-Nepal        NEPAL                          4+                   NA                 0.0073437   -0.0415519    0.0562393
6-9 months     IRC              INDIA                          4+                   NA                -0.0695846   -0.2793217    0.1401526
6-9 months     JiVitA-4         BANGLADESH                     4+                   NA                -0.0424665   -0.1005624    0.0156295
6-9 months     MAL-ED           BANGLADESH                     4+                   NA                -0.1639221   -0.3157437   -0.0121004
6-9 months     MAL-ED           INDIA                          4+                   NA                 0.0770389   -0.0683254    0.2224032
6-9 months     MAL-ED           NEPAL                          4+                   NA                -0.0147867   -0.0553321    0.0257587
6-9 months     MAL-ED           PERU                           4+                   NA                 0.0200703   -0.0333680    0.0735086
6-9 months     MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0192378   -0.0547444    0.0162687
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0028238   -0.0882725    0.0939200
6-9 months     NIH-Crypto       BANGLADESH                     4+                   NA                 0.0365419   -0.0390045    0.1120884
6-9 months     PROVIDE          BANGLADESH                     4+                   NA                -0.0963610   -0.2545922    0.0618703
9-12 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2018854   -0.5248341    0.1210633
9-12 months    COHORTS          INDIA                          4+                   NA                -0.1248354   -0.1761564   -0.0735144
9-12 months    CONTENT          PERU                           4+                   NA                -0.1428756   -0.2240175   -0.0617336
9-12 months    GMS-Nepal        NEPAL                          4+                   NA                -0.0026150   -0.0392662    0.0340362
9-12 months    IRC              INDIA                          4+                   NA                 0.1014947   -0.0659815    0.2689710
9-12 months    JiVitA-4         BANGLADESH                     4+                   NA                 0.0913824    0.0463914    0.1363733
9-12 months    MAL-ED           BANGLADESH                     4+                   NA                 0.0006282   -0.2034995    0.2047559
9-12 months    MAL-ED           INDIA                          4+                   NA                 0.0781540   -0.0180314    0.1743394
9-12 months    MAL-ED           NEPAL                          4+                   NA                 0.0232423   -0.0135795    0.0600642
9-12 months    MAL-ED           PERU                           4+                   NA                -0.0570918   -0.1048435   -0.0093401
9-12 months    MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0078640   -0.0454801    0.0297521
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0039078   -0.0970288    0.0892132
9-12 months    NIH-Crypto       BANGLADESH                     4+                   NA                -0.0492712   -0.1268039    0.0282616
9-12 months    PROVIDE          BANGLADESH                     4+                   NA                 0.0115837   -0.1577014    0.1808688
12-15 months   CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0148701   -0.2202821    0.2500224
12-15 months   CONTENT          PERU                           4+                   NA                 0.0128195   -0.0495813    0.0752203
12-15 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0250560   -0.0593458    0.0092338
12-15 months   IRC              INDIA                          4+                   NA                 0.0934147   -0.0402331    0.2270625
12-15 months   JiVitA-4         BANGLADESH                     4+                   NA                -0.0096519   -0.0680215    0.0487177
12-15 months   MAL-ED           BANGLADESH                     4+                   NA                -0.1732324   -0.3362690   -0.0101957
12-15 months   MAL-ED           INDIA                          4+                   NA                -0.1197547   -0.2342775   -0.0052320
12-15 months   MAL-ED           NEPAL                          4+                   NA                -0.0082555   -0.0437563    0.0272453
12-15 months   MAL-ED           PERU                           4+                   NA                 0.0292128   -0.0162027    0.0746284
12-15 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0018359   -0.0305702    0.0342420
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0171321   -0.0887438    0.0544797
12-15 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0912919   -0.1469467   -0.0356371
12-15 months   PROVIDE          BANGLADESH                     4+                   NA                -0.1003438   -0.2550595    0.0543719
15-18 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1642205   -0.3626788    0.0342379
15-18 months   CONTENT          PERU                           4+                   NA                -0.0289862   -0.0948344    0.0368621
15-18 months   GMS-Nepal        NEPAL                          4+                   NA                 0.0437136   -0.0042921    0.0917194
15-18 months   IRC              INDIA                          4+                   NA                 0.0912051   -0.1249563    0.3073665
15-18 months   JiVitA-4         BANGLADESH                     4+                   NA                -0.0068626   -0.0751588    0.0614336
15-18 months   MAL-ED           BANGLADESH                     4+                   NA                -0.1099084   -0.3061676    0.0863509
15-18 months   MAL-ED           INDIA                          4+                   NA                 0.0750946   -0.0212143    0.1714035
15-18 months   MAL-ED           NEPAL                          4+                   NA                 0.0070382   -0.0305452    0.0446215
15-18 months   MAL-ED           PERU                           4+                   NA                -0.0090741   -0.0500409    0.0318927
15-18 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0015889   -0.0278699    0.0310477
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0088503   -0.0570838    0.0747845
15-18 months   NIH-Crypto       BANGLADESH                     4+                   NA                 0.0146609   -0.0389535    0.0682752
15-18 months   PROVIDE          BANGLADESH                     4+                   NA                -0.1020683   -0.2517002    0.0475636
18-21 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2842130   -0.5517676   -0.0166583
18-21 months   CONTENT          PERU                           4+                   NA                -0.0978961   -0.1756217   -0.0201704
18-21 months   GMS-Nepal        NEPAL                          4+                   NA                 0.0001429   -0.0403925    0.0406782
18-21 months   IRC              INDIA                          4+                   NA                -0.1734513   -0.4037624    0.0568597
18-21 months   MAL-ED           BANGLADESH                     4+                   NA                -0.1006936   -0.2775699    0.0761828
18-21 months   MAL-ED           INDIA                          4+                   NA                -0.0549075   -0.1413996    0.0315845
18-21 months   MAL-ED           NEPAL                          4+                   NA                -0.0345797   -0.0689645   -0.0001949
18-21 months   MAL-ED           PERU                           4+                   NA                -0.0442856   -0.0863262   -0.0022450
18-21 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0127132   -0.0414561    0.0160298
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0001264   -0.0709131    0.0711659
18-21 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0555703   -0.1140822    0.0029416
18-21 months   PROVIDE          BANGLADESH                     4+                   NA                -0.1443425   -0.2707547   -0.0179303
21-24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                 0.2708947   -0.0276573    0.5694468
21-24 months   CONTENT          PERU                           4+                   NA                 0.0627455   -0.0642150    0.1897059
21-24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0205374   -0.0695534    0.0284785
21-24 months   IRC              INDIA                          4+                   NA                 0.1108215   -0.0359343    0.2575773
21-24 months   MAL-ED           BANGLADESH                     4+                   NA                 0.0317039   -0.0755752    0.1389830
21-24 months   MAL-ED           INDIA                          4+                   NA                 0.0735322   -0.0148496    0.1619139
21-24 months   MAL-ED           NEPAL                          4+                   NA                -0.0067474   -0.0425878    0.0290931
21-24 months   MAL-ED           PERU                           4+                   NA                 0.0311382   -0.0129484    0.0752247
21-24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0286570   -0.0050013    0.0623152
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0716228   -0.1407512   -0.0024945
21-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                 0.0285456   -0.0213437    0.0784349
21-24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0243654   -0.1532228    0.1044919
