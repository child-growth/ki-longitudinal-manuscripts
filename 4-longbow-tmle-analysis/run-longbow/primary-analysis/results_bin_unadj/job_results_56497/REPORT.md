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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        impfloor    ever_swasted   n_cell       n  outcome_variable 
----------------------------  -------------------------  -----------------------------  ---------  -------------  -------  ------  -----------------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0      212     242  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       11     242  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0       18     242  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1        1     242  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0      204     210  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        4     210  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0        2     210  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1        0     210  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0      204     231  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1       12     231  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0       15     231  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1        0     231  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0      100     229  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        3     229  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      126     229  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1        0     229  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0       59     272  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        0     272  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      209     272  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1        4     272  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      224     257  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       12     257  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       21     257  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        0     257  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       13     248  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        1     248  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      227     248  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        7     248  ever_swasted     
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0      224     258  ever_swasted     
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       34     258  ever_swasted     
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     258  ever_swasted     
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     258  ever_swasted     
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      0      246     305  ever_swasted     
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      1       59     305  ever_swasted     
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      0        0     305  ever_swasted     
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      1        0     305  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                      0      487     599  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                      1       45     599  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                      0       58     599  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                      1        9     599  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      0      612     687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      1       14     687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      0       56     687  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      1        5     687  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      559     754  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       17     754  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                      0      175     754  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                      1        3     754  ever_swasted     
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0       77     518  ever_swasted     
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1       16     518  ever_swasted     
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0      333     518  ever_swasted     
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1       92     518  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                      0      201     215  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                      1        0     215  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                      0       14     215  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                      1        0     215  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2038   26465  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1       49   26465  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0    23480   26465  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      898   26465  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      626    5380  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       21    5380  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     4523    5380  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      210    5380  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      215     241  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        7     241  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0       19     241  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        0     241  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0      205     210  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        3     210  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0        2     210  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        0     210  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0      208     229  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        6     229  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0       15     229  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1        0     229  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0      101     227  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        1     227  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      125     227  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1        0     227  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0       59     272  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        0     272  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      212     272  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        1     272  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      232     256  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        3     256  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       21     256  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        0     256  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       14     248  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      231     248  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        3     248  ever_swasted     
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0      224     246  ever_swasted     
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       22     246  ever_swasted     
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     246  ever_swasted     
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     246  ever_swasted     
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      0      244     291  ever_swasted     
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      1       47     291  ever_swasted     
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      0        0     291  ever_swasted     
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      1        0     291  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                      0      512     581  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                      1        7     581  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                      0       60     581  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                      1        2     581  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      0      619     683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      1        3     683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      0       58     683  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      1        3     683  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      571     749  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1        1     749  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                      0      177     749  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                      1        0     749  ever_swasted     
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0       85     504  ever_swasted     
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1        5     504  ever_swasted     
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0      394     504  ever_swasted     
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       20     504  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                      0      201     215  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                      1        0     215  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                      0       14     215  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                      1        0     215  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2038   26171  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1       25   26171  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0    23698   26171  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      410   26171  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      597    4945  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1        4    4945  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0     4327    4945  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       17    4945  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0      217     240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1        4     240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0       18     240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1        1     240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0      204     207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        1     207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0        2     207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        0     207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0      214     235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        6     235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0       15     235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1        0     235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0      100     228  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        2     228  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      126     228  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1        0     228  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0       58     270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        0     270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      209     270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1        3     270  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      224     255  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       10     255  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       21     255  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        0     255  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       11     243  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        1     243  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      227     243  ever_swasted     
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        4     243  ever_swasted     
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0      245     261  ever_swasted     
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       16     261  ever_swasted     
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     261  ever_swasted     
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     261  ever_swasted     
6-24 months                   ki1000108-IRC              INDIA                          1                      0      289     306  ever_swasted     
6-24 months                   ki1000108-IRC              INDIA                          1                      1       17     306  ever_swasted     
6-24 months                   ki1000108-IRC              INDIA                          0                      0        0     306  ever_swasted     
6-24 months                   ki1000108-IRC              INDIA                          0                      1        0     306  ever_swasted     
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                      0      439     539  ever_swasted     
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                      1       40     539  ever_swasted     
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                      0       52     539  ever_swasted     
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                      1        8     539  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      0      554     615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      1       11     615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      0       48     615  ever_swasted     
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      1        2     615  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      535     730  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       17     730  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                      0      175     730  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                      1        3     730  ever_swasted     
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      0       70     463  ever_swasted     
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      1       13     463  ever_swasted     
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0      302     463  ever_swasted     
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1       78     463  ever_swasted     
6-24 months                   ki1114097-CONTENT          PERU                           1                      0      201     215  ever_swasted     
6-24 months                   ki1114097-CONTENT          PERU                           1                      1        0     215  ever_swasted     
6-24 months                   ki1114097-CONTENT          PERU                           0                      0       14     215  ever_swasted     
6-24 months                   ki1114097-CONTENT          PERU                           0                      1        0     215  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1479   17259  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1       28   17259  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0    15228   17259  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      524   17259  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      628    5422  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       17    5422  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     4556    5422  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      221    5422  ever_swasted     


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

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
![](/tmp/dc22513d-a9f1-4214-9e2d-f754c174b4dd/9acc511d-a717-48da-8a43-5ca8fb572c2e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dc22513d-a9f1-4214-9e2d-f754c174b4dd/9acc511d-a717-48da-8a43-5ca8fb572c2e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dc22513d-a9f1-4214-9e2d-f754c174b4dd/9acc511d-a717-48da-8a43-5ca8fb572c2e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dc22513d-a9f1-4214-9e2d-f754c174b4dd/9acc511d-a717-48da-8a43-5ca8fb572c2e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.0845865   0.0609210   0.1082519
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   0                    NA                0.1343284   0.0526073   0.2160494
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0223642   0.0107726   0.0339558
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0819672   0.0130784   0.1508560
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1720430   0.0952629   0.2488231
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2164706   0.1772783   0.2556629
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0234787   0.0154731   0.0314842
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0368365   0.0341430   0.0395300
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0324575   0.0173514   0.0475636
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0443693   0.0381984   0.0505403
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0555556   0.0081848   0.1029263
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0483092   0.0276343   0.0689840
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0121183   0.0075386   0.0166979
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0170068   0.0150654   0.0189482
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.0835073   0.0587097   0.1083049
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   0                    NA                0.1333333   0.0472397   0.2194270
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1566265   0.0783519   0.2349012
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2052632   0.1646101   0.2459162
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0185800   0.0093769   0.0277831
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0332656   0.0302843   0.0362469
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0263566   0.0132651   0.0394481
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0462633   0.0399117   0.0526150


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.0901503   0.0671959   0.1131046
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0276565   0.0153851   0.0399279
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2084942   0.1734774   0.2435110
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0357831   0.0332025   0.0383637
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0429368   0.0372250   0.0486486
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0496032   0.0306286   0.0685777
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0166215   0.0148026   0.0184403
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.0890538   0.0649864   0.1131212
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1965443   0.1603084   0.2327801
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0319833   0.0290874   0.0348792
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0438952   0.0380697   0.0497208


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   0                    1                 1.5880597   0.8129350   3.102257
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    1                 3.6651054   1.3653919   9.838199
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2582353   0.7773218   2.036680
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5689338   1.1101972   2.217222
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.3669977   0.8394998   2.225948
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.8695652   0.3349377   2.257565
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4034014   0.9444311   2.085420
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   0                    1                 1.5966667   0.7844330   3.249920
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3105263   0.7655670   2.243408
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.7904030   1.0896521   2.941804
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.7552857   1.0481491   2.939494


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   1                    NA                 0.0055638   -0.0040351   0.0151627
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0052923   -0.0010389   0.0116234
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0364512   -0.0342917   0.1071941
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0123044    0.0046165   0.0199923
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0104793   -0.0039429   0.0249015
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0059524   -0.0484094   0.0365046
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0045032   -0.0000964   0.0091027
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   1                    NA                 0.0055465   -0.0045144   0.0156074
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0399178   -0.0324926   0.1123282
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0134034    0.0047624   0.0220443
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0175387    0.0047112   0.0303661


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   1                    NA                 0.0617168   -0.0499751   0.1615274
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1913570   -0.0528139   0.3788993
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1748307   -0.2437799   0.4525524
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.3438615    0.0891309   0.5273549
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.2440635   -0.1774800   0.5146924
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.1200000   -1.4026764   0.4779156
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.2709256   -0.0588840   0.4980097
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   1                    NA                 0.0622825   -0.0566201   0.1678049
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2030981   -0.2634292   0.4973580
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.4190733    0.0688883   0.6375560
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.3995570    0.0309721   0.6279449
