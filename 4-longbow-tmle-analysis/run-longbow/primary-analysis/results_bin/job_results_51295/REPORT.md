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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** safeh20

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
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

agecat      studyid                    country                        safeh20    swasted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0        0     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        0     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      214     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        8     222
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        0     119
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0     119
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0      119     119
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        0     119
Birth       ki0047075b-MAL-ED          INDIA                          1                0        0     188
Birth       ki0047075b-MAL-ED          INDIA                          1                1        0     188
Birth       ki0047075b-MAL-ED          INDIA                          0                0      182     188
Birth       ki0047075b-MAL-ED          INDIA                          0                1        6     188
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        1     164
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        0     164
Birth       ki0047075b-MAL-ED          NEPAL                          0                0      159     164
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        4     164
Birth       ki0047075b-MAL-ED          PERU                           1                0        9     240
Birth       ki0047075b-MAL-ED          PERU                           1                1        0     240
Birth       ki0047075b-MAL-ED          PERU                           0                0      231     240
Birth       ki0047075b-MAL-ED          PERU                           0                1        0     240
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       33     214
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     214
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      180     214
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        1     214
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       75     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        1     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       38     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     114
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0       26      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       22      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0      23
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    15412   15690
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1      254   15690
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0       24   15690
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        0   15690
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      678     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1        5     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0        0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      238     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        2     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0        0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      142     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     142
6 months    ki0047075b-MAL-ED          INDIA                          1                0        0     235
6 months    ki0047075b-MAL-ED          INDIA                          1                1        0     235
6 months    ki0047075b-MAL-ED          INDIA                          0                0      230     235
6 months    ki0047075b-MAL-ED          INDIA                          0                1        5     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                0        1     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      232     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        0     233
6 months    ki0047075b-MAL-ED          PERU                           1                0       11     259
6 months    ki0047075b-MAL-ED          PERU                           1                1        0     259
6 months    ki0047075b-MAL-ED          PERU                           0                0      248     259
6 months    ki0047075b-MAL-ED          PERU                           0                1        0     259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       37     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      208     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        3     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0      168     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       78     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     246
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      361     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1        0     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0      529     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1        5     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0        2     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1        0     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      575     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        5     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0        0     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        0     580
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      715     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     715
6 months    ki1114097-CONTENT          PERU                           1                0       54      57
6 months    ki1114097-CONTENT          PERU                           1                1        0      57
6 months    ki1114097-CONTENT          PERU                           0                0        3      57
6 months    ki1114097-CONTENT          PERU                           0                1        0      57
6 months    ki1148112-LCNI-5           MALAWI                         1                0      672     816
6 months    ki1148112-LCNI-5           MALAWI                         1                1        0     816
6 months    ki1148112-LCNI-5           MALAWI                         0                0      144     816
6 months    ki1148112-LCNI-5           MALAWI                         0                1        0     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    16527   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      229   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0       20   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1        0   16776
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     4793    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1       33    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0        1    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    4827
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      212     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0        0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      112     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        1     113
24 months   ki0047075b-MAL-ED          INDIA                          1                0        0     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          0                0      225     227
24 months   ki0047075b-MAL-ED          INDIA                          0                1        2     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                0        1     226
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        0     226
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      225     226
24 months   ki0047075b-MAL-ED          NEPAL                          0                1        0     226
24 months   ki0047075b-MAL-ED          PERU                           1                0        7     193
24 months   ki0047075b-MAL-ED          PERU                           1                1        0     193
24 months   ki0047075b-MAL-ED          PERU                           0                0      185     193
24 months   ki0047075b-MAL-ED          PERU                           0                1        1     193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       34     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      203     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0      145     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       68     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     213
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0      416     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       10     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0        2     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1        0     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      568     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        9     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0        0     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        0     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      510     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        4     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     514
24 months   ki1114097-CONTENT          PERU                           1                0       45      48
24 months   ki1114097-CONTENT          PERU                           1                1        0      48
24 months   ki1114097-CONTENT          PERU                           0                0        3      48
24 months   ki1114097-CONTENT          PERU                           0                1        0      48
24 months   ki1148112-LCNI-5           MALAWI                         1                0      463     558
24 months   ki1148112-LCNI-5           MALAWI                         1                1        1     558
24 months   ki1148112-LCNI-5           MALAWI                         0                0       94     558
24 months   ki1148112-LCNI-5           MALAWI                         0                1        0     558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     8251    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      332    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0       10    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1        1    8594
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     4600    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      129    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0        1    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    4730


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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH


ALL STRATA DROPPED. JOB FINISHED
















