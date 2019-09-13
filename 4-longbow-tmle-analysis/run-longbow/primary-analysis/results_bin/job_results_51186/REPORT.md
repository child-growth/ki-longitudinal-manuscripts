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

agecat                       studyid                    country                        safeh20    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                     0       94     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                     1      109     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                     0        0     131
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     131
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                     0      115     131
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                     1       16     131
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                     0        0     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                     1        0     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                     0       91     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                     1      105     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                     0        0     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                     1        1     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                     0      153     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                     1       53     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                     0        5     229
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                     1        5     229
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                     0       84     229
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                     1      135     229
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       19     230
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       16     230
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       81     230
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1      114     230
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       24     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1      125     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       11     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       50     210
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       72     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1      185     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0        0     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        0     257
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                     0      211     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                     1      319     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                     0        0     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                     1        0     530
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                     0      395     632
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                     1      237     632
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                     0        0     632
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                     1        0     632
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      396     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      257     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0        0     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        0     653
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                     0       45      55
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                     1        7      55
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                     0        3      55
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                     1        0      55
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                     0      243     521
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                     1      186     521
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                     0       53     521
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                     1       39     521
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    13753   18449
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     4672   18449
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0       18   18449
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1        6   18449
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2268    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1     1606    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0        1    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    3875
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                     0      161     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                     1       42     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                     0        0     131
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                     1        0     131
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                     0      123     131
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                     1        8     131
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                     0        0     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                     1        0     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                     0      155     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                     1       41     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                     0        0     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                     1        1     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                     0      194     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                     1       12     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                     0        5     229
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                     1        5     229
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                     0      141     229
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                     1       78     229
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       24     230
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       11     230
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      132     230
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1       63     230
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0      105     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       44     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       43     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       18     210
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                     0      254     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        3     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                     0        0     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        0     257
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                     0      409     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                     1      121     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                     0        0     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                     1        0     530
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                     0      531     632
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                     1      101     632
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                     0        0     632
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                     1        0     632
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      529     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      124     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0        0     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        0     653
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                     0       47      55
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                     1        5      55
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                     0        3      55
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                     1        0      55
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                     0      140     174
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                     1        0     174
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                     0       34     174
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                     1        0     174
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    15972   18405
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2410   18405
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0       19   18405
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1        4   18405
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3338    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1      312    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0        1    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    3651
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                     0       92     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                     1       67     159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                     0        0     122
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                     1        0     122
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                     0      114     122
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                     1        8     122
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                     0        0     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                     1        0     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                     0       91     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                     1       64     155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                     0        0     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                     1        0     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                     0      152     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                     1       41     193
6-24 months                  ki0047075b-MAL-ED          PERU                           1                     0        5     146
6-24 months                  ki0047075b-MAL-ED          PERU                           1                     1        0     146
6-24 months                  ki0047075b-MAL-ED          PERU                           0                     0       84     146
6-24 months                  ki0047075b-MAL-ED          PERU                           0                     1       57     146
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       19     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        5     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       81     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1       51     156
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       22     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       81     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       10     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       32     145
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       59     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                     1      184     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                     0        0     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        0     243
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                     0      147     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                     1      198     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                     0        0     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                     1        0     345
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                     0      319     455
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                     1      136     455
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                     0        0     455
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                     1        0     455
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      373     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      133     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                     0        0     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        0     506
6-24 months                  ki1114097-CONTENT          PERU                           1                     0       45      50
6-24 months                  ki1114097-CONTENT          PERU                           1                     1        2      50
6-24 months                  ki1114097-CONTENT          PERU                           0                     0        3      50
6-24 months                  ki1114097-CONTENT          PERU                           0                     1        0      50
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                     0      234     710
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                     1      357     710
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                     0       50     710
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                     1       69     710
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                     0     8228   10521
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2284   10521
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                     0        7   10521
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                     1        2   10521
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2264    3644
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                     1     1379    3644
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                     0        1    3644
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    3644


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/c4b2668a-d4d6-4874-ac4d-7c3f78a3de71/60a75d8c-75ea-4592-905d-e4e03d1fbd94/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c4b2668a-d4d6-4874-ac4d-7c3f78a3de71/60a75d8c-75ea-4592-905d-e4e03d1fbd94/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c4b2668a-d4d6-4874-ac4d-7c3f78a3de71/60a75d8c-75ea-4592-905d-e4e03d1fbd94/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c4b2668a-d4d6-4874-ac4d-7c3f78a3de71/60a75d8c-75ea-4592-905d-e4e03d1fbd94/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           1                    NA                0.5000000   0.1894236   0.8105764
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           0                    NA                0.6164384   0.5518969   0.6809798
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.4687069   0.2949781   0.6424357
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.5811024   0.5117424   0.6504624
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8371825   0.7779112   0.8964539
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8313191   0.7326262   0.9300120
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         1                    NA                0.4357235   0.3889316   0.4825154
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         0                    NA                0.4292987   0.3286708   0.5299265
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.2535685   0.2455877   0.2615493
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.2500000   0.2416148   0.2583852
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           1                    NA                0.5000000   0.1894236   0.8105764
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           0                    NA                0.3561644   0.2926036   0.4197251
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.3279573   0.1623258   0.4935887
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.3197602   0.2543944   0.3851260
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2889871   0.2160339   0.3619403
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3209952   0.2073484   0.4346420
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.2083333   0.0453326   0.3713340
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.3863636   0.3030317   0.4696955
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7831397   0.7040885   0.8621909
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7743698   0.6439937   0.9047459
6-24 months                  ki1148112-LCNI-5    MALAWI                         1                    NA                0.6061662   0.5669294   0.6454029
6-24 months                  ki1148112-LCNI-5    MALAWI                         0                    NA                0.5594495   0.4693313   0.6495676


### Parameter: E(Y)


agecat                       studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           NA                   NA                0.6113537   0.5480828   0.6746246
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.5652174   0.5010116   0.6294232
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8333333   0.7828081   0.8838586
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.4318618   0.3892877   0.4744359
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.2535639   0.2457706   0.2613571
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           NA                   NA                0.3624454   0.3000489   0.4248420
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.3217391   0.2612356   0.3822427
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2952381   0.2333963   0.3570799
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.3589744   0.2834562   0.4344926
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7793103   0.7115754   0.8470453
6-24 months                  ki1148112-LCNI-5    MALAWI                         NA                   NA                0.6000000   0.5639396   0.6360604


### Parameter: RR


agecat                       studyid             country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           0                    1                 1.2328767   0.6566758   2.314666
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 1.2397992   0.8415823   1.826443
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9929962   0.8652419   1.139614
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         0                    1                 0.9852549   0.7626641   1.272811
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 0.9859268   0.9425564   1.031293
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           0                    1                 0.7123288   0.3732540   1.359429
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 0.9750057   0.5663880   1.678418
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 1.1107596   0.7221302   1.708538
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 1.8545455   0.8237010   4.175470
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9888016   0.8146307   1.200211
6-24 months                  ki1148112-LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1148112-LCNI-5    MALAWI                         0                    1                 0.9229309   0.7766278   1.096795


### Parameter: PAR


agecat                       studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           1                    NA                 0.1113537   -0.1920217   0.4147291
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0965105   -0.0635154   0.2565364
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0038492   -0.0366492   0.0289508
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0038617   -0.0232343   0.0155110
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0000046   -0.0002872   0.0002779
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           1                    NA                -0.1375546   -0.4407488   0.1656397
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0062181   -0.1591249   0.1466887
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0062510   -0.0324268   0.0449288
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.1506410   -0.0045913   0.3058734
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0038294   -0.0474406   0.0397819
6-24 months                  ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0061662   -0.0222210   0.0098886


### Parameter: PAF


agecat                       studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           1                    NA                 0.1821429   -0.5013602   0.5544771
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.1707494   -0.1682410   0.4113744
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0046190   -0.0447714   0.0339902
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0089419   -0.0548206   0.0349414
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0000183   -0.0011330   0.0010951
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           1                    NA                -0.3795181   -1.5324147   0.2485156
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0193267   -0.6246952   0.3604789
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0211726   -0.1190919   0.1438567
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.4196429   -0.2159786   0.7230096
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0049138   -0.0624827   0.0495359
6-24 months                  ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0102769   -0.0374099   0.0161464
