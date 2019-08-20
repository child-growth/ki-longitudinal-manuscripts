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

agecat                       studyid                 country                        impsan    ever_stunted   n_cell       n
---------------------------  ----------------------  -----------------------------  -------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     1                    0       83     203
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     1                    1       87     203
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0                    0       11     203
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0                    1       22     203
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         1                    0      157     189
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         1                    1       28     189
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         0                    0        4     189
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         0                    1        0     189
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          1                    0       45     195
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          1                    1       43     195
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0                    0       46     195
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0                    1       61     195
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          1                    0      154     209
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          1                    1       54     209
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0                    0        1     209
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0                    1        0     209
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           1                    0       26     231
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           1                    1       31     231
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0                    0       63     231
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0                    1      111     231
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        3     227
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        1     227
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0       96     227
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1      127     227
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     202
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     202
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0       31     202
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1      171     202
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     1                    0       92     530
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     1                    1      111     530
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0                    0      119     530
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0                    1      208     530
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     1                    0      378     632
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     1                    1      225     632
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0                    0       17     632
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0                    1       12     632
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      341     643
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1      228     643
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       50     643
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1       24     643
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           1                    0      144     197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           1                    1       40     197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0                    0        8     197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0                    1        5     197
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA                      1                    0       16     635
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA                      1                    1       49     635
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA                      0                    0      104     635
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA                      0                    1      466     635
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA                          1                    0     1423    4715
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA                          1                    1      389    4715
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA                          0                    0     1871    4715
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA                          0                    1     1032    4715
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES                    1                    0      102    1115
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES                    1                    1       75    1115
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES                    0                    0      207    1115
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES                    0                    1      731    1115
0-24 months (no birth st.)   ki1148112-LCNI-5        MALAWI                         1                    0        2     518
0-24 months (no birth st.)   ki1148112-LCNI-5        MALAWI                         1                    1        0     518
0-24 months (no birth st.)   ki1148112-LCNI-5        MALAWI                         0                    0      293     518
0-24 months (no birth st.)   ki1148112-LCNI-5        MALAWI                         0                    1      223     518
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH                     1                    0    10083   18445
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH                     1                    1     3102   18445
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH                     0                    0     3684   18445
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH                     0                    1     1576   18445
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH                     1                    0     1830    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH                     1                    1     1217    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH                     0                    0      439    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH                     0                    1      389    3875
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     1                    0      134     203
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     1                    1       36     203
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0                    0       27     203
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0                    1        6     203
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         1                    0      166     189
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         1                    1       19     189
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         0                    0        4     189
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         0                    1        0     189
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          1                    0       77     195
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          1                    1       11     195
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0                    0       78     195
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0                    1       29     195
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          1                    0      195     209
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          1                    1       13     209
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          0                    0        1     209
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          0                    1        0     209
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           1                    0       41     231
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           1                    1       16     231
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0                    0      106     231
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0                    1       68     231
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        3     227
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        1     227
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      151     227
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1       72     227
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     202
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     202
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      140     202
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1       62     202
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     1                    0      161     530
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     1                    1       42     530
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0                    0      248     530
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0                    1       79     530
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     1                    0      507     632
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     1                    1       96     632
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0                    0       24     632
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0                    1        5     632
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      460     643
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1      109     643
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       63     643
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1       11     643
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           1                    0      159     197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           1                    1       25     197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           0                    0        8     197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           0                    1        5     197
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA                      1                    0       48     565
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA                      1                    1       12     565
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA                      0                    0      379     565
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA                      0                    1      126     565
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA                          1                    0     1641    4569
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA                          1                    1       91    4569
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA                          0                    0     2570    4569
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA                          0                    1      267    4569
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES                    1                    0      162    1115
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES                    1                    1       15    1115
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES                    0                    0      738    1115
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES                    0                    1      200    1115
0-6 months (no birth st.)    ki1148112-LCNI-5        MALAWI                         1                    0        0     174
0-6 months (no birth st.)    ki1148112-LCNI-5        MALAWI                         1                    1        0     174
0-6 months (no birth st.)    ki1148112-LCNI-5        MALAWI                         0                    0      174     174
0-6 months (no birth st.)    ki1148112-LCNI-5        MALAWI                         0                    1        0     174
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH                     1                    0    11578   18401
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH                     1                    1     1573   18401
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH                     0                    0     4409   18401
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH                     0                    1      841   18401
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH                     1                    0     2632    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH                     1                    1      243    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH                     0                    0      707    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH                     0                    1       69    3651
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     1                    0       81     159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     1                    1       51     159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0                    0       11     159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0                    1       16     159
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         1                    0      155     168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         1                    1        9     168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         0                    0        4     168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         0                    1        0     168
6-24 months                  ki0047075b-MAL-ED       INDIA                          1                    0       45     155
6-24 months                  ki0047075b-MAL-ED       INDIA                          1                    1       32     155
6-24 months                  ki0047075b-MAL-ED       INDIA                          0                    0       46     155
6-24 months                  ki0047075b-MAL-ED       INDIA                          0                    1       32     155
6-24 months                  ki0047075b-MAL-ED       NEPAL                          1                    0      153     195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          1                    1       41     195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0                    0        1     195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0                    1        0     195
6-24 months                  ki0047075b-MAL-ED       PERU                           1                    0       26     147
6-24 months                  ki0047075b-MAL-ED       PERU                           1                    1       15     147
6-24 months                  ki0047075b-MAL-ED       PERU                           0                    0       63     147
6-24 months                  ki0047075b-MAL-ED       PERU                           0                    1       43     147
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        3     154
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     154
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0       96     154
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1       55     154
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     138
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     138
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0       29     138
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1      109     138
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     1                    0       67     345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     1                    1       69     345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0                    0       80     345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0                    1      129     345
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     1                    0      305     455
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     1                    1      129     455
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0                    0       14     455
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0                    1        7     455
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      321     500
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     1                    1      119     500
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       47     500
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0                    1       13     500
6-24 months                  ki1114097-CONTENT       PERU                           1                    0      144     167
6-24 months                  ki1114097-CONTENT       PERU                           1                    1       15     167
6-24 months                  ki1114097-CONTENT       PERU                           0                    0        8     167
6-24 months                  ki1114097-CONTENT       PERU                           0                    1        0     167
6-24 months                  ki1135781-COHORTS       GUATEMALA                      1                    0       16     626
6-24 months                  ki1135781-COHORTS       GUATEMALA                      1                    1       46     626
6-24 months                  ki1135781-COHORTS       GUATEMALA                      0                    0       99     626
6-24 months                  ki1135781-COHORTS       GUATEMALA                      0                    1      465     626
6-24 months                  ki1135781-COHORTS       INDIA                          1                    0     1329    4117
6-24 months                  ki1135781-COHORTS       INDIA                          1                    1      308    4117
6-24 months                  ki1135781-COHORTS       INDIA                          0                    0     1690    4117
6-24 months                  ki1135781-COHORTS       INDIA                          0                    1      790    4117
6-24 months                  ki1135781-COHORTS       PHILIPPINES                    1                    0       74     834
6-24 months                  ki1135781-COHORTS       PHILIPPINES                    1                    1       60     834
6-24 months                  ki1135781-COHORTS       PHILIPPINES                    0                    0      169     834
6-24 months                  ki1135781-COHORTS       PHILIPPINES                    0                    1      531     834
6-24 months                  ki1148112-LCNI-5        MALAWI                         1                    0        2     706
6-24 months                  ki1148112-LCNI-5        MALAWI                         1                    1        1     706
6-24 months                  ki1148112-LCNI-5        MALAWI                         0                    0      281     706
6-24 months                  ki1148112-LCNI-5        MALAWI                         0                    1      422     706
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH                     1                    0     6232   10518
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH                     1                    1     1542   10518
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH                     0                    0     2000   10518
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH                     0                    1      744   10518
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH                     1                    0     1828    3644
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH                     1                    1     1035    3644
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH                     0                    0      437    3644
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH                     0                    1      344    3644


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/4a9ef83f-65e9-4221-a525-40f2a9647fd3/cf2dd152-04de-4893-8302-3b9d4cbf1531/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4a9ef83f-65e9-4221-a525-40f2a9647fd3/cf2dd152-04de-4893-8302-3b9d4cbf1531/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4a9ef83f-65e9-4221-a525-40f2a9647fd3/cf2dd152-04de-4893-8302-3b9d4cbf1531/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4a9ef83f-65e9-4221-a525-40f2a9647fd3/cf2dd152-04de-4893-8302-3b9d4cbf1531/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.5142745   0.4394149   0.5891342
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.6373923   0.4695040   0.8052806
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         1                    NA                0.4741912   0.3686585   0.5797239
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         0                    NA                0.5647245   0.4713524   0.6580967
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          1                    NA                0.5475012   0.4102679   0.6847345
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          0                    NA                0.6376256   0.5658561   0.7093951
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5423749   0.4742587   0.6104910
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.6314849   0.5798705   0.6830993
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.3732423   0.3346453   0.4118394
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.3821359   0.1938653   0.5704066
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.4008978   0.3607054   0.4410902
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.3143544   0.2080635   0.4206452
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          1                    NA                0.2173913   0.1576413   0.2771413
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          0                    NA                0.3846154   0.1194797   0.6497510
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     1                    NA                0.7602343   0.6491900   0.8712786
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     0                    NA                0.8143284   0.7823667   0.8462901
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         1                    NA                0.2413533   0.2198149   0.2628917
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         0                    NA                0.3379620   0.3205469   0.3553772
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.4835384   0.4080002   0.5590766
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7718267   0.7450102   0.7986432
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2428220   0.2338558   0.2517883
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2887377   0.2738225   0.3036529
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.4021718   0.3819456   0.4223980
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.4621114   0.4188631   0.5053597
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.2117647   0.1501973   0.2733321
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1818182   0.0498993   0.3137371
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         1                    NA                0.1321535   0.0635080   0.2007990
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         0                    NA                0.2814079   0.1964656   0.3663501
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          1                    NA                0.2751312   0.1554238   0.3948385
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          0                    NA                0.3929306   0.3196582   0.4662030
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2140030   0.1583827   0.2696233
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2380126   0.1919466   0.2840785
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1592040   0.1299789   0.1884291
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.1724138   0.0348242   0.3100034
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1915156   0.1591905   0.2238407
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1499340   0.0677771   0.2320909
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          1                    NA                0.1358696   0.0862338   0.1855054
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          0                    NA                0.3846154   0.1194797   0.6497510
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     1                    NA                0.1997644   0.0994005   0.3001283
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     0                    NA                0.2506711   0.2128759   0.2884662
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         1                    NA                0.0596219   0.0471340   0.0721099
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         0                    NA                0.0884579   0.0780332   0.0988826
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0866565   0.0451716   0.1281414
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.2129975   0.1868004   0.2391946
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1250464   0.1184594   0.1316333
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1590792   0.1460465   0.1721120
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0854807   0.0727021   0.0982594
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0879816   0.0603110   0.1156522
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.3865848   0.3037953   0.4693743
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.5618250   0.3648656   0.7587845
6-24 months                  ki0047075b-MAL-ED       INDIA         1                    NA                0.4279904   0.3170356   0.5389453
6-24 months                  ki0047075b-MAL-ED       INDIA         0                    NA                0.4270231   0.3192679   0.5347783
6-24 months                  ki0047075b-MAL-ED       PERU          1                    NA                0.3804284   0.2204820   0.5403749
6-24 months                  ki0047075b-MAL-ED       PERU          0                    NA                0.4099523   0.3149713   0.5049333
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5108021   0.4268664   0.5947378
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.6038696   0.5388058   0.6689334
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.2972350   0.2541887   0.3402813
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.3333333   0.1314921   0.5351746
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2674947   0.2261371   0.3088523
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1935498   0.0997331   0.2873666
6-24 months                  ki1135781-COHORTS       GUATEMALA     1                    NA                0.7389941   0.6089877   0.8690006
6-24 months                  ki1135781-COHORTS       GUATEMALA     0                    NA                0.8198822   0.7881812   0.8515833
6-24 months                  ki1135781-COHORTS       INDIA         1                    NA                0.2108308   0.1893603   0.2323013
6-24 months                  ki1135781-COHORTS       INDIA         0                    NA                0.3028391   0.2845464   0.3211318
6-24 months                  ki1135781-COHORTS       PHILIPPINES   1                    NA                0.5060397   0.4189620   0.5931173
6-24 months                  ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7502686   0.7183554   0.7821818
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2074445   0.1965467   0.2183424
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2376083   0.2190647   0.2561519
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.3649635   0.3441317   0.3857953
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.4376720   0.3923778   0.4829663


### Parameter: E(Y)


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.5369458   0.4681830   0.6057086
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         NA                   NA                0.5333333   0.4631313   0.6035354
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          NA                   NA                0.6147186   0.5518243   0.6776129
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.6018868   0.5601729   0.6436007
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.3750000   0.3372263   0.4127737
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.3919129   0.3541506   0.4296752
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          NA                   NA                0.2284264   0.1696529   0.2871999
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.8110236   0.7805500   0.8414972
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         NA                   NA                0.3013786   0.2882798   0.3144773
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.7228700   0.6965868   0.7491531
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.2536189   0.2458286   0.2614092
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.4144516   0.3962595   0.4326437
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.2068966   0.1510349   0.2627582
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         NA                   NA                0.2051282   0.1483073   0.2619492
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          NA                   NA                0.3636364   0.3014678   0.4258049
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2283019   0.1925336   0.2640702
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.1598101   0.1312195   0.1884008
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.1866252   0.1564874   0.2167630
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          NA                   NA                0.1522843   0.1019837   0.2025848
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     NA                   NA                0.2442478   0.2087898   0.2797057
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         NA                   NA                0.0783541   0.0705612   0.0861470
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.1928251   0.1696580   0.2159922
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1311885   0.1255590   0.1368180
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0854560   0.0740923   0.0968198
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED       INDIA         NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months                  ki0047075b-MAL-ED       PERU          NA                   NA                0.3945578   0.3152779   0.4738378
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.2989011   0.2567922   0.3410100
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.2640000   0.2253243   0.3026757
6-24 months                  ki1135781-COHORTS       GUATEMALA     NA                   NA                0.8162939   0.7859345   0.8466533
6-24 months                  ki1135781-COHORTS       INDIA         NA                   NA                0.2666991   0.2531888   0.2802093
6-24 months                  ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.7086331   0.6777759   0.7394903
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.2173417   0.2079638   0.2267196
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.3784303   0.3598372   0.3970234


### Parameter: RR


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    0                    1                 1.2394008   0.9223168   1.665495
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         0                    1                 1.1909216   0.9044328   1.568159
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          0                    1                 1.1646104   0.8843069   1.533763
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.1642961   1.0039891   1.350199
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    0                    1                 1.0238279   0.6193778   1.692382
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 0.7841259   0.5523943   1.113070
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          0                    1                 1.7692308   0.8423327   3.716082
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     0                    1                 1.0711545   0.9213075   1.245374
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         0                    1                 1.4002792   1.2641417   1.551078
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   0                    1                 1.5962055   1.3611234   1.871889
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1890917   1.1212384   1.261051
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.1490398   1.0343290   1.276472
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    0                    1                 0.8585859   0.3929374   1.876049
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         0                    1                 2.1294015   1.1629716   3.898935
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          0                    1                 1.4281574   0.8895363   2.292918
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.1121926   0.8071768   1.532468
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    0                    1                 1.0829741   0.4775197   2.456093
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 0.7828812   0.4416279   1.387827
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          0                    1                 2.8307692   1.2974209   6.176295
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     0                    1                 1.2548336   0.7431483   2.118833
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         0                    1                 1.4836462   1.1670402   1.886144
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   0                    1                 2.4579524   1.4988694   4.030725
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.2721622   1.1600695   1.395086
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.0292563   0.7335869   1.444094
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    0                    1                 1.4533036   0.9696125   2.178284
6-24 months                  ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED       INDIA         0                    1                 0.9977398   0.6963901   1.429493
6-24 months                  ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED       PERU          0                    1                 1.0776068   0.6658152   1.744082
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.1821987   0.9727431   1.436755
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    0                    1                 1.1214470   0.6017088   2.090120
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 0.7235651   0.4348697   1.203916
6-24 months                  ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS       GUATEMALA     0                    1                 1.1094570   0.9273013   1.327395
6-24 months                  ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS       INDIA         0                    1                 1.4364083   1.2770247   1.615684
6-24 months                  ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS       PHILIPPINES   0                    1                 1.4826280   1.2427051   1.768872
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1454065   1.0457752   1.254530
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.1992213   1.0667648   1.348124


### Parameter: PAR


agecat                       studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0226713   -0.0055655   0.0509081
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0591421   -0.0185837   0.1368680
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          1                    NA                 0.0672174   -0.0524509   0.1868857
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0595119    0.0069171   0.1121068
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0017577   -0.0065495   0.0100648
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0089849   -0.0218298   0.0038600
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          1                    NA                 0.0110351   -0.0078182   0.0298884
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0507893   -0.0537742   0.1553528
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         1                    NA                 0.0600253    0.0416653   0.0783852
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.2393316    0.1706388   0.3080243
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0107968    0.0061111   0.0154825
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0122798    0.0031459   0.0214137
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0048682   -0.0285826   0.0188463
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0729747    0.0126150   0.1333345
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          1                    NA                 0.0885052   -0.0185474   0.1955578
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0142989   -0.0299135   0.0585112
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0006061   -0.0058518   0.0070640
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0048904   -0.0150025   0.0052217
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          1                    NA                 0.0164147   -0.0033740   0.0362034
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0444834   -0.0512494   0.1402162
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         1                    NA                 0.0187322    0.0076522   0.0298121
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1061686    0.0646260   0.1477112
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0061422    0.0023172   0.0099672
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0000247   -0.0055924   0.0055430
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0347989   -0.0010348   0.0706326
6-24 months                  ki0047075b-MAL-ED       INDIA         1                    NA                -0.0150872   -0.0944815   0.0643071
6-24 months                  ki0047075b-MAL-ED       PERU          1                    NA                 0.0141294   -0.1251683   0.1534271
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0631109   -0.0013782   0.1276001
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0016661   -0.0078846   0.0112168
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0034947   -0.0172030   0.0102136
6-24 months                  ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0772998   -0.0459566   0.2005562
6-24 months                  ki1135781-COHORTS       INDIA         1                    NA                 0.0558683    0.0376084   0.0741281
6-24 months                  ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.2025934    0.1237895   0.2813973
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0098972    0.0041992   0.0155951
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0134668    0.0034210   0.0235126


### Parameter: PAF


agecat                       studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0422226   -0.0122431   0.0937578
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         1                    NA                 0.1108915   -0.0485907   0.2461178
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          1                    NA                 0.1093466   -0.1091521   0.2848019
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0988756    0.0065906   0.1825876
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0046871   -0.0177142   0.0265952
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0229258   -0.0562507   0.0093478
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          1                    NA                 0.0483092   -0.0374644   0.1269913
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0626237   -0.0758145   0.1832474
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         1                    NA                 0.1991690    0.1360780   0.2576526
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.3310852    0.2269735   0.4211751
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0425711    0.0239102   0.0608752
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0296290    0.0073201   0.0514366
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0235294   -0.1447220   0.0848324
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         1                    NA                 0.3557517    0.0060464   0.5824192
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          1                    NA                 0.2433893   -0.1162383   0.4871527
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0626314   -0.1522519   0.2374412
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0037929   -0.0374440   0.0433907
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0262045   -0.0817668   0.0265041
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          1                    NA                 0.1077899   -0.0282190   0.2258080
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     1                    NA                 0.1821241   -0.3199733   0.4932314
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         1                    NA                 0.2390708    0.0858407   0.3666166
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.5505954    0.2879690   0.7163544
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0468194    0.0172823   0.0754687
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0002891   -0.0676095   0.0627862
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0825824   -0.0069158   0.1641257
6-24 months                  ki0047075b-MAL-ED       INDIA         1                    NA                -0.0365394   -0.2479877   0.1390830
6-24 months                  ki0047075b-MAL-ED       PERU          1                    NA                 0.0358107   -0.3905961   0.3314658
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.1099660   -0.0105692   0.2161245
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0055740   -0.0268961   0.0370174
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0132375   -0.0665029   0.0373677
6-24 months                  ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0946960   -0.0701076   0.2341188
6-24 months                  ki1135781-COHORTS       INDIA         1                    NA                 0.2094805    0.1383554   0.2747346
6-24 months                  ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.2858932    0.1635037   0.3903757
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0455373    0.0189131   0.0714391
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0355859    0.0086729   0.0617683
