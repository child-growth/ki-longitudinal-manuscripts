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

unadjusted

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/866bcd8f-6865-49aa-bdfc-ab55368d7056/8a7feea2-f919-4e54-8597-e094d13245bf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/866bcd8f-6865-49aa-bdfc-ab55368d7056/8a7feea2-f919-4e54-8597-e094d13245bf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/866bcd8f-6865-49aa-bdfc-ab55368d7056/8a7feea2-f919-4e54-8597-e094d13245bf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/866bcd8f-6865-49aa-bdfc-ab55368d7056/8a7feea2-f919-4e54-8597-e094d13245bf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal    NEPAL          1                    NA                0.4565217   0.3546260   0.5584174
0-24 months (no birth st.)   GMS-Nepal    NEPAL          0                    NA                0.5900277   0.5392366   0.6408188
0-24 months (no birth st.)   JiVitA-3     BANGLADESH     1                    NA                0.1686820   0.1477051   0.1896589
0-24 months (no birth st.)   JiVitA-3     BANGLADESH     0                    NA                0.2604523   0.2523784   0.2685262
0-24 months (no birth st.)   JiVitA-4     BANGLADESH     1                    NA                0.2990291   0.2552764   0.3427819
0-24 months (no birth st.)   JiVitA-4     BANGLADESH     0                    NA                0.4319738   0.4121518   0.4517958
0-24 months (no birth st.)   MAL-ED       BANGLADESH     1                    NA                0.5430108   0.4712444   0.6147772
0-24 months (no birth st.)   MAL-ED       BANGLADESH     0                    NA                0.5294118   0.2915562   0.7672673
0-24 months (no birth st.)   MAL-ED       NEPAL          1                    NA                0.1627907   0.0845724   0.2410090
0-24 months (no birth st.)   MAL-ED       NEPAL          0                    NA                0.3275862   0.2419657   0.4132067
0-24 months (no birth st.)   MAL-ED       PERU           1                    NA                0.5625000   0.4218654   0.7031346
0-24 months (no birth st.)   MAL-ED       PERU           0                    NA                0.6315789   0.5628449   0.7003130
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA   1                    NA                0.5645933   0.4972273   0.6319593
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA   0                    NA                0.6500000   0.4405048   0.8594952
0-24 months (no birth st.)   NIH-Birth    BANGLADESH     1                    NA                0.5884861   0.5439069   0.6330654
0-24 months (no birth st.)   NIH-Birth    BANGLADESH     0                    NA                0.7000000   0.5839372   0.8160628
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH     1                    NA                0.3812375   0.3386755   0.4237995
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH     0                    NA                0.4342105   0.3553542   0.5130669
0-24 months (no birth st.)   PROVIDE      BANGLADESH     1                    NA                0.3685121   0.3291539   0.4078704
0-24 months (no birth st.)   PROVIDE      BANGLADESH     0                    NA                0.4545455   0.3228478   0.5862431
0-6 months (no birth st.)    GMS-Nepal    NEPAL          1                    NA                0.1304348   0.0615407   0.1993289
0-6 months (no birth st.)    GMS-Nepal    NEPAL          0                    NA                0.1855956   0.1454462   0.2257449
0-6 months (no birth st.)    JiVitA-3     BANGLADESH     1                    NA                0.0759417   0.0614372   0.0904461
0-6 months (no birth st.)    JiVitA-3     BANGLADESH     0                    NA                0.1355576   0.1296904   0.1414247
0-6 months (no birth st.)    JiVitA-4     BANGLADESH     1                    NA                0.0616016   0.0359026   0.0873007
0-6 months (no birth st.)    JiVitA-4     BANGLADESH     0                    NA                0.0891277   0.0766684   0.1015870
0-6 months (no birth st.)    MAL-ED       PERU           1                    NA                0.4166667   0.2769029   0.5564304
0-6 months (no birth st.)    MAL-ED       PERU           0                    NA                0.3578947   0.2895876   0.4262019
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA   1                    NA                0.3110048   0.2481097   0.3738999
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA   0                    NA                0.4000000   0.1848264   0.6151736
0-6 months (no birth st.)    NIH-Birth    BANGLADESH     1                    NA                0.2068230   0.1701322   0.2435138
0-6 months (no birth st.)    NIH-Birth    BANGLADESH     0                    NA                0.4000000   0.2759237   0.5240763
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH     1                    NA                0.1736527   0.1404568   0.2068486
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH     0                    NA                0.2434211   0.1751455   0.3116966
0-6 months (no birth st.)    PROVIDE      BANGLADESH     1                    NA                0.1505190   0.1213448   0.1796933
0-6 months (no birth st.)    PROVIDE      BANGLADESH     0                    NA                0.2545455   0.1393320   0.3697589
6-24 months                  GMS-Nepal    NEPAL          1                    NA                0.4545455   0.3342276   0.5748633
6-24 months                  GMS-Nepal    NEPAL          0                    NA                0.5816733   0.5205517   0.6427949
6-24 months                  JiVitA-3     BANGLADESH     1                    NA                0.1443015   0.1211086   0.1674944
6-24 months                  JiVitA-3     BANGLADESH     0                    NA                0.2244246   0.2145350   0.2343142
6-24 months                  JiVitA-4     BANGLADESH     1                    NA                0.2587992   0.2111584   0.3064400
6-24 months                  JiVitA-4     BANGLADESH     0                    NA                0.3965190   0.3764032   0.4166348
6-24 months                  MAL-ED       BANGLADESH     1                    NA                0.4275862   0.3468051   0.5083673
6-24 months                  MAL-ED       BANGLADESH     0                    NA                0.3846154   0.1193126   0.6499181
6-24 months                  MAL-ED       NEPAL          1                    NA                0.1547619   0.0772108   0.2323130
6-24 months                  MAL-ED       NEPAL          0                    NA                0.2500000   0.1665569   0.3334431
6-24 months                  MAL-ED       PERU           1                    NA                0.2500000   0.0890719   0.4109281
6-24 months                  MAL-ED       PERU           0                    NA                0.4297521   0.3412490   0.5182552
6-24 months                  MAL-ED       SOUTH AFRICA   1                    NA                0.3706294   0.2912132   0.4500455
6-24 months                  MAL-ED       SOUTH AFRICA   0                    NA                0.4166667   0.1368228   0.6965105
6-24 months                  NIH-Birth    BANGLADESH     1                    NA                0.5628931   0.5082955   0.6174907
6-24 months                  NIH-Birth    BANGLADESH     0                    NA                0.6923077   0.5146429   0.8699725
6-24 months                  NIH-Crypto   BANGLADESH     1                    NA                0.2659847   0.2221447   0.3098246
6-24 months                  NIH-Crypto   BANGLADESH     0                    NA                0.2521739   0.1727266   0.3316212
6-24 months                  PROVIDE      BANGLADESH     1                    NA                0.2957746   0.2523880   0.3391613
6-24 months                  PROVIDE      BANGLADESH     0                    NA                0.3666667   0.1940367   0.5392966


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
6-24 months                  NIH-Crypto   BANGLADESH     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  PROVIDE      BANGLADESH     NA                   NA                0.3004386   0.2583143   0.3425629


### Parameter: RR


agecat                       studyid      country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -----------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   GMS-Nepal    NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   GMS-Nepal    NEPAL          0                    1                 1.2924416   1.0174590   1.641742
0-24 months (no birth st.)   JiVitA-3     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-3     BANGLADESH     0                    1                 1.5440433   1.3598904   1.753134
0-24 months (no birth st.)   JiVitA-4     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-4     BANGLADESH     0                    1                 1.4445877   1.2386121   1.684816
0-24 months (no birth st.)   MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED       BANGLADESH     0                    1                 0.9749563   0.6103754   1.557304
0-24 months (no birth st.)   MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED       NEPAL          0                    1                 2.0123153   1.1645263   3.477305
0-24 months (no birth st.)   MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED       PERU           0                    1                 1.1228070   0.8548372   1.474779
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA   0                    1                 1.1512712   0.8164327   1.623435
0-24 months (no birth st.)   NIH-Birth    BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Birth    BANGLADESH     0                    1                 1.1894928   0.9912759   1.427345
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH     0                    1                 1.1389501   0.9202843   1.409572
0-24 months (no birth st.)   PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   PROVIDE      BANGLADESH     0                    1                 1.2334614   0.9057710   1.679704
0-6 months (no birth st.)    GMS-Nepal    NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    GMS-Nepal    NEPAL          0                    1                 1.4228994   0.8040654   2.518007
0-6 months (no birth st.)    JiVitA-3     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-3     BANGLADESH     0                    1                 1.7850219   1.4693297   2.168542
0-6 months (no birth st.)    JiVitA-4     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-4     BANGLADESH     0                    1                 1.4468394   0.9324345   2.245031
0-6 months (no birth st.)    MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED       PERU           0                    1                 0.8589474   0.5839278   1.263496
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA   0                    1                 1.2861538   0.7239480   2.284959
0-6 months (no birth st.)    NIH-Birth    BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Birth    BANGLADESH     0                    1                 1.9340206   1.3529183   2.764717
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH     0                    1                 1.4017695   0.9983049   1.968294
0-6 months (no birth st.)    PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    PROVIDE      BANGLADESH     0                    1                 1.6911181   1.0335621   2.767014
6-24 months                  GMS-Nepal    NEPAL          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  GMS-Nepal    NEPAL          0                    1                 1.2796813   0.9625374   1.701320
6-24 months                  JiVitA-3     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-3     BANGLADESH     0                    1                 1.5552479   1.3196401   1.832921
6-24 months                  JiVitA-4     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-4     BANGLADESH     0                    1                 1.5321494   1.2660522   1.854175
6-24 months                  MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED       BANGLADESH     0                    1                 0.8995037   0.4399460   1.839105
6-24 months                  MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED       NEPAL          0                    1                 1.6153846   0.8846966   2.949562
6-24 months                  MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED       PERU           0                    1                 1.7190083   0.8744979   3.379070
6-24 months                  MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED       SOUTH AFRICA   0                    1                 1.1242138   0.5554961   2.275186
6-24 months                  NIH-Birth    BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  NIH-Birth    BANGLADESH     0                    1                 1.2299098   0.9348170   1.618154
6-24 months                  NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  NIH-Crypto   BANGLADESH     0                    1                 0.9480769   0.6643947   1.352885
6-24 months                  PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  PROVIDE      BANGLADESH     0                    1                 1.2396825   0.7570879   2.029900


### Parameter: PAR


agecat                       studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   GMS-Nepal    NEPAL          1                    NA                 0.1063922    0.0155267   0.1972576
0-24 months (no birth st.)   JiVitA-3     BANGLADESH     1                    NA                 0.0834872    0.0632179   0.1037565
0-24 months (no birth st.)   JiVitA-4     BANGLADESH     1                    NA                 0.1152713    0.0733401   0.1572026
0-24 months (no birth st.)   MAL-ED       BANGLADESH     1                    NA                -0.0011388   -0.0219512   0.0196735
0-24 months (no birth st.)   MAL-ED       NEPAL          1                    NA                 0.0946350    0.0270926   0.1621775
0-24 months (no birth st.)   MAL-ED       PERU           1                    NA                 0.0551471   -0.0698657   0.1801598
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA   1                    NA                 0.0074591   -0.0120133   0.0269315
0-24 months (no birth st.)   NIH-Birth    BANGLADESH     1                    NA                 0.0126481   -0.0017726   0.0270687
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH     1                    NA                 0.0123306   -0.0085986   0.0332598
0-24 months (no birth st.)   PROVIDE      BANGLADESH     1                    NA                 0.0074753   -0.0046163   0.0195668
0-6 months (no birth st.)    GMS-Nepal    NEPAL          1                    NA                 0.0439582   -0.0196198   0.1075361
0-6 months (no birth st.)    JiVitA-3     BANGLADESH     1                    NA                 0.0542481    0.0401038   0.0683925
0-6 months (no birth st.)    JiVitA-4     BANGLADESH     1                    NA                 0.0238544   -0.0008696   0.0485784
0-6 months (no birth st.)    MAL-ED       PERU           1                    NA                -0.0469188   -0.1711438   0.0773063
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA   1                    NA                 0.0077725   -0.0120761   0.0276211
0-6 months (no birth st.)    NIH-Birth    BANGLADESH     1                    NA                 0.0219104    0.0063327   0.0374882
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH     1                    NA                 0.0162401   -0.0015758   0.0340560
0-6 months (no birth st.)    PROVIDE      BANGLADESH     1                    NA                 0.0090386   -0.0015376   0.0196149
6-24 months                  GMS-Nepal    NEPAL          1                    NA                 0.1006596   -0.0063472   0.2076664
6-24 months                  JiVitA-3     BANGLADESH     1                    NA                 0.0717986    0.0496098   0.0939874
6-24 months                  JiVitA-4     BANGLADESH     1                    NA                 0.1194605    0.0744922   0.1644288
6-24 months                  MAL-ED       BANGLADESH     1                    NA                -0.0035356   -0.0264284   0.0193572
6-24 months                  MAL-ED       NEPAL          1                    NA                 0.0526849   -0.0106970   0.1160668
6-24 months                  MAL-ED       PERU           1                    NA                 0.1459732   -0.0036013   0.2955476
6-24 months                  MAL-ED       SOUTH AFRICA   1                    NA                 0.0035642   -0.0190404   0.0261687
6-24 months                  NIH-Birth    BANGLADESH     1                    NA                 0.0097813   -0.0047255   0.0242882
6-24 months                  NIH-Crypto   BANGLADESH     1                    NA                -0.0031388   -0.0237678   0.0174902
6-24 months                  PROVIDE      BANGLADESH     1                    NA                 0.0046639   -0.0071573   0.0164852


### Parameter: PAF


agecat                       studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   GMS-Nepal    NEPAL          1                    NA                 0.1890026    0.0094291   0.3360225
0-24 months (no birth st.)   JiVitA-3     BANGLADESH     1                    NA                 0.3310761    0.2460593   0.4065061
0-24 months (no birth st.)   JiVitA-4     BANGLADESH     1                    NA                 0.2782313    0.1703448   0.3720884
0-24 months (no birth st.)   MAL-ED       BANGLADESH     1                    NA                -0.0021017   -0.0412568   0.0355811
0-24 months (no birth st.)   MAL-ED       NEPAL          1                    NA                 0.3676208    0.0546195   0.5769920
0-24 months (no birth st.)   MAL-ED       PERU           1                    NA                 0.0892857   -0.1378493   0.2710806
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA   1                    NA                 0.0130392   -0.0216475   0.0465482
0-24 months (no birth st.)   NIH-Birth    BANGLADESH     1                    NA                 0.0210404   -0.0033339   0.0448225
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH     1                    NA                 0.0313303   -0.0233573   0.0830955
0-24 months (no birth st.)   PROVIDE      BANGLADESH     1                    NA                 0.0198817   -0.0128227   0.0515300
0-6 months (no birth st.)    GMS-Nepal    NEPAL          1                    NA                 0.2520638   -0.2138247   0.5391357
0-6 months (no birth st.)    JiVitA-3     BANGLADESH     1                    NA                 0.4166850    0.2983259   0.5150791
0-6 months (no birth st.)    JiVitA-4     BANGLADESH     1                    NA                 0.2791423   -0.0725020   0.5154920
0-6 months (no birth st.)    MAL-ED       PERU           1                    NA                -0.1268939   -0.5186086   0.1637806
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA   1                    NA                 0.0243823   -0.0398964   0.0846877
0-6 months (no birth st.)    NIH-Birth    BANGLADESH     1                    NA                 0.0957902    0.0258859   0.1606781
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH     1                    NA                 0.0855225   -0.0126579   0.1741840
0-6 months (no birth st.)    PROVIDE      BANGLADESH     1                    NA                 0.0566481   -0.0114856   0.1201923
6-24 months                  GMS-Nepal    NEPAL          1                    NA                 0.1813017   -0.0371036   0.3537126
6-24 months                  JiVitA-3     BANGLADESH     1                    NA                 0.3322470    0.2217871   0.4270282
6-24 months                  JiVitA-4     BANGLADESH     1                    NA                 0.3158161    0.1858569   0.4250303
6-24 months                  MAL-ED       BANGLADESH     1                    NA                -0.0083376   -0.0638059   0.0442385
6-24 months                  MAL-ED       NEPAL          1                    NA                 0.2539683   -0.1159799   0.5012783
6-24 months                  MAL-ED       PERU           1                    NA                 0.3686441   -0.1462161   0.6522381
6-24 months                  MAL-ED       SOUTH AFRICA   1                    NA                 0.0095250   -0.0527700   0.0681338
6-24 months                  NIH-Birth    BANGLADESH     1                    NA                 0.0170801   -0.0086615   0.0421648
6-24 months                  NIH-Crypto   BANGLADESH     1                    NA                -0.0119416   -0.0935427   0.0635703
6-24 months                  PROVIDE      BANGLADESH     1                    NA                 0.0155238   -0.0246101   0.0540856
