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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** impfloor

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
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
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid          country                        impfloor    ever_stunted   n_cell       n
---------------------------  ---------------  -----------------------------  ---------  -------------  -------  ------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                      0       21     198
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                      1      177     198
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                      0        0     198
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                      1        0     198
0-24 months (no birth st.)   CONTENT          PERU                           1                      0      150     195
0-24 months (no birth st.)   CONTENT          PERU                           1                      1       32     195
0-24 months (no birth st.)   CONTENT          PERU                           0                      0       12     195
0-24 months (no birth st.)   CONTENT          PERU                           0                      1        1     195
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                      0       50     453
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                      1       42     453
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                      0      148     453
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                      1      213     453
0-24 months (no birth st.)   IRC              INDIA                          1                      0      123     270
0-24 months (no birth st.)   IRC              INDIA                          1                      1      147     270
0-24 months (no birth st.)   IRC              INDIA                          0                      0        0     270
0-24 months (no birth st.)   IRC              INDIA                          0                      1        0     270
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                      0     1375   18325
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                      1      279   18325
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                      0    12329   18325
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                      1     4342   18325
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                      0      361    3874
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                      1      154    3874
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                      0     1908    3874
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                      1     1451    3874
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                      0       85     203
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                      1      101     203
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                      0        8     203
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                      1        9     203
0-24 months (no birth st.)   MAL-ED           BRAZIL                         1                      0      152     185
0-24 months (no birth st.)   MAL-ED           BRAZIL                         1                      1       31     185
0-24 months (no birth st.)   MAL-ED           BRAZIL                         0                      0        2     185
0-24 months (no birth st.)   MAL-ED           BRAZIL                         0                      1        0     185
0-24 months (no birth st.)   MAL-ED           INDIA                          1                      0       85     197
0-24 months (no birth st.)   MAL-ED           INDIA                          1                      1       98     197
0-24 months (no birth st.)   MAL-ED           INDIA                          0                      0        4     197
0-24 months (no birth st.)   MAL-ED           INDIA                          0                      1       10     197
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                      0       72     202
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                      1       14     202
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                      0       78     202
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                      1       38     202
0-24 months (no birth st.)   MAL-ED           PERU                           1                      0       21     238
0-24 months (no birth st.)   MAL-ED           PERU                           1                      1       27     238
0-24 months (no birth st.)   MAL-ED           PERU                           0                      0       70     238
0-24 months (no birth st.)   MAL-ED           PERU                           0                      1      120     238
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                      0       91     229
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                      1      118     229
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                      0        7     229
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                      1       13     229
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        3     209
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        8     209
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0       31     209
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1      167     209
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     1                      0      193     529
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     1                      1      276     529
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     0                      0       18     529
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     0                      1       42     529
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     1                      0      310     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     1                      1      191     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                      0       86     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                      1       66     653
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                      0      365     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                      1      213     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                      0       30     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                      1       25     633
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                      0      115     195
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                      1       80     195
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                      0        0     195
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                      1        0     195
0-6 months (no birth st.)    CONTENT          PERU                           1                      0      175     195
0-6 months (no birth st.)    CONTENT          PERU                           1                      1        7     195
0-6 months (no birth st.)    CONTENT          PERU                           0                      0       13     195
0-6 months (no birth st.)    CONTENT          PERU                           0                      1        0     195
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                      0       80     453
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                      1       12     453
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                      0      294     453
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                      1       67     453
0-6 months (no birth st.)    IRC              INDIA                          1                      0      186     270
0-6 months (no birth st.)    IRC              INDIA                          1                      1       84     270
0-6 months (no birth st.)    IRC              INDIA                          0                      0        0     270
0-6 months (no birth st.)    IRC              INDIA                          0                      1        0     270
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                      0     1521   18281
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                      1      125   18281
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                      0    14380   18281
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                      1     2255   18281
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                      0      457    3651
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                      1       30    3651
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                      0     2882    3651
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                      1      282    3651
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                      0      147     203
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                      1       39     203
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                      0       13     203
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                      1        4     203
0-6 months (no birth st.)    MAL-ED           BRAZIL                         1                      0      163     185
0-6 months (no birth st.)    MAL-ED           BRAZIL                         1                      1       20     185
0-6 months (no birth st.)    MAL-ED           BRAZIL                         0                      0        2     185
0-6 months (no birth st.)    MAL-ED           BRAZIL                         0                      1        0     185
0-6 months (no birth st.)    MAL-ED           INDIA                          1                      0      144     197
0-6 months (no birth st.)    MAL-ED           INDIA                          1                      1       39     197
0-6 months (no birth st.)    MAL-ED           INDIA                          0                      0       10     197
0-6 months (no birth st.)    MAL-ED           INDIA                          0                      1        4     197
0-6 months (no birth st.)    MAL-ED           NEPAL                          1                      0       85     202
0-6 months (no birth st.)    MAL-ED           NEPAL                          1                      1        1     202
0-6 months (no birth st.)    MAL-ED           NEPAL                          0                      0      104     202
0-6 months (no birth st.)    MAL-ED           NEPAL                          0                      1       12     202
0-6 months (no birth st.)    MAL-ED           PERU                           1                      0       28     238
0-6 months (no birth st.)    MAL-ED           PERU                           1                      1       20     238
0-6 months (no birth st.)    MAL-ED           PERU                           0                      0      122     238
0-6 months (no birth st.)    MAL-ED           PERU                           0                      1       68     238
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                      0      144     229
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                      1       65     229
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                      0       12     229
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                      1        8     229
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        7     209
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        4     209
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      138     209
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1       60     209
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     1                      0      372     529
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     1                      1       97     529
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     0                      0       36     529
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     0                      1       24     529
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     1                      0      414     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     1                      1       87     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                      0      115     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                      1       37     653
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                      0      491     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                      1       87     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                      0       41     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                      1       14     633
6-24 months                  CMC-V-BCS-2002   INDIA                          1                      0       21     119
6-24 months                  CMC-V-BCS-2002   INDIA                          1                      1       98     119
6-24 months                  CMC-V-BCS-2002   INDIA                          0                      0        0     119
6-24 months                  CMC-V-BCS-2002   INDIA                          0                      1        0     119
6-24 months                  CONTENT          PERU                           1                      0      150     188
6-24 months                  CONTENT          PERU                           1                      1       25     188
6-24 months                  CONTENT          PERU                           0                      0       12     188
6-24 months                  CONTENT          PERU                           0                      1        1     188
6-24 months                  GMS-Nepal        NEPAL                          1                      0       36     317
6-24 months                  GMS-Nepal        NEPAL                          1                      1       30     317
6-24 months                  GMS-Nepal        NEPAL                          0                      0      105     317
6-24 months                  GMS-Nepal        NEPAL                          0                      1      146     317
6-24 months                  IRC              INDIA                          1                      0      123     186
6-24 months                  IRC              INDIA                          1                      1       63     186
6-24 months                  IRC              INDIA                          0                      0        0     186
6-24 months                  IRC              INDIA                          0                      1        0     186
6-24 months                  JiVitA-3         BANGLADESH                     1                      0      931   10472
6-24 months                  JiVitA-3         BANGLADESH                     1                      1      157   10472
6-24 months                  JiVitA-3         BANGLADESH                     0                      0     7278   10472
6-24 months                  JiVitA-3         BANGLADESH                     0                      1     2106   10472
6-24 months                  JiVitA-4         BANGLADESH                     1                      0      358    3643
6-24 months                  JiVitA-4         BANGLADESH                     1                      1      125    3643
6-24 months                  JiVitA-4         BANGLADESH                     0                      0     1907    3643
6-24 months                  JiVitA-4         BANGLADESH                     0                      1     1253    3643
6-24 months                  MAL-ED           BANGLADESH                     1                      0       83     158
6-24 months                  MAL-ED           BANGLADESH                     1                      1       62     158
6-24 months                  MAL-ED           BANGLADESH                     0                      0        8     158
6-24 months                  MAL-ED           BANGLADESH                     0                      1        5     158
6-24 months                  MAL-ED           BRAZIL                         1                      0      150     163
6-24 months                  MAL-ED           BRAZIL                         1                      1       11     163
6-24 months                  MAL-ED           BRAZIL                         0                      0        2     163
6-24 months                  MAL-ED           BRAZIL                         0                      1        0     163
6-24 months                  MAL-ED           INDIA                          1                      0       85     154
6-24 months                  MAL-ED           INDIA                          1                      1       59     154
6-24 months                  MAL-ED           INDIA                          0                      0        4     154
6-24 months                  MAL-ED           INDIA                          0                      1        6     154
6-24 months                  MAL-ED           NEPAL                          1                      0       71     188
6-24 months                  MAL-ED           NEPAL                          1                      1       13     188
6-24 months                  MAL-ED           NEPAL                          0                      0       78     188
6-24 months                  MAL-ED           NEPAL                          0                      1       26     188
6-24 months                  MAL-ED           PERU                           1                      0       21     149
6-24 months                  MAL-ED           PERU                           1                      1        7     149
6-24 months                  MAL-ED           PERU                           0                      0       69     149
6-24 months                  MAL-ED           PERU                           0                      1       52     149
6-24 months                  MAL-ED           SOUTH AFRICA                   1                      0       90     155
6-24 months                  MAL-ED           SOUTH AFRICA                   1                      1       53     155
6-24 months                  MAL-ED           SOUTH AFRICA                   0                      0        7     155
6-24 months                  MAL-ED           SOUTH AFRICA                   0                      1        5     155
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        2     142
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        4     142
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0       29     142
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1      107     142
6-24 months                  NIH-Birth        BANGLADESH                     1                      0      139     344
6-24 months                  NIH-Birth        BANGLADESH                     1                      1      179     344
6-24 months                  NIH-Birth        BANGLADESH                     0                      0        8     344
6-24 months                  NIH-Birth        BANGLADESH                     0                      1       18     344
6-24 months                  NIH-Crypto       BANGLADESH                     1                      0      287     506
6-24 months                  NIH-Crypto       BANGLADESH                     1                      1      104     506
6-24 months                  NIH-Crypto       BANGLADESH                     0                      0       86     506
6-24 months                  NIH-Crypto       BANGLADESH                     0                      1       29     506
6-24 months                  PROVIDE          BANGLADESH                     1                      0      300     456
6-24 months                  PROVIDE          BANGLADESH                     1                      1      126     456
6-24 months                  PROVIDE          BANGLADESH                     0                      0       19     456
6-24 months                  PROVIDE          BANGLADESH                     0                      1       11     456


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/fbedab47-b2f8-44f5-8c1d-ef837013057f/0ef39705-c80a-4f64-adc2-886169b95e2f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fbedab47-b2f8-44f5-8c1d-ef837013057f/0ef39705-c80a-4f64-adc2-886169b95e2f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fbedab47-b2f8-44f5-8c1d-ef837013057f/0ef39705-c80a-4f64-adc2-886169b95e2f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fbedab47-b2f8-44f5-8c1d-ef837013057f/0ef39705-c80a-4f64-adc2-886169b95e2f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal    NEPAL          1                    NA                0.5253241   0.4140957   0.6365524
0-24 months (no birth st.)   GMS-Nepal    NEPAL          0                    NA                0.5934769   0.5421983   0.6447556
0-24 months (no birth st.)   JiVitA-3     BANGLADESH     1                    NA                0.2802184   0.2542207   0.3062161
0-24 months (no birth st.)   JiVitA-3     BANGLADESH     0                    NA                0.2531408   0.2450669   0.2612146
0-24 months (no birth st.)   JiVitA-4     BANGLADESH     1                    NA                0.3049832   0.2455299   0.3644364
0-24 months (no birth st.)   JiVitA-4     BANGLADESH     0                    NA                0.4239981   0.4030498   0.4449463
0-24 months (no birth st.)   MAL-ED       BANGLADESH     1                    NA                0.5430108   0.4712444   0.6147772
0-24 months (no birth st.)   MAL-ED       BANGLADESH     0                    NA                0.5294118   0.2915562   0.7672673
0-24 months (no birth st.)   MAL-ED       NEPAL          1                    NA                0.1849112   0.1074480   0.2623744
0-24 months (no birth st.)   MAL-ED       NEPAL          0                    NA                0.3403362   0.2546033   0.4260690
0-24 months (no birth st.)   MAL-ED       PERU           1                    NA                0.5509088   0.4133208   0.6884968
0-24 months (no birth st.)   MAL-ED       PERU           0                    NA                0.6274703   0.5585347   0.6964059
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA   1                    NA                0.5645933   0.4972273   0.6319593
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA   0                    NA                0.6500000   0.4405048   0.8594952
0-24 months (no birth st.)   NIH-Birth    BANGLADESH     1                    NA                0.5906276   0.5461312   0.6351240
0-24 months (no birth st.)   NIH-Birth    BANGLADESH     0                    NA                0.6575448   0.5415453   0.7735444
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH     1                    NA                0.3730908   0.3318962   0.4142853
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH     0                    NA                0.4346375   0.3466716   0.5226033
0-24 months (no birth st.)   PROVIDE      BANGLADESH     1                    NA                0.3668983   0.3275925   0.4062041
0-24 months (no birth st.)   PROVIDE      BANGLADESH     0                    NA                0.4744032   0.3409350   0.6078714
0-6 months (no birth st.)    GMS-Nepal    NEPAL          1                    NA                0.1497743   0.0676288   0.2319198
0-6 months (no birth st.)    GMS-Nepal    NEPAL          0                    NA                0.1801651   0.1406204   0.2197097
0-6 months (no birth st.)    JiVitA-3     BANGLADESH     1                    NA                0.1331745   0.1113350   0.1550140
0-6 months (no birth st.)    JiVitA-3     BANGLADESH     0                    NA                0.1311699   0.1251835   0.1371563
0-6 months (no birth st.)    JiVitA-4     BANGLADESH     1                    NA                0.0732299   0.0373336   0.1091262
0-6 months (no birth st.)    JiVitA-4     BANGLADESH     0                    NA                0.0867950   0.0743753   0.0992147
0-6 months (no birth st.)    MAL-ED       PERU           1                    NA                0.4280714   0.2863776   0.5697652
0-6 months (no birth st.)    MAL-ED       PERU           0                    NA                0.3584433   0.2899802   0.4269064
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA   1                    NA                0.3110048   0.2481097   0.3738999
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA   0                    NA                0.4000000   0.1848264   0.6151736
0-6 months (no birth st.)    NIH-Birth    BANGLADESH     1                    NA                0.2082022   0.1715911   0.2448133
0-6 months (no birth st.)    NIH-Birth    BANGLADESH     0                    NA                0.3861485   0.2605247   0.5117723
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH     1                    NA                0.1722954   0.1393289   0.2052619
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH     0                    NA                0.2493295   0.1797729   0.3188861
0-6 months (no birth st.)    PROVIDE      BANGLADESH     1                    NA                0.1523233   0.1228074   0.1818393
0-6 months (no birth st.)    PROVIDE      BANGLADESH     0                    NA                0.1877294   0.1003506   0.2751081
6-24 months                  GMS-Nepal    NEPAL          1                    NA                0.4747470   0.3485992   0.6008948
6-24 months                  GMS-Nepal    NEPAL          0                    NA                0.5775429   0.5160268   0.6390591
6-24 months                  JiVitA-3     BANGLADESH     1                    NA                0.2646211   0.2283878   0.3008545
6-24 months                  JiVitA-3     BANGLADESH     0                    NA                0.2163407   0.2064243   0.2262571
6-24 months                  JiVitA-4     BANGLADESH     1                    NA                0.2339545   0.1758693   0.2920397
6-24 months                  JiVitA-4     BANGLADESH     0                    NA                0.3898725   0.3688265   0.4109184
6-24 months                  MAL-ED       BANGLADESH     1                    NA                0.4275862   0.3468051   0.5083673
6-24 months                  MAL-ED       BANGLADESH     0                    NA                0.3846154   0.1193126   0.6499181
6-24 months                  MAL-ED       NEPAL          1                    NA                0.1561242   0.0787396   0.2335088
6-24 months                  MAL-ED       NEPAL          0                    NA                0.2533527   0.1690479   0.3376576
6-24 months                  MAL-ED       PERU           1                    NA                0.2500000   0.0890719   0.4109281
6-24 months                  MAL-ED       PERU           0                    NA                0.4297521   0.3412490   0.5182552
6-24 months                  MAL-ED       SOUTH AFRICA   1                    NA                0.3706294   0.2912132   0.4500455
6-24 months                  MAL-ED       SOUTH AFRICA   0                    NA                0.4166667   0.1368228   0.6965105
6-24 months                  NIH-Birth    BANGLADESH     1                    NA                0.5628931   0.5082955   0.6174907
6-24 months                  NIH-Birth    BANGLADESH     0                    NA                0.6923077   0.5146429   0.8699725
6-24 months                  NIH-Crypto   BANGLADESH     1                    NA                0.2639756   0.2201483   0.3078030
6-24 months                  NIH-Crypto   BANGLADESH     0                    NA                0.2440806   0.1617763   0.3263849
6-24 months                  PROVIDE      BANGLADESH     1                    NA                0.2960678   0.2526110   0.3395246
6-24 months                  PROVIDE      BANGLADESH     0                    NA                0.3712159   0.1863510   0.5560808


### Parameter: E(Y)


agecat                       studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal    NEPAL          NA                   NA                0.5629139   0.5171858   0.6086420
0-24 months (no birth st.)   JiVitA-3     BANGLADESH     NA                   NA                0.2521692   0.2444469   0.2598915
0-24 months (no birth st.)   JiVitA-4     BANGLADESH     NA                   NA                0.4143005   0.3961166   0.4324844
0-24 months (no birth st.)   MAL-ED       BANGLADESH     NA                   NA                0.5418719   0.4731628   0.6105810
0-24 months (no birth st.)   MAL-ED       NEPAL          NA                   NA                0.2574257   0.1969827   0.3178687
0-24 months (no birth st.)   MAL-ED       PERU           NA                   NA                0.6176471   0.5557776   0.6795165
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA   NA                   NA                0.5720524   0.5078289   0.6362759
0-24 months (no birth st.)   NIH-Birth    BANGLADESH     NA                   NA                0.6011342   0.5593675   0.6429009
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   PROVIDE      BANGLADESH     NA                   NA                0.3759874   0.3382238   0.4137509
0-6 months (no birth st.)    GMS-Nepal    NEPAL          NA                   NA                0.1743929   0.1394121   0.2093738
0-6 months (no birth st.)    JiVitA-3     BANGLADESH     NA                   NA                0.1301898   0.1246228   0.1357568
0-6 months (no birth st.)    JiVitA-4     BANGLADESH     NA                   NA                0.0854560   0.0740923   0.0968198
0-6 months (no birth st.)    MAL-ED       PERU           NA                   NA                0.3697479   0.3082891   0.4312067
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA   NA                   NA                0.3187773   0.2582893   0.3792652
0-6 months (no birth st.)    NIH-Birth    BANGLADESH     NA                   NA                0.2287335   0.1929075   0.2645595
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    PROVIDE      BANGLADESH     NA                   NA                0.1595577   0.1310079   0.1881074
6-24 months                  GMS-Nepal    NEPAL          NA                   NA                0.5552050   0.5004138   0.6099963
6-24 months                  JiVitA-3     BANGLADESH     NA                   NA                0.2161001   0.2067207   0.2254795
6-24 months                  JiVitA-4     BANGLADESH     NA                   NA                0.3782597   0.3596753   0.3968440
6-24 months                  MAL-ED       BANGLADESH     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months                  MAL-ED       NEPAL          NA                   NA                0.2074468   0.1493309   0.2655627
6-24 months                  MAL-ED       PERU           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months                  MAL-ED       SOUTH AFRICA   NA                   NA                0.3741935   0.2977649   0.4506221
6-24 months                  NIH-Birth    BANGLADESH     NA                   NA                0.5726744   0.5203223   0.6250266
6-24 months                  NIH-Crypto   BANGLADESH     NA                   NA                0.2628459   0.2244546   0.3012371
6-24 months                  PROVIDE      BANGLADESH     NA                   NA                0.3004386   0.2583143   0.3425629


### Parameter: RR


agecat                       studyid      country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -----------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   GMS-Nepal    NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   GMS-Nepal    NEPAL          0                    1                 1.1297349   0.8981548   1.421026
0-24 months (no birth st.)   JiVitA-3     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-3     BANGLADESH     0                    1                 0.9033695   0.8202367   0.994928
0-24 months (no birth st.)   JiVitA-4     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-4     BANGLADESH     0                    1                 1.3902342   1.1344448   1.703698
0-24 months (no birth st.)   MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED       BANGLADESH     0                    1                 0.9749563   0.6103754   1.557304
0-24 months (no birth st.)   MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED       NEPAL          0                    1                 1.8405384   1.1214492   3.020718
0-24 months (no birth st.)   MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED       PERU           0                    1                 1.1389732   0.8680500   1.494453
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA   0                    1                 1.1512712   0.8164327   1.623435
0-24 months (no birth st.)   NIH-Birth    BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Birth    BANGLADESH     0                    1                 1.1132985   0.9201874   1.346936
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH     0                    1                 1.1649644   0.9279431   1.462527
0-24 months (no birth st.)   PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   PROVIDE      BANGLADESH     0                    1                 1.2930101   0.9576888   1.745740
0-6 months (no birth st.)    GMS-Nepal    NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    GMS-Nepal    NEPAL          0                    1                 1.2029107   0.6668314   2.169955
0-6 months (no birth st.)    JiVitA-3     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-3     BANGLADESH     0                    1                 0.9849479   0.8336836   1.163658
0-6 months (no birth st.)    JiVitA-4     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-4     BANGLADESH     0                    1                 1.1852392   0.7107195   1.976577
0-6 months (no birth st.)    MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED       PERU           0                    1                 0.8373447   0.5711289   1.227650
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA   0                    1                 1.2861538   0.7239480   2.284959
0-6 months (no birth st.)    NIH-Birth    BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Birth    BANGLADESH     0                    1                 1.8546803   1.2838021   2.679416
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH     0                    1                 1.4471049   1.0333609   2.026507
0-6 months (no birth st.)    PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    PROVIDE      BANGLADESH     0                    1                 1.2324398   0.7458481   2.036484
6-24 months                  GMS-Nepal    NEPAL          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  GMS-Nepal    NEPAL          0                    1                 1.2165278   0.9130685   1.620842
6-24 months                  JiVitA-3     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-3     BANGLADESH     0                    1                 0.8175487   0.7092538   0.942379
6-24 months                  JiVitA-4     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-4     BANGLADESH     0                    1                 1.6664456   1.2930816   2.147615
6-24 months                  MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED       BANGLADESH     0                    1                 0.8995037   0.4399460   1.839105
6-24 months                  MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED       NEPAL          0                    1                 1.6227639   0.8916638   2.953314
6-24 months                  MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED       PERU           0                    1                 1.7190083   0.8744979   3.379070
6-24 months                  MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED       SOUTH AFRICA   0                    1                 1.1242138   0.5554961   2.275186
6-24 months                  NIH-Birth    BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  NIH-Birth    BANGLADESH     0                    1                 1.2299098   0.9348170   1.618154
6-24 months                  NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  NIH-Crypto   BANGLADESH     0                    1                 0.9246331   0.6350867   1.346188
6-24 months                  PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  PROVIDE      BANGLADESH     0                    1                 1.2538204   0.7458361   2.107789


### Parameter: PAR


agecat                       studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   GMS-Nepal    NEPAL          1                    NA                 0.0375898   -0.0644840    0.1396637
0-24 months (no birth st.)   JiVitA-3     BANGLADESH     1                    NA                -0.0280492   -0.0536428   -0.0024557
0-24 months (no birth st.)   JiVitA-4     BANGLADESH     1                    NA                 0.1093173    0.0498518    0.1687828
0-24 months (no birth st.)   MAL-ED       BANGLADESH     1                    NA                -0.0011388   -0.0219512    0.0196735
0-24 months (no birth st.)   MAL-ED       NEPAL          1                    NA                 0.0725145    0.0040178    0.1410113
0-24 months (no birth st.)   MAL-ED       PERU           1                    NA                 0.0667383   -0.0557569    0.1892335
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA   1                    NA                 0.0074591   -0.0120133    0.0269315
0-24 months (no birth st.)   NIH-Birth    BANGLADESH     1                    NA                 0.0105066   -0.0033722    0.0243854
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH     1                    NA                 0.0204774    0.0004251    0.0405297
0-24 months (no birth st.)   PROVIDE      BANGLADESH     1                    NA                 0.0090891   -0.0027436    0.0209218
0-6 months (no birth st.)    GMS-Nepal    NEPAL          1                    NA                 0.0246187   -0.0515470    0.1007843
0-6 months (no birth st.)    JiVitA-3     BANGLADESH     1                    NA                -0.0029847   -0.0243914    0.0184220
0-6 months (no birth st.)    JiVitA-4     BANGLADESH     1                    NA                 0.0122261   -0.0233123    0.0477645
0-6 months (no birth st.)    MAL-ED       PERU           1                    NA                -0.0583235   -0.1845269    0.0678799
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA   1                    NA                 0.0077725   -0.0120761    0.0276211
0-6 months (no birth st.)    NIH-Birth    BANGLADESH     1                    NA                 0.0205313    0.0053979    0.0356647
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH     1                    NA                 0.0175974   -0.0000660    0.0352608
0-6 months (no birth st.)    PROVIDE      BANGLADESH     1                    NA                 0.0072343   -0.0033656    0.0178343
6-24 months                  GMS-Nepal    NEPAL          1                    NA                 0.0804580   -0.0326572    0.1935732
6-24 months                  JiVitA-3     BANGLADESH     1                    NA                -0.0485211   -0.0839050   -0.0131372
6-24 months                  JiVitA-4     BANGLADESH     1                    NA                 0.1443052    0.0872789    0.2013314
6-24 months                  MAL-ED       BANGLADESH     1                    NA                -0.0035356   -0.0264284    0.0193572
6-24 months                  MAL-ED       NEPAL          1                    NA                 0.0513226   -0.0119876    0.1146328
6-24 months                  MAL-ED       PERU           1                    NA                 0.1459732   -0.0036013    0.2955476
6-24 months                  MAL-ED       SOUTH AFRICA   1                    NA                 0.0035642   -0.0190404    0.0261687
6-24 months                  NIH-Birth    BANGLADESH     1                    NA                 0.0097813   -0.0047255    0.0242882
6-24 months                  NIH-Crypto   BANGLADESH     1                    NA                -0.0011298   -0.0219906    0.0197310
6-24 months                  PROVIDE      BANGLADESH     1                    NA                 0.0043708   -0.0075536    0.0162952


### Parameter: PAF


agecat                       studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   GMS-Nepal    NEPAL          1                    NA                 0.0667772   -0.1333705    0.2315798
0-24 months (no birth st.)   JiVitA-3     BANGLADESH     1                    NA                -0.1112318   -0.2179327   -0.0138788
0-24 months (no birth st.)   JiVitA-4     BANGLADESH     1                    NA                 0.2638599    0.1069786    0.3931811
0-24 months (no birth st.)   MAL-ED       BANGLADESH     1                    NA                -0.0021017   -0.0412568    0.0355811
0-24 months (no birth st.)   MAL-ED       NEPAL          1                    NA                 0.2816911   -0.0249517    0.4965932
0-24 months (no birth st.)   MAL-ED       PERU           1                    NA                 0.1080524   -0.1145069    0.2861682
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA   1                    NA                 0.0130392   -0.0216475    0.0465482
0-24 months (no birth st.)   NIH-Birth    BANGLADESH     1                    NA                 0.0174779   -0.0059616    0.0403714
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH     1                    NA                 0.0520301   -0.0001811    0.1015157
0-24 months (no birth st.)   PROVIDE      BANGLADESH     1                    NA                 0.0241739   -0.0078475    0.0551779
0-6 months (no birth st.)    GMS-Nepal    NEPAL          1                    NA                 0.1411678   -0.4271923    0.4831862
0-6 months (no birth st.)    JiVitA-3     BANGLADESH     1                    NA                -0.0229256   -0.2013680    0.1290122
0-6 months (no birth st.)    JiVitA-4     BANGLADESH     1                    NA                 0.1430689   -0.3889621    0.4713096
0-6 months (no birth st.)    MAL-ED       PERU           1                    NA                -0.1577385   -0.5552135    0.1381514
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA   1                    NA                 0.0243823   -0.0398964    0.0846877
0-6 months (no birth st.)    NIH-Birth    BANGLADESH     1                    NA                 0.0897607    0.0219333    0.1528844
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH     1                    NA                 0.0926702   -0.0045524    0.1804835
0-6 months (no birth st.)    PROVIDE      BANGLADESH     1                    NA                 0.0453398   -0.0231818    0.1092726
6-24 months                  GMS-Nepal    NEPAL          1                    NA                 0.1449159   -0.0859457    0.3266985
6-24 months                  JiVitA-3     BANGLADESH     1                    NA                -0.2245306   -0.4005066   -0.0706662
6-24 months                  JiVitA-4     BANGLADESH     1                    NA                 0.3814976    0.2118130    0.5146518
6-24 months                  MAL-ED       BANGLADESH     1                    NA                -0.0083376   -0.0638059    0.0442385
6-24 months                  MAL-ED       NEPAL          1                    NA                 0.2474013   -0.1209731    0.4947205
6-24 months                  MAL-ED       PERU           1                    NA                 0.3686441   -0.1462161    0.6522381
6-24 months                  MAL-ED       SOUTH AFRICA   1                    NA                 0.0095250   -0.0527700    0.0681338
6-24 months                  NIH-Birth    BANGLADESH     1                    NA                 0.0170801   -0.0086615    0.0421648
6-24 months                  NIH-Crypto   BANGLADESH     1                    NA                -0.0042983   -0.0868814    0.0720100
6-24 months                  PROVIDE      BANGLADESH     1                    NA                 0.0145480   -0.0259472    0.0534448
