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

agecat                       studyid                 country                        impsan    ever_stunted   n_cell       n
---------------------------  ----------------------  -----------------------------  -------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     1                    0       82     203
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     1                    1       88     203
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0                    0       11     203
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0                    1       22     203
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         1                    0      151     185
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         1                    1       30     185
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         0                    0        3     185
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         0                    1        1     185
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          1                    0       44     196
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          1                    1       44     196
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0                    0       45     196
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0                    1       63     196
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          1                    0      153     208
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          1                    1       54     208
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0                    0        1     208
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0                    1        0     208
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           1                    0       26     231
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           1                    1       31     231
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0                    0       63     231
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0                    1      111     231
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        3     225
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        1     225
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0       93     225
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1      128     225
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     202
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     202
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0       30     202
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1      172     202
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     1                    0       92     530
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     1                    1      111     530
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0                    0      119     530
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0                    1      208     530
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     1                    0       48      58
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     1                    1        8      58
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0                    0        2      58
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0                    1        0      58
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
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH                     1                    0    10052   18353
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH                     1                    1     3074   18353
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH                     0                    0     3669   18353
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH                     0                    1     1558   18353
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH                     1                    0     1830    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH                     1                    1     1217    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH                     0                    0      439    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH                     0                    1      389    3875
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     1                    0      133     203
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     1                    1       37     203
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0                    0       27     203
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0                    1        6     203
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         1                    0      161     185
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         1                    1       20     185
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         0                    0        4     185
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         0                    1        0     185
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          1                    0       76     196
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          1                    1       12     196
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0                    0       78     196
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0                    1       30     196
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          1                    0      194     208
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          1                    1       13     208
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          0                    0        1     208
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          0                    1        0     208
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           1                    0       41     231
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           1                    1       16     231
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0                    0      106     231
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0                    1       68     231
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        3     225
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        1     225
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      150     225
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1       71     225
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     202
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     202
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      139     202
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1       63     202
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     1                    0      161     530
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     1                    1       42     530
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0                    0      248     530
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0                    1       79     530
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     1                    0       51      58
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     1                    1        5      58
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0                    0        2      58
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0                    1        0      58
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
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH                     1                    0    11533   18309
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH                     1                    1     1559   18309
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH                     0                    0     4389   18309
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH                     0                    1      828   18309
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH                     1                    0     2632    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH                     1                    1      243    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH                     0                    0      707    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH                     0                    1       69    3651
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     1                    0       80     158
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     1                    1       51     158
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0                    0       11     158
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0                    1       16     158
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         1                    0      149     163
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         1                    1       10     163
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         0                    0        3     163
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         0                    1        1     163
6-24 months                  ki0047075b-MAL-ED       INDIA                          1                    0       44     154
6-24 months                  ki0047075b-MAL-ED       INDIA                          1                    1       32     154
6-24 months                  ki0047075b-MAL-ED       INDIA                          0                    0       45     154
6-24 months                  ki0047075b-MAL-ED       INDIA                          0                    1       33     154
6-24 months                  ki0047075b-MAL-ED       NEPAL                          1                    0      152     194
6-24 months                  ki0047075b-MAL-ED       NEPAL                          1                    1       41     194
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0                    0        1     194
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0                    1        0     194
6-24 months                  ki0047075b-MAL-ED       PERU                           1                    0       26     147
6-24 months                  ki0047075b-MAL-ED       PERU                           1                    1       15     147
6-24 months                  ki0047075b-MAL-ED       PERU                           0                    0       63     147
6-24 months                  ki0047075b-MAL-ED       PERU                           0                    1       43     147
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        3     153
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     153
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0       93     153
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1       57     153
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     137
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     137
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0       28     137
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1      109     137
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     1                    0       67     345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     1                    1       69     345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0                    0       80     345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0                    1      129     345
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     1                    0        3       6
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     1                    1        3       6
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0                    0        0       6
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0                    1        0       6
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
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH                     1                    0     6222   10485
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH                     1                    1     1528   10485
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH                     0                    0     1996   10485
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH                     0                    1      739   10485
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
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/512c7167-7bb3-425f-8eca-225f14e75375/db0d9ed9-422b-4b48-bd9c-cea27a4e60c7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/512c7167-7bb3-425f-8eca-225f14e75375/db0d9ed9-422b-4b48-bd9c-cea27a4e60c7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/512c7167-7bb3-425f-8eca-225f14e75375/db0d9ed9-422b-4b48-bd9c-cea27a4e60c7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/512c7167-7bb3-425f-8eca-225f14e75375/db0d9ed9-422b-4b48-bd9c-cea27a4e60c7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.5215194   0.4468248   0.5962139
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.6649606   0.4979022   0.8320191
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         1                    NA                0.5073274   0.4020030   0.6126518
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         0                    NA                0.5850338   0.4932901   0.6767776
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          1                    NA                0.5249978   0.3887898   0.6612058
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          0                    NA                0.6422233   0.5708297   0.7136169
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5606864   0.4921159   0.6292569
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.6246327   0.5726655   0.6766000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.3996075   0.3594736   0.4397415
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.3287787   0.2180326   0.4395248
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          1                    NA                0.2173913   0.1576413   0.2771413
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          0                    NA                0.3846154   0.1194797   0.6497510
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     1                    NA                0.7561917   0.6471121   0.8652712
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     0                    NA                0.8143851   0.7824696   0.8463006
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         1                    NA                0.2407348   0.2191767   0.2622928
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         0                    NA                0.3390412   0.3215646   0.3565178
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.4876984   0.4116113   0.5637855
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7711551   0.7442588   0.7980515
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2424306   0.2335255   0.2513356
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2853441   0.2700494   0.3006388
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.4017126   0.3813991   0.4220261
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.4632519   0.4212169   0.5052869
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.2176471   0.1554638   0.2798304
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1818182   0.0498993   0.3137371
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         1                    NA                0.1351006   0.0621209   0.2080803
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         0                    NA                0.2740311   0.1887798   0.3592824
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          1                    NA                0.2798237   0.1592873   0.4003602
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          0                    NA                0.3922844   0.3188178   0.4657509
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2154645   0.1588779   0.2720510
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2361807   0.1902486   0.2821129
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1915536   0.1592252   0.2238821
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1457364   0.0632926   0.2281802
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          1                    NA                0.1358696   0.0862338   0.1855054
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          0                    NA                0.3846154   0.1194797   0.6497510
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     1                    NA                0.1912531   0.0897325   0.2927736
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     0                    NA                0.2507022   0.2129171   0.2884872
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         1                    NA                0.0604709   0.0479641   0.0729778
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         0                    NA                0.0880759   0.0776340   0.0985178
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0864263   0.0450110   0.1278415
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.2133179   0.1870921   0.2395438
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1243455   0.1177601   0.1309309
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1569945   0.1442237   0.1697654
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0854431   0.0727906   0.0980955
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0877934   0.0596591   0.1159276
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.3909999   0.3073576   0.4746422
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.5755681   0.3774388   0.7736974
6-24 months                  ki0047075b-MAL-ED       INDIA         1                    NA                0.4309277   0.3193962   0.5424593
6-24 months                  ki0047075b-MAL-ED       INDIA         0                    NA                0.4322306   0.3241045   0.5403567
6-24 months                  ki0047075b-MAL-ED       PERU          1                    NA                0.3598057   0.2059277   0.5136837
6-24 months                  ki0047075b-MAL-ED       PERU          0                    NA                0.4085150   0.3144194   0.5026106
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5138395   0.4281633   0.5995157
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.5992071   0.5342033   0.6642109
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2682970   0.2268511   0.3097429
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.2133312   0.1024898   0.3241726
6-24 months                  ki1135781-COHORTS       GUATEMALA     1                    NA                0.7634190   0.6437938   0.8830442
6-24 months                  ki1135781-COHORTS       GUATEMALA     0                    NA                0.8206815   0.7889974   0.8523657
6-24 months                  ki1135781-COHORTS       INDIA         1                    NA                0.2117715   0.1904544   0.2330886
6-24 months                  ki1135781-COHORTS       INDIA         0                    NA                0.3025578   0.2842435   0.3208720
6-24 months                  ki1135781-COHORTS       PHILIPPINES   1                    NA                0.4948405   0.4081986   0.5814824
6-24 months                  ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7498780   0.7177516   0.7820044
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2066286   0.1957168   0.2175403
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2411774   0.2225589   0.2597960
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.3648036   0.3439309   0.3856764
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.4346648   0.3885101   0.4808195


### Parameter: E(Y)


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.5418719   0.4731628   0.6105810
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         NA                   NA                0.5459184   0.4760370   0.6157998
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          NA                   NA                0.6147186   0.5518243   0.6776129
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.6018868   0.5601729   0.6436007
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.3919129   0.3541506   0.4296752
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          NA                   NA                0.2284264   0.1696529   0.2871999
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.8110236   0.7805500   0.8414972
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         NA                   NA                0.3013786   0.2882798   0.3144773
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.7228700   0.6965868   0.7491531
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.2523838   0.2446469   0.2601207
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.4144516   0.3962595   0.4326437
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.2118227   0.1554757   0.2681696
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         NA                   NA                0.2142857   0.1566940   0.2718774
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          NA                   NA                0.3636364   0.3014678   0.4258049
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2283019   0.1925336   0.2640702
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.1866252   0.1564874   0.2167630
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          NA                   NA                0.1522843   0.1019837   0.2025848
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     NA                   NA                0.2442478   0.2087898   0.2797057
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         NA                   NA                0.0783541   0.0705612   0.0861470
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.1928251   0.1696580   0.2159922
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1303730   0.1247937   0.1359524
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0854560   0.0740923   0.0968198
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months                  ki0047075b-MAL-ED       INDIA         NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months                  ki0047075b-MAL-ED       PERU          NA                   NA                0.3945578   0.3152779   0.4738378
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.2640000   0.2253243   0.3026757
6-24 months                  ki1135781-COHORTS       GUATEMALA     NA                   NA                0.8162939   0.7859345   0.8466533
6-24 months                  ki1135781-COHORTS       INDIA         NA                   NA                0.2666991   0.2531888   0.2802093
6-24 months                  ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.7086331   0.6777759   0.7394903
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.2162136   0.2068317   0.2255956
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.3784303   0.3598372   0.3970234


### Parameter: RR


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    0                    1                 1.2750450   0.9604879   1.692619
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         0                    1                 1.1531683   0.8911003   1.492309
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          0                    1                 1.2232876   0.9218674   1.623262
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.1140501   0.9627848   1.289081
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 0.8227539   0.5800217   1.167067
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          0                    1                 1.7692308   0.8423327   3.716082
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     0                    1                 1.0769559   0.9280014   1.249819
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         0                    1                 1.4083600   1.2710281   1.560530
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   0                    1                 1.5812132   1.3484214   1.854194
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1770137   1.1084272   1.249844
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.1531922   1.0401274   1.278547
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    0                    1                 0.8353808   0.3830278   1.821959
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         0                    1                 2.0283485   1.0871835   3.784272
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          0                    1                 1.4018981   0.8763310   2.242667
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.0961470   0.7926191   1.515909
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 0.7608124   0.4219495   1.371812
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          0                    1                 2.8307692   1.2974209   6.176295
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     0                    1                 1.3108401   0.7555697   2.274180
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         0                    1                 1.4564997   1.1478877   1.848083
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   0                    1                 2.4682076   1.5049304   4.048060
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.2625673   1.1509651   1.384991
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.0275071   0.7287734   1.448695
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    0                    1                 1.4720415   0.9863837   2.196819
6-24 months                  ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED       INDIA         0                    1                 1.0030234   0.7037896   1.429484
6-24 months                  ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED       PERU          0                    1                 1.1353768   0.6960050   1.852114
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.1661368   0.9563069   1.422007
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 0.7951309   0.4622302   1.367789
6-24 months                  ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS       GUATEMALA     0                    1                 1.0750080   0.9152377   1.262669
6-24 months                  ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS       INDIA         0                    1                 1.4286990   1.2714428   1.605405
6-24 months                  ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS       PHILIPPINES   0                    1                 1.5153934   1.2663540   1.813408
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1672028   1.0656959   1.278378
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.1915034   1.0565231   1.343729


### Parameter: PAR


agecat                       studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0203526   -0.0078101   0.0485152
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0385910   -0.0377623   0.1149443
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          1                    NA                 0.0897208   -0.0283338   0.2077754
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0412004   -0.0118178   0.0942186
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0076946   -0.0205511   0.0051618
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          1                    NA                 0.0110351   -0.0078182   0.0298884
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0548319   -0.0477888   0.1574527
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         1                    NA                 0.0606438    0.0422338   0.0790538
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.2351716    0.1659144   0.3044288
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0099532    0.0053785   0.0145280
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0127390    0.0035201   0.0219579
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0058244   -0.0296024   0.0179536
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0791851    0.0165632   0.1418071
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          1                    NA                 0.0838126   -0.0239218   0.1915471
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0128374   -0.0323944   0.0580693
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0049284   -0.0151064   0.0052495
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          1                    NA                 0.0164147   -0.0033740   0.0362034
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0529947   -0.0438313   0.1498208
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         1                    NA                 0.0178832    0.0068288   0.0289376
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1063989    0.0650043   0.1477934
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0060276    0.0021950   0.0098601
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0000130   -0.0054803   0.0055062
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0330507   -0.0032865   0.0693880
6-24 months                  ki0047075b-MAL-ED       INDIA         1                    NA                -0.0088498   -0.0867375   0.0690378
6-24 months                  ki0047075b-MAL-ED       PERU          1                    NA                 0.0347521   -0.0981275   0.1676317
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0600736   -0.0072369   0.1273840
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0042970   -0.0180519   0.0094579
6-24 months                  ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0528750   -0.0600974   0.1658473
6-24 months                  ki1135781-COHORTS       INDIA         1                    NA                 0.0549275    0.0368166   0.0730385
6-24 months                  ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.2137926    0.1350410   0.2925443
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0095851    0.0038642   0.0153060
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0136266    0.0035331   0.0237202


### Parameter: PAF


agecat                       studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0375597   -0.0161562   0.0884361
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0706900   -0.0809587   0.2010638
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          1                    NA                 0.1459542   -0.0709527   0.3189297
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0684521   -0.0242515   0.1527652
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0196335   -0.0529885   0.0126649
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          1                    NA                 0.0483092   -0.0374644   0.1269913
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0676083   -0.0681448   0.1861082
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         1                    NA                 0.2012213    0.1379590   0.2598411
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.3253304    0.2204278   0.4161168
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0394369    0.0211233   0.0574078
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0307370    0.0082079   0.0527543
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0274966   -0.1459932   0.0787474
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         1                    NA                 0.3695306    0.0129311   0.5973010
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          1                    NA                 0.2304847   -0.1306761   0.4762834
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0562300   -0.1640511   0.2348259
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0264083   -0.0823518   0.0266437
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          1                    NA                 0.1077899   -0.0282190   0.2258080
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     1                    NA                 0.2169712   -0.2987127   0.5278909
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         1                    NA                 0.2282353    0.0754446   0.3557760
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.5517894    0.2898806   0.7171001
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0462331    0.0164267   0.0751363
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0001517   -0.0662412   0.0624105
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0779405   -0.0123169   0.1601506
6-24 months                  ki0047075b-MAL-ED       INDIA         1                    NA                -0.0209673   -0.2231839   0.1478189
6-24 months                  ki0047075b-MAL-ED       PERU          1                    NA                 0.0880787   -0.3196606   0.3698376
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.1046736   -0.0212006   0.2150325
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0162764   -0.0697171   0.0344945
6-24 months                  ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0647744   -0.0846656   0.1936253
6-24 months                  ki1135781-COHORTS       INDIA         1                    NA                 0.2059533    0.1354885   0.2706746
6-24 months                  ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.3016972    0.1792183   0.4058995
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0443315    0.0174616   0.0704666
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0360083    0.0089611   0.0623174
