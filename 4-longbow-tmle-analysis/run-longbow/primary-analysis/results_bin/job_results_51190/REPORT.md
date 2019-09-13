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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* brthmon
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
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_brthmon
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

agecat                       studyid                    country                        exclfeed3    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       71     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       80     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       27     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       28     206
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       68     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1       10     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      106     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       18     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0       48     200
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1       74     200
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       46     200
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1       32     200
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0       59     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1       22     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0       95     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       33     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0       24     251
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1       33     251
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       77     251
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1      117     251
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       16     246
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1       15     246
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       98     246
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      117     246
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       14     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1       48     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       22     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      127     211
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        0       8
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        8       8
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       8
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       8
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       0        0      10
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       1        0      10
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       0        3      10
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       1        7      10
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0       30     248
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1      202     248
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0        2     248
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1       14     248
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       0      121     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       1      191     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        9     326
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      286     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       1      169     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      110     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       1       69     634
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       0      759    1835
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       1      874    1835
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       0       91    1835
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       1      111    1835
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      129     422
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      225     422
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0       24     422
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1       44     422
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    11952   17686
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     4075   17686
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1171   17686
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      488   17686
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0       62     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1       42     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0        3     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1        6     113
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0      116     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1       35     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0       46     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        9     206
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       72     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        6     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      111     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       13     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0       92     200
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1       30     200
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0       65     200
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       13     200
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       77     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        4     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      118     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       10     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0       41     251
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1       16     251
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0      119     251
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       75     251
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       23     246
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        8     246
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      147     246
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       68     246
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       43     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1       19     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      104     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       45     211
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        7       8
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1       8
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       8
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       8
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       0        0      10
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       1        0      10
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       0        5      10
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       1        5      10
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0       92     248
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1      140     248
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0        6     248
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1       10     248
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       0      250     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       1       62     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       0        9     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        5     326
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      387     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       1       68     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      146     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       33     634
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       0     1203    1835
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       1      430    1835
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       0      143    1835
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       1       59    1835
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      284     422
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       70     422
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0       59     422
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1        9     422
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    13971   17686
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     2056   17686
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1345   17686
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      314   17686
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0       96     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1        8     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0        6     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        3     113
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       66     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       45     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       26     156
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       19     156
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       64     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        4     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0       95     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        5     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0       46     154
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1       44     154
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       45     154
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       19     154
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0       58     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1       18     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0       94     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       23     193
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0       22     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1       17     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       67     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       42     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       14     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        7     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       86     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       49     156
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       12     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1       29     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       20     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       82     143
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        0       7
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        7       7
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       7
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       7
6-24 months                  ki1000108-IRC              INDIA                          1                       0        0       5
6-24 months                  ki1000108-IRC              INDIA                          1                       1        0       5
6-24 months                  ki1000108-IRC              INDIA                          0                       0        3       5
6-24 months                  ki1000108-IRC              INDIA                          0                       1        2       5
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0       28      96
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1       62      96
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0        2      96
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1        4      96
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       0      107     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       1      129     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       1        4     245
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       0      224     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       1      101     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       0       96     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       1       36     457
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       0      697    1278
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       1      444    1278
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       0       85    1278
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       1       52    1278
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      125     338
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      155     338
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0       23     338
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1       35     338
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0     7385   10184
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     2021   10184
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0      600   10184
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      178   10184
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0       62     102
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1       34     102
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0        3     102
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1        3     102


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/82b46196-370b-4ce3-b310-6fbadf9bde81/fcb62323-56a9-4ae7-8cfb-57045e25a6c5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/82b46196-370b-4ce3-b310-6fbadf9bde81/fcb62323-56a9-4ae7-8cfb-57045e25a6c5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/82b46196-370b-4ce3-b310-6fbadf9bde81/fcb62323-56a9-4ae7-8cfb-57045e25a6c5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/82b46196-370b-4ce3-b310-6fbadf9bde81/fcb62323-56a9-4ae7-8cfb-57045e25a6c5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.5128213    0.4347696   0.5908729
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.5446765    0.4163245   0.6730285
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1537846    0.0788589   0.2287104
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1538269    0.0915490   0.2161047
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                0.5962091    0.5114303   0.6809879
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                0.4284522    0.3165038   0.5404006
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2941815    0.1991927   0.3891703
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2485383    0.1738738   0.3232027
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                0.6083355    0.4783095   0.7383614
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                0.5977647    0.5290574   0.6664720
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.4812551    0.3035734   0.6589369
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.5451398    0.4784791   0.6118004
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7690887    0.6596087   0.8785687
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8543554    0.7981781   0.9105328
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.6121795    0.5306906   0.6936683
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.6428571    0.3329177   0.9527966
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.3616937    0.3179881   0.4053994
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.4119159    0.3441080   0.4797238
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         1                    NA                0.5332743    0.5091996   0.5573491
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         0                    NA                0.5658384    0.5026204   0.6290564
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.6349323    0.5846919   0.6851727
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.6384515    0.5229696   0.7539333
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.2529206    0.2445092   0.2613320
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.3092684    0.2871113   0.3314255
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2317881    0.1643194   0.2992568
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1636364    0.0656285   0.2616442
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.0769231    0.0176407   0.1362055
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1048387    0.0507849   0.1588925
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                0.2490675    0.1701815   0.3279535
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                0.1621497    0.0816503   0.2426491
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                0.2815491    0.1623415   0.4007567
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                0.3851789    0.3164265   0.4539314
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.2580645    0.1037172   0.4124118
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3162791    0.2539934   0.3785647
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3057396    0.1825941   0.4288852
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3041567    0.2299339   0.3783795
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    NA                0.6034483    0.5403741   0.6665224
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    NA                0.6250000    0.3873044   0.8626956
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1987179    0.1419130   0.2555229
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3571429   -0.1170496   0.8313354
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1434862    0.1113744   0.1755979
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.2026735    0.1480033   0.2573437
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         1                    NA                0.2623588    0.2410981   0.2836196
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         0                    NA                0.2868834    0.2274214   0.3463455
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1977401    0.1562001   0.2392801
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1323529    0.0517136   0.2129923
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1287058    0.1226640   0.1347476
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1836347    0.1646081   0.2026614
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.3990055    0.3072746   0.4907364
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4031334    0.2519205   0.5543463
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                0.4804983    0.3765607   0.5844359
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                0.2697489    0.1569798   0.3825180
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2245772    0.1289901   0.3201642
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1949185    0.1220244   0.2678126
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                0.4453463    0.2849383   0.6057543
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                0.3874880    0.2953026   0.4796734
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3333333    0.1310647   0.5356020
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3629630    0.2815879   0.4443380
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6729129    0.5179900   0.8278358
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8156693    0.7402227   0.8911158
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.3038283    0.2539739   0.3536828
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.2874686    0.2131986   0.3617387
6-24 months                  ki1101329-Keneba          GAMBIA                         1                    NA                0.3875571    0.3593203   0.4157938
6-24 months                  ki1101329-Keneba          GAMBIA                         0                    NA                0.3927647    0.3145218   0.4710076
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5542004    0.4958368   0.6125641
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.6155173    0.4883763   0.7426583
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.2146842    0.2048675   0.2245009
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2345065    0.2033504   0.2656626


### Parameter: E(Y)


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.5242718   0.4559076   0.5926361
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1386139   0.0908442   0.1863835
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.5300000   0.4606561   0.5993439
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2631579   0.2033151   0.3230007
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           NA                   NA                0.5976096   0.5368226   0.6583966
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.5365854   0.4741444   0.5990263
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8293839   0.7785063   0.8802614
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.6134969   0.5286303   0.6983636
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         NA                   NA                0.5367847   0.5139635   0.5596060
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.6374408   0.5915192   0.6833623
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2580007   0.2499160   0.2660854
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.2135922   0.1574890   0.2696955
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.0940594   0.0537041   0.1344147
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.2150000   0.1579211   0.2720789
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           NA                   NA                0.3625498   0.3029582   0.4221414
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3089431   0.2510854   0.3668008
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3033175   0.2411441   0.3654909
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       NA                   NA                0.6048387   0.5438701   0.6658074
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.2055215   0.1385538   0.2724891
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         NA                   NA                0.2664850   0.2462507   0.2867194
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1872038   0.1499427   0.2244649
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1340043   0.1282072   0.1398014
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4102564   0.3328207   0.4876922
6-24 months                  ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4090909   0.3311846   0.4869972
6-24 months                  ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2124352   0.1545785   0.2702920
6-24 months                  ki0047075b-MAL-ED         PERU                           NA                   NA                0.3986486   0.3194990   0.4777982
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3589744   0.2834562   0.4344926
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7762238   0.7076743   0.8447733
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1101329-Keneba          GAMBIA                         NA                   NA                0.3881064   0.3613784   0.4148344
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.5621302   0.5091609   0.6150995
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2159269   0.2063541   0.2254998


### Parameter: RR


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.0621177   0.8102327   1.3923086
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    1                 1.0002746   0.5270393   1.8984340
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    1                 0.7186274   0.5368074   0.9620311
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    1                 0.8448468   0.5496570   1.2985663
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    1                 0.9826234   0.7729327   1.2492016
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 1.1327459   0.7691103   1.6683086
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.1108673   0.9498887   1.2991271
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.0501122   0.6736522   1.6369510
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.1388528   0.9347685   1.3874942
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         0                    1                 1.0610644   0.9426219   1.1943895
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.0055426   0.8253559   1.2250665
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.2227887   1.1340209   1.3185049
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.7059740   0.3627290   1.3740266
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    1                 1.3629032   0.5392267   3.4447575
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    1                 0.6510271   0.3611153   1.1736869
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    1                 1.3680702   0.8637481   2.1668540
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 1.2255814   0.6529414   2.3004357
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9948225   0.6218013   1.5916205
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    1                 1.0357143   0.6981485   1.5364983
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.7972350   0.5064696   6.3775866
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.4124948   1.0075550   1.9801815
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         0                    1                 1.0934773   0.8777004   1.3623014
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    1                 0.6693277   0.3513558   1.2750597
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.4267791   1.2753251   1.5962193
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.0103455   0.6526051   1.5641895
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    1                 0.5613941   0.3528294   0.8932455
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    1                 0.8679355   0.4886200   1.5417137
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    1                 0.8700825   0.5645666   1.3409285
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 1.0888889   0.5702156   2.0793520
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.2121469   0.9470821   1.5513969
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     0                    1                 0.9461548   0.7006691   1.2776485
6-24 months                  ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba          GAMBIA                         0                    1                 1.0134371   0.8212185   1.2506474
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.1106402   0.8807738   1.4004976
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.0923322   0.9531396   1.2518519


### Parameter: PAR


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0114506   -0.0266566    0.0495578
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0151708   -0.0763524    0.0460108
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0662091   -0.1204994   -0.0119188
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0310236   -0.1033161    0.0412689
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0107259   -0.1242230    0.1027712
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0553302   -0.1105632    0.2212237
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0602952   -0.0280384    0.1486289
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0013174   -0.0112602    0.0138950
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0137006   -0.0081180    0.0355192
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0035104   -0.0036865    0.0107073
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0025084   -0.0175973    0.0226142
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0050801    0.0030114    0.0071488
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0181958   -0.0502308    0.0138391
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0171363   -0.0321472    0.0664198
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0340675   -0.0805251    0.0123901
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0810007   -0.0259459    0.1879473
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0508786   -0.0946082    0.1963654
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0024221   -0.1066377    0.1017935
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    NA                 0.0013904   -0.0144892    0.0172701
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0068035   -0.0151879    0.0287949
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0158198   -0.0014053    0.0330450
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0041262   -0.0027210    0.0109733
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0105363   -0.0253324    0.0042597
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0052985    0.0034690    0.0071280
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0112509   -0.0385084    0.0610103
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0714074   -0.1357854   -0.0070294
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0121419   -0.0856932    0.0614093
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                -0.0466977   -0.1840417    0.0906463
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0256410   -0.1630404    0.2143225
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1033109   -0.0252128    0.2318346
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0040472   -0.0292034    0.0211091
6-24 months                  ki1101329-Keneba          GAMBIA                         1                    NA                 0.0005494   -0.0081645    0.0092632
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0079297   -0.0160207    0.0318802
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0012427   -0.0011034    0.0035889


### Parameter: PAF


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0218409   -0.0536539    0.0919266
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.1094462   -0.6578583    0.2575537
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.1249228   -0.2349157   -0.0247270
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.1178896   -0.4301165    0.1261711
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0179480   -0.2266960    0.1552772
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.1031155   -0.2664770    0.3648508
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0726988   -0.0411522    0.1741001
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0021474   -0.0184658    0.0223435
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0364966   -0.0235633    0.0930323
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0065397   -0.0069676    0.0198658
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0039352   -0.0281140    0.0349852
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0196903    0.0115946    0.0277196
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0851896   -0.2452419    0.0542910
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1821862   -0.5428304    0.5664985
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.1584534   -0.3932129    0.0367486
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                 0.2234195   -0.1354757    0.4688770
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.1646859   -0.4674228    0.5245068
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0079854   -0.4173183    0.2831289
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    NA                 0.0022989   -0.0243062    0.0282128
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0331037   -0.0733606    0.1290081
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0993047   -0.0156283    0.2012313
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0154837   -0.0105578    0.0408541
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0562826   -0.1379115    0.0194906
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0395398    0.0257180    0.0531656
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0274241   -0.1018328    0.1415177
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                -0.1745514   -0.3447234   -0.0259143
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0571560   -0.4663352    0.2378422
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                -0.1171399   -0.5208897    0.1794266
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0714286   -0.6354951    0.4727927
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1330942   -0.0520877    0.2856816
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0135004   -0.1009290    0.0669852
6-24 months                  ki1101329-Keneba          GAMBIA                         1                    NA                 0.0014155   -0.0212928    0.0236189
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0141066   -0.0294704    0.0558390
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0057552   -0.0051684    0.0165601
