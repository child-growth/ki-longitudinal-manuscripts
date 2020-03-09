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

**Intervention Variable:** safeh20

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
* impsan
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
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid         country                        safeh20    ever_stunted   n_cell       n
---------------------------  --------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth st.)   CONTENT         PERU                           1                     0       46      55
0-24 months (no birth st.)   CONTENT         PERU                           1                     1        6      55
0-24 months (no birth st.)   CONTENT         PERU                           0                     0        3      55
0-24 months (no birth st.)   CONTENT         PERU                           0                     1        0      55
0-24 months (no birth st.)   JiVitA-3        BANGLADESH                     1                     0    13707   18357
0-24 months (no birth st.)   JiVitA-3        BANGLADESH                     1                     1     4626   18357
0-24 months (no birth st.)   JiVitA-3        BANGLADESH                     0                     0       18   18357
0-24 months (no birth st.)   JiVitA-3        BANGLADESH                     0                     1        6   18357
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     1                     0     2268    3875
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     1                     1     1606    3875
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     0                     0        1    3875
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     0                     1        0    3875
0-24 months (no birth st.)   LCNI-5          MALAWI                         1                     0      243     521
0-24 months (no birth st.)   LCNI-5          MALAWI                         1                     1      186     521
0-24 months (no birth st.)   LCNI-5          MALAWI                         0                     0       53     521
0-24 months (no birth st.)   LCNI-5          MALAWI                         0                     1       39     521
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     1                     0        0     203
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     1                     1        0     203
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     0                     0       93     203
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     0                     1      110     203
0-24 months (no birth st.)   MAL-ED          BRAZIL                         1                     0        0     128
0-24 months (no birth st.)   MAL-ED          BRAZIL                         1                     1        0     128
0-24 months (no birth st.)   MAL-ED          BRAZIL                         0                     0      110     128
0-24 months (no birth st.)   MAL-ED          BRAZIL                         0                     1       18     128
0-24 months (no birth st.)   MAL-ED          INDIA                          1                     0        0     197
0-24 months (no birth st.)   MAL-ED          INDIA                          1                     1        0     197
0-24 months (no birth st.)   MAL-ED          INDIA                          0                     0       89     197
0-24 months (no birth st.)   MAL-ED          INDIA                          0                     1      108     197
0-24 months (no birth st.)   MAL-ED          NEPAL                          1                     0        0     206
0-24 months (no birth st.)   MAL-ED          NEPAL                          1                     1        1     206
0-24 months (no birth st.)   MAL-ED          NEPAL                          0                     0      152     206
0-24 months (no birth st.)   MAL-ED          NEPAL                          0                     1       53     206
0-24 months (no birth st.)   MAL-ED          PERU                           1                     0        5     229
0-24 months (no birth st.)   MAL-ED          PERU                           1                     1        5     229
0-24 months (no birth st.)   MAL-ED          PERU                           0                     0       84     229
0-24 months (no birth st.)   MAL-ED          PERU                           0                     1      135     229
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   1                     0       19     228
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   1                     1       16     228
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   0                     0       78     228
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   0                     1      115     228
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       23     210
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1      126     210
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       11     210
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       50     210
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     1                     0      211     530
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     1                     1      319     530
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     0                     0        0     530
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     0                     1        0     530
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     1                     0      396     653
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     1                     1      257     653
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     0                     0        0     653
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     0                     1        0     653
0-24 months (no birth st.)   PROVIDE         BANGLADESH                     1                     0       50      58
0-24 months (no birth st.)   PROVIDE         BANGLADESH                     1                     1        8      58
0-24 months (no birth st.)   PROVIDE         BANGLADESH                     0                     0        0      58
0-24 months (no birth st.)   PROVIDE         BANGLADESH                     0                     1        0      58
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          1                     0       72     257
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          1                     1      185     257
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          0                     0        0     257
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          0                     1        0     257
0-6 months (no birth st.)    CONTENT         PERU                           1                     0       52      55
0-6 months (no birth st.)    CONTENT         PERU                           1                     1        0      55
0-6 months (no birth st.)    CONTENT         PERU                           0                     0        3      55
0-6 months (no birth st.)    CONTENT         PERU                           0                     1        0      55
0-6 months (no birth st.)    JiVitA-3        BANGLADESH                     1                     0    15907   18313
0-6 months (no birth st.)    JiVitA-3        BANGLADESH                     1                     1     2383   18313
0-6 months (no birth st.)    JiVitA-3        BANGLADESH                     0                     0       19   18313
0-6 months (no birth st.)    JiVitA-3        BANGLADESH                     0                     1        4   18313
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     1                     0     3338    3651
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     1                     1      312    3651
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     0                     0        1    3651
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     0                     1        0    3651
0-6 months (no birth st.)    LCNI-5          MALAWI                         1                     0      140     174
0-6 months (no birth st.)    LCNI-5          MALAWI                         1                     1        0     174
0-6 months (no birth st.)    LCNI-5          MALAWI                         0                     0       34     174
0-6 months (no birth st.)    LCNI-5          MALAWI                         0                     1        0     174
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     1                     0        0     203
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     1                     1        0     203
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     0                     0      160     203
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     0                     1       43     203
0-6 months (no birth st.)    MAL-ED          BRAZIL                         1                     0        0     128
0-6 months (no birth st.)    MAL-ED          BRAZIL                         1                     1        0     128
0-6 months (no birth st.)    MAL-ED          BRAZIL                         0                     0      120     128
0-6 months (no birth st.)    MAL-ED          BRAZIL                         0                     1        8     128
0-6 months (no birth st.)    MAL-ED          INDIA                          1                     0        0     197
0-6 months (no birth st.)    MAL-ED          INDIA                          1                     1        0     197
0-6 months (no birth st.)    MAL-ED          INDIA                          0                     0      154     197
0-6 months (no birth st.)    MAL-ED          INDIA                          0                     1       43     197
0-6 months (no birth st.)    MAL-ED          NEPAL                          1                     0        0     206
0-6 months (no birth st.)    MAL-ED          NEPAL                          1                     1        1     206
0-6 months (no birth st.)    MAL-ED          NEPAL                          0                     0      193     206
0-6 months (no birth st.)    MAL-ED          NEPAL                          0                     1       12     206
0-6 months (no birth st.)    MAL-ED          PERU                           1                     0        5     229
0-6 months (no birth st.)    MAL-ED          PERU                           1                     1        5     229
0-6 months (no birth st.)    MAL-ED          PERU                           0                     0      141     229
0-6 months (no birth st.)    MAL-ED          PERU                           0                     1       78     229
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   1                     0       24     228
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   1                     1       11     228
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   0                     0      131     228
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   0                     1       62     228
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0      104     210
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       45     210
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       43     210
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       18     210
0-6 months (no birth st.)    NIH-Birth       BANGLADESH                     1                     0      409     530
0-6 months (no birth st.)    NIH-Birth       BANGLADESH                     1                     1      121     530
0-6 months (no birth st.)    NIH-Birth       BANGLADESH                     0                     0        0     530
0-6 months (no birth st.)    NIH-Birth       BANGLADESH                     0                     1        0     530
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     1                     0      529     653
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     1                     1      124     653
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     0                     0        0     653
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     0                     1        0     653
0-6 months (no birth st.)    PROVIDE         BANGLADESH                     1                     0       53      58
0-6 months (no birth st.)    PROVIDE         BANGLADESH                     1                     1        5      58
0-6 months (no birth st.)    PROVIDE         BANGLADESH                     0                     0        0      58
0-6 months (no birth st.)    PROVIDE         BANGLADESH                     0                     1        0      58
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          1                     0      254     257
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          1                     1        3     257
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          0                     0        0     257
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          0                     1        0     257
6-24 months                  CONTENT         PERU                           1                     0       46      55
6-24 months                  CONTENT         PERU                           1                     1        6      55
6-24 months                  CONTENT         PERU                           0                     0        3      55
6-24 months                  CONTENT         PERU                           0                     1        0      55
6-24 months                  JiVitA-3        BANGLADESH                     1                     0     8214   10488
6-24 months                  JiVitA-3        BANGLADESH                     1                     1     2265   10488
6-24 months                  JiVitA-3        BANGLADESH                     0                     0        7   10488
6-24 months                  JiVitA-3        BANGLADESH                     0                     1        2   10488
6-24 months                  JiVitA-4        BANGLADESH                     1                     0     2264    3644
6-24 months                  JiVitA-4        BANGLADESH                     1                     1     1379    3644
6-24 months                  JiVitA-4        BANGLADESH                     0                     0        1    3644
6-24 months                  JiVitA-4        BANGLADESH                     0                     1        0    3644
6-24 months                  LCNI-5          MALAWI                         1                     0      234     710
6-24 months                  LCNI-5          MALAWI                         1                     1      357     710
6-24 months                  LCNI-5          MALAWI                         0                     0       50     710
6-24 months                  LCNI-5          MALAWI                         0                     1       69     710
6-24 months                  MAL-ED          BANGLADESH                     1                     0        0     158
6-24 months                  MAL-ED          BANGLADESH                     1                     1        0     158
6-24 months                  MAL-ED          BANGLADESH                     0                     0       91     158
6-24 months                  MAL-ED          BANGLADESH                     0                     1       67     158
6-24 months                  MAL-ED          BRAZIL                         1                     0        0     119
6-24 months                  MAL-ED          BRAZIL                         1                     1        0     119
6-24 months                  MAL-ED          BRAZIL                         0                     0      109     119
6-24 months                  MAL-ED          BRAZIL                         0                     1       10     119
6-24 months                  MAL-ED          INDIA                          1                     0        0     154
6-24 months                  MAL-ED          INDIA                          1                     1        0     154
6-24 months                  MAL-ED          INDIA                          0                     0       89     154
6-24 months                  MAL-ED          INDIA                          0                     1       65     154
6-24 months                  MAL-ED          NEPAL                          1                     0        0     192
6-24 months                  MAL-ED          NEPAL                          1                     1        0     192
6-24 months                  MAL-ED          NEPAL                          0                     0      151     192
6-24 months                  MAL-ED          NEPAL                          0                     1       41     192
6-24 months                  MAL-ED          PERU                           1                     0        5     146
6-24 months                  MAL-ED          PERU                           1                     1        0     146
6-24 months                  MAL-ED          PERU                           0                     0       84     146
6-24 months                  MAL-ED          PERU                           0                     1       57     146
6-24 months                  MAL-ED          SOUTH AFRICA                   1                     0       19     155
6-24 months                  MAL-ED          SOUTH AFRICA                   1                     1        5     155
6-24 months                  MAL-ED          SOUTH AFRICA                   0                     0       78     155
6-24 months                  MAL-ED          SOUTH AFRICA                   0                     1       53     155
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       21     144
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       81     144
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       10     144
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       32     144
6-24 months                  NIH-Birth       BANGLADESH                     1                     0      147     345
6-24 months                  NIH-Birth       BANGLADESH                     1                     1      198     345
6-24 months                  NIH-Birth       BANGLADESH                     0                     0        0     345
6-24 months                  NIH-Birth       BANGLADESH                     0                     1        0     345
6-24 months                  NIH-Crypto      BANGLADESH                     1                     0      373     506
6-24 months                  NIH-Crypto      BANGLADESH                     1                     1      133     506
6-24 months                  NIH-Crypto      BANGLADESH                     0                     0        0     506
6-24 months                  NIH-Crypto      BANGLADESH                     0                     1        0     506
6-24 months                  PROVIDE         BANGLADESH                     1                     0        3       6
6-24 months                  PROVIDE         BANGLADESH                     1                     1        3       6
6-24 months                  PROVIDE         BANGLADESH                     0                     0        0       6
6-24 months                  PROVIDE         BANGLADESH                     0                     1        0       6
6-24 months                  SAS-FoodSuppl   INDIA                          1                     0       59     243
6-24 months                  SAS-FoodSuppl   INDIA                          1                     1      184     243
6-24 months                  SAS-FoodSuppl   INDIA                          0                     0        0     243
6-24 months                  SAS-FoodSuppl   INDIA                          0                     1        0     243


The following strata were considered:

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
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/06bcc455-7c84-4194-9895-6c31a12f4ae8/d4e39f89-829c-4de2-88ea-2052d5b86c96/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/06bcc455-7c84-4194-9895-6c31a12f4ae8/d4e39f89-829c-4de2-88ea-2052d5b86c96/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/06bcc455-7c84-4194-9895-6c31a12f4ae8/d4e39f89-829c-4de2-88ea-2052d5b86c96/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/06bcc455-7c84-4194-9895-6c31a12f4ae8/d4e39f89-829c-4de2-88ea-2052d5b86c96/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   JiVitA-3   BANGLADESH                     1                    NA                0.2523319   0.2444053   0.2602584
0-24 months (no birth st.)   JiVitA-3   BANGLADESH                     0                    NA                0.2500000   0.2415133   0.2584867
0-24 months (no birth st.)   LCNI-5     MALAWI                         1                    NA                0.4338940   0.3871431   0.4806450
0-24 months (no birth st.)   LCNI-5     MALAWI                         0                    NA                0.4097164   0.3090884   0.5103444
0-24 months (no birth st.)   MAL-ED     PERU                           1                    NA                0.5000000   0.1894236   0.8105764
0-24 months (no birth st.)   MAL-ED     PERU                           0                    NA                0.6164384   0.5518969   0.6809798
0-24 months (no birth st.)   MAL-ED     SOUTH AFRICA                   1                    NA                0.4408966   0.2754255   0.6063677
0-24 months (no birth st.)   MAL-ED     SOUTH AFRICA                   0                    NA                0.5954879   0.5260594   0.6649164
0-24 months (no birth st.)   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8406739   0.7826510   0.8986967
0-24 months (no birth st.)   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8339116   0.7384626   0.9293607
0-6 months (no birth st.)    MAL-ED     PERU                           1                    NA                0.5000000   0.1894236   0.8105764
0-6 months (no birth st.)    MAL-ED     PERU                           0                    NA                0.3561644   0.2926036   0.4197251
0-6 months (no birth st.)    MAL-ED     SOUTH AFRICA                   1                    NA                0.2766860   0.1163261   0.4370458
0-6 months (no birth st.)    MAL-ED     SOUTH AFRICA                   0                    NA                0.3198032   0.2535807   0.3860256
0-6 months (no birth st.)    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3039677   0.2302824   0.3776531
0-6 months (no birth st.)    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3098597   0.1936182   0.4261012
6-24 months                  LCNI-5     MALAWI                         1                    NA                0.6062678   0.5670802   0.6454553
6-24 months                  LCNI-5     MALAWI                         0                    NA                0.5717363   0.4842524   0.6592203
6-24 months                  MAL-ED     SOUTH AFRICA                   1                    NA                0.2083333   0.0453292   0.3713374
6-24 months                  MAL-ED     SOUTH AFRICA                   0                    NA                0.4045802   0.3202599   0.4889004
6-24 months                  MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7903838   0.7112142   0.8695534
6-24 months                  MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7745674   0.6448925   0.9042423


### Parameter: E(Y)


agecat                       studyid    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   JiVitA-3   BANGLADESH                     NA                   NA                0.2523288   0.2445890   0.2600687
0-24 months (no birth st.)   LCNI-5     MALAWI                         NA                   NA                0.4318618   0.3892877   0.4744359
0-24 months (no birth st.)   MAL-ED     PERU                           NA                   NA                0.6113537   0.5480828   0.6746246
0-24 months (no birth st.)   MAL-ED     SOUTH AFRICA                   NA                   NA                0.5745614   0.5102450   0.6388778
0-24 months (no birth st.)   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8380952   0.7881549   0.8880356
0-6 months (no birth st.)    MAL-ED     PERU                           NA                   NA                0.3624454   0.3000489   0.4248420
0-6 months (no birth st.)    MAL-ED     SOUTH AFRICA                   NA                   NA                0.3201754   0.2594840   0.3808669
0-6 months (no birth st.)    MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3000000   0.2378724   0.3621276
6-24 months                  LCNI-5     MALAWI                         NA                   NA                0.6000000   0.5639396   0.6360604
6-24 months                  MAL-ED     SOUTH AFRICA                   NA                   NA                0.3741935   0.2977649   0.4506221
6-24 months                  MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7847222   0.7173567   0.8520877


### Parameter: RR


agecat                       studyid    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ---------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   JiVitA-3   BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-3   BANGLADESH                     0                    1                 0.9907588   0.9468697   1.036682
0-24 months (no birth st.)   LCNI-5     MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   LCNI-5     MALAWI                         0                    1                 0.9442776   0.7230624   1.233172
0-24 months (no birth st.)   MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED     PERU                           0                    1                 1.2328767   0.6566758   2.314666
0-24 months (no birth st.)   MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED     SOUTH AFRICA                   0                    1                 1.3506294   0.9106314   2.003225
0-24 months (no birth st.)   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9919562   0.8688485   1.132507
0-6 months (no birth st.)    MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED     PERU                           0                    1                 0.7123288   0.3732540   1.359429
0-6 months (no birth st.)    MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED     SOUTH AFRICA                   0                    1                 1.1558344   0.6240134   2.140905
0-6 months (no birth st.)    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0193834   0.6508120   1.596686
6-24 months                  LCNI-5     MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  LCNI-5     MALAWI                         0                    1                 0.9430426   0.8000953   1.111529
6-24 months                  MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED     SOUTH AFRICA                   0                    1                 1.9419847   0.8641652   4.364101
6-24 months                  MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9799889   0.8070327   1.190012


### Parameter: PAR


agecat                       studyid    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   JiVitA-3   BANGLADESH                     1                    NA                -0.0000030   -0.0002871   0.0002810
0-24 months (no birth st.)   LCNI-5     MALAWI                         1                    NA                -0.0020322   -0.0215358   0.0174713
0-24 months (no birth st.)   MAL-ED     PERU                           1                    NA                 0.1113537   -0.1920217   0.4147291
0-24 months (no birth st.)   MAL-ED     SOUTH AFRICA                   1                    NA                 0.1336648   -0.0195031   0.2868328
0-24 months (no birth st.)   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0025786   -0.0346608   0.0295035
0-6 months (no birth st.)    MAL-ED     PERU                           1                    NA                -0.1375546   -0.4407488   0.1656397
0-6 months (no birth st.)    MAL-ED     SOUTH AFRICA                   1                    NA                 0.0434895   -0.1047470   0.1917260
0-6 months (no birth st.)    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0039677   -0.0438474   0.0359119
6-24 months                  LCNI-5     MALAWI                         1                    NA                -0.0062678   -0.0219612   0.0094257
6-24 months                  MAL-ED     SOUTH AFRICA                   1                    NA                 0.1658602    0.0103500   0.3213705
6-24 months                  MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0056616   -0.0503785   0.0390553


### Parameter: PAF


agecat                       studyid    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   JiVitA-3   BANGLADESH                     1                    NA                -0.0000121   -0.0011383   0.0011129
0-24 months (no birth st.)   LCNI-5     MALAWI                         1                    NA                -0.0047058   -0.0509024   0.0394601
0-24 months (no birth st.)   MAL-ED     PERU                           1                    NA                 0.1821429   -0.5013602   0.5544771
0-24 months (no birth st.)   MAL-ED     SOUTH AFRICA                   1                    NA                 0.2326380   -0.0875060   0.4585369
0-24 months (no birth st.)   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0030768   -0.0421062   0.0344909
0-6 months (no birth st.)    MAL-ED     PERU                           1                    NA                -0.3795181   -1.5324147   0.2485156
0-6 months (no birth st.)    MAL-ED     SOUTH AFRICA                   1                    NA                 0.1358301   -0.4780070   0.4947321
0-6 months (no birth st.)    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0132258   -0.1553175   0.1113901
6-24 months                  LCNI-5     MALAWI                         1                    NA                -0.0104463   -0.0369574   0.0153871
6-24 months                  MAL-ED     SOUTH AFRICA                   1                    NA                 0.4432471   -0.1675092   0.7344999
6-24 months                  MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0072148   -0.0658749   0.0482170
