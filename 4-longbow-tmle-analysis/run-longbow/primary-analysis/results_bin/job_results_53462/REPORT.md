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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** impsan

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

agecat      studyid                 country                        impsan    sstunted   n_cell       n
----------  ----------------------  -----------------------------  -------  ---------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                0      174     213
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                1        5     213
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                0       33     213
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                1        1     213
Birth       ki0047075b-MAL-ED       BRAZIL                         1                0       56      60
Birth       ki0047075b-MAL-ED       BRAZIL                         1                1        3      60
Birth       ki0047075b-MAL-ED       BRAZIL                         0                0        1      60
Birth       ki0047075b-MAL-ED       BRAZIL                         0                1        0      60
Birth       ki0047075b-MAL-ED       INDIA                          1                0       14      40
Birth       ki0047075b-MAL-ED       INDIA                          1                1        1      40
Birth       ki0047075b-MAL-ED       INDIA                          0                0       25      40
Birth       ki0047075b-MAL-ED       INDIA                          0                1        0      40
Birth       ki0047075b-MAL-ED       NEPAL                          1                0       24      26
Birth       ki0047075b-MAL-ED       NEPAL                          1                1        1      26
Birth       ki0047075b-MAL-ED       NEPAL                          0                0        1      26
Birth       ki0047075b-MAL-ED       NEPAL                          0                1        0      26
Birth       ki0047075b-MAL-ED       PERU                           1                0       50     208
Birth       ki0047075b-MAL-ED       PERU                           1                1        2     208
Birth       ki0047075b-MAL-ED       PERU                           0                0      154     208
Birth       ki0047075b-MAL-ED       PERU                           0                1        2     208
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                0        0      95
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                1        0      95
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                0       94      95
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                1        1      95
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                0        0     118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                1        0     118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                0      110     118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                1        8     118
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                0      226     608
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                1        5     608
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                0      363     608
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                1       14     608
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                0       43      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     1                1        0      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                0        2      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     0                1        0      45
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                0      625     721
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                1        7     721
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                0       86     721
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                1        3     721
Birth       ki1114097-CONTENT       PERU                           1                0        1       2
Birth       ki1114097-CONTENT       PERU                           1                1        0       2
Birth       ki1114097-CONTENT       PERU                           0                0        1       2
Birth       ki1114097-CONTENT       PERU                           0                1        0       2
Birth       ki1135781-COHORTS       GUATEMALA                      1                0       45     491
Birth       ki1135781-COHORTS       GUATEMALA                      1                1        0     491
Birth       ki1135781-COHORTS       GUATEMALA                      0                0      440     491
Birth       ki1135781-COHORTS       GUATEMALA                      0                1        6     491
Birth       ki1135781-COHORTS       INDIA                          1                0     1723    4776
Birth       ki1135781-COHORTS       INDIA                          1                1       44    4776
Birth       ki1135781-COHORTS       INDIA                          0                0     2912    4776
Birth       ki1135781-COHORTS       INDIA                          0                1       97    4776
Birth       ki1135781-COHORTS       PHILIPPINES                    1                0      178    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    1                1        0    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    0                0      994    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    0                1       19    1191
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                0    13709   22431
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                1     1511   22431
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                0     6274   22431
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                1      937   22431
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                0     2012    2820
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                1      169    2820
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                0      575    2820
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                1       64    2820
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                0      195     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                1        7     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                0       37     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                1        1     240
6 months    ki0047075b-MAL-ED       BRAZIL                         1                0      205     209
6 months    ki0047075b-MAL-ED       BRAZIL                         1                1        0     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0                0        4     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0                1        0     209
6 months    ki0047075b-MAL-ED       INDIA                          1                0      102     233
6 months    ki0047075b-MAL-ED       INDIA                          1                1        6     233
6 months    ki0047075b-MAL-ED       INDIA                          0                0      122     233
6 months    ki0047075b-MAL-ED       INDIA                          0                1        3     233
6 months    ki0047075b-MAL-ED       NEPAL                          1                0      234     236
6 months    ki0047075b-MAL-ED       NEPAL                          1                1        1     236
6 months    ki0047075b-MAL-ED       NEPAL                          0                0        1     236
6 months    ki0047075b-MAL-ED       NEPAL                          0                1        0     236
6 months    ki0047075b-MAL-ED       PERU                           1                0       62     263
6 months    ki0047075b-MAL-ED       PERU                           1                1        3     263
6 months    ki0047075b-MAL-ED       PERU                           0                0      191     263
6 months    ki0047075b-MAL-ED       PERU                           0                1        7     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                0        4     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                1        0     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                0      234     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                1        6     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                0        0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                1        0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                0      224     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                1       14     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                0      194     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                1       11     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                0      308     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                1       24     537
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                0       11      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                1        0      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                0        0      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                1        0      11
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                0      597     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                1       18     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                0       84     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                1        5     704
6 months    ki1114097-CONTENT       PERU                           1                0      197     215
6 months    ki1114097-CONTENT       PERU                           1                1        4     215
6 months    ki1114097-CONTENT       PERU                           0                0       14     215
6 months    ki1114097-CONTENT       PERU                           0                1        0     215
6 months    ki1135781-COHORTS       GUATEMALA                      1                0       63     658
6 months    ki1135781-COHORTS       GUATEMALA                      1                1        4     658
6 months    ki1135781-COHORTS       GUATEMALA                      0                0      503     658
6 months    ki1135781-COHORTS       GUATEMALA                      0                1       88     658
6 months    ki1135781-COHORTS       INDIA                          1                0     1829    4971
6 months    ki1135781-COHORTS       INDIA                          1                1       52    4971
6 months    ki1135781-COHORTS       INDIA                          0                0     2900    4971
6 months    ki1135781-COHORTS       INDIA                          0                1      190    4971
6 months    ki1135781-COHORTS       PHILIPPINES                    1                0      141    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    1                1        2    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0                0      882    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0                1       58    1083
6 months    ki1148112-LCNI-5        MALAWI                         1                0        2     812
6 months    ki1148112-LCNI-5        MALAWI                         1                1        1     812
6 months    ki1148112-LCNI-5        MALAWI                         0                0      745     812
6 months    ki1148112-LCNI-5        MALAWI                         0                1       64     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                0    11398   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                1      640   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                0     4383   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                1      379   16800
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                0     3536    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                1      198    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                0     1018    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                1       73    4825
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                0      156     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                1       25     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                0       28     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                1        3     212
24 months   ki0047075b-MAL-ED       BRAZIL                         1                0      165     169
24 months   ki0047075b-MAL-ED       BRAZIL                         1                1        1     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0                0        3     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0                1        0     169
24 months   ki0047075b-MAL-ED       INDIA                          1                0       96     225
24 months   ki0047075b-MAL-ED       INDIA                          1                1        8     225
24 months   ki0047075b-MAL-ED       INDIA                          0                0      100     225
24 months   ki0047075b-MAL-ED       INDIA                          0                1       21     225
24 months   ki0047075b-MAL-ED       NEPAL                          1                0      220     228
24 months   ki0047075b-MAL-ED       NEPAL                          1                1        7     228
24 months   ki0047075b-MAL-ED       NEPAL                          0                0        1     228
24 months   ki0047075b-MAL-ED       NEPAL                          0                1        0     228
24 months   ki0047075b-MAL-ED       PERU                           1                0       43     196
24 months   ki0047075b-MAL-ED       PERU                           1                1        4     196
24 months   ki0047075b-MAL-ED       PERU                           0                0      138     196
24 months   ki0047075b-MAL-ED       PERU                           0                1       11     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                0        4     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                1        0     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                0      204     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                1       27     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                0        0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                1        0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                0      139     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                1       68     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                0      141     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                1       29     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                0      193     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                1       66     429
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                0        8       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                1        1       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                0        0       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                1        0       9
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                0      403     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                1       30     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                0       65     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                1        5     503
24 months   ki1114097-CONTENT       PERU                           1                0      148     164
24 months   ki1114097-CONTENT       PERU                           1                1        3     164
24 months   ki1114097-CONTENT       PERU                           0                0       13     164
24 months   ki1114097-CONTENT       PERU                           0                1        0     164
24 months   ki1135781-COHORTS       GUATEMALA                      1                0       44     893
24 months   ki1135781-COHORTS       GUATEMALA                      1                1       33     893
24 months   ki1135781-COHORTS       GUATEMALA                      0                0      407     893
24 months   ki1135781-COHORTS       GUATEMALA                      0                1      409     893
24 months   ki1135781-COHORTS       INDIA                          1                0     1247    3751
24 months   ki1135781-COHORTS       INDIA                          1                1      224    3751
24 months   ki1135781-COHORTS       INDIA                          0                0     1542    3751
24 months   ki1135781-COHORTS       INDIA                          0                1      738    3751
24 months   ki1135781-COHORTS       PHILIPPINES                    1                0      116     990
24 months   ki1135781-COHORTS       PHILIPPINES                    1                1       10     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0                0      533     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0                1      331     990
24 months   ki1148112-LCNI-5        MALAWI                         1                0        1     572
24 months   ki1148112-LCNI-5        MALAWI                         1                1        1     572
24 months   ki1148112-LCNI-5        MALAWI                         0                0      502     572
24 months   ki1148112-LCNI-5        MALAWI                         0                1       68     572
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                0     5298    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                1      813    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                0     1979    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                1      532    8622
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                0     3373    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                1      310    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                0      922    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                1      142    4747


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/a9f70288-6f43-4197-aa77-cdeb47938ecd/c66203b5-bde3-4d57-babe-32a71f34ba98/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a9f70288-6f43-4197-aa77-cdeb47938ecd/c66203b5-bde3-4d57-babe-32a71f34ba98/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a9f70288-6f43-4197-aa77-cdeb47938ecd/c66203b5-bde3-4d57-babe-32a71f34ba98/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a9f70288-6f43-4197-aa77-cdeb47938ecd/c66203b5-bde3-4d57-babe-32a71f34ba98/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0216450   0.0028637   0.0404264
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0371353   0.0180319   0.0562387
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.0250516   0.0177580   0.0323452
Birth       ki1135781-COHORTS       INDIA         0                    NA                0.0316469   0.0254105   0.0378833
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1019060   0.0963800   0.1074319
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1262655   0.1171749   0.1353560
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0776930   0.0639683   0.0914176
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1033897   0.0786148   0.1281647
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0532327   0.0220464   0.0844189
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0727234   0.0445281   0.1009187
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0292683   0.0159371   0.0425994
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0561798   0.0083061   0.1040534
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.0307144   0.0225565   0.0388722
6 months    ki1135781-COHORTS       INDIA         0                    NA                0.0598166   0.0513762   0.0682570
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0551602   0.0507610   0.0595595
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0716459   0.0636133   0.0796785
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0537330   0.0461158   0.0613501
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0629410   0.0498353   0.0760467
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.0769231   0.0255961   0.1282501
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.1735537   0.1059225   0.2411849
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1817844   0.1271812   0.2363877
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2461213   0.1933213   0.2989214
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0692841   0.0453420   0.0932261
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0714286   0.0110372   0.1318199
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.4735574   0.3434773   0.6036376
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.4966653   0.4622364   0.5310943
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.1829239   0.1621938   0.2036540
24 months   ki1135781-COHORTS       INDIA         0                    NA                0.3004702   0.2817049   0.3192355
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0968817   0.0479410   0.1458225
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.3770842   0.3448388   0.4093296
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1409527   0.1310978   0.1508075
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1905868   0.1734271   0.2077464
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0853720   0.0749240   0.0958200
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1255201   0.1039269   0.1471132


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0312500   0.0174085   0.0450915
Birth       ki1135781-COHORTS       INDIA         NA                   NA                0.0295226   0.0247216   0.0343236
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1091347   0.1045758   0.1136935
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0826241   0.0709364   0.0943118
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0326705   0.0195292   0.0458117
6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.0486824   0.0426994   0.0546654
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0606548   0.0567999   0.0645096
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0561658   0.0493946   0.0629370
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.1288889   0.0850087   0.1727691
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2214452   0.1821080   0.2607825
24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0695825   0.0473246   0.0918405
24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.4949608   0.4621502   0.5277714
24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.2564649   0.2424885   0.2704414
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.3444444   0.3148293   0.3740596
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1559963   0.1472522   0.1647404
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0952180   0.0856733   0.1047628


### Parameter: RR


agecat      studyid                 country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ---------  ----------  ---------
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.715650   0.6256664   4.704511
Birth       ki1135781-COHORTS       INDIA         1                    1                 1.000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 1.263269   0.8887225   1.795665
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.239039   1.1361618   1.351232
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.330748   0.9846483   1.798500
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.366143   0.6754098   2.763281
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.919476   0.7303803   5.044477
6 months    ki1135781-COHORTS       INDIA         1                    1                 1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 1.947510   1.4419371   2.630348
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.298869   1.1350475   1.486335
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.171366   0.9137927   1.501543
24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       INDIA         0                    1                 2.256198   1.0418240   4.886076
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.353919   0.9445471   1.940714
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.030952   0.4135862   2.569870
24 months   ki1135781-COHORTS       GUATEMALA     1                    1                 1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 1.048796   0.7900563   1.392273
24 months   ki1135781-COHORTS       INDIA         1                    1                 1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 1.642597   1.4459414   1.865998
24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 3.892211   2.3355334   6.486445
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.352133   1.2137194   1.506331
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.470272   1.1913366   1.814516


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0096050   -0.0070171   0.0262270
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.0044711   -0.0016357   0.0105778
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0072287    0.0040396   0.0104179
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0049312   -0.0011059   0.0109682
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0119443   -0.0141590   0.0380475
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0034022   -0.0029150   0.0097193
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.0179680    0.0104003   0.0255357
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0054945    0.0028069   0.0081821
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0024328   -0.0011796   0.0060453
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.0519658    0.0058733   0.0980583
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0396608   -0.0052349   0.0845565
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0002984   -0.0087425   0.0093394
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.0214034   -0.1040111   0.1468178
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.0735410    0.0554468   0.0916352
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.2475627    0.1962132   0.2989123
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0150436    0.0092947   0.0207925
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0098460    0.0043489   0.0153431


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.3073593   -0.4568509   0.6706930
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.1514450   -0.0808328   0.3338049
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0662367    0.0364585   0.0950946
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0596818   -0.0178030   0.1312677
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1832590   -0.3278922   0.4976506
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1041357   -0.1063416   0.2745705
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.3690860    0.2014801   0.5015122
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0905870    0.0455851   0.1334670
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0433151   -0.0233407   0.1056292
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.4031830   -0.0465924   0.6596664
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1790998   -0.0473424   0.3565837
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0042890   -0.1344942   0.1260948
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.0432425   -0.2469348   0.2658920
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.2867488    0.2138602   0.3528794
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.7187304    0.5392725   0.8282877
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0964357    0.0591028   0.1322873
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1034051    0.0440634   0.1590630
