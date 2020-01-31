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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        exclfeed3    ever_stunted   n_cell       n  outcome_variable 
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------  -----------------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       61     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       71     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       33     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       37     202  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       47     175  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        9     175  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0       97     175  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       22     175  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0       38     184  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1       55     184  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       45     184  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1       46     184  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0       48     201  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1       18     201  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      101     201  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       34     201  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0       22     253  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1       30     253  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       80     253  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1      121     253  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       13     237  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1       10     237  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       93     237  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      121     237  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        7     185  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1       33     185  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       23     185  ever_stunted     
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      122     185  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        0       8  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        8       8  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       8  ever_stunted     
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       8  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       0        0      10  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       1        0      10  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       0        3      10  ever_stunted     
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       1        7      10  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0        4      21  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1       17      21  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0        0      21  ever_stunted     
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1        0      21  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       0      121     326  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       1      191     326  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     326  ever_stunted     
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        9     326  ever_stunted     
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      285     633  ever_stunted     
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       1      170     633  ever_stunted     
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      110     633  ever_stunted     
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       1       68     633  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       0      759    1835  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       1      874    1835  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       0       91    1835  ever_stunted     
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       1      111    1835  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      116     380  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      201     380  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0       22     380  ever_stunted     
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1       41     380  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6792   10148  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     2424   10148  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0      689   10148  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      243   10148  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0       63     113  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1       40     113  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0        4     113  ever_stunted     
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1        6     113  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0      102     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1       30     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0       55     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       15     202  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       51     175  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        5     175  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      104     175  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       15     175  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0       72     184  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1       21     184  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0       71     184  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       20     184  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       63     201  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        3     201  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      127     201  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1        8     201  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0       38     253  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1       14     253  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0      123     253  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       78     253  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       17     237  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        6     237  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      148     237  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       66     237  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0       28     185  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1       12     185  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       99     185  ever_stunted     
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       46     185  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        7       8  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1       8  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       8  ever_stunted     
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       8  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       0        0      10  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       1        0      10  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       0        5      10  ever_stunted     
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       1        5      10  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0        8      21  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       13      21  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0        0      21  ever_stunted     
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1        0      21  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       0      250     326  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       1       62     326  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       0        9     326  ever_stunted     
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        5     326  ever_stunted     
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      387     633  ever_stunted     
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       1       68     633  ever_stunted     
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      145     633  ever_stunted     
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       33     633  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       0     1203    1835  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       1      430    1835  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       0      143    1835  ever_stunted     
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       1       59    1835  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      252     380  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       65     380  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0       53     380  ever_stunted     
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       10     380  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0     7951   10145  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1262   10145  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0      801   10145  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      131   10145  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0       95     113  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1        8     113  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0        7     113  ever_stunted     
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        3     113  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       56     150  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       41     150  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       31     150  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       22     150  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       44     143  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        4     143  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0       88     143  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        7     143  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0       36     140  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1       34     140  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       44     140  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       26     140  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0       47     188  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1       15     188  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      100     188  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       26     188  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0       20     148  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1       16     148  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       69     148  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       43     148  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       11     152  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        4     152  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       82     152  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       55     152  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        7     123  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1       21     123  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       19     123  ever_stunted     
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       76     123  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        0       7  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        7       7  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       7  ever_stunted     
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       7  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          1                       0        0       5  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          1                       1        0       5  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          0                       0        3       5  ever_stunted     
6-24 months                  ki1000108-IRC              INDIA                          0                       1        2       5  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0        4       8  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1        4       8  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0        0       8  ever_stunted     
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1        0       8  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       0      107     245  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       1      129     245  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     245  ever_stunted     
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       1        4     245  ever_stunted     
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       0      223     456  ever_stunted     
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       1      102     456  ever_stunted     
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       0       96     456  ever_stunted     
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       1       35     456  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       0      697    1278  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       1      444    1278  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       0       85    1278  ever_stunted     
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       1       52    1278  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      112     300  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      136     300  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0       21     300  ever_stunted     
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1       31     300  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0     4114    5773  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1169    5773  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0      377    5773  ever_stunted     
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      113    5773  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0       63     103  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1       32     103  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0        4     103  ever_stunted     
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1        4     103  ever_stunted     


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
![](/tmp/e5d23be5-a363-4f0b-b6e8-7a841ba773ef/b3f59d1d-7fd7-4ce9-93c2-5a228b2495c8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e5d23be5-a363-4f0b-b6e8-7a841ba773ef/b3f59d1d-7fd7-4ce9-93c2-5a228b2495c8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e5d23be5-a363-4f0b-b6e8-7a841ba773ef/b3f59d1d-7fd7-4ce9-93c2-5a228b2495c8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e5d23be5-a363-4f0b-b6e8-7a841ba773ef/b3f59d1d-7fd7-4ce9-93c2-5a228b2495c8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.5378788    0.4526161   0.6231415
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.5285714    0.4113420   0.6458008
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1607143    0.0642469   0.2571817
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1848739    0.1149269   0.2548210
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                0.5913978    0.4912180   0.6915777
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                0.5054945    0.4024904   0.6084986
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2727273    0.1650133   0.3804413
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2518519    0.1784460   0.3252577
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                0.5769231    0.4423758   0.7114704
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                0.6019900    0.5341866   0.6697935
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.4347826    0.2317592   0.6378061
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.5654206    0.4988657   0.6319754
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8250000    0.7069296   0.9430704
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8413793    0.7817559   0.9010027
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.6121795    0.5306906   0.6936683
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.6428571    0.3329177   0.9527966
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.3736264    0.3291406   0.4181122
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.3820225    0.3105873   0.4534577
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         1                    NA                0.5352113    0.5110141   0.5594084
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         0                    NA                0.5495050    0.4808738   0.6181362
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.6340694    0.5809738   0.6871650
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.6507937    0.5329211   0.7686662
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.2630208    0.2521781   0.2738635
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2607296    0.2320120   0.2894472
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2272727    0.1556047   0.2989408
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2142857    0.1179237   0.3106477
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.0892857    0.0143859   0.1641855
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1260504    0.0662459   0.1858550
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                0.2258065    0.1405979   0.3110150
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                0.2197802    0.1344675   0.3050929
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                0.2692308    0.1484330   0.3900285
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                0.3880597    0.3205581   0.4555613
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.2608696    0.0810344   0.4407047
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3084112    0.2464031   0.3704193
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3000000    0.1576017   0.4423983
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3172414    0.2412841   0.3931987
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1987179    0.1419130   0.2555229
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3571429   -0.1170496   0.8313354
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1494505    0.1166649   0.1822362
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1853933    0.1282582   0.2425283
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         1                    NA                0.2633190    0.2419515   0.2846866
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         0                    NA                0.2920792    0.2293553   0.3548032
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.2050473    0.1605444   0.2495502
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1587302    0.0683762   0.2490842
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1369804    0.1290218   0.1449389
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1405579    0.1167323   0.1643836
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4226804    0.3240459   0.5213149
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4150943    0.2819941   0.5481946
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                0.4857143    0.3682114   0.6032171
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                0.3714286    0.2578306   0.4850266
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2419355    0.1350514   0.3488196
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2063492    0.1354997   0.2771988
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                0.4444444    0.2815743   0.6073146
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                0.3839286    0.2935528   0.4743043
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7500000    0.5889568   0.9110432
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8000000    0.7192358   0.8807642
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.3138462    0.2633391   0.3643532
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.2671756    0.1913200   0.3430311
6-24 months                  ki1101329-Keneba          GAMBIA                         1                    NA                0.3891323    0.3608316   0.4174331
6-24 months                  ki1101329-Keneba          GAMBIA                         0                    NA                0.3795620    0.2982699   0.4608541
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5483871    0.4863468   0.6104274
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.5961538    0.4625686   0.7297391
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.2212758    0.2082713   0.2342803
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2306122    0.1811415   0.2800830


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
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.9826962   0.7482147   1.290661
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    1                 1.1503268   0.5658150   2.338665
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    1                 0.8547453   0.6557762   1.114084
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    1                 0.9234568   0.5652509   1.508662
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    1                 1.0434494   0.8053670   1.351914
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 1.3004673   0.8034522   2.104936
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0198537   0.8693236   1.196449
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.0501122   0.6736522   1.636951
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.0224719   0.8191747   1.276222
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         0                    1                 1.0267066   0.8990010   1.172553
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.0263761   0.8407108   1.253044
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.9912888   0.8830926   1.112741
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.9428571   0.5443974   1.632961
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    1                 1.4117647   0.5385303   3.700961
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    1                 0.9733124   0.5664243   1.672487
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    1                 1.4413646   0.8908087   2.332186
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 1.1822430   0.5765601   2.424203
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0574713   0.6214194   1.799502
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.7972350   0.5064696   6.377587
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 1.2404990   0.8497828   1.810860
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         0                    1                 1.1092217   0.8816931   1.395466
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    1                 0.7741148   0.4209513   1.423570
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.0261175   0.8579388   1.227264
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.9820525   0.6605483   1.460040
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    1                 0.7647059   0.5177741   1.129402
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    1                 0.8529101   0.4874232   1.492452
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    1                 0.8638393   0.5588255   1.335333
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0666667   0.8413610   1.352306
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     0                    1                 0.8512947   0.6142515   1.179814
6-24 months                  ki1101329-Keneba          GAMBIA                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1101329-Keneba          GAMBIA                         0                    1                 0.9754061   0.7779553   1.222971
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.0871041   0.8457759   1.397291
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.0421937   0.8352500   1.300410


### Parameter: PAR


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0032253   -0.0534616   0.0470109
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0164286   -0.0646159   0.0974731
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0424848   -0.1138191   0.0288495
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0140208   -0.1015788   0.0735372
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0199149   -0.0997909   0.1396206
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.1179600   -0.0750228   0.3109428
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0128378   -0.0908385   0.1165141
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0013174   -0.0112602   0.0138950
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0023610   -0.0213051   0.0260271
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0015735   -0.0064400   0.0095869
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0027727   -0.0186696   0.0242150
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0002104   -0.0029812   0.0025603
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0045005   -0.0461250   0.0371241
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0250000   -0.0402255   0.0902255
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0029804   -0.0626150   0.0566543
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0944056   -0.0156911   0.2045023
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0429279   -0.1288462   0.2147020
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0135135   -0.1129856   0.1400126
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0068035   -0.0151879   0.0287949
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0101071   -0.0084593   0.0286736
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0031660   -0.0041401   0.0104720
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0076789   -0.0244669   0.0091091
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0003287   -0.0019775   0.0026348
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0026804   -0.0612178   0.0558570
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0571429   -0.1394113   0.0251256
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0238504   -0.1098277   0.0621269
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                -0.0457958   -0.1868152   0.0952236
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0386179   -0.1005801   0.1778159
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0134076   -0.0396598   0.0128447
6-24 months                  ki1101329-Keneba          GAMBIA                         1                    NA                -0.0010259   -0.0102548   0.0082029
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0082796   -0.0173326   0.0338918
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0007925   -0.0035458   0.0051307


### Parameter: PAF


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0060325   -0.1045253   0.0836774
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0927419   -0.5012539   0.4517136
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0773981   -0.2162422   0.0455958
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0541958   -0.4531947   0.2352513
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0333673   -0.1895895   0.2145368
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.2134086   -0.2273337   0.4958779
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0153226   -0.1165714   0.1316367
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0021474   -0.0184658   0.0223435
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0062794   -0.0587014   0.0672719
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0029313   -0.0121104   0.0177494
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0043538   -0.0298958   0.0374645
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0008007   -0.0113974   0.0096850
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0202020   -0.2252185   0.1505090
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.2187500   -0.6101023   0.6209237
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0133753   -0.3196582   0.2218216
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                 0.2596154   -0.1137442   0.5078140
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.1413043   -0.6585343   0.5554157
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0431034   -0.4587646   0.3723107
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0331037   -0.0733606   0.1290081
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0633446   -0.0601509   0.1724542
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0118805   -0.0159154   0.0389159
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0389064   -0.1273497   0.0425983
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0023936   -0.0145479   0.0190522
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0063819   -0.1558719   0.1237743
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                -0.1333333   -0.3439190   0.0442546
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.1093627   -0.5821338   0.2221356
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                -0.1148776   -0.5316621   0.1884946
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0489691   -0.1454021   0.2103561
6-24 months                  ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0446266   -0.1357400   0.0391773
6-24 months                  ki1101329-Keneba          GAMBIA                         1                    NA                -0.0026434   -0.0267069   0.0208561
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0148735   -0.0322658   0.0598601
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0035685   -0.0161404   0.0228952
