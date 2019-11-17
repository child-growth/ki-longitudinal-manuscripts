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
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
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
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
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
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       61     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       71     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       33     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       37     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       47     175
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        9     175
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0       97     175
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       22     175
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0       38     184
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1       55     184
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       45     184
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1       46     184
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0       48     201
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1       18     201
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      101     201
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       34     201
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0       22     253
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1       30     253
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       80     253
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1      121     253
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       13     237
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1       10     237
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       93     237
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      121     237
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        7     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1       33     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       23     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      122     185
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        0       8
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        8       8
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       8
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       8
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       0        0      10
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       1        0      10
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       0        3      10
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       1        7      10
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0        4      21
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1       17      21
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0        0      21
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1        0      21
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       0      121     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       1      191     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        9     326
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      285     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       1      170     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      110     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       1       68     633
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       0      759    1835
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       1      874    1835
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       0       91    1835
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       1      111    1835
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      116     380
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      201     380
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0       22     380
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1       41     380
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6792   10148
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     2424   10148
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0      689   10148
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      243   10148
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0       63     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1       40     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0        4     113
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1        6     113
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0      102     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1       30     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0       55     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       15     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       51     175
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        5     175
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      104     175
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       15     175
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0       72     184
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1       21     184
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0       71     184
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       20     184
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       63     201
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        3     201
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      127     201
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1        8     201
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0       38     253
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1       14     253
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0      123     253
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       78     253
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       17     237
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        6     237
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      148     237
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       66     237
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       28     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1       12     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       99     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       46     185
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        7       8
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1       8
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       8
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       8
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       0        0      10
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       1        0      10
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       0        5      10
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       1        5      10
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0        8      21
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       13      21
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0        0      21
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1        0      21
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       0      250     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       1       62     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       0        9     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        5     326
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      387     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       1       68     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      145     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       33     633
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       0     1203    1835
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       1      430    1835
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       0      143    1835
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       1       59    1835
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      252     380
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       65     380
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0       53     380
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       10     380
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0     7951   10145
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1262   10145
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0      801   10145
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      131   10145
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0       95     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1        8     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0        7     113
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        3     113
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       56     150
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       41     150
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       31     150
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       22     150
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       44     143
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        4     143
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0       88     143
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        7     143
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0       36     140
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1       34     140
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       44     140
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       26     140
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0       47     188
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1       15     188
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      100     188
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       26     188
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0       20     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1       16     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       69     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       43     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       11     152
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        4     152
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       82     152
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       55     152
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        7     123
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1       21     123
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       19     123
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       76     123
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        0       7
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        7       7
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       7
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       7
6-24 months                  ki1000108-IRC              INDIA                          1                       0        0       5
6-24 months                  ki1000108-IRC              INDIA                          1                       1        0       5
6-24 months                  ki1000108-IRC              INDIA                          0                       0        3       5
6-24 months                  ki1000108-IRC              INDIA                          0                       1        2       5
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0        4       8
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1        4       8
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0        0       8
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1        0       8
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       0      107     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       1      129     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       1        4     245
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       0      223     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       1      102     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       0       96     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       1       35     456
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       0      697    1278
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       1      444    1278
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       0       85    1278
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       1       52    1278
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      112     300
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      136     300
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0       21     300
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1       31     300
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0     4114    5773
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1169    5773
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0      377    5773
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      113    5773
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0       63     103
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1       32     103
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0        4     103
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1        4     103


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
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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




# Results Detail

## Results Plots
![](/tmp/44ea7384-aa22-4844-950a-845b88a8fa29/a99f17d0-6ca8-447b-90b1-4d4320f4d9d3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/44ea7384-aa22-4844-950a-845b88a8fa29/a99f17d0-6ca8-447b-90b1-4d4320f4d9d3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/44ea7384-aa22-4844-950a-845b88a8fa29/a99f17d0-6ca8-447b-90b1-4d4320f4d9d3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/44ea7384-aa22-4844-950a-845b88a8fa29/a99f17d0-6ca8-447b-90b1-4d4320f4d9d3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.5342804    0.4498742   0.6186865
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.5843385    0.4716540   0.6970230
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1607143    0.0642469   0.2571817
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1848739    0.1149269   0.2548210
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                0.5846317    0.4849723   0.6842910
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                0.5291086    0.4257296   0.6324877
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2991771    0.1940327   0.4043214
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2612492    0.1870592   0.3354392
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                0.5939898    0.4566278   0.7313517
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                0.5989481    0.5309360   0.6669603
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.4397474    0.2278620   0.6516329
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.5648898    0.4982786   0.6315011
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8250000    0.7069296   0.9430704
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8413793    0.7817559   0.9010027
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.6121795    0.5306906   0.6936683
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.6428571    0.3329177   0.9527966
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.3694733    0.3260405   0.4129061
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.3932642    0.3256780   0.4608503
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         1                    NA                0.5344856    0.5104118   0.5585594
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         0                    NA                0.5555774    0.4905104   0.6206443
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.6363371    0.5836113   0.6890630
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.6508086    0.5438010   0.7578162
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.2621979    0.2514001   0.2729956
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2691662    0.2429167   0.2954157
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2302786    0.1582097   0.3023476
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2175691    0.1220045   0.3131338
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.0892857    0.0143859   0.1641855
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1260504    0.0662459   0.1858550
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                0.2237430    0.1375406   0.3099453
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                0.2223285    0.1342905   0.3103666
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                0.2713784    0.1449878   0.3977689
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                0.3866127    0.3188307   0.4543946
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.2608696    0.0810344   0.4407047
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3084112    0.2464031   0.3704193
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3002516    0.1531578   0.4473454
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3153256    0.2392602   0.3913911
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1987179    0.1419130   0.2555229
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3571429   -0.1170496   0.8313354
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1507230    0.1175875   0.1838586
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1877781    0.1308570   0.2446992
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         1                    NA                0.2619691    0.2406720   0.2832662
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         0                    NA                0.3017247    0.2422895   0.3611599
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.2046865    0.1600783   0.2492947
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1395573    0.0457826   0.2333320
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1368390    0.1288927   0.1447853
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1421531    0.1202538   0.1640523
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4086537    0.3107203   0.5065870
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4538811    0.3173024   0.5904597
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                0.4641735    0.3465369   0.5818101
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                0.3892523    0.2733827   0.5051219
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2654904    0.1580120   0.3729689
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2101531    0.1395351   0.2807711
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                0.4431421    0.2702116   0.6160725
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                0.3822471    0.2910242   0.4734700
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7500000    0.5889568   0.9110432
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8000000    0.7192358   0.8807642
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.3068302    0.2570045   0.3566559
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.2857122    0.2107336   0.3606909
6-24 months                  ki1101329-Keneba          GAMBIA                         1                    NA                0.3871119    0.3588788   0.4153449
6-24 months                  ki1101329-Keneba          GAMBIA                         0                    NA                0.3996094    0.3210359   0.4781829
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5506796    0.4888751   0.6124841
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.5899416    0.4645095   0.7153738
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.2216091    0.2086569   0.2345613
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2276281    0.1807960   0.2744603


### Parameter: E(Y)


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.5346535   0.4656971   0.6036099
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1771429   0.1204149   0.2338709
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.5489130   0.4768182   0.6210079
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2587065   0.1980144   0.3193985
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           NA                   NA                0.5968379   0.5362738   0.6574021
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.5527426   0.4893071   0.6161781
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8378378   0.7845787   0.8910969
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.6134969   0.5286303   0.6983636
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         NA                   NA                0.5367847   0.5139635   0.5596060
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.6368421   0.5884257   0.6852585
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2628104   0.2524838   0.2731371
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.2227723   0.1652475   0.2802970
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1142857   0.0670124   0.1615591
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.2228261   0.1625334   0.2831188
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           NA                   NA                0.3636364   0.3042435   0.4230292
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3037975   0.2451226   0.3624723
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3135135   0.2464813   0.3805457
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.2055215   0.1385538   0.2724891
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         NA                   NA                0.2664850   0.2462507   0.2867194
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1973684   0.1572979   0.2374390
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1373090   0.1297510   0.1448670
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4200000   0.3407510   0.4992490
6-24 months                  ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4285714   0.3463030   0.5108399
6-24 months                  ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2180851   0.1588990   0.2772712
6-24 months                  ki0047075b-MAL-ED         PERU                           NA                   NA                0.3986486   0.3194990   0.4777982
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7886179   0.7161684   0.8610674
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  ki1101329-Keneba          GAMBIA                         NA                   NA                0.3881064   0.3613784   0.4148344
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.5566667   0.5003580   0.6129753
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2220682   0.2093710   0.2347655


### Parameter: RR


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.0936926   0.8574274   1.395061
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    1                 1.1503268   0.5658150   2.338665
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    1                 0.9050290   0.7008059   1.168765
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    1                 0.8732260   0.5547922   1.374431
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    1                 1.0083476   0.7792997   1.304716
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 1.2845778   0.7820806   2.109936
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0198537   0.8693236   1.196449
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.0501122   0.6736522   1.636951
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.0643911   0.8716436   1.299761
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         0                    1                 1.0394618   0.9184839   1.176374
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.0227418   0.8557378   1.222338
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.0265766   0.9271168   1.136706
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.9448082   0.5504770   1.621617
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    1                 1.4117647   0.5385303   3.700961
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    1                 0.9936783   0.5706511   1.730298
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    1                 1.4246261   0.8658904   2.343899
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 1.1822430   0.5765601   2.424203
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0502047   0.6074876   1.815560
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.7972350   0.5064696   6.377587
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.2458489   0.8580705   1.808871
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         0                    1                 1.1517568   0.9328618   1.422015
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    1                 0.6818099   0.3361063   1.383088
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.0388343   0.8827490   1.222518
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    1                 1.1106742   0.7594830   1.624259
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    1                 0.8385923   0.5710298   1.231524
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    1                 0.7915655   0.4661696   1.344094
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    1                 0.8625836   0.5446736   1.366048
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0666667   0.8413610   1.352306
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     0                    1                 0.9311739   0.6880577   1.260192
6-24 months                  ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1101329-Keneba          GAMBIA                         0                    1                 1.0322840   0.8382033   1.271303
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.0712974   0.8469970   1.354997
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.0271605   0.8316723   1.268599


### Parameter: PAR


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0003731   -0.0481783   0.0489245
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0164286   -0.0646159   0.0974731
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0357186   -0.1056270   0.0341897
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0404706   -0.1262524   0.0453111
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0028482   -0.1195857   0.1252821
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.1129952   -0.0884933   0.3144836
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0128378   -0.0908385   0.1165141
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0013174   -0.0112602   0.0138950
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0065140   -0.0150992   0.0281273
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0022991   -0.0050912   0.0096895
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0005050   -0.0182508   0.0192608
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0006125   -0.0018907   0.0031157
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0075064   -0.0498175   0.0348048
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0250000   -0.0402255   0.0902255
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0009169   -0.0620822   0.0602484
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0922580   -0.0229138   0.2074299
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0429279   -0.1288462   0.2147020
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0132619   -0.1176154   0.1441393
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0068035   -0.0151879   0.0287949
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0088346   -0.0099269   0.0275962
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0045159   -0.0023490   0.0113808
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0073181   -0.0242655   0.0096293
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0004700   -0.0016430   0.0025830
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0113464   -0.0463006   0.0689933
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0356021   -0.1169637   0.0457595
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0474053   -0.1353485   0.0405379
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                -0.0444934   -0.1962266   0.1072398
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0386179   -0.1005801   0.1778159
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0063916   -0.0314311   0.0186479
6-24 months                  ki1101329-Keneba          GAMBIA                         1                    NA                 0.0009946   -0.0078343   0.0098234
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0059871   -0.0173193   0.0292934
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0004591   -0.0036550   0.0045733


### Parameter: PAF


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0006978   -0.0943655   0.0875033
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0927419   -0.5012539   0.4517136
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0650716   -0.2008253   0.0553351
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.1564345   -0.5430759   0.1333279
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0047721   -0.2230468   0.1901548
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.2044264   -0.2595600   0.4974933
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0153226   -0.1165714   0.1316367
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0021474   -0.0184658   0.0223435
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0173251   -0.0418937   0.0731780
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0042832   -0.0095838   0.0179596
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0007929   -0.0290996   0.0298172
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0023307   -0.0072466   0.0118171
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0336952   -0.2422299   0.1398325
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.2187500   -0.6101023   0.6209237
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0041149   -0.3197910   0.2360558
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                 0.2537095   -0.1411880   0.5119564
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.1413043   -0.6585343   0.5554157
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0423010   -0.4810934   0.3807363
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0331037   -0.0733606   0.1290081
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0553696   -0.0695951   0.1657343
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0169462   -0.0091740   0.0423904
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0370783   -0.1263740   0.0451382
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0034229   -0.0120959   0.0187038
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0270151   -0.1204932   0.1551046
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0830715   -0.2907281   0.0911767
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.2173708   -0.6989579   0.1277055
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                -0.1116106   -0.5656185   0.2107412
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0489691   -0.1454021   0.2103561
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0212741   -0.1080457   0.0587024
6-24 months                  ki1101329-Keneba          GAMBIA                         1                    NA                 0.0025626   -0.0204499   0.0250561
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0107552   -0.0320716   0.0518049
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0020675   -0.0166203   0.0204119
