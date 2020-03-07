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

**Intervention Variable:** impsan

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
* impfloor
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
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid      country                        impsan    ever_stunted   n_cell       n
---------------------------  -----------  -----------------------------  -------  -------------  -------  ------
0-24 months (no birth st.)   COHORTS      GUATEMALA                      1                    0       16     635
0-24 months (no birth st.)   COHORTS      GUATEMALA                      1                    1       49     635
0-24 months (no birth st.)   COHORTS      GUATEMALA                      0                    0      104     635
0-24 months (no birth st.)   COHORTS      GUATEMALA                      0                    1      466     635
0-24 months (no birth st.)   COHORTS      INDIA                          1                    0     1423    4715
0-24 months (no birth st.)   COHORTS      INDIA                          1                    1      389    4715
0-24 months (no birth st.)   COHORTS      INDIA                          0                    0     1871    4715
0-24 months (no birth st.)   COHORTS      INDIA                          0                    1     1032    4715
0-24 months (no birth st.)   COHORTS      PHILIPPINES                    1                    0      102    1115
0-24 months (no birth st.)   COHORTS      PHILIPPINES                    1                    1       75    1115
0-24 months (no birth st.)   COHORTS      PHILIPPINES                    0                    0      207    1115
0-24 months (no birth st.)   COHORTS      PHILIPPINES                    0                    1      731    1115
0-24 months (no birth st.)   CONTENT      PERU                           1                    0      154     195
0-24 months (no birth st.)   CONTENT      PERU                           1                    1       29     195
0-24 months (no birth st.)   CONTENT      PERU                           0                    0        8     195
0-24 months (no birth st.)   CONTENT      PERU                           0                    1        4     195
0-24 months (no birth st.)   JiVitA-3     BANGLADESH                     1                    0    10052   18353
0-24 months (no birth st.)   JiVitA-3     BANGLADESH                     1                    1     3074   18353
0-24 months (no birth st.)   JiVitA-3     BANGLADESH                     0                    0     3669   18353
0-24 months (no birth st.)   JiVitA-3     BANGLADESH                     0                    1     1558   18353
0-24 months (no birth st.)   JiVitA-4     BANGLADESH                     1                    0     1830    3875
0-24 months (no birth st.)   JiVitA-4     BANGLADESH                     1                    1     1217    3875
0-24 months (no birth st.)   JiVitA-4     BANGLADESH                     0                    0      439    3875
0-24 months (no birth st.)   JiVitA-4     BANGLADESH                     0                    1      389    3875
0-24 months (no birth st.)   LCNI-5       MALAWI                         1                    0        2     518
0-24 months (no birth st.)   LCNI-5       MALAWI                         1                    1        0     518
0-24 months (no birth st.)   LCNI-5       MALAWI                         0                    0      293     518
0-24 months (no birth st.)   LCNI-5       MALAWI                         0                    1      223     518
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     1                    0       82     203
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     1                    1       88     203
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     0                    0       11     203
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     0                    1       22     203
0-24 months (no birth st.)   MAL-ED       BRAZIL                         1                    0      151     185
0-24 months (no birth st.)   MAL-ED       BRAZIL                         1                    1       30     185
0-24 months (no birth st.)   MAL-ED       BRAZIL                         0                    0        3     185
0-24 months (no birth st.)   MAL-ED       BRAZIL                         0                    1        1     185
0-24 months (no birth st.)   MAL-ED       INDIA                          1                    0       44     196
0-24 months (no birth st.)   MAL-ED       INDIA                          1                    1       44     196
0-24 months (no birth st.)   MAL-ED       INDIA                          0                    0       45     196
0-24 months (no birth st.)   MAL-ED       INDIA                          0                    1       63     196
0-24 months (no birth st.)   MAL-ED       NEPAL                          1                    0      153     208
0-24 months (no birth st.)   MAL-ED       NEPAL                          1                    1       54     208
0-24 months (no birth st.)   MAL-ED       NEPAL                          0                    0        1     208
0-24 months (no birth st.)   MAL-ED       NEPAL                          0                    1        0     208
0-24 months (no birth st.)   MAL-ED       PERU                           1                    0       26     231
0-24 months (no birth st.)   MAL-ED       PERU                           1                    1       31     231
0-24 months (no birth st.)   MAL-ED       PERU                           0                    0       63     231
0-24 months (no birth st.)   MAL-ED       PERU                           0                    1      111     231
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA                   1                    0        3     225
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA                   1                    1        1     225
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA                   0                    0       93     225
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA                   0                    1      128     225
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     202
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     202
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0       30     202
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1      172     202
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     1                    0       92     530
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     1                    1      111     530
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     0                    0      119     530
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     0                    1      208     530
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     1                    0      341     643
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     1                    1      228     643
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     0                    0       50     643
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     0                    1       24     643
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     1                    0       48      58
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     1                    1        8      58
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     0                    0        2      58
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     0                    1        0      58
0-6 months (no birth st.)    COHORTS      GUATEMALA                      1                    0       48     565
0-6 months (no birth st.)    COHORTS      GUATEMALA                      1                    1       12     565
0-6 months (no birth st.)    COHORTS      GUATEMALA                      0                    0      379     565
0-6 months (no birth st.)    COHORTS      GUATEMALA                      0                    1      126     565
0-6 months (no birth st.)    COHORTS      INDIA                          1                    0     1641    4569
0-6 months (no birth st.)    COHORTS      INDIA                          1                    1       91    4569
0-6 months (no birth st.)    COHORTS      INDIA                          0                    0     2570    4569
0-6 months (no birth st.)    COHORTS      INDIA                          0                    1      267    4569
0-6 months (no birth st.)    COHORTS      PHILIPPINES                    1                    0      162    1115
0-6 months (no birth st.)    COHORTS      PHILIPPINES                    1                    1       15    1115
0-6 months (no birth st.)    COHORTS      PHILIPPINES                    0                    0      738    1115
0-6 months (no birth st.)    COHORTS      PHILIPPINES                    0                    1      200    1115
0-6 months (no birth st.)    CONTENT      PERU                           1                    0      176     195
0-6 months (no birth st.)    CONTENT      PERU                           1                    1        7     195
0-6 months (no birth st.)    CONTENT      PERU                           0                    0       12     195
0-6 months (no birth st.)    CONTENT      PERU                           0                    1        0     195
0-6 months (no birth st.)    JiVitA-3     BANGLADESH                     1                    0    11533   18309
0-6 months (no birth st.)    JiVitA-3     BANGLADESH                     1                    1     1559   18309
0-6 months (no birth st.)    JiVitA-3     BANGLADESH                     0                    0     4389   18309
0-6 months (no birth st.)    JiVitA-3     BANGLADESH                     0                    1      828   18309
0-6 months (no birth st.)    JiVitA-4     BANGLADESH                     1                    0     2632    3651
0-6 months (no birth st.)    JiVitA-4     BANGLADESH                     1                    1      243    3651
0-6 months (no birth st.)    JiVitA-4     BANGLADESH                     0                    0      707    3651
0-6 months (no birth st.)    JiVitA-4     BANGLADESH                     0                    1       69    3651
0-6 months (no birth st.)    LCNI-5       MALAWI                         1                    0        0     174
0-6 months (no birth st.)    LCNI-5       MALAWI                         1                    1        0     174
0-6 months (no birth st.)    LCNI-5       MALAWI                         0                    0      174     174
0-6 months (no birth st.)    LCNI-5       MALAWI                         0                    1        0     174
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     1                    0      133     203
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     1                    1       37     203
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     0                    0       27     203
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     0                    1        6     203
0-6 months (no birth st.)    MAL-ED       BRAZIL                         1                    0      161     185
0-6 months (no birth st.)    MAL-ED       BRAZIL                         1                    1       20     185
0-6 months (no birth st.)    MAL-ED       BRAZIL                         0                    0        4     185
0-6 months (no birth st.)    MAL-ED       BRAZIL                         0                    1        0     185
0-6 months (no birth st.)    MAL-ED       INDIA                          1                    0       76     196
0-6 months (no birth st.)    MAL-ED       INDIA                          1                    1       12     196
0-6 months (no birth st.)    MAL-ED       INDIA                          0                    0       78     196
0-6 months (no birth st.)    MAL-ED       INDIA                          0                    1       30     196
0-6 months (no birth st.)    MAL-ED       NEPAL                          1                    0      194     208
0-6 months (no birth st.)    MAL-ED       NEPAL                          1                    1       13     208
0-6 months (no birth st.)    MAL-ED       NEPAL                          0                    0        1     208
0-6 months (no birth st.)    MAL-ED       NEPAL                          0                    1        0     208
0-6 months (no birth st.)    MAL-ED       PERU                           1                    0       41     231
0-6 months (no birth st.)    MAL-ED       PERU                           1                    1       16     231
0-6 months (no birth st.)    MAL-ED       PERU                           0                    0      106     231
0-6 months (no birth st.)    MAL-ED       PERU                           0                    1       68     231
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA                   1                    0        3     225
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA                   1                    1        1     225
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA                   0                    0      150     225
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA                   0                    1       71     225
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     202
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     202
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      139     202
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1       63     202
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     1                    0      161     530
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     1                    1       42     530
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     0                    0      248     530
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     0                    1       79     530
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     1                    0      460     643
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     1                    1      109     643
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     0                    0       63     643
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     0                    1       11     643
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     1                    0       51      58
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     1                    1        5      58
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     0                    0        2      58
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     0                    1        0      58
6-24 months                  COHORTS      GUATEMALA                      1                    0       16     626
6-24 months                  COHORTS      GUATEMALA                      1                    1       46     626
6-24 months                  COHORTS      GUATEMALA                      0                    0       99     626
6-24 months                  COHORTS      GUATEMALA                      0                    1      465     626
6-24 months                  COHORTS      INDIA                          1                    0     1329    4117
6-24 months                  COHORTS      INDIA                          1                    1      308    4117
6-24 months                  COHORTS      INDIA                          0                    0     1690    4117
6-24 months                  COHORTS      INDIA                          0                    1      790    4117
6-24 months                  COHORTS      PHILIPPINES                    1                    0       74     834
6-24 months                  COHORTS      PHILIPPINES                    1                    1       60     834
6-24 months                  COHORTS      PHILIPPINES                    0                    0      169     834
6-24 months                  COHORTS      PHILIPPINES                    0                    1      531     834
6-24 months                  CONTENT      PERU                           1                    0      154     188
6-24 months                  CONTENT      PERU                           1                    1       22     188
6-24 months                  CONTENT      PERU                           0                    0        8     188
6-24 months                  CONTENT      PERU                           0                    1        4     188
6-24 months                  JiVitA-3     BANGLADESH                     1                    0     6222   10485
6-24 months                  JiVitA-3     BANGLADESH                     1                    1     1528   10485
6-24 months                  JiVitA-3     BANGLADESH                     0                    0     1996   10485
6-24 months                  JiVitA-3     BANGLADESH                     0                    1      739   10485
6-24 months                  JiVitA-4     BANGLADESH                     1                    0     1828    3644
6-24 months                  JiVitA-4     BANGLADESH                     1                    1     1035    3644
6-24 months                  JiVitA-4     BANGLADESH                     0                    0      437    3644
6-24 months                  JiVitA-4     BANGLADESH                     0                    1      344    3644
6-24 months                  LCNI-5       MALAWI                         1                    0        2     706
6-24 months                  LCNI-5       MALAWI                         1                    1        1     706
6-24 months                  LCNI-5       MALAWI                         0                    0      281     706
6-24 months                  LCNI-5       MALAWI                         0                    1      422     706
6-24 months                  MAL-ED       BANGLADESH                     1                    0       80     158
6-24 months                  MAL-ED       BANGLADESH                     1                    1       51     158
6-24 months                  MAL-ED       BANGLADESH                     0                    0       11     158
6-24 months                  MAL-ED       BANGLADESH                     0                    1       16     158
6-24 months                  MAL-ED       BRAZIL                         1                    0      149     163
6-24 months                  MAL-ED       BRAZIL                         1                    1       10     163
6-24 months                  MAL-ED       BRAZIL                         0                    0        3     163
6-24 months                  MAL-ED       BRAZIL                         0                    1        1     163
6-24 months                  MAL-ED       INDIA                          1                    0       44     154
6-24 months                  MAL-ED       INDIA                          1                    1       32     154
6-24 months                  MAL-ED       INDIA                          0                    0       45     154
6-24 months                  MAL-ED       INDIA                          0                    1       33     154
6-24 months                  MAL-ED       NEPAL                          1                    0      152     194
6-24 months                  MAL-ED       NEPAL                          1                    1       41     194
6-24 months                  MAL-ED       NEPAL                          0                    0        1     194
6-24 months                  MAL-ED       NEPAL                          0                    1        0     194
6-24 months                  MAL-ED       PERU                           1                    0       26     147
6-24 months                  MAL-ED       PERU                           1                    1       15     147
6-24 months                  MAL-ED       PERU                           0                    0       63     147
6-24 months                  MAL-ED       PERU                           0                    1       43     147
6-24 months                  MAL-ED       SOUTH AFRICA                   1                    0        3     153
6-24 months                  MAL-ED       SOUTH AFRICA                   1                    1        0     153
6-24 months                  MAL-ED       SOUTH AFRICA                   0                    0       93     153
6-24 months                  MAL-ED       SOUTH AFRICA                   0                    1       57     153
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     137
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     137
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0       28     137
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1      109     137
6-24 months                  NIH-Birth    BANGLADESH                     1                    0       67     345
6-24 months                  NIH-Birth    BANGLADESH                     1                    1       69     345
6-24 months                  NIH-Birth    BANGLADESH                     0                    0       80     345
6-24 months                  NIH-Birth    BANGLADESH                     0                    1      129     345
6-24 months                  NIH-Crypto   BANGLADESH                     1                    0      321     500
6-24 months                  NIH-Crypto   BANGLADESH                     1                    1      119     500
6-24 months                  NIH-Crypto   BANGLADESH                     0                    0       47     500
6-24 months                  NIH-Crypto   BANGLADESH                     0                    1       13     500
6-24 months                  PROVIDE      BANGLADESH                     1                    0        3       6
6-24 months                  PROVIDE      BANGLADESH                     1                    1        3       6
6-24 months                  PROVIDE      BANGLADESH                     0                    0        0       6
6-24 months                  PROVIDE      BANGLADESH                     0                    1        0       6


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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

* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/a16e27e7-92a8-4312-aea4-d0fe6b85dd9a/e7792bb6-f419-4325-9fe9-b2841fc1d299/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a16e27e7-92a8-4312-aea4-d0fe6b85dd9a/e7792bb6-f419-4325-9fe9-b2841fc1d299/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a16e27e7-92a8-4312-aea4-d0fe6b85dd9a/e7792bb6-f419-4325-9fe9-b2841fc1d299/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a16e27e7-92a8-4312-aea4-d0fe6b85dd9a/e7792bb6-f419-4325-9fe9-b2841fc1d299/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS      GUATEMALA     1                    NA                0.7529024   0.6427975   0.8630073
0-24 months (no birth st.)   COHORTS      GUATEMALA     0                    NA                0.8149509   0.7830603   0.8468414
0-24 months (no birth st.)   COHORTS      INDIA         1                    NA                0.2585530   0.2353733   0.2817327
0-24 months (no birth st.)   COHORTS      INDIA         0                    NA                0.3262474   0.3091038   0.3433909
0-24 months (no birth st.)   COHORTS      PHILIPPINES   1                    NA                0.6681217   0.5603339   0.7759095
0-24 months (no birth st.)   COHORTS      PHILIPPINES   0                    NA                0.7620937   0.7326072   0.7915802
0-24 months (no birth st.)   JiVitA-3     BANGLADESH    1                    NA                0.2466584   0.2372120   0.2561049
0-24 months (no birth st.)   JiVitA-3     BANGLADESH    0                    NA                0.2754592   0.2572077   0.2937106
0-24 months (no birth st.)   JiVitA-4     BANGLADESH    1                    NA                0.4111209   0.3901882   0.4320537
0-24 months (no birth st.)   JiVitA-4     BANGLADESH    0                    NA                0.4196225   0.3754533   0.4637917
0-24 months (no birth st.)   MAL-ED       BANGLADESH    1                    NA                0.5189213   0.4442760   0.5935666
0-24 months (no birth st.)   MAL-ED       BANGLADESH    0                    NA                0.6168470   0.4525021   0.7811919
0-24 months (no birth st.)   MAL-ED       INDIA         1                    NA                0.4883596   0.3814994   0.5952198
0-24 months (no birth st.)   MAL-ED       INDIA         0                    NA                0.5773280   0.4856261   0.6690299
0-24 months (no birth st.)   MAL-ED       PERU          1                    NA                0.5434725   0.4099697   0.6769754
0-24 months (no birth st.)   MAL-ED       PERU          0                    NA                0.6407755   0.5695843   0.7119667
0-24 months (no birth st.)   NIH-Birth    BANGLADESH    1                    NA                0.5666644   0.4968617   0.6364671
0-24 months (no birth st.)   NIH-Birth    BANGLADESH    0                    NA                0.6242218   0.5721976   0.6762460
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH    1                    NA                0.4005499   0.3603843   0.4407155
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH    0                    NA                0.3202513   0.2123062   0.4281963
0-6 months (no birth st.)    COHORTS      GUATEMALA     1                    NA                0.1899058   0.0884982   0.2913134
0-6 months (no birth st.)    COHORTS      GUATEMALA     0                    NA                0.2509152   0.2131309   0.2886994
0-6 months (no birth st.)    COHORTS      INDIA         1                    NA                0.0658679   0.0512431   0.0804928
0-6 months (no birth st.)    COHORTS      INDIA         0                    NA                0.0844635   0.0744330   0.0944940
0-6 months (no birth st.)    COHORTS      PHILIPPINES   1                    NA                0.0839342   0.0423548   0.1255136
0-6 months (no birth st.)    COHORTS      PHILIPPINES   0                    NA                0.2128360   0.1866338   0.2390382
0-6 months (no birth st.)    JiVitA-3     BANGLADESH    1                    NA                0.1280253   0.1208879   0.1351627
0-6 months (no birth st.)    JiVitA-3     BANGLADESH    0                    NA                0.1441563   0.1301471   0.1581656
0-6 months (no birth st.)    JiVitA-4     BANGLADESH    1                    NA                0.0876648   0.0746004   0.1007291
0-6 months (no birth st.)    JiVitA-4     BANGLADESH    0                    NA                0.0722302   0.0405257   0.1039347
0-6 months (no birth st.)    MAL-ED       BANGLADESH    1                    NA                0.2176471   0.1554638   0.2798304
0-6 months (no birth st.)    MAL-ED       BANGLADESH    0                    NA                0.1818182   0.0498993   0.3137371
0-6 months (no birth st.)    MAL-ED       INDIA         1                    NA                0.1412116   0.0677457   0.2146775
0-6 months (no birth st.)    MAL-ED       INDIA         0                    NA                0.2789963   0.1937365   0.3642562
0-6 months (no birth st.)    MAL-ED       PERU          1                    NA                0.2773895   0.1583610   0.3964180
0-6 months (no birth st.)    MAL-ED       PERU          0                    NA                0.3917649   0.3183703   0.4651595
0-6 months (no birth st.)    NIH-Birth    BANGLADESH    1                    NA                0.2159696   0.1594458   0.2724935
0-6 months (no birth st.)    NIH-Birth    BANGLADESH    0                    NA                0.2354123   0.1892495   0.2815751
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH    1                    NA                0.1915749   0.1592510   0.2238988
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH    0                    NA                0.1545475   0.0712294   0.2378655
6-24 months                  COHORTS      GUATEMALA     1                    NA                0.7512071   0.6307005   0.8717138
6-24 months                  COHORTS      GUATEMALA     0                    NA                0.8202701   0.7885011   0.8520391
6-24 months                  COHORTS      INDIA         1                    NA                0.2252817   0.2018641   0.2486992
6-24 months                  COHORTS      INDIA         0                    NA                0.2884224   0.2705696   0.3062753
6-24 months                  COHORTS      PHILIPPINES   1                    NA                0.6577849   0.5393023   0.7762675
6-24 months                  COHORTS      PHILIPPINES   0                    NA                0.7413280   0.7072147   0.7754413
6-24 months                  JiVitA-3     BANGLADESH    1                    NA                0.2102751   0.1985535   0.2219967
6-24 months                  JiVitA-3     BANGLADESH    0                    NA                0.2492029   0.2247996   0.2736062
6-24 months                  JiVitA-4     BANGLADESH    1                    NA                0.3723256   0.3511280   0.3935232
6-24 months                  JiVitA-4     BANGLADESH    0                    NA                0.3895397   0.3423849   0.4366945
6-24 months                  MAL-ED       BANGLADESH    1                    NA                0.3927490   0.3087255   0.4767725
6-24 months                  MAL-ED       BANGLADESH    0                    NA                0.6035661   0.4026055   0.8045267
6-24 months                  MAL-ED       INDIA         1                    NA                0.4326118   0.3208394   0.5443841
6-24 months                  MAL-ED       INDIA         0                    NA                0.4386173   0.3301777   0.5470570
6-24 months                  MAL-ED       PERU          1                    NA                0.3195880   0.1776955   0.4614804
6-24 months                  MAL-ED       PERU          0                    NA                0.4113118   0.3172627   0.5053609
6-24 months                  NIH-Birth    BANGLADESH    1                    NA                0.5456862   0.4611797   0.6301927
6-24 months                  NIH-Birth    BANGLADESH    0                    NA                0.5899254   0.5241267   0.6557240
6-24 months                  NIH-Crypto   BANGLADESH    1                    NA                0.2670828   0.2257329   0.3084326
6-24 months                  NIH-Crypto   BANGLADESH    0                    NA                0.2007635   0.1023255   0.2992014


### Parameter: E(Y)


agecat                       studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS      GUATEMALA     NA                   NA                0.8110236   0.7805500   0.8414972
0-24 months (no birth st.)   COHORTS      INDIA         NA                   NA                0.3013786   0.2882798   0.3144773
0-24 months (no birth st.)   COHORTS      PHILIPPINES   NA                   NA                0.7228700   0.6965868   0.7491531
0-24 months (no birth st.)   JiVitA-3     BANGLADESH    NA                   NA                0.2523838   0.2446469   0.2601207
0-24 months (no birth st.)   JiVitA-4     BANGLADESH    NA                   NA                0.4144516   0.3962595   0.4326437
0-24 months (no birth st.)   MAL-ED       BANGLADESH    NA                   NA                0.5418719   0.4731628   0.6105810
0-24 months (no birth st.)   MAL-ED       INDIA         NA                   NA                0.5459184   0.4760370   0.6157998
0-24 months (no birth st.)   MAL-ED       PERU          NA                   NA                0.6147186   0.5518243   0.6776129
0-24 months (no birth st.)   NIH-Birth    BANGLADESH    NA                   NA                0.6018868   0.5601729   0.6436007
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH    NA                   NA                0.3919129   0.3541506   0.4296752
0-6 months (no birth st.)    COHORTS      GUATEMALA     NA                   NA                0.2442478   0.2087898   0.2797057
0-6 months (no birth st.)    COHORTS      INDIA         NA                   NA                0.0783541   0.0705612   0.0861470
0-6 months (no birth st.)    COHORTS      PHILIPPINES   NA                   NA                0.1928251   0.1696580   0.2159922
0-6 months (no birth st.)    JiVitA-3     BANGLADESH    NA                   NA                0.1303730   0.1247937   0.1359524
0-6 months (no birth st.)    JiVitA-4     BANGLADESH    NA                   NA                0.0854560   0.0740923   0.0968198
0-6 months (no birth st.)    MAL-ED       BANGLADESH    NA                   NA                0.2118227   0.1554757   0.2681696
0-6 months (no birth st.)    MAL-ED       INDIA         NA                   NA                0.2142857   0.1566940   0.2718774
0-6 months (no birth st.)    MAL-ED       PERU          NA                   NA                0.3636364   0.3014678   0.4258049
0-6 months (no birth st.)    NIH-Birth    BANGLADESH    NA                   NA                0.2283019   0.1925336   0.2640702
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH    NA                   NA                0.1866252   0.1564874   0.2167630
6-24 months                  COHORTS      GUATEMALA     NA                   NA                0.8162939   0.7859345   0.8466533
6-24 months                  COHORTS      INDIA         NA                   NA                0.2666991   0.2531888   0.2802093
6-24 months                  COHORTS      PHILIPPINES   NA                   NA                0.7086331   0.6777759   0.7394903
6-24 months                  JiVitA-3     BANGLADESH    NA                   NA                0.2162136   0.2068317   0.2255956
6-24 months                  JiVitA-4     BANGLADESH    NA                   NA                0.3784303   0.3598372   0.3970234
6-24 months                  MAL-ED       BANGLADESH    NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months                  MAL-ED       INDIA         NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months                  MAL-ED       PERU          NA                   NA                0.3945578   0.3152779   0.4738378
6-24 months                  NIH-Birth    BANGLADESH    NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months                  NIH-Crypto   BANGLADESH    NA                   NA                0.2640000   0.2253243   0.3026757


### Parameter: RR


agecat                       studyid      country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS      GUATEMALA     0                    1                 1.0824124   0.9309749   1.258484
0-24 months (no birth st.)   COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS      INDIA         0                    1                 1.2618200   1.1387113   1.398238
0-24 months (no birth st.)   COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS      PHILIPPINES   0                    1                 1.1406510   0.9670409   1.345429
0-24 months (no birth st.)   JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-3     BANGLADESH    0                    1                 1.1167637   1.0391283   1.200199
0-24 months (no birth st.)   JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-4     BANGLADESH    0                    1                 1.0206789   0.9090330   1.146037
0-24 months (no birth st.)   MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED       BANGLADESH    0                    1                 1.1887101   0.8831818   1.599933
0-24 months (no birth st.)   MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED       INDIA         0                    1                 1.1821781   0.9033990   1.546985
0-24 months (no birth st.)   MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED       PERU          0                    1                 1.1790393   0.8996232   1.545240
0-24 months (no birth st.)   NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Birth    BANGLADESH    0                    1                 1.1015723   0.9508965   1.276124
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH    0                    1                 0.7995291   0.5636263   1.134168
0-6 months (no birth st.)    COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS      GUATEMALA     0                    1                 1.3212611   0.7594277   2.298746
0-6 months (no birth st.)    COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS      INDIA         0                    1                 1.2823160   0.9973763   1.648660
0-6 months (no birth st.)    COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS      PHILIPPINES   0                    1                 2.5357477   1.5218601   4.225104
0-6 months (no birth st.)    JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-3     BANGLADESH    0                    1                 1.1259987   1.0103935   1.254831
0-6 months (no birth st.)    JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-4     BANGLADESH    0                    1                 0.8239365   0.5214810   1.301814
0-6 months (no birth st.)    MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED       BANGLADESH    0                    1                 0.8353808   0.3830278   1.821959
0-6 months (no birth st.)    MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED       INDIA         0                    1                 1.9757324   1.0797969   3.615049
0-6 months (no birth st.)    MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED       PERU          0                    1                 1.4123277   0.8846913   2.254650
0-6 months (no birth st.)    NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Birth    BANGLADESH    0                    1                 1.0900250   0.7881270   1.507567
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH    0                    1                 0.8067208   0.4588123   1.418441
6-24 months                  COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  COHORTS      GUATEMALA     0                    1                 1.0919360   0.9263185   1.287165
6-24 months                  COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  COHORTS      INDIA         0                    1                 1.2802747   1.1358175   1.443104
6-24 months                  COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  COHORTS      PHILIPPINES   0                    1                 1.1270067   0.9366452   1.356057
6-24 months                  JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-3     BANGLADESH    0                    1                 1.1851279   1.0633865   1.320807
6-24 months                  JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-4     BANGLADESH    0                    1                 1.0462340   0.9153986   1.195769
6-24 months                  MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED       BANGLADESH    0                    1                 1.5367731   1.0354673   2.280778
6-24 months                  MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED       INDIA         0                    1                 1.0138821   0.7098363   1.448161
6-24 months                  MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED       PERU          0                    1                 1.2870066   0.7791610   2.125858
6-24 months                  NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  NIH-Birth    BANGLADESH    0                    1                 1.0810707   0.8962188   1.304050
6-24 months                  NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  NIH-Crypto   BANGLADESH    0                    1                 0.7516901   0.4490303   1.258352


### Parameter: PAR


agecat                       studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS      GUATEMALA     1                    NA                 0.0581212   -0.0454185   0.1616609
0-24 months (no birth st.)   COHORTS      INDIA         1                    NA                 0.0428256    0.0229689   0.0626823
0-24 months (no birth st.)   COHORTS      PHILIPPINES   1                    NA                 0.0547482   -0.0485350   0.1580315
0-24 months (no birth st.)   JiVitA-3     BANGLADESH    1                    NA                 0.0057254    0.0005411   0.0109097
0-24 months (no birth st.)   JiVitA-4     BANGLADESH    1                    NA                 0.0033307   -0.0069364   0.0135977
0-24 months (no birth st.)   MAL-ED       BANGLADESH    1                    NA                 0.0229506   -0.0053734   0.0512746
0-24 months (no birth st.)   MAL-ED       INDIA         1                    NA                 0.0575588   -0.0210904   0.1362080
0-24 months (no birth st.)   MAL-ED       PERU          1                    NA                 0.0712461   -0.0448021   0.1872943
0-24 months (no birth st.)   NIH-Birth    BANGLADESH    1                    NA                 0.0352224   -0.0191634   0.0896082
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH    1                    NA                -0.0086370   -0.0215878   0.0043138
0-6 months (no birth st.)    COHORTS      GUATEMALA     1                    NA                 0.0543420   -0.0423710   0.1510549
0-6 months (no birth st.)    COHORTS      INDIA         1                    NA                 0.0124862   -0.0005879   0.0255603
0-6 months (no birth st.)    COHORTS      PHILIPPINES   1                    NA                 0.1088909    0.0673190   0.1504628
0-6 months (no birth st.)    JiVitA-3     BANGLADESH    1                    NA                 0.0023477   -0.0020682   0.0067637
0-6 months (no birth st.)    JiVitA-4     BANGLADESH    1                    NA                -0.0022087   -0.0083355   0.0039180
0-6 months (no birth st.)    MAL-ED       BANGLADESH    1                    NA                -0.0058244   -0.0296024   0.0179536
0-6 months (no birth st.)    MAL-ED       INDIA         1                    NA                 0.0730741    0.0100781   0.1360701
0-6 months (no birth st.)    MAL-ED       PERU          1                    NA                 0.0862468   -0.0200329   0.1925266
0-6 months (no birth st.)    NIH-Birth    BANGLADESH    1                    NA                 0.0123322   -0.0328815   0.0575460
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH    1                    NA                -0.0049497   -0.0150785   0.0051791
6-24 months                  COHORTS      GUATEMALA     1                    NA                 0.0650868   -0.0488193   0.1789929
6-24 months                  COHORTS      INDIA         1                    NA                 0.0414174    0.0213521   0.0614826
6-24 months                  COHORTS      PHILIPPINES   1                    NA                 0.0508482   -0.0621811   0.1638775
6-24 months                  JiVitA-3     BANGLADESH    1                    NA                 0.0059385   -0.0007972   0.0126743
6-24 months                  JiVitA-4     BANGLADESH    1                    NA                 0.0061047   -0.0045201   0.0167295
6-24 months                  MAL-ED       BANGLADESH    1                    NA                 0.0313016   -0.0057525   0.0683557
6-24 months                  MAL-ED       INDIA         1                    NA                -0.0105338   -0.0894280   0.0683603
6-24 months                  MAL-ED       PERU          1                    NA                 0.0749699   -0.0472650   0.1972047
6-24 months                  NIH-Birth    BANGLADESH    1                    NA                 0.0282268   -0.0365097   0.0929634
6-24 months                  NIH-Crypto   BANGLADESH    1                    NA                -0.0030828   -0.0168041   0.0106386


### Parameter: PAF


agecat                       studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS      GUATEMALA     1                    NA                 0.0716640   -0.0654608   0.1911409
0-24 months (no birth st.)   COHORTS      INDIA         1                    NA                 0.1420989    0.0736703   0.2054727
0-24 months (no birth st.)   COHORTS      PHILIPPINES   1                    NA                 0.0757373   -0.0789623   0.2082564
0-24 months (no birth st.)   JiVitA-3     BANGLADESH    1                    NA                 0.0226853    0.0018923   0.0430451
0-24 months (no birth st.)   JiVitA-4     BANGLADESH    1                    NA                 0.0080363   -0.0170526   0.0325063
0-24 months (no birth st.)   MAL-ED       BANGLADESH    1                    NA                 0.0423543   -0.0117304   0.0935478
0-24 months (no birth st.)   MAL-ED       INDIA         1                    NA                 0.1054347   -0.0521262   0.2394001
0-24 months (no birth st.)   MAL-ED       PERU          1                    NA                 0.1159003   -0.0954147   0.2864508
0-24 months (no birth st.)   NIH-Birth    BANGLADESH    1                    NA                 0.0585200   -0.0365887   0.1449023
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH    1                    NA                -0.0220380   -0.0556496   0.0105034
0-6 months (no birth st.)    COHORTS      GUATEMALA     1                    NA                 0.2224871   -0.2934662   0.5326307
0-6 months (no birth st.)    COHORTS      INDIA         1                    NA                 0.1593559   -0.0244459   0.3101808
0-6 months (no birth st.)    COHORTS      PHILIPPINES   1                    NA                 0.5647133    0.2993076   0.7295895
0-6 months (no birth st.)    JiVitA-3     BANGLADESH    1                    NA                 0.0180079   -0.0164691   0.0513154
0-6 months (no birth st.)    JiVitA-4     BANGLADESH    1                    NA                -0.0258465   -0.1000882   0.0433849
0-6 months (no birth st.)    MAL-ED       BANGLADESH    1                    NA                -0.0274966   -0.1459932   0.0787474
0-6 months (no birth st.)    MAL-ED       INDIA         1                    NA                 0.3410125   -0.0144095   0.5719041
0-6 months (no birth st.)    MAL-ED       PERU          1                    NA                 0.2371788   -0.1186310   0.4798141
0-6 months (no birth st.)    NIH-Birth    BANGLADESH    1                    NA                 0.0540172   -0.1660902   0.2325779
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH    1                    NA                -0.0265222   -0.0821828   0.0262756
6-24 months                  COHORTS      GUATEMALA     1                    NA                 0.0797345   -0.0712895   0.2094681
6-24 months                  COHORTS      INDIA         1                    NA                 0.1552963    0.0767420   0.2271668
6-24 months                  COHORTS      PHILIPPINES   1                    NA                 0.0717553   -0.1024731   0.2184497
6-24 months                  JiVitA-3     BANGLADESH    1                    NA                 0.0274661   -0.0042540   0.0581843
6-24 months                  JiVitA-4     BANGLADESH    1                    NA                 0.0161316   -0.0123412   0.0438036
6-24 months                  MAL-ED       BANGLADESH    1                    NA                 0.0738158   -0.0182125   0.1575264
6-24 months                  MAL-ED       INDIA         1                    NA                -0.0249571   -0.2300085   0.1459107
6-24 months                  MAL-ED       PERU          1                    NA                 0.1900098   -0.1876648   0.4475848
6-24 months                  NIH-Birth    BANGLADESH    1                    NA                 0.0491831   -0.0708426   0.1557557
6-24 months                  NIH-Crypto   BANGLADESH    1                    NA                -0.0116771   -0.0649961   0.0389724
