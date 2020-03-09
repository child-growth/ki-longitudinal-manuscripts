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
![](/tmp/18dea9e6-34ce-45d2-902a-9625be0960f8/f84f9922-d6d3-4311-a05c-36e0ba3bda9b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/18dea9e6-34ce-45d2-902a-9625be0960f8/f84f9922-d6d3-4311-a05c-36e0ba3bda9b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/18dea9e6-34ce-45d2-902a-9625be0960f8/f84f9922-d6d3-4311-a05c-36e0ba3bda9b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          4+                   NA                -0.0143799   -0.0456182    0.0168584
0-3 months     COHORTS          INDIA                          1                    NA                -0.0791518   -0.0901474   -0.0681561
0-3 months     COHORTS          INDIA                          2                    NA                -0.0605678   -0.0792119   -0.0419236
0-3 months     COHORTS          INDIA                          3                    NA                -0.0438748   -0.0847436   -0.0030060
0-3 months     GMS-Nepal        NEPAL                          4+                   NA                -0.0524730   -0.0902210   -0.0147250
0-3 months     GMS-Nepal        NEPAL                          1                    NA                -0.0539491   -0.1686362    0.0607380
0-3 months     GMS-Nepal        NEPAL                          2                    NA                -0.0249107   -0.0744790    0.0246576
0-3 months     GMS-Nepal        NEPAL                          3                    NA                 0.0072600   -0.0428761    0.0573960
0-3 months     IRC              INDIA                          4+                   NA                -0.4127531   -0.6598962   -0.1656101
0-3 months     IRC              INDIA                          1                    NA                -0.2533069   -0.3323532   -0.1742605
0-3 months     IRC              INDIA                          2                    NA                -0.2593489   -0.3528227   -0.1658750
0-3 months     IRC              INDIA                          3                    NA                -0.1985312   -0.3925440   -0.0045185
0-3 months     JiVitA-3         BANGLADESH                     4+                   NA                 0.0704176    0.0578813    0.0829538
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                 0.0734269    0.0665059    0.0803479
0-3 months     JiVitA-3         BANGLADESH                     2                    NA                 0.0733017    0.0602260    0.0863774
0-3 months     JiVitA-3         BANGLADESH                     3                    NA                 0.0628470    0.0466541    0.0790398
0-3 months     JiVitA-4         BANGLADESH                     4+                   NA                 0.0225130   -0.0455339    0.0905600
0-3 months     JiVitA-4         BANGLADESH                     1                    NA                 0.0701082    0.0482664    0.0919499
0-3 months     JiVitA-4         BANGLADESH                     2                    NA                 0.0779744    0.0303048    0.1256441
0-3 months     JiVitA-4         BANGLADESH                     3                    NA                -0.0114119   -0.0518830    0.0290591
0-3 months     MAL-ED           BANGLADESH                     4+                   NA                -0.2224402   -0.3364293   -0.1084512
0-3 months     MAL-ED           BANGLADESH                     1                    NA                -0.1171419   -0.1615257   -0.0727580
0-3 months     MAL-ED           BANGLADESH                     2                    NA                -0.1316687   -0.2084154   -0.0549221
0-3 months     MAL-ED           BANGLADESH                     3                    NA                -0.0521796   -0.1427245    0.0383653
0-3 months     MAL-ED           INDIA                          4+                   NA                -0.0945967   -0.2097456    0.0205523
0-3 months     MAL-ED           INDIA                          1                    NA                -0.0662005   -0.1493002    0.0168992
0-3 months     MAL-ED           INDIA                          2                    NA                -0.0507372   -0.1237920    0.0223175
0-3 months     MAL-ED           INDIA                          3                    NA                -0.0962582   -0.2406485    0.0481321
0-3 months     MAL-ED           NEPAL                          4+                   NA                 0.0507443   -0.0117357    0.1132244
0-3 months     MAL-ED           NEPAL                          1                    NA                 0.0553195   -0.0195092    0.1301483
0-3 months     MAL-ED           NEPAL                          2                    NA                 0.0484308   -0.0851162    0.1819779
0-3 months     MAL-ED           NEPAL                          3                    NA                 0.0704550   -0.1316138    0.2725238
0-3 months     MAL-ED           PERU                           4+                   NA                -0.2342027   -0.2768941   -0.1915113
0-3 months     MAL-ED           PERU                           1                    NA                -0.3654486   -0.5155552   -0.2153419
0-3 months     MAL-ED           PERU                           2                    NA                -0.2485713   -0.3312936   -0.1658491
0-3 months     MAL-ED           PERU                           3                    NA                -0.2323105   -0.3068641   -0.1577570
0-3 months     MAL-ED           SOUTH AFRICA                   4+                   NA                -0.1854159   -0.2468282   -0.1240035
0-3 months     MAL-ED           SOUTH AFRICA                   1                    NA                -0.2654479   -0.4735787   -0.0573172
0-3 months     MAL-ED           SOUTH AFRICA                   2                    NA                -0.2193282   -0.3896684   -0.0489880
0-3 months     MAL-ED           SOUTH AFRICA                   3                    NA                -0.1454852   -0.2869052   -0.0040652
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.1483403   -0.2086970   -0.0879836
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1550500   -0.3462537    0.0361537
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1420913   -0.2173937   -0.0667889
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1242257   -0.2147874   -0.0336641
0-3 months     NIH-Crypto       BANGLADESH                     4+                   NA                -0.2557002   -0.3000274   -0.2113729
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.2218743   -0.2486303   -0.1951183
0-3 months     NIH-Crypto       BANGLADESH                     2                    NA                -0.2429311   -0.2832152   -0.2026470
0-3 months     NIH-Crypto       BANGLADESH                     3                    NA                -0.2369408   -0.2894146   -0.1844671
0-3 months     PROVIDE          BANGLADESH                     4+                   NA                -0.1484039   -0.2594778   -0.0373301
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.1956564   -0.2165012   -0.1748116
0-3 months     PROVIDE          BANGLADESH                     2                    NA                -0.1711658   -0.2133063   -0.1290254
0-3 months     PROVIDE          BANGLADESH                     3                    NA                -0.1929421   -0.2465007   -0.1393834
3-6 months     CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0381921   -0.2100309    0.2864152
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.0972390   -0.1638380   -0.0306401
3-6 months     CMC-V-BCS-2002   INDIA                          2                    NA                -0.1377402   -0.2303676   -0.0451127
3-6 months     CMC-V-BCS-2002   INDIA                          3                    NA                -0.0869812   -0.2086594    0.0346971
3-6 months     COHORTS          INDIA                          4+                   NA                -0.0615793   -0.0884662   -0.0346924
3-6 months     COHORTS          INDIA                          1                    NA                -0.0662022   -0.0752938   -0.0571106
3-6 months     COHORTS          INDIA                          2                    NA                -0.0539794   -0.0682084   -0.0397504
3-6 months     COHORTS          INDIA                          3                    NA                -0.0904475   -0.1173614   -0.0635335
3-6 months     CONTENT          PERU                           4+                   NA                 0.0253682   -0.0083071    0.0590435
3-6 months     CONTENT          PERU                           1                    NA                -0.0490689   -0.0952994   -0.0028384
3-6 months     CONTENT          PERU                           2                    NA                 0.0529685    0.0062971    0.0996399
3-6 months     CONTENT          PERU                           3                    NA                 0.0657592   -0.0452770    0.1767953
3-6 months     GMS-Nepal        NEPAL                          4+                   NA                -0.1781032   -0.2049022   -0.1513041
3-6 months     GMS-Nepal        NEPAL                          1                    NA                -0.1381348   -0.2030407   -0.0732289
3-6 months     GMS-Nepal        NEPAL                          2                    NA                -0.1416743   -0.1798658   -0.1034827
3-6 months     GMS-Nepal        NEPAL                          3                    NA                -0.1479490   -0.1889780   -0.1069201
3-6 months     IRC              INDIA                          4+                   NA                -0.0442392   -0.1616874    0.0732090
3-6 months     IRC              INDIA                          1                    NA                -0.0714756   -0.1129939   -0.0299573
3-6 months     IRC              INDIA                          2                    NA                -0.0317297   -0.0817937    0.0183342
3-6 months     IRC              INDIA                          3                    NA                -0.1207401   -0.2290362   -0.0124440
3-6 months     JiVitA-3         BANGLADESH                     4+                   NA                 0.0014569   -0.0091265    0.0120404
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                 0.0027475   -0.0046715    0.0101666
3-6 months     JiVitA-3         BANGLADESH                     2                    NA                -0.0060835   -0.0187887    0.0066218
3-6 months     JiVitA-3         BANGLADESH                     3                    NA                 0.0064300   -0.0089682    0.0218282
3-6 months     JiVitA-4         BANGLADESH                     4+                   NA                 0.1184226    0.0545539    0.1822913
3-6 months     JiVitA-4         BANGLADESH                     1                    NA                -0.0118915   -0.0330766    0.0092936
3-6 months     JiVitA-4         BANGLADESH                     2                    NA                -0.0206275   -0.0559167    0.0146616
3-6 months     JiVitA-4         BANGLADESH                     3                    NA                 0.0829332    0.0394672    0.1263993
3-6 months     MAL-ED           BANGLADESH                     4+                   NA                -0.0574675   -0.1652429    0.0503079
3-6 months     MAL-ED           BANGLADESH                     1                    NA                -0.0258387   -0.0566839    0.0050066
3-6 months     MAL-ED           BANGLADESH                     2                    NA                 0.0086480   -0.0386841    0.0559801
3-6 months     MAL-ED           BANGLADESH                     3                    NA                -0.0383777   -0.1086687    0.0319134
3-6 months     MAL-ED           INDIA                          4+                   NA                -0.0621849   -0.1524627    0.0280930
3-6 months     MAL-ED           INDIA                          1                    NA                -0.0403117   -0.0940714    0.0134481
3-6 months     MAL-ED           INDIA                          2                    NA                -0.0556982   -0.1012603   -0.0101362
3-6 months     MAL-ED           INDIA                          3                    NA                -0.0181222   -0.0868915    0.0506470
3-6 months     MAL-ED           NEPAL                          4+                   NA                -0.0012775   -0.0365008    0.0339459
3-6 months     MAL-ED           NEPAL                          1                    NA                -0.0214265   -0.0788598    0.0360068
3-6 months     MAL-ED           NEPAL                          2                    NA                -0.0689566   -0.1497641    0.0118509
3-6 months     MAL-ED           NEPAL                          3                    NA                -0.0741107   -0.1625570    0.0143355
3-6 months     MAL-ED           PERU                           4+                   NA                -0.0160291   -0.0543103    0.0222520
3-6 months     MAL-ED           PERU                           1                    NA                 0.1498670    0.0434276    0.2563064
3-6 months     MAL-ED           PERU                           2                    NA                 0.0493252   -0.0383571    0.1370075
3-6 months     MAL-ED           PERU                           3                    NA                 0.0598767   -0.0103254    0.1300788
3-6 months     MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0040550   -0.0397218    0.0478318
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                -0.1436283   -0.2422364   -0.0450202
3-6 months     MAL-ED           SOUTH AFRICA                   2                    NA                 0.0440005   -0.0902607    0.1782616
3-6 months     MAL-ED           SOUTH AFRICA                   3                    NA                -0.0283812   -0.1785440    0.1217817
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0537630   -0.1004669   -0.0070591
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1015526   -0.2701210    0.0670158
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0782834   -0.1513174   -0.0052494
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0891071   -0.1501698   -0.0280443
3-6 months     NIH-Crypto       BANGLADESH                     4+                   NA                 0.0654085    0.0172666    0.1135503
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                 0.0073932   -0.0156818    0.0304682
3-6 months     NIH-Crypto       BANGLADESH                     2                    NA                 0.0228631   -0.0159403    0.0616665
3-6 months     NIH-Crypto       BANGLADESH                     3                    NA                 0.0745523    0.0110580    0.1380466
3-6 months     PROVIDE          BANGLADESH                     4+                   NA                -0.0323008   -0.1082653    0.0436638
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0263702   -0.0453202   -0.0074201
3-6 months     PROVIDE          BANGLADESH                     2                    NA                -0.0303316   -0.0709166    0.0102535
3-6 months     PROVIDE          BANGLADESH                     3                    NA                -0.0169013   -0.0768375    0.0430348
6-9 months     CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1958546   -0.3210512   -0.0706580
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.0615529   -0.1123522   -0.0107536
6-9 months     CMC-V-BCS-2002   INDIA                          2                    NA                -0.0864662   -0.1507169   -0.0222156
6-9 months     CMC-V-BCS-2002   INDIA                          3                    NA                -0.1369171   -0.2289948   -0.0448394
6-9 months     COHORTS          INDIA                          4+                   NA                -0.0638309   -0.0850221   -0.0426396
6-9 months     COHORTS          INDIA                          1                    NA                -0.1038504   -0.1117852   -0.0959156
6-9 months     COHORTS          INDIA                          2                    NA                -0.1028234   -0.1145117   -0.0911352
6-9 months     COHORTS          INDIA                          3                    NA                -0.0972712   -0.1211121   -0.0734303
6-9 months     CONTENT          PERU                           4+                   NA                -0.0340574   -0.0726184    0.0045035
6-9 months     CONTENT          PERU                           1                    NA                -0.0623946   -0.1172572   -0.0075321
6-9 months     CONTENT          PERU                           2                    NA                -0.1427060   -0.1946815   -0.0907306
6-9 months     CONTENT          PERU                           3                    NA                -0.0239440   -0.1074462    0.0595583
6-9 months     GMS-Nepal        NEPAL                          4+                   NA                -0.0521762   -0.0810163   -0.0233361
6-9 months     GMS-Nepal        NEPAL                          1                    NA                -0.0334772   -0.0749194    0.0079650
6-9 months     GMS-Nepal        NEPAL                          2                    NA                -0.0396313   -0.0807648    0.0015022
6-9 months     GMS-Nepal        NEPAL                          3                    NA                -0.0338657   -0.0685828    0.0008513
6-9 months     IRC              INDIA                          4+                   NA                -0.0023850   -0.1018407    0.0970706
6-9 months     IRC              INDIA                          1                    NA                -0.0218685   -0.0509130    0.0071760
6-9 months     IRC              INDIA                          2                    NA                -0.0110940   -0.0490104    0.0268225
6-9 months     IRC              INDIA                          3                    NA                -0.0583888   -0.1546117    0.0378341
6-9 months     JiVitA-4         BANGLADESH                     4+                   NA                -0.0118440   -0.0391333    0.0154453
6-9 months     JiVitA-4         BANGLADESH                     1                    NA                -0.0298492   -0.0450550   -0.0146434
6-9 months     JiVitA-4         BANGLADESH                     2                    NA                -0.0295423   -0.0577944   -0.0012901
6-9 months     JiVitA-4         BANGLADESH                     3                    NA                -0.0645113   -0.1059281   -0.0230946
6-9 months     MAL-ED           BANGLADESH                     4+                   NA                 0.0028976   -0.0607377    0.0665328
6-9 months     MAL-ED           BANGLADESH                     1                    NA                -0.0726569   -0.0948778   -0.0504360
6-9 months     MAL-ED           BANGLADESH                     2                    NA                -0.0851475   -0.1279098   -0.0423852
6-9 months     MAL-ED           BANGLADESH                     3                    NA                -0.0658243   -0.1109353   -0.0207132
6-9 months     MAL-ED           INDIA                          4+                   NA                -0.1013969   -0.1669022   -0.0358915
6-9 months     MAL-ED           INDIA                          1                    NA                -0.0520251   -0.0980894   -0.0059609
6-9 months     MAL-ED           INDIA                          2                    NA                -0.0538810   -0.0924281   -0.0153338
6-9 months     MAL-ED           INDIA                          3                    NA                -0.1074926   -0.1493968   -0.0655884
6-9 months     MAL-ED           NEPAL                          4+                   NA                -0.0308289   -0.0577037   -0.0039540
6-9 months     MAL-ED           NEPAL                          1                    NA                -0.0616233   -0.1062359   -0.0170106
6-9 months     MAL-ED           NEPAL                          2                    NA                -0.0056843   -0.0626809    0.0513124
6-9 months     MAL-ED           NEPAL                          3                    NA                -0.0424242   -0.1118065    0.0269581
6-9 months     MAL-ED           PERU                           4+                   NA                -0.0453163   -0.0768522   -0.0137803
6-9 months     MAL-ED           PERU                           1                    NA                 0.0479831   -0.0642993    0.1602654
6-9 months     MAL-ED           PERU                           2                    NA                -0.0136468   -0.0772482    0.0499546
6-9 months     MAL-ED           PERU                           3                    NA                -0.0489116   -0.0989770    0.0011539
6-9 months     MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0130089   -0.0448894    0.0188715
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                -0.1534921   -0.3062854   -0.0006987
6-9 months     MAL-ED           SOUTH AFRICA                   2                    NA                -0.0412559   -0.1611389    0.0786272
6-9 months     MAL-ED           SOUTH AFRICA                   3                    NA                -0.0705408   -0.1499822    0.0089006
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.1008920   -0.1581098   -0.0436741
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0948895   -0.2689720    0.0791929
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0998406   -0.1504696   -0.0492117
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0755102   -0.1377083   -0.0133122
6-9 months     NIH-Crypto       BANGLADESH                     4+                   NA                -0.0385431   -0.0770426   -0.0000435
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0180538   -0.0360159   -0.0000917
6-9 months     NIH-Crypto       BANGLADESH                     2                    NA                -0.0512152   -0.0807046   -0.0217259
6-9 months     NIH-Crypto       BANGLADESH                     3                    NA                -0.0461465   -0.0823298   -0.0099631
6-9 months     PROVIDE          BANGLADESH                     4+                   NA                -0.0444027   -0.1135972    0.0247918
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0665863   -0.0792349   -0.0539377
6-9 months     PROVIDE          BANGLADESH                     2                    NA                -0.0542998   -0.0840553   -0.0245444
6-9 months     PROVIDE          BANGLADESH                     3                    NA                -0.0495288   -0.0848752   -0.0141825
9-12 months    CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0286696   -0.1431795    0.2005188
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.1343602   -0.1699974   -0.0987231
9-12 months    CMC-V-BCS-2002   INDIA                          2                    NA                -0.1061023   -0.1746686   -0.0375360
9-12 months    CMC-V-BCS-2002   INDIA                          3                    NA                -0.1201554   -0.1758784   -0.0644323
9-12 months    COHORTS          INDIA                          4+                   NA                -0.0475189   -0.0675122   -0.0275255
9-12 months    COHORTS          INDIA                          1                    NA                -0.0941691   -0.1018575   -0.0864808
9-12 months    COHORTS          INDIA                          2                    NA                -0.0887074   -0.1004382   -0.0769765
9-12 months    COHORTS          INDIA                          3                    NA                -0.0712906   -0.0978604   -0.0447209
9-12 months    CONTENT          PERU                           4+                   NA                -0.0039801   -0.0343917    0.0264316
9-12 months    CONTENT          PERU                           1                    NA                -0.0408379   -0.0832530    0.0015772
9-12 months    CONTENT          PERU                           2                    NA                -0.0267527   -0.0608944    0.0073891
9-12 months    CONTENT          PERU                           3                    NA                -0.0163502   -0.0628073    0.0301070
9-12 months    GMS-Nepal        NEPAL                          4+                   NA                -0.0820072   -0.1041471   -0.0598673
9-12 months    GMS-Nepal        NEPAL                          1                    NA                -0.0874149   -0.1414397   -0.0333902
9-12 months    GMS-Nepal        NEPAL                          2                    NA                -0.1037652   -0.1380258   -0.0695045
9-12 months    GMS-Nepal        NEPAL                          3                    NA                -0.0592710   -0.0814038   -0.0371383
9-12 months    IRC              INDIA                          4+                   NA                -0.0657476   -0.1367664    0.0052712
9-12 months    IRC              INDIA                          1                    NA                -0.0326245   -0.0572480   -0.0080010
9-12 months    IRC              INDIA                          2                    NA                -0.0245236   -0.0513480    0.0023007
9-12 months    IRC              INDIA                          3                    NA                -0.0635925   -0.1210407   -0.0061444
9-12 months    JiVitA-4         BANGLADESH                     4+                   NA                -0.0969718   -0.1146567   -0.0792870
9-12 months    JiVitA-4         BANGLADESH                     1                    NA                -0.0551714   -0.0686513   -0.0416914
9-12 months    JiVitA-4         BANGLADESH                     2                    NA                -0.0507833   -0.0719090   -0.0296576
9-12 months    JiVitA-4         BANGLADESH                     3                    NA                -0.0594327   -0.0812776   -0.0375878
9-12 months    MAL-ED           BANGLADESH                     4+                   NA                -0.1217097   -0.2018136   -0.0416059
9-12 months    MAL-ED           BANGLADESH                     1                    NA                -0.0860232   -0.1061482   -0.0658982
9-12 months    MAL-ED           BANGLADESH                     2                    NA                -0.0822603   -0.1213349   -0.0431858
9-12 months    MAL-ED           BANGLADESH                     3                    NA                -0.0868825   -0.1340193   -0.0397458
9-12 months    MAL-ED           INDIA                          4+                   NA                -0.1253707   -0.1716578   -0.0790836
9-12 months    MAL-ED           INDIA                          1                    NA                -0.0798486   -0.1075962   -0.0521009
9-12 months    MAL-ED           INDIA                          2                    NA                -0.1017791   -0.1277045   -0.0758536
9-12 months    MAL-ED           INDIA                          3                    NA                -0.0759917   -0.1122166   -0.0397668
9-12 months    MAL-ED           NEPAL                          4+                   NA                -0.0729805   -0.0970437   -0.0489172
9-12 months    MAL-ED           NEPAL                          1                    NA                -0.0489239   -0.0885407   -0.0093070
9-12 months    MAL-ED           NEPAL                          2                    NA                -0.0512736   -0.0856951   -0.0168521
9-12 months    MAL-ED           NEPAL                          3                    NA                -0.0661181   -0.1148448   -0.0173913
9-12 months    MAL-ED           PERU                           4+                   NA                -0.0215315   -0.0523264    0.0092634
9-12 months    MAL-ED           PERU                           1                    NA                -0.0969515   -0.1558676   -0.0380355
9-12 months    MAL-ED           PERU                           2                    NA                -0.0810697   -0.1291389   -0.0330005
9-12 months    MAL-ED           PERU                           3                    NA                -0.0406138   -0.0870614    0.0058338
9-12 months    MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0829254   -0.1126680   -0.0531828
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                -0.0730275   -0.1500749    0.0040198
9-12 months    MAL-ED           SOUTH AFRICA                   2                    NA                -0.0364112   -0.1392374    0.0664151
9-12 months    MAL-ED           SOUTH AFRICA                   3                    NA                -0.1619532   -0.2841494   -0.0397569
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.1455276   -0.2017798   -0.0892754
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0554039   -0.2158784    0.1050705
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1410182   -0.2038295   -0.0782069
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1569634   -0.2141904   -0.0997363
9-12 months    NIH-Crypto       BANGLADESH                     4+                   NA                -0.0067148   -0.0379518    0.0245223
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0329539   -0.0505915   -0.0153164
9-12 months    NIH-Crypto       BANGLADESH                     2                    NA                -0.0406403   -0.0631440   -0.0181366
9-12 months    NIH-Crypto       BANGLADESH                     3                    NA                -0.0227047   -0.0522516    0.0068422
9-12 months    PROVIDE          BANGLADESH                     4+                   NA                -0.0572354   -0.1191634    0.0046927
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0642133   -0.0770723   -0.0513543
9-12 months    PROVIDE          BANGLADESH                     2                    NA                -0.0638509   -0.0940188   -0.0336830
9-12 months    PROVIDE          BANGLADESH                     3                    NA                -0.0495825   -0.0852878   -0.0138772
12-15 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0977740   -0.1563168   -0.0392313
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0704352   -0.1061371   -0.0347333
12-15 months   CMC-V-BCS-2002   INDIA                          2                    NA                -0.0779188   -0.1471670   -0.0086707
12-15 months   CMC-V-BCS-2002   INDIA                          3                    NA                -0.0519499   -0.1291091    0.0252093
12-15 months   CONTENT          PERU                           4+                   NA                -0.0890387   -0.1154598   -0.0626175
12-15 months   CONTENT          PERU                           1                    NA                -0.0800354   -0.1241155   -0.0359553
12-15 months   CONTENT          PERU                           2                    NA                -0.0822712   -0.1207853   -0.0437570
12-15 months   CONTENT          PERU                           3                    NA                -0.0879509   -0.1520056   -0.0238962
12-15 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0593134   -0.0774582   -0.0411686
12-15 months   GMS-Nepal        NEPAL                          1                    NA                -0.0785779   -0.1161870   -0.0409689
12-15 months   GMS-Nepal        NEPAL                          2                    NA                -0.0654713   -0.0860625   -0.0448802
12-15 months   GMS-Nepal        NEPAL                          3                    NA                -0.0755284   -0.0967396   -0.0543173
12-15 months   IRC              INDIA                          4+                   NA                -0.0858131   -0.1376930   -0.0339332
12-15 months   IRC              INDIA                          1                    NA                -0.0501298   -0.0715724   -0.0286872
12-15 months   IRC              INDIA                          2                    NA                -0.0370038   -0.0670619   -0.0069458
12-15 months   IRC              INDIA                          3                    NA                -0.0355623   -0.1014537    0.0303291
12-15 months   JiVitA-4         BANGLADESH                     4+                   NA                -0.0377945   -0.0587056   -0.0168834
12-15 months   JiVitA-4         BANGLADESH                     1                    NA                -0.0421725   -0.0509305   -0.0334146
12-15 months   JiVitA-4         BANGLADESH                     2                    NA                -0.0437121   -0.0612272   -0.0261970
12-15 months   JiVitA-4         BANGLADESH                     3                    NA                -0.0400680   -0.0586493   -0.0214868
12-15 months   MAL-ED           BANGLADESH                     4+                   NA                 0.0184343   -0.0360343    0.0729028
12-15 months   MAL-ED           BANGLADESH                     1                    NA                -0.0554025   -0.0746936   -0.0361114
12-15 months   MAL-ED           BANGLADESH                     2                    NA                -0.0793271   -0.1178616   -0.0407925
12-15 months   MAL-ED           BANGLADESH                     3                    NA                -0.0467986   -0.1024590    0.0088619
12-15 months   MAL-ED           INDIA                          4+                   NA                -0.0143969   -0.0576054    0.0288117
12-15 months   MAL-ED           INDIA                          1                    NA                -0.0765218   -0.1038985   -0.0491452
12-15 months   MAL-ED           INDIA                          2                    NA                -0.0402257   -0.0662064   -0.0142449
12-15 months   MAL-ED           INDIA                          3                    NA                -0.0670455   -0.0993186   -0.0347725
12-15 months   MAL-ED           NEPAL                          4+                   NA                -0.0526779   -0.0721987   -0.0331571
12-15 months   MAL-ED           NEPAL                          1                    NA                -0.1055754   -0.1425724   -0.0685785
12-15 months   MAL-ED           NEPAL                          2                    NA                 0.0030712   -0.0603738    0.0665162
12-15 months   MAL-ED           NEPAL                          3                    NA                -0.0475107   -0.1011454    0.0061240
12-15 months   MAL-ED           PERU                           4+                   NA                -0.0767527   -0.1020385   -0.0514668
12-15 months   MAL-ED           PERU                           1                    NA                -0.0618565   -0.1454931    0.0217801
12-15 months   MAL-ED           PERU                           2                    NA                -0.0745791   -0.1140752   -0.0350830
12-15 months   MAL-ED           PERU                           3                    NA                -0.0423012   -0.0736401   -0.0109623
12-15 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0638226   -0.0906599   -0.0369853
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.0190224   -0.0514438    0.0894886
12-15 months   MAL-ED           SOUTH AFRICA                   2                    NA                -0.1000034   -0.1765067   -0.0235000
12-15 months   MAL-ED           SOUTH AFRICA                   3                    NA                -0.0774818   -0.1490467   -0.0059168
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0669472   -0.1044868   -0.0294076
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0140213   -0.1229994    0.1510419
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1036500   -0.1597325   -0.0475675
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0543636   -0.0968640   -0.0118631
12-15 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0055300   -0.0308121    0.0197521
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0388160   -0.0535386   -0.0240934
12-15 months   NIH-Crypto       BANGLADESH                     2                    NA                -0.0365583   -0.0562714   -0.0168453
12-15 months   NIH-Crypto       BANGLADESH                     3                    NA                -0.0327694   -0.0620196   -0.0035192
12-15 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0312433   -0.0942412    0.0317547
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0436496   -0.0558738   -0.0314254
12-15 months   PROVIDE          BANGLADESH                     2                    NA                -0.0336447   -0.0579629   -0.0093264
12-15 months   PROVIDE          BANGLADESH                     3                    NA                -0.0500341   -0.0820718   -0.0179963
15-18 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0562897   -0.1458575    0.0332781
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0869581   -0.1152528   -0.0586635
15-18 months   CMC-V-BCS-2002   INDIA                          2                    NA                -0.0480148   -0.1005507    0.0045210
15-18 months   CMC-V-BCS-2002   INDIA                          3                    NA                -0.0646123   -0.1363482    0.0071235
15-18 months   CONTENT          PERU                           4+                   NA                -0.0661619   -0.0962832   -0.0360405
15-18 months   CONTENT          PERU                           1                    NA                -0.0203104   -0.0486229    0.0080021
15-18 months   CONTENT          PERU                           2                    NA                 0.0450182    0.0062948    0.0837415
15-18 months   CONTENT          PERU                           3                    NA                -0.0345662   -0.0966702    0.0275378
15-18 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0848089   -0.1081285   -0.0614894
15-18 months   GMS-Nepal        NEPAL                          1                    NA                -0.0610753   -0.0946645   -0.0274861
15-18 months   GMS-Nepal        NEPAL                          2                    NA                -0.0568192   -0.0771336   -0.0365049
15-18 months   GMS-Nepal        NEPAL                          3                    NA                -0.0625752   -0.0908665   -0.0342840
15-18 months   IRC              INDIA                          4+                   NA                -0.0645464   -0.1467432    0.0176505
15-18 months   IRC              INDIA                          1                    NA                -0.0386883   -0.0630756   -0.0143010
15-18 months   IRC              INDIA                          2                    NA                -0.0383411   -0.0596721   -0.0170102
15-18 months   IRC              INDIA                          3                    NA                -0.0297421   -0.0701057    0.0106214
15-18 months   JiVitA-4         BANGLADESH                     4+                   NA                -0.0296997   -0.0548970   -0.0045025
15-18 months   JiVitA-4         BANGLADESH                     1                    NA                -0.0282456   -0.0377289   -0.0187622
15-18 months   JiVitA-4         BANGLADESH                     2                    NA                -0.0408696   -0.0577319   -0.0240073
15-18 months   JiVitA-4         BANGLADESH                     3                    NA                -0.0148735   -0.0309884    0.0012413
15-18 months   MAL-ED           BANGLADESH                     4+                   NA                -0.0556715   -0.1294548    0.0181117
15-18 months   MAL-ED           BANGLADESH                     1                    NA                -0.0473055   -0.0633926   -0.0312183
15-18 months   MAL-ED           BANGLADESH                     2                    NA                -0.0565384   -0.0892080   -0.0238687
15-18 months   MAL-ED           BANGLADESH                     3                    NA                -0.0457050   -0.0916079    0.0001979
15-18 months   MAL-ED           INDIA                          4+                   NA                -0.0733430   -0.1095007   -0.0371854
15-18 months   MAL-ED           INDIA                          1                    NA                -0.0262066   -0.0487317   -0.0036816
15-18 months   MAL-ED           INDIA                          2                    NA                -0.0562549   -0.0784187   -0.0340912
15-18 months   MAL-ED           INDIA                          3                    NA                -0.0147102   -0.0424673    0.0130469
15-18 months   MAL-ED           NEPAL                          4+                   NA                -0.0595260   -0.0782874   -0.0407647
15-18 months   MAL-ED           NEPAL                          1                    NA                -0.0520628   -0.0836237   -0.0205018
15-18 months   MAL-ED           NEPAL                          2                    NA                -0.0704187   -0.1227898   -0.0180475
15-18 months   MAL-ED           NEPAL                          3                    NA                -0.0288764   -0.0860535    0.0283008
15-18 months   MAL-ED           PERU                           4+                   NA                -0.0319789   -0.0542361   -0.0097218
15-18 months   MAL-ED           PERU                           1                    NA                -0.0701455   -0.1161480   -0.0241431
15-18 months   MAL-ED           PERU                           2                    NA                -0.0543152   -0.0911574   -0.0174731
15-18 months   MAL-ED           PERU                           3                    NA                -0.0202106   -0.0552474    0.0148261
15-18 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0253049   -0.0476608   -0.0029490
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0274833   -0.1042686    0.0493020
15-18 months   MAL-ED           SOUTH AFRICA                   2                    NA                -0.0774134   -0.1193539   -0.0354730
15-18 months   MAL-ED           SOUTH AFRICA                   3                    NA                -0.0355828   -0.1632136    0.0920479
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0891337   -0.1208924   -0.0573751
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0821718   -0.2289898    0.0646462
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0568024   -0.1047688   -0.0088360
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0915485   -0.1360159   -0.0470811
15-18 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0227925   -0.0428818   -0.0027032
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0189496   -0.0326073   -0.0052919
15-18 months   NIH-Crypto       BANGLADESH                     2                    NA                -0.0232414   -0.0391797   -0.0073030
15-18 months   NIH-Crypto       BANGLADESH                     3                    NA                -0.0066463   -0.0358020    0.0225094
15-18 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0202997   -0.0712656    0.0306661
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0343025   -0.0447808   -0.0238242
15-18 months   PROVIDE          BANGLADESH                     2                    NA                -0.0534029   -0.0743164   -0.0324893
15-18 months   PROVIDE          BANGLADESH                     3                    NA                -0.0386629   -0.0671225   -0.0102034
18-21 months   CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0098947   -0.0462887    0.0660782
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0516449   -0.0815332   -0.0217566
18-21 months   CMC-V-BCS-2002   INDIA                          2                    NA                -0.0192365   -0.0657315    0.0272585
18-21 months   CMC-V-BCS-2002   INDIA                          3                    NA                -0.0785254   -0.1507252   -0.0063255
18-21 months   CONTENT          PERU                           4+                   NA                 0.0594363    0.0252813    0.0935914
18-21 months   CONTENT          PERU                           1                    NA                 0.0408869   -0.0220316    0.1038054
18-21 months   CONTENT          PERU                           2                    NA                -0.0253726   -0.0591469    0.0084016
18-21 months   CONTENT          PERU                           3                    NA                 0.0034891   -0.0429417    0.0499199
18-21 months   GMS-Nepal        NEPAL                          4+                   NA                 0.0207291    0.0014417    0.0400165
18-21 months   GMS-Nepal        NEPAL                          1                    NA                -0.0038205   -0.0403089    0.0326678
18-21 months   GMS-Nepal        NEPAL                          2                    NA                 0.0143012   -0.0009022    0.0295045
18-21 months   GMS-Nepal        NEPAL                          3                    NA                 0.0210570   -0.0103047    0.0524186
18-21 months   IRC              INDIA                          4+                   NA                 0.0418668   -0.0366560    0.1203896
18-21 months   IRC              INDIA                          1                    NA                -0.0471948   -0.0673101   -0.0270795
18-21 months   IRC              INDIA                          2                    NA                -0.0347634   -0.0546583   -0.0148686
18-21 months   IRC              INDIA                          3                    NA                -0.0452473   -0.1116319    0.0211372
18-21 months   MAL-ED           BANGLADESH                     4+                   NA                 0.0041330   -0.0773920    0.0856580
18-21 months   MAL-ED           BANGLADESH                     1                    NA                -0.0228160   -0.0362030   -0.0094290
18-21 months   MAL-ED           BANGLADESH                     2                    NA                -0.0030947   -0.0348364    0.0286471
18-21 months   MAL-ED           BANGLADESH                     3                    NA                -0.0094346   -0.0450807    0.0262116
18-21 months   MAL-ED           INDIA                          4+                   NA                 0.0186403   -0.0073815    0.0446621
18-21 months   MAL-ED           INDIA                          1                    NA                 0.0131558   -0.0063670    0.0326785
18-21 months   MAL-ED           INDIA                          2                    NA                -0.0020847   -0.0239171    0.0197477
18-21 months   MAL-ED           INDIA                          3                    NA                -0.0035010   -0.0294477    0.0224457
18-21 months   MAL-ED           NEPAL                          4+                   NA                -0.0184966   -0.0350807   -0.0019125
18-21 months   MAL-ED           NEPAL                          1                    NA                -0.0243166   -0.0539504    0.0053173
18-21 months   MAL-ED           NEPAL                          2                    NA                -0.0172279   -0.0545240    0.0200683
18-21 months   MAL-ED           NEPAL                          3                    NA                -0.1092582   -0.1515404   -0.0669760
18-21 months   MAL-ED           PERU                           4+                   NA                 0.0041843   -0.0162238    0.0245924
18-21 months   MAL-ED           PERU                           1                    NA                -0.0191166   -0.0560919    0.0178587
18-21 months   MAL-ED           PERU                           2                    NA                -0.0236972   -0.0662146    0.0188201
18-21 months   MAL-ED           PERU                           3                    NA                -0.0332719   -0.0670954    0.0005516
18-21 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0322029   -0.0545044   -0.0099013
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0524358   -0.1458428    0.0409712
18-21 months   MAL-ED           SOUTH AFRICA                   2                    NA                 0.0094286   -0.0588543    0.0777116
18-21 months   MAL-ED           SOUTH AFRICA                   3                    NA                -0.0807448   -0.1525856   -0.0089041
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0277704   -0.0588269    0.0032860
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0122769   -0.1619751    0.1374213
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0470384   -0.0971979    0.0031212
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0164967   -0.0616665    0.0286731
18-21 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0075809   -0.0294567    0.0142948
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0387760   -0.0515805   -0.0259714
18-21 months   NIH-Crypto       BANGLADESH                     2                    NA                -0.0248218   -0.0429832   -0.0066604
18-21 months   NIH-Crypto       BANGLADESH                     3                    NA                -0.0208352   -0.0418034    0.0001330
18-21 months   PROVIDE          BANGLADESH                     4+                   NA                 0.0298986   -0.0055338    0.0653311
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0161811   -0.0261741   -0.0061881
18-21 months   PROVIDE          BANGLADESH                     2                    NA                -0.0047919   -0.0250481    0.0154644
18-21 months   PROVIDE          BANGLADESH                     3                    NA                -0.0001100   -0.0230865    0.0228664
21-24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0393693   -0.0477924    0.1265311
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                 0.0277571    0.0008232    0.0546911
21-24 months   CMC-V-BCS-2002   INDIA                          2                    NA                 0.0034243   -0.0396163    0.0464648
21-24 months   CMC-V-BCS-2002   INDIA                          3                    NA                -0.0004328   -0.0605724    0.0597068
21-24 months   CONTENT          PERU                           4+                   NA                -0.0021420   -0.0463441    0.0420601
21-24 months   CONTENT          PERU                           1                    NA                 0.0109590   -0.0770109    0.0989289
21-24 months   CONTENT          PERU                           2                    NA                 0.0196163   -0.0195945    0.0588272
21-24 months   CONTENT          PERU                           3                    NA                 0.0749424    0.0320035    0.1178812
21-24 months   GMS-Nepal        NEPAL                          4+                   NA                 0.0513114    0.0256065    0.0770163
21-24 months   GMS-Nepal        NEPAL                          1                    NA                -0.0091039   -0.0388044    0.0205965
21-24 months   GMS-Nepal        NEPAL                          2                    NA                 0.0609605    0.0334513    0.0884698
21-24 months   GMS-Nepal        NEPAL                          3                    NA                 0.0463693    0.0161486    0.0765899
21-24 months   IRC              INDIA                          4+                   NA                -0.0089841   -0.0580725    0.0401042
21-24 months   IRC              INDIA                          1                    NA                -0.0197083   -0.0395840    0.0001675
21-24 months   IRC              INDIA                          2                    NA                 0.0045393   -0.0192911    0.0283698
21-24 months   IRC              INDIA                          3                    NA                -0.0723384   -0.1096596   -0.0350171
21-24 months   MAL-ED           BANGLADESH                     4+                   NA                 0.0205734   -0.0131465    0.0542934
21-24 months   MAL-ED           BANGLADESH                     1                    NA                 0.0238794    0.0081863    0.0395726
21-24 months   MAL-ED           BANGLADESH                     2                    NA                 0.0481490    0.0177580    0.0785400
21-24 months   MAL-ED           BANGLADESH                     3                    NA                 0.0190231   -0.0149138    0.0529600
21-24 months   MAL-ED           INDIA                          4+                   NA                 0.0064647   -0.0296896    0.0426189
21-24 months   MAL-ED           INDIA                          1                    NA                 0.0279000    0.0100515    0.0457485
21-24 months   MAL-ED           INDIA                          2                    NA                 0.0436838    0.0227490    0.0646185
21-24 months   MAL-ED           INDIA                          3                    NA                 0.0236165    0.0022441    0.0449889
21-24 months   MAL-ED           NEPAL                          4+                   NA                 0.0026696   -0.0152131    0.0205522
21-24 months   MAL-ED           NEPAL                          1                    NA                -0.0018396   -0.0327655    0.0290862
21-24 months   MAL-ED           NEPAL                          2                    NA                 0.0082165   -0.0304705    0.0469035
21-24 months   MAL-ED           NEPAL                          3                    NA                 0.0110002   -0.0494057    0.0714061
21-24 months   MAL-ED           PERU                           4+                   NA                 0.0470266    0.0282526    0.0658007
21-24 months   MAL-ED           PERU                           1                    NA                 0.0941976    0.0239105    0.1644847
21-24 months   MAL-ED           PERU                           2                    NA                 0.0752475    0.0306249    0.1198701
21-24 months   MAL-ED           PERU                           3                    NA                 0.0558883    0.0206984    0.0910782
21-24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0368984    0.0188314    0.0549654
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.0495433   -0.0232504    0.1223370
21-24 months   MAL-ED           SOUTH AFRICA                   2                    NA                 0.0685499    0.0132334    0.1238663
21-24 months   MAL-ED           SOUTH AFRICA                   3                    NA                 0.0755264   -0.0051386    0.1561915
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0322931   -0.0001005    0.0646868
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0130667   -0.1057509    0.0796175
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0414752   -0.0942797    0.0113293
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0140911   -0.0173835    0.0455657
21-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                 0.0569662    0.0391306    0.0748019
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0563185    0.0422669    0.0703700
21-24 months   NIH-Crypto       BANGLADESH                     2                    NA                 0.0601289    0.0431715    0.0770864
21-24 months   NIH-Crypto       BANGLADESH                     3                    NA                 0.0678931    0.0421037    0.0936826
21-24 months   PROVIDE          BANGLADESH                     4+                   NA                 0.0583411    0.0127729    0.1039094
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0464052    0.0361891    0.0566213
21-24 months   PROVIDE          BANGLADESH                     2                    NA                 0.0470511    0.0257880    0.0683141
21-24 months   PROVIDE          BANGLADESH                     3                    NA                 0.0358410    0.0027123    0.0689697


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          NA                   NA                -0.0686573   -0.0768222   -0.0604923
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     IRC              INDIA                          NA                   NA                -0.2583942   -0.3138361   -0.2029523
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                 0.0740290    0.0690937    0.0789642
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                 0.0675829    0.0526455    0.0825202
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                -0.1175527   -0.1512522   -0.0838531
0-3 months     MAL-ED           INDIA                          NA                   NA                -0.0689235   -0.1155446   -0.0223023
0-3 months     MAL-ED           NEPAL                          NA                   NA                 0.0544973    0.0099212    0.0990734
0-3 months     MAL-ED           PERU                           NA                   NA                -0.2543887   -0.2877193   -0.2210580
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1882890   -0.2390479   -0.1375301
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1400701   -0.1794271   -0.1007131
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     COHORTS          INDIA                          NA                   NA                -0.0630242   -0.0694797   -0.0565686
3-6 months     CONTENT          PERU                           NA                   NA                 0.0173829   -0.0049673    0.0397330
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     IRC              INDIA                          NA                   NA                -0.0540241   -0.0839855   -0.0240627
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                -0.0033963   -0.0082613    0.0014686
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                -0.0088470   -0.0225757    0.0048816
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     MAL-ED           INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     MAL-ED           NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     MAL-ED           PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0016619   -0.0396107    0.0362870
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     COHORTS          INDIA                          NA                   NA                -0.1012070   -0.1069037   -0.0955102
6-9 months     CONTENT          PERU                           NA                   NA                -0.0236130   -0.0439514   -0.0032747
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0438931   -0.0614010   -0.0263853
6-9 months     IRC              INDIA                          NA                   NA                -0.0167217   -0.0383378    0.0048943
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                -0.0289856   -0.0379823   -0.0199890
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     MAL-ED           INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     MAL-ED           NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     MAL-ED           PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    COHORTS          INDIA                          NA                   NA                -0.0908853   -0.0965660   -0.0852046
9-12 months    CONTENT          PERU                           NA                   NA                -0.0227002   -0.0389439   -0.0064565
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                -0.0798239   -0.0934194   -0.0662284
9-12 months    IRC              INDIA                          NA                   NA                -0.0345488   -0.0514176   -0.0176801
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.0521361   -0.0596399   -0.0446324
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    MAL-ED           INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    MAL-ED           NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    MAL-ED           PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   CONTENT          PERU                           NA                   NA                -0.0751985   -0.0914586   -0.0589385
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0667249   -0.0775841   -0.0558657
12-15 months   IRC              INDIA                          NA                   NA                -0.0442500   -0.0609986   -0.0275014
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                -0.0451119   -0.0511864   -0.0390374
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   MAL-ED           INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   MAL-ED           NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   MAL-ED           PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   CONTENT          PERU                           NA                   NA                -0.0106370   -0.0272168    0.0059428
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   IRC              INDIA                          NA                   NA                -0.0383523   -0.0530401   -0.0236646
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                -0.0328956   -0.0389474   -0.0268439
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   MAL-ED           INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   MAL-ED           NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   MAL-ED           PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   CONTENT          PERU                           NA                   NA                -0.0068090   -0.0219193    0.0083013
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   IRC              INDIA                          NA                   NA                -0.0396016   -0.0529096   -0.0262935
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   MAL-ED           INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   MAL-ED           NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   MAL-ED           PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   CONTENT          PERU                           NA                   NA                 0.0253992   -0.0018188    0.0526172
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   IRC              INDIA                          NA                   NA                -0.0137697   -0.0273940   -0.0001454
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   MAL-ED           INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   MAL-ED           NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   MAL-ED           PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          1                    4+                -0.0647719   -0.0978768   -0.0316669
0-3 months     COHORTS          INDIA                          2                    4+                -0.0461879   -0.0825578   -0.0098180
0-3 months     COHORTS          INDIA                          3                    4+                -0.0294949   -0.0809345    0.0219446
0-3 months     GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    4+                -0.0014761   -0.1223339    0.1193817
0-3 months     GMS-Nepal        NEPAL                          2                    4+                 0.0275623   -0.0348508    0.0899754
0-3 months     GMS-Nepal        NEPAL                          3                    4+                 0.0597330   -0.0028906    0.1223565
0-3 months     IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    4+                 0.1594463   -0.1002948    0.4191873
0-3 months     IRC              INDIA                          2                    4+                 0.1534043   -0.1116305    0.4184391
0-3 months     IRC              INDIA                          3                    4+                 0.2142219   -0.0989010    0.5273448
0-3 months     JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     1                    4+                 0.0030093   -0.0109750    0.0169935
0-3 months     JiVitA-3         BANGLADESH                     2                    4+                 0.0028842   -0.0146637    0.0204320
0-3 months     JiVitA-3         BANGLADESH                     3                    4+                -0.0075706   -0.0277831    0.0126419
0-3 months     JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     1                    4+                 0.0475951   -0.0244195    0.1196097
0-3 months     JiVitA-4         BANGLADESH                     2                    4+                 0.0554614   -0.0275498    0.1384725
0-3 months     JiVitA-4         BANGLADESH                     3                    4+                -0.0339250   -0.1133477    0.0454977
0-3 months     MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     1                    4+                 0.1052983   -0.0169869    0.2275835
0-3 months     MAL-ED           BANGLADESH                     2                    4+                 0.0907715   -0.0465806    0.2281235
0-3 months     MAL-ED           BANGLADESH                     3                    4+                 0.1702606    0.0249831    0.3155381
0-3 months     MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          1                    4+                 0.0283961   -0.1131383    0.1699306
0-3 months     MAL-ED           INDIA                          2                    4+                 0.0438594   -0.0923054    0.1800242
0-3 months     MAL-ED           INDIA                          3                    4+                -0.0016615   -0.1862234    0.1829004
0-3 months     MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          1                    4+                 0.0045752   -0.0926899    0.1018402
0-3 months     MAL-ED           NEPAL                          2                    4+                -0.0023135   -0.1492712    0.1446442
0-3 months     MAL-ED           NEPAL                          3                    4+                 0.0197107   -0.1915618    0.2309832
0-3 months     MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           1                    4+                -0.1312459   -0.2875077    0.0250159
0-3 months     MAL-ED           PERU                           2                    4+                -0.0143687   -0.1077875    0.0790502
0-3 months     MAL-ED           PERU                           3                    4+                 0.0018922   -0.0841336    0.0879179
0-3 months     MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   1                    4+                -0.0800321   -0.2974242    0.1373600
0-3 months     MAL-ED           SOUTH AFRICA                   2                    4+                -0.0339123   -0.2149601    0.1471355
0-3 months     MAL-ED           SOUTH AFRICA                   3                    4+                 0.0399307   -0.1145018    0.1943631
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0067097   -0.2073980    0.1939786
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0062490   -0.0903723    0.1028703
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0241146   -0.0848768    0.1331059
0-3 months     NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    4+                 0.0338259   -0.0179226    0.0855743
0-3 months     NIH-Crypto       BANGLADESH                     2                    4+                 0.0127691   -0.0470097    0.0725478
0-3 months     NIH-Crypto       BANGLADESH                     3                    4+                 0.0187593   -0.0498710    0.0873897
0-3 months     PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    4+                -0.0472525   -0.1601285    0.0656235
0-3 months     PROVIDE          BANGLADESH                     2                    4+                -0.0227619   -0.1414374    0.0959136
0-3 months     PROVIDE          BANGLADESH                     3                    4+                -0.0445381   -0.1676871    0.0786109
3-6 months     CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    4+                -0.1354312   -0.3926970    0.1218346
3-6 months     CMC-V-BCS-2002   INDIA                          2                    4+                -0.1759323   -0.4412564    0.0893918
3-6 months     CMC-V-BCS-2002   INDIA                          3                    4+                -0.1251733   -0.4021764    0.1518298
3-6 months     COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    4+                -0.0046229   -0.0329918    0.0237460
3-6 months     COHORTS          INDIA                          2                    4+                 0.0075999   -0.0228176    0.0380174
3-6 months     COHORTS          INDIA                          3                    4+                -0.0288682   -0.0669075    0.0091712
3-6 months     CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     CONTENT          PERU                           1                    4+                -0.0744371   -0.1322260   -0.0166482
3-6 months     CONTENT          PERU                           2                    4+                 0.0276003   -0.0302071    0.0854077
3-6 months     CONTENT          PERU                           3                    4+                 0.0403909   -0.0758869    0.1566688
3-6 months     GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    4+                 0.0399683   -0.0303581    0.1102947
3-6 months     GMS-Nepal        NEPAL                          2                    4+                 0.0364289   -0.0102816    0.0831393
3-6 months     GMS-Nepal        NEPAL                          3                    4+                 0.0301541   -0.0188768    0.0791851
3-6 months     IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    4+                -0.0272364   -0.1516289    0.0971560
3-6 months     IRC              INDIA                          2                    4+                 0.0125094   -0.1147012    0.1397200
3-6 months     IRC              INDIA                          3                    4+                -0.0765010   -0.2360211    0.0830192
3-6 months     JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     1                    4+                 0.0012906   -0.0114701    0.0140513
3-6 months     JiVitA-3         BANGLADESH                     2                    4+                -0.0075404   -0.0237710    0.0086902
3-6 months     JiVitA-3         BANGLADESH                     3                    4+                 0.0049730   -0.0136211    0.0235671
3-6 months     JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     1                    4+                -0.1303141   -0.1980111   -0.0626171
3-6 months     JiVitA-4         BANGLADESH                     2                    4+                -0.1390501   -0.2123358   -0.0657644
3-6 months     JiVitA-4         BANGLADESH                     3                    4+                -0.0354893   -0.1134579    0.0424792
3-6 months     MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     1                    4+                 0.0316288   -0.0805885    0.1438461
3-6 months     MAL-ED           BANGLADESH                     2                    4+                 0.0661155   -0.0516149    0.1838459
3-6 months     MAL-ED           BANGLADESH                     3                    4+                 0.0190898   -0.1094337    0.1476133
3-6 months     MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          1                    4+                 0.0218732   -0.0832543    0.1270007
3-6 months     MAL-ED           INDIA                          2                    4+                 0.0064866   -0.0947971    0.1077704
3-6 months     MAL-ED           INDIA                          3                    4+                 0.0440626   -0.0697140    0.1578392
3-6 months     MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          1                    4+                -0.0201490   -0.0874717    0.0471736
3-6 months     MAL-ED           NEPAL                          2                    4+                -0.0676791   -0.1557822    0.0204239
3-6 months     MAL-ED           NEPAL                          3                    4+                -0.0728333   -0.1674848    0.0218183
3-6 months     MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           1                    4+                 0.1658961    0.0525855    0.2792068
3-6 months     MAL-ED           PERU                           2                    4+                 0.0653543   -0.0303438    0.1610525
3-6 months     MAL-ED           PERU                           3                    4+                 0.0759058   -0.0040551    0.1558667
3-6 months     MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   1                    4+                -0.1476833   -0.2559292   -0.0394375
3-6 months     MAL-ED           SOUTH AFRICA                   2                    4+                 0.0399454   -0.1012372    0.1811281
3-6 months     MAL-ED           SOUTH AFRICA                   3                    4+                -0.0324362   -0.1893914    0.1245190
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0477896   -0.2226990    0.1271199
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0245204   -0.1112006    0.0621598
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0353440   -0.1124440    0.0417559
3-6 months     NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    4+                -0.0580153   -0.1114556   -0.0045749
3-6 months     NIH-Crypto       BANGLADESH                     2                    4+                -0.0425454   -0.1043977    0.0193069
3-6 months     NIH-Crypto       BANGLADESH                     3                    4+                 0.0091438   -0.0704334    0.0887210
3-6 months     PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    4+                 0.0059306   -0.0724828    0.0843440
3-6 months     PROVIDE          BANGLADESH                     2                    4+                 0.0019692   -0.0842711    0.0882096
3-6 months     PROVIDE          BANGLADESH                     3                    4+                 0.0153995   -0.0816309    0.1124298
6-9 months     CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    4+                 0.1343017   -0.0007157    0.2693191
6-9 months     CMC-V-BCS-2002   INDIA                          2                    4+                 0.1093884   -0.0312950    0.2500718
6-9 months     CMC-V-BCS-2002   INDIA                          3                    4+                 0.0589375   -0.0965910    0.2144660
6-9 months     COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    4+                -0.0400195   -0.0626557   -0.0173834
6-9 months     COHORTS          INDIA                          2                    4+                -0.0389926   -0.0632005   -0.0147847
6-9 months     COHORTS          INDIA                          3                    4+                -0.0334403   -0.0653490   -0.0015317
6-9 months     CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     CONTENT          PERU                           1                    4+                -0.0283372   -0.0959718    0.0392974
6-9 months     CONTENT          PERU                           2                    4+                -0.1086486   -0.1739576   -0.0433396
6-9 months     CONTENT          PERU                           3                    4+                 0.0101135   -0.0817042    0.1019311
6-9 months     GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    4+                 0.0186990   -0.0318572    0.0692552
6-9 months     GMS-Nepal        NEPAL                          2                    4+                 0.0125449   -0.0376733    0.0627630
6-9 months     GMS-Nepal        NEPAL                          3                    4+                 0.0183105   -0.0267759    0.0633968
6-9 months     IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    4+                -0.0194835   -0.1230588    0.0840919
6-9 months     IRC              INDIA                          2                    4+                -0.0087089   -0.1153262    0.0979084
6-9 months     IRC              INDIA                          3                    4+                -0.0560037   -0.1942458    0.0822383
6-9 months     JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     1                    4+                -0.0180052   -0.0486609    0.0126505
6-9 months     JiVitA-4         BANGLADESH                     2                    4+                -0.0176983   -0.0567344    0.0213378
6-9 months     JiVitA-4         BANGLADESH                     3                    4+                -0.0526674   -0.1021677   -0.0031670
6-9 months     MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     1                    4+                -0.0755544   -0.1430241   -0.0080848
6-9 months     MAL-ED           BANGLADESH                     2                    4+                -0.0880451   -0.1648725   -0.0112177
6-9 months     MAL-ED           BANGLADESH                     3                    4+                -0.0687218   -0.1469259    0.0094822
6-9 months     MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          1                    4+                 0.0493717   -0.0312894    0.1300329
6-9 months     MAL-ED           INDIA                          2                    4+                 0.0475159   -0.0285427    0.1235745
6-9 months     MAL-ED           INDIA                          3                    4+                -0.0060957   -0.0836457    0.0714542
6-9 months     MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          1                    4+                -0.0307944   -0.0835948    0.0220060
6-9 months     MAL-ED           NEPAL                          2                    4+                 0.0251446   -0.0382196    0.0885088
6-9 months     MAL-ED           NEPAL                          3                    4+                -0.0115954   -0.0864368    0.0632461
6-9 months     MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           1                    4+                 0.0932993   -0.0228821    0.2094807
6-9 months     MAL-ED           PERU                           2                    4+                 0.0316695   -0.0392171    0.1025561
6-9 months     MAL-ED           PERU                           3                    4+                -0.0035953   -0.0630343    0.0558437
6-9 months     MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   1                    4+                -0.1404831   -0.2962941    0.0153279
6-9 months     MAL-ED           SOUTH AFRICA                   2                    4+                -0.0282470   -0.1519826    0.0954887
6-9 months     MAL-ED           SOUTH AFRICA                   3                    4+                -0.0575319   -0.1430015    0.0279378
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0060025   -0.1772608    0.1892657
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0010513   -0.0757497    0.0778524
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0253818   -0.0582774    0.1090409
6-9 months     NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    4+                 0.0204893   -0.0218830    0.0628615
6-9 months     NIH-Crypto       BANGLADESH                     2                    4+                -0.0126722   -0.0611155    0.0357711
6-9 months     NIH-Crypto       BANGLADESH                     3                    4+                -0.0076034   -0.0604649    0.0452581
6-9 months     PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    4+                -0.0221836   -0.0925438    0.0481766
6-9 months     PROVIDE          BANGLADESH                     2                    4+                -0.0098971   -0.0853086    0.0655143
6-9 months     PROVIDE          BANGLADESH                     3                    4+                -0.0051261   -0.0828130    0.0725608
9-12 months    CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    4+                -0.1630299   -0.3389144    0.0128547
9-12 months    CMC-V-BCS-2002   INDIA                          2                    4+                -0.1347720   -0.3203498    0.0508058
9-12 months    CMC-V-BCS-2002   INDIA                          3                    4+                -0.1488250   -0.3299794    0.0323294
9-12 months    COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    4+                -0.0466503   -0.0680571   -0.0252434
9-12 months    COHORTS          INDIA                          2                    4+                -0.0411885   -0.0643492   -0.0180278
9-12 months    COHORTS          INDIA                          3                    4+                -0.0237717   -0.0570190    0.0094755
9-12 months    CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    CONTENT          PERU                           1                    4+                -0.0368578   -0.0890330    0.0153174
9-12 months    CONTENT          PERU                           2                    4+                -0.0227726   -0.0684647    0.0229194
9-12 months    CONTENT          PERU                           3                    4+                -0.0123701   -0.0682994    0.0435592
9-12 months    GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    4+                -0.0054077   -0.0643929    0.0535775
9-12 months    GMS-Nepal        NEPAL                          2                    4+                -0.0217580   -0.0626398    0.0191238
9-12 months    GMS-Nepal        NEPAL                          3                    4+                 0.0227362   -0.0085950    0.0540674
9-12 months    IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    4+                 0.0331231   -0.0423331    0.1085793
9-12 months    IRC              INDIA                          2                    4+                 0.0412240   -0.0348743    0.1173222
9-12 months    IRC              INDIA                          3                    4+                 0.0021550   -0.0891790    0.0934891
9-12 months    JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     1                    4+                 0.0418005    0.0195385    0.0640625
9-12 months    JiVitA-4         BANGLADESH                     2                    4+                 0.0461885    0.0184560    0.0739211
9-12 months    JiVitA-4         BANGLADESH                     3                    4+                 0.0375392    0.0094614    0.0656169
9-12 months    MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     1                    4+                 0.0356865   -0.0469630    0.1183361
9-12 months    MAL-ED           BANGLADESH                     2                    4+                 0.0394494   -0.0496062    0.1285050
9-12 months    MAL-ED           BANGLADESH                     3                    4+                 0.0348272   -0.0582540    0.1279084
9-12 months    MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          1                    4+                 0.0455222   -0.0085422    0.0995865
9-12 months    MAL-ED           INDIA                          2                    4+                 0.0235917   -0.0293581    0.0765414
9-12 months    MAL-ED           INDIA                          3                    4+                 0.0493790   -0.0095518    0.1083098
9-12 months    MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          1                    4+                 0.0240566   -0.0222257    0.0703389
9-12 months    MAL-ED           NEPAL                          2                    4+                 0.0217069   -0.0204390    0.0638527
9-12 months    MAL-ED           NEPAL                          3                    4+                 0.0068624   -0.0474228    0.0611476
9-12 months    MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           1                    4+                -0.0754200   -0.1420500   -0.0087900
9-12 months    MAL-ED           PERU                           2                    4+                -0.0595382   -0.1166181   -0.0024583
9-12 months    MAL-ED           PERU                           3                    4+                -0.0190823   -0.0746070    0.0364425
9-12 months    MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   1                    4+                 0.0098979   -0.0727528    0.0925485
9-12 months    MAL-ED           SOUTH AFRICA                   2                    4+                 0.0465142   -0.0605379    0.1535664
9-12 months    MAL-ED           SOUTH AFRICA                   3                    4+                -0.0790278   -0.2047467    0.0466911
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0901237   -0.0799978    0.2602452
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0045094   -0.0800262    0.0890450
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0114357   -0.0917811    0.0689096
9-12 months    NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    4+                -0.0262392   -0.0621418    0.0096634
9-12 months    NIH-Crypto       BANGLADESH                     2                    4+                -0.0339256   -0.0722874    0.0044363
9-12 months    NIH-Crypto       BANGLADESH                     3                    4+                -0.0159900   -0.0588919    0.0269119
9-12 months    PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    4+                -0.0069779   -0.0702255    0.0562697
9-12 months    PROVIDE          BANGLADESH                     2                    4+                -0.0066155   -0.0755296    0.0622986
9-12 months    PROVIDE          BANGLADESH                     3                    4+                 0.0076529   -0.0638219    0.0791277
12-15 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    4+                 0.0273388   -0.0410543    0.0957320
12-15 months   CMC-V-BCS-2002   INDIA                          2                    4+                 0.0198552   -0.0706270    0.1103373
12-15 months   CMC-V-BCS-2002   INDIA                          3                    4+                 0.0458241   -0.0509971    0.1426453
12-15 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   CONTENT          PERU                           1                    4+                 0.0090033   -0.0425600    0.0605666
12-15 months   CONTENT          PERU                           2                    4+                 0.0067675   -0.0400318    0.0535668
12-15 months   CONTENT          PERU                           3                    4+                 0.0010878   -0.0679456    0.0701211
12-15 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    4+                -0.0192645   -0.0609525    0.0224234
12-15 months   GMS-Nepal        NEPAL                          2                    4+                -0.0061579   -0.0336904    0.0213745
12-15 months   GMS-Nepal        NEPAL                          3                    4+                -0.0162150   -0.0441508    0.0117207
12-15 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    4+                 0.0356834   -0.0205927    0.0919594
12-15 months   IRC              INDIA                          2                    4+                 0.0488093   -0.0112031    0.1088217
12-15 months   IRC              INDIA                          3                    4+                 0.0502509   -0.0339130    0.1344147
12-15 months   JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     1                    4+                -0.0043780   -0.0266740    0.0179179
12-15 months   JiVitA-4         BANGLADESH                     2                    4+                -0.0059176   -0.0337154    0.0218802
12-15 months   JiVitA-4         BANGLADESH                     3                    4+                -0.0022735   -0.0306915    0.0261445
12-15 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     1                    4+                -0.0738368   -0.1318911   -0.0157824
12-15 months   MAL-ED           BANGLADESH                     2                    4+                -0.0977613   -0.1641497   -0.0313730
12-15 months   MAL-ED           BANGLADESH                     3                    4+                -0.0652328   -0.1434250    0.0129594
12-15 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          1                    4+                -0.0621250   -0.1133077   -0.0109423
12-15 months   MAL-ED           INDIA                          2                    4+                -0.0258288   -0.0762604    0.0246028
12-15 months   MAL-ED           INDIA                          3                    4+                -0.0526487   -0.1065681    0.0012708
12-15 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          1                    4+                -0.0528975   -0.0948288   -0.0109663
12-15 months   MAL-ED           NEPAL                          2                    4+                 0.0557491   -0.0103253    0.1218236
12-15 months   MAL-ED           NEPAL                          3                    4+                 0.0051672   -0.0518661    0.0622006
12-15 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           1                    4+                 0.0148961   -0.0724390    0.1022313
12-15 months   MAL-ED           PERU                           2                    4+                 0.0021736   -0.0443224    0.0486696
12-15 months   MAL-ED           PERU                           3                    4+                 0.0344515   -0.0060741    0.0749771
12-15 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   1                    4+                 0.0828450    0.0073709    0.1583191
12-15 months   MAL-ED           SOUTH AFRICA                   2                    4+                -0.0361808   -0.1171944    0.0448328
12-15 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.0136592   -0.0901899    0.0628715
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0809685   -0.0611274    0.2230643
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0367028   -0.1042227    0.0308170
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0125836   -0.0441604    0.0693277
12-15 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.0332860   -0.0625197   -0.0040522
12-15 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.0310283   -0.0631405    0.0010839
12-15 months   NIH-Crypto       BANGLADESH                     3                    4+                -0.0272394   -0.0659675    0.0114887
12-15 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    4+                -0.0124064   -0.0765307    0.0517180
12-15 months   PROVIDE          BANGLADESH                     2                    4+                -0.0024014   -0.0699420    0.0651392
12-15 months   PROVIDE          BANGLADESH                     3                    4+                -0.0187908   -0.0893801    0.0517985
15-18 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.0306684   -0.1246226    0.0632857
15-18 months   CMC-V-BCS-2002   INDIA                          2                    4+                 0.0082749   -0.0960663    0.1126161
15-18 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.0083226   -0.1232357    0.1065905
15-18 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   CONTENT          PERU                           1                    4+                 0.0458515    0.0031089    0.0885941
15-18 months   CONTENT          PERU                           2                    4+                 0.1111800    0.0634156    0.1589445
15-18 months   CONTENT          PERU                           3                    4+                 0.0315957   -0.0368493    0.1000406
15-18 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    4+                 0.0237337   -0.0173849    0.0648522
15-18 months   GMS-Nepal        NEPAL                          2                    4+                 0.0279897   -0.0031061    0.0590855
15-18 months   GMS-Nepal        NEPAL                          3                    4+                 0.0222337   -0.0145073    0.0589746
15-18 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    4+                 0.0258580   -0.0600354    0.1117515
15-18 months   IRC              INDIA                          2                    4+                 0.0262052   -0.0587983    0.1112088
15-18 months   IRC              INDIA                          3                    4+                 0.0348042   -0.0567965    0.1264050
15-18 months   JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     1                    4+                 0.0014542   -0.0253563    0.0282646
15-18 months   JiVitA-4         BANGLADESH                     2                    4+                -0.0111698   -0.0411469    0.0188072
15-18 months   JiVitA-4         BANGLADESH                     3                    4+                 0.0148262   -0.0152553    0.0449078
15-18 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     1                    4+                 0.0083661   -0.0671656    0.0838978
15-18 months   MAL-ED           BANGLADESH                     2                    4+                -0.0008668   -0.0813081    0.0795745
15-18 months   MAL-ED           BANGLADESH                     3                    4+                 0.0099665   -0.0766877    0.0966207
15-18 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          1                    4+                 0.0471364    0.0045076    0.0897652
15-18 months   MAL-ED           INDIA                          2                    4+                 0.0170881   -0.0252812    0.0594574
15-18 months   MAL-ED           INDIA                          3                    4+                 0.0586328    0.0129146    0.1043510
15-18 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          1                    4+                 0.0074633   -0.0293368    0.0442633
15-18 months   MAL-ED           NEPAL                          2                    4+                -0.0108926   -0.0665976    0.0448123
15-18 months   MAL-ED           NEPAL                          3                    4+                 0.0306496   -0.0295639    0.0908632
15-18 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           1                    4+                -0.0381666   -0.0894283    0.0130951
15-18 months   MAL-ED           PERU                           2                    4+                -0.0223363   -0.0655750    0.0209024
15-18 months   MAL-ED           PERU                           3                    4+                 0.0117683   -0.0297541    0.0532907
15-18 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.0021784   -0.0818275    0.0774708
15-18 months   MAL-ED           SOUTH AFRICA                   2                    4+                -0.0521085   -0.0993498   -0.0048672
15-18 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.0102779   -0.1399147    0.1193588
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0069619   -0.1431748    0.1570987
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0323313   -0.0247073    0.0893700
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0024148   -0.0571118    0.0522822
15-18 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    4+                 0.0038429   -0.0204392    0.0281249
15-18 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.0004489   -0.0261073    0.0252095
15-18 months   NIH-Crypto       BANGLADESH                     3                    4+                 0.0161462   -0.0192351    0.0515275
15-18 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    4+                -0.0140027   -0.0660509    0.0380454
15-18 months   PROVIDE          BANGLADESH                     2                    4+                -0.0331031   -0.0881498    0.0219436
15-18 months   PROVIDE          BANGLADESH                     3                    4+                -0.0183632   -0.0766798    0.0399534
18-21 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.0615396   -0.1250878    0.0020085
18-21 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.0291312   -0.1018072    0.0435448
18-21 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.0884201   -0.1797250    0.0028849
18-21 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   CONTENT          PERU                           1                    4+                -0.0185494   -0.0927480    0.0556493
18-21 months   CONTENT          PERU                           2                    4+                -0.0848090   -0.1326517   -0.0369662
18-21 months   CONTENT          PERU                           3                    4+                -0.0559472   -0.1128389    0.0009445
18-21 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    4+                -0.0245496   -0.0658364    0.0167372
18-21 months   GMS-Nepal        NEPAL                          2                    4+                -0.0064279   -0.0310070    0.0181512
18-21 months   GMS-Nepal        NEPAL                          3                    4+                 0.0003279   -0.0366709    0.0373267
18-21 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    4+                -0.0890616   -0.1700051   -0.0081180
18-21 months   IRC              INDIA                          2                    4+                -0.0766302   -0.1574869    0.0042264
18-21 months   IRC              INDIA                          3                    4+                -0.0871141   -0.1899108    0.0156825
18-21 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     1                    4+                -0.0269490   -0.1096311    0.0557331
18-21 months   MAL-ED           BANGLADESH                     2                    4+                -0.0072277   -0.0948238    0.0803685
18-21 months   MAL-ED           BANGLADESH                     3                    4+                -0.0135676   -0.1025952    0.0754601
18-21 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          1                    4+                -0.0054845   -0.0380809    0.0271119
18-21 months   MAL-ED           INDIA                          2                    4+                -0.0207250   -0.0547249    0.0132749
18-21 months   MAL-ED           INDIA                          3                    4+                -0.0221413   -0.0591035    0.0148210
18-21 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          1                    4+                -0.0058200   -0.0398932    0.0282533
18-21 months   MAL-ED           NEPAL                          2                    4+                 0.0012687   -0.0397318    0.0422692
18-21 months   MAL-ED           NEPAL                          3                    4+                -0.0907616   -0.1363619   -0.0451613
18-21 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           1                    4+                -0.0233009   -0.0655331    0.0189313
18-21 months   MAL-ED           PERU                           2                    4+                -0.0278815   -0.0750958    0.0193328
18-21 months   MAL-ED           PERU                           3                    4+                -0.0374562   -0.0769555    0.0020432
18-21 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.0202329   -0.1163029    0.0758370
18-21 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.0416315   -0.0298656    0.1131286
18-21 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.0485420   -0.1240289    0.0269449
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0154935   -0.1373923    0.1683793
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0192679   -0.0782636    0.0397277
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0112737   -0.0435425    0.0660899
18-21 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.0311950   -0.0565400   -0.0058500
18-21 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.0172409   -0.0456685    0.0111868
18-21 months   NIH-Crypto       BANGLADESH                     3                    4+                -0.0132543   -0.0435577    0.0170492
18-21 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    4+                -0.0460798   -0.0829058   -0.0092537
18-21 months   PROVIDE          BANGLADESH                     2                    4+                -0.0346905   -0.0755139    0.0061329
18-21 months   PROVIDE          BANGLADESH                     3                    4+                -0.0300087   -0.0722267    0.0122093
21-24 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.0116122   -0.1027670    0.0795426
21-24 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.0359451   -0.1330857    0.0611955
21-24 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.0398021   -0.1459100    0.0663057
21-24 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   CONTENT          PERU                           1                    4+                 0.0131010   -0.0853496    0.1115517
21-24 months   CONTENT          PERU                           2                    4+                 0.0217583   -0.0373290    0.0808457
21-24 months   CONTENT          PERU                           3                    4+                 0.0770844    0.0154600    0.1387088
21-24 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    4+                -0.0604154   -0.0997727   -0.0210581
21-24 months   GMS-Nepal        NEPAL                          2                    4+                 0.0096491   -0.0279668    0.0472650
21-24 months   GMS-Nepal        NEPAL                          3                    4+                -0.0049422   -0.0448597    0.0349754
21-24 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    4+                -0.0107242   -0.0638986    0.0424503
21-24 months   IRC              INDIA                          2                    4+                 0.0135235   -0.0410775    0.0681244
21-24 months   IRC              INDIA                          3                    4+                -0.0633543   -0.1254203   -0.0012882
21-24 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     1                    4+                 0.0033060   -0.0338789    0.0404909
21-24 months   MAL-ED           BANGLADESH                     2                    4+                 0.0275755   -0.0179689    0.0731200
21-24 months   MAL-ED           BANGLADESH                     3                    4+                -0.0015504   -0.0494077    0.0463069
21-24 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          1                    4+                 0.0214353   -0.0189203    0.0617909
21-24 months   MAL-ED           INDIA                          2                    4+                 0.0372191   -0.0046098    0.0790480
21-24 months   MAL-ED           INDIA                          3                    4+                 0.0171518   -0.0248999    0.0592036
21-24 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          1                    4+                -0.0045092   -0.0402672    0.0312489
21-24 months   MAL-ED           NEPAL                          2                    4+                 0.0055469   -0.0369090    0.0480029
21-24 months   MAL-ED           NEPAL                          3                    4+                 0.0083307   -0.0545487    0.0712101
21-24 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           1                    4+                 0.0471710   -0.0256964    0.1200384
21-24 months   MAL-ED           PERU                           2                    4+                 0.0282208   -0.0202859    0.0767276
21-24 months   MAL-ED           PERU                           3                    4+                 0.0088616   -0.0310907    0.0488139
21-24 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   1                    4+                 0.0126449   -0.0622352    0.0875250
21-24 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.0316515   -0.0265044    0.0898073
21-24 months   MAL-ED           SOUTH AFRICA                   3                    4+                 0.0386280   -0.0441372    0.1213933
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0453598   -0.1435419    0.0528222
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0737683   -0.1357172   -0.0118195
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0182020   -0.0633684    0.0269643
21-24 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.0006477   -0.0233579    0.0220624
21-24 months   NIH-Crypto       BANGLADESH                     2                    4+                 0.0031627   -0.0214554    0.0277809
21-24 months   NIH-Crypto       BANGLADESH                     3                    4+                 0.0109269   -0.0204246    0.0422784
21-24 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    4+                -0.0119359   -0.0586478    0.0347760
21-24 months   PROVIDE          BANGLADESH                     2                    4+                -0.0112901   -0.0616059    0.0390257
21-24 months   PROVIDE          BANGLADESH                     3                    4+                -0.0225001   -0.0788253    0.0338251


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          4+                   NA                -0.0542774   -0.0855979   -0.0229569
0-3 months     GMS-Nepal        NEPAL                          4+                   NA                 0.0207050   -0.0059709    0.0473808
0-3 months     IRC              INDIA                          4+                   NA                 0.1543590   -0.0880863    0.3968043
0-3 months     JiVitA-3         BANGLADESH                     4+                   NA                 0.0036114   -0.0086472    0.0158700
0-3 months     JiVitA-4         BANGLADESH                     4+                   NA                 0.0450698   -0.0224603    0.1125999
0-3 months     MAL-ED           BANGLADESH                     4+                   NA                 0.1048875   -0.0093338    0.2191089
0-3 months     MAL-ED           INDIA                          4+                   NA                 0.0256732   -0.0836388    0.1349852
0-3 months     MAL-ED           NEPAL                          4+                   NA                 0.0037530   -0.0348096    0.0423156
0-3 months     MAL-ED           PERU                           4+                   NA                -0.0201860   -0.0529362    0.0125643
0-3 months     MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0028731   -0.0320449    0.0262987
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0082702   -0.0400942    0.0566345
0-3 months     NIH-Crypto       BANGLADESH                     4+                   NA                 0.0244394   -0.0186802    0.0675591
0-3 months     PROVIDE          BANGLADESH                     4+                   NA                -0.0396363   -0.1486594    0.0693869
3-6 months     CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1361536   -0.3803484    0.1080411
3-6 months     COHORTS          INDIA                          4+                   NA                -0.0014449   -0.0282737    0.0253840
3-6 months     CONTENT          PERU                           4+                   NA                -0.0079854   -0.0369866    0.0210159
3-6 months     GMS-Nepal        NEPAL                          4+                   NA                 0.0167054   -0.0028183    0.0362292
3-6 months     IRC              INDIA                          4+                   NA                -0.0097849   -0.1257181    0.1061483
3-6 months     JiVitA-3         BANGLADESH                     4+                   NA                -0.0048533   -0.0156824    0.0059759
3-6 months     JiVitA-4         BANGLADESH                     4+                   NA                -0.1272696   -0.1906561   -0.0638831
3-6 months     MAL-ED           BANGLADESH                     4+                   NA                 0.0350267   -0.0714822    0.1415356
3-6 months     MAL-ED           INDIA                          4+                   NA                 0.0261447   -0.0596931    0.1119824
3-6 months     MAL-ED           NEPAL                          4+                   NA                -0.0218010   -0.0464369    0.0028349
3-6 months     MAL-ED           PERU                           4+                   NA                 0.0417752    0.0111306    0.0724198
3-6 months     MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0057169   -0.0253566    0.0139227
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0167818   -0.0533557    0.0197921
3-6 months     NIH-Crypto       BANGLADESH                     4+                   NA                -0.0386344   -0.0838472    0.0065783
3-6 months     PROVIDE          BANGLADESH                     4+                   NA                 0.0053383   -0.0698279    0.0805045
6-9 months     CMC-V-BCS-2002   INDIA                          4+                   NA                 0.1138890   -0.0120879    0.2398659
6-9 months     COHORTS          INDIA                          4+                   NA                -0.0373761   -0.0587245   -0.0160277
6-9 months     CONTENT          PERU                           4+                   NA                 0.0104444   -0.0245938    0.0454826
6-9 months     GMS-Nepal        NEPAL                          4+                   NA                 0.0082830   -0.0119811    0.0285472
6-9 months     IRC              INDIA                          4+                   NA                -0.0143367   -0.1125069    0.0838336
6-9 months     JiVitA-4         BANGLADESH                     4+                   NA                -0.0171417   -0.0441284    0.0098451
6-9 months     MAL-ED           BANGLADESH                     4+                   NA                -0.0729207   -0.1362269   -0.0096145
6-9 months     MAL-ED           INDIA                          4+                   NA                 0.0310613   -0.0318749    0.0939975
6-9 months     MAL-ED           NEPAL                          4+                   NA                -0.0037307   -0.0216335    0.0141722
6-9 months     MAL-ED           PERU                           4+                   NA                 0.0117378   -0.0114935    0.0349692
6-9 months     MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0047738   -0.0190288    0.0094811
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0074821   -0.0305541    0.0455184
6-9 months     NIH-Crypto       BANGLADESH                     4+                   NA                 0.0071793   -0.0290468    0.0434054
6-9 months     PROVIDE          BANGLADESH                     4+                   NA                -0.0170237   -0.0847260    0.0506786
9-12 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1474853   -0.3167393    0.0217688
9-12 months    COHORTS          INDIA                          4+                   NA                -0.0433664   -0.0635381   -0.0231948
9-12 months    CONTENT          PERU                           4+                   NA                -0.0187201   -0.0446324    0.0071921
9-12 months    GMS-Nepal        NEPAL                          4+                   NA                 0.0021833   -0.0135455    0.0179121
9-12 months    IRC              INDIA                          4+                   NA                 0.0311988   -0.0393012    0.1016987
9-12 months    JiVitA-4         BANGLADESH                     4+                   NA                 0.0448357    0.0263132    0.0633582
9-12 months    MAL-ED           BANGLADESH                     4+                   NA                 0.0345044   -0.0434694    0.1124781
9-12 months    MAL-ED           INDIA                          4+                   NA                 0.0341308   -0.0099379    0.0781995
9-12 months    MAL-ED           NEPAL                          4+                   NA                 0.0106840   -0.0044841    0.0258521
9-12 months    MAL-ED           PERU                           4+                   NA                -0.0203946   -0.0410275    0.0002384
9-12 months    MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0019367   -0.0169744    0.0131010
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0094385   -0.0474903    0.0286134
9-12 months    NIH-Crypto       BANGLADESH                     4+                   NA                -0.0275847   -0.0572851    0.0021157
9-12 months    PROVIDE          BANGLADESH                     4+                   NA                -0.0058116   -0.0666177    0.0549944
12-15 months   CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0265404   -0.0361115    0.0891923
12-15 months   CONTENT          PERU                           4+                   NA                 0.0138401   -0.0082619    0.0359422
12-15 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0074115   -0.0196827    0.0048596
12-15 months   IRC              INDIA                          4+                   NA                 0.0415631   -0.0111966    0.0943228
12-15 months   JiVitA-4         BANGLADESH                     4+                   NA                -0.0073174   -0.0280352    0.0134004
12-15 months   MAL-ED           BANGLADESH                     4+                   NA                -0.0741466   -0.1285741   -0.0197190
12-15 months   MAL-ED           INDIA                          4+                   NA                -0.0421255   -0.0832495   -0.0010015
12-15 months   MAL-ED           NEPAL                          4+                   NA                -0.0047771   -0.0194317    0.0098776
12-15 months   MAL-ED           PERU                           4+                   NA                 0.0113995   -0.0060942    0.0288932
12-15 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0046467   -0.0077996    0.0170930
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0024091   -0.0300128    0.0251945
12-15 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0328013   -0.0567358   -0.0088667
12-15 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0096675   -0.0712954    0.0519605
15-18 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0117974   -0.1023673    0.0787725
15-18 months   CONTENT          PERU                           4+                   NA                 0.0555249    0.0288723    0.0821776
15-18 months   GMS-Nepal        NEPAL                          4+                   NA                 0.0158513   -0.0003012    0.0320038
15-18 months   IRC              INDIA                          4+                   NA                 0.0261940   -0.0545215    0.1069095
15-18 months   JiVitA-4         BANGLADESH                     4+                   NA                -0.0031959   -0.0279760    0.0215842
15-18 months   MAL-ED           BANGLADESH                     4+                   NA                 0.0098772   -0.0622187    0.0819732
15-18 months   MAL-ED           INDIA                          4+                   NA                 0.0353396    0.0005832    0.0700959
15-18 months   MAL-ED           NEPAL                          4+                   NA                 0.0045914   -0.0091856    0.0183685
15-18 months   MAL-ED           PERU                           4+                   NA                -0.0040776   -0.0190825    0.0109274
15-18 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0032427   -0.0146185    0.0081332
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0034995   -0.0203536    0.0273527
15-18 months   NIH-Crypto       BANGLADESH                     4+                   NA                 0.0058851   -0.0134801    0.0252504
15-18 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0173440   -0.0669822    0.0322942
18-21 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0536605   -0.1111114    0.0037904
18-21 months   CONTENT          PERU                           4+                   NA                -0.0662453   -0.0965105   -0.0359802
18-21 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0051364   -0.0181282    0.0078553
18-21 months   IRC              INDIA                          4+                   NA                -0.0814684   -0.1579375   -0.0049992
18-21 months   MAL-ED           BANGLADESH                     4+                   NA                -0.0196548   -0.0994863    0.0601767
18-21 months   MAL-ED           INDIA                          4+                   NA                -0.0128663   -0.0384976    0.0127651
18-21 months   MAL-ED           NEPAL                          4+                   NA                -0.0096086   -0.0213665    0.0021492
18-21 months   MAL-ED           PERU                           4+                   NA                -0.0122984   -0.0263317    0.0017350
18-21 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0000364   -0.0101135    0.0101862
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0004328   -0.0245504    0.0236848
18-21 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0203878   -0.0406779   -0.0000977
18-21 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0408385   -0.0757533   -0.0059238
21-24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0216682   -0.1081804    0.0648440
21-24 months   CONTENT          PERU                           4+                   NA                 0.0275412   -0.0132793    0.0683618
21-24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0031845   -0.0199630    0.0135939
21-24 months   IRC              INDIA                          4+                   NA                -0.0047856   -0.0540668    0.0444957
21-24 months   MAL-ED           BANGLADESH                     4+                   NA                 0.0050448   -0.0292754    0.0393650
21-24 months   MAL-ED           INDIA                          4+                   NA                 0.0233240   -0.0107900    0.0574379
21-24 months   MAL-ED           NEPAL                          4+                   NA                 0.0027852   -0.0092742    0.0148446
21-24 months   MAL-ED           PERU                           4+                   NA                 0.0099477   -0.0042507    0.0241462
21-24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0069737   -0.0033720    0.0173195
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0234534   -0.0467703   -0.0001365
21-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                 0.0017959   -0.0148771    0.0184688
21-24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0121069   -0.0569632    0.0327494
