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

**Intervention Variable:** predexfd6

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

agecat                       studyid                    country                        predexfd6    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       32     195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       40     195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       58     195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       65     195
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       20     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        4     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      134     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       27     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0        1     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1        7     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       82     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1       95     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0        6     199
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1        5     199
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      140     199
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       48     199
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0       29     237
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1       53     237
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       61     237
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1       94     237
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       91     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      120     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     197
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     197
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       28     197
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      168     197
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      14
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       13      14
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      14
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      14
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       0        0      13
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       1        0      13
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       0        4      13
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       1        9      13
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0        4      27
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1       19      27
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0        2      27
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1        2      27
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       0      121     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       1      191     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        9     326
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       25      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       70      95
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      132     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       1       63     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      263     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       1      175     633
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       0      401    2023
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       1      350    2023
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       0      566    2023
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       1      706    2023
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      130     471
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      222     471
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0       34     471
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1       85     471
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       1       12     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       1       62     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6247   10809
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     2191   10809
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1776   10809
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      595   10809
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1565    3397
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1125    3397
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      393    3397
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      314    3397
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       60     195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1       12     195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0       95     195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       28     195
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       22     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        2     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      143     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       18     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0        7     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1        1     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      134     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       43     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       11     199
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     199
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      176     199
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       12     199
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0       54     237
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1       28     237
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0       95     237
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       60     237
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      146     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       65     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     197
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     197
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      136     197
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       60     197
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       11      14
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        3      14
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      14
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      14
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       0        0      13
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       1        0      13
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       0        8      13
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       1        5      13
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0        8      27
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       15      27
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0        3      27
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1        1      27
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       0      250     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       1       62     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       0        9     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        5     326
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       95      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0      95
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      169     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       1       26     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      363     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       75     633
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       0      582    2023
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       1      169    2023
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       0      923    2023
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       1      349    2023
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      286     471
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       66     471
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0       88     471
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       31     471
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0     7290   10806
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1146   10806
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2061   10806
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      309   10806
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2442    3369
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      237    3369
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      615    3369
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       75    3369
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       31     153
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       28     153
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       57     153
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       37     153
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       20     163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        2     163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      132     163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        9     163
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0        1     141
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1        6     141
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       82     141
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       52     141
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0        6     186
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        5     186
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      139     186
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       36     186
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0       29     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1       25     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       60     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       34     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     145
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     145
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       90     145
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       55     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     135
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     135
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       26     135
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      108     135
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      11
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       10      11
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      11
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      11
6-24 months                  ki1000108-IRC              INDIA                          1                       0        0       8
6-24 months                  ki1000108-IRC              INDIA                          1                       1        0       8
6-24 months                  ki1000108-IRC              INDIA                          0                       0        4       8
6-24 months                  ki1000108-IRC              INDIA                          0                       1        4       8
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0        4      11
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1        4      11
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0        2      11
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1        1      11
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       0      107     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       1      129     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       1        4     245
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       20      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       71      91
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       0       75     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       1       37     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       0      244     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       1      100     456
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       0      328    1407
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       1      181    1407
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       0      541    1407
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       1      357    1407
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      126     369
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      156     369
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0       33     369
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1       54     369
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       1       12     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       1       62     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0     3715    6170
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1053    6170
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1115    6170
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      287    6170
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1559    3084
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1      890    3084
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0      391    3084
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1      244    3084


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
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

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
![](/tmp/953d1ba3-80f6-4ff6-a911-474819a6df9f/f41554e1-c617-4725-b60d-b9ade627e926/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/953d1ba3-80f6-4ff6-a911-474819a6df9f/f41554e1-c617-4725-b60d-b9ade627e926/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/953d1ba3-80f6-4ff6-a911-474819a6df9f/f41554e1-c617-4725-b60d-b9ade627e926/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/953d1ba3-80f6-4ff6-a911-474819a6df9f/f41554e1-c617-4725-b60d-b9ade627e926/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5309278    0.4163744   0.6454812
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.5440746    0.4570566   0.6310925
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        1                    NA                0.4545455    0.1595511   0.7495398
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        0                    NA                0.2553191    0.1928321   0.3178062
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         1                    NA                0.6576477    0.5501836   0.7651118
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         0                    NA                0.6041003    0.5263581   0.6818426
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.6121795    0.5306906   0.6936683
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.6428571    0.3329177   0.9527966
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3390788    0.2732752   0.4048824
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.3962889    0.3512714   0.4413064
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    NA                0.4726029    0.4380337   0.5071720
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    NA                0.5526491    0.5257632   0.5795351
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6342497    0.5841311   0.6843682
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.7307614    0.6540666   0.8074562
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    NA                0.3597994    0.1818503   0.5377485
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    NA                0.4249316    0.3440390   0.5058242
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2592032    0.2481847   0.2702217
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2527641    0.2354140   0.2701143
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.4153393    0.3934305   0.4372481
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4604868    0.4190373   0.5019363
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1633830    0.0747196   0.2520463
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2306388    0.1555522   0.3057254
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         1                    NA                0.3427944    0.2378358   0.4477530
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         0                    NA                0.3823977    0.3057834   0.4590120
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1987179    0.1419130   0.2555229
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3571429   -0.1170496   0.8313354
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1502116    0.0942283   0.2061949
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1706362    0.1333652   0.2079072
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    NA                0.2214750    0.1924726   0.2504774
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    NA                0.2756936    0.2515549   0.2998323
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1862243    0.1455514   0.2268972
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2668865    0.1871715   0.3466014
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1345787    0.1263210   0.1428364
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1346976    0.1214464   0.1479487
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0869982    0.0735035   0.1004929
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1148003    0.0891663   0.1404342
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4960979    0.3678676   0.6243283
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4039387    0.3042895   0.5035879
6-24 months                  ki0047075b-MAL-ED         NEPAL        1                    NA                0.4545455    0.1594991   0.7495918
6-24 months                  ki0047075b-MAL-ED         NEPAL        0                    NA                0.2057143    0.1456633   0.2657653
6-24 months                  ki0047075b-MAL-ED         PERU         1                    NA                0.4890844    0.3565446   0.6216242
6-24 months                  ki0047075b-MAL-ED         PERU         0                    NA                0.3674227    0.2691392   0.4657061
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3021756    0.2174719   0.3868794
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2984504    0.2507361   0.3461647
6-24 months                  ki1101329-Keneba          GAMBIA       1                    NA                0.3573411    0.3164905   0.3981918
6-24 months                  ki1101329-Keneba          GAMBIA       0                    NA                0.3963118    0.3645422   0.4280815
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5552249    0.4972814   0.6131684
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    NA                0.6125502    0.5145054   0.7105951
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    NA                0.4789073    0.2914819   0.6663327
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    NA                0.4650383    0.3802147   0.5498620
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2199334    0.2065909   0.2332758
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2078827    0.1830348   0.2327305
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3626979    0.3409953   0.3844006
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3929399    0.3465817   0.4392982


### Parameter: E(Y)


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.5384615   0.4683114   0.6086117
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.2663317   0.2047606   0.3279027
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         NA                   NA                0.6202532   0.5583342   0.6821721
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.6134969   0.5286303   0.6983636
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       NA                   NA                0.5219970   0.5002246   0.5437695
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.6518047   0.6087352   0.6948741
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2577482   0.2478575   0.2676389
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.4236091   0.4038600   0.4433581
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.2051282   0.1483073   0.2619492
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         NA                   NA                0.3713080   0.3096658   0.4329502
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2055215   0.1385538   0.2724891
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       NA                   NA                0.2560554   0.2370317   0.2750791
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.2059448   0.1693853   0.2425043
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1346474   0.1274032   0.1418916
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0926091   0.0806150   0.1046031
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4248366   0.3462528   0.5034204
6-24 months                  ki0047075b-MAL-ED         NEPAL        NA                   NA                0.2204301   0.1606956   0.2801646
6-24 months                  ki0047075b-MAL-ED         PERU         NA                   NA                0.3986486   0.3194990   0.4777982
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  ki1101329-Keneba          GAMBIA       NA                   NA                0.3823738   0.3569722   0.4077755
6-24 months                  ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5691057   0.5185109   0.6197005
6-24 months                  ki1148112-LCNI-5          MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2171799   0.2048085   0.2295513
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3677043   0.3477044   0.3877041


### Parameter: RR


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.0247619   0.7892089   1.3306198
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        0                    1                 0.5617021   0.2807235   1.1239146
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         0                    1                 0.9185774   0.7462814   1.1306519
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.0501122   0.6736522   1.6369510
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.1687221   0.9404889   1.4523419
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    1                 1.1693732   1.0738821   1.2733555
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1521668   1.0139800   1.3091859
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    1                 1.1810236   0.6947598   2.0076244
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9751582   0.9042900   1.0515802
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1087003   1.0019223   1.2268580
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.4116451   0.7485462   2.6621493
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         0                    1                 1.1155307   0.7730677   1.6097021
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.7972350   0.5064696   6.3775866
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.1359727   0.7373870   1.7500093
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    1                 1.2448068   1.0672650   1.4518830
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.4331454   0.9908745   2.0728211
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0008832   0.8945400   1.1198685
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.3195712   1.0070600   1.7290608
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.8142319   0.5686171   1.1659402
6-24 months                  ki0047075b-MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         NEPAL        0                    1                 0.4525714   0.2221214   0.9221125
6-24 months                  ki0047075b-MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         PERU         0                    1                 0.7512459   0.5133742   1.0993354
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9876719   0.7189408   1.3568514
6-24 months                  ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba          GAMBIA       0                    1                 1.1090574   0.9669044   1.2721097
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1032471   0.9146339   1.3307555
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    1                 0.9710404   0.6300700   1.4965311
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    1                 0.9452076   0.8325928   1.0730544
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0833807   0.9515053   1.2335336


### Parameter: PAR


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0075338   -0.0822536   0.0973212
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.1882138   -0.4731562   0.0967286
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         1                    NA                -0.0373945   -0.1263869   0.0515978
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0013174   -0.0112602   0.0138950
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0369086   -0.0179945   0.0918116
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    NA                 0.0493941    0.0224651   0.0763232
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0175550   -0.0052876   0.0403976
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0630577   -0.0994318   0.2255472
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0014550   -0.0056558   0.0027457
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0082698   -0.0011957   0.0177352
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0417452   -0.0324660   0.1159565
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         1                    NA                 0.0285136   -0.0580406   0.1150677
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0068035   -0.0151879   0.0287949
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0093461   -0.0393284   0.0580206
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    NA                 0.0345804    0.0113770   0.0577838
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0197205   -0.0029714   0.0424124
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0000687   -0.0032528   0.0033902
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0056109   -0.0001017   0.0113235
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0712613   -0.1720959   0.0295733
6-24 months                  ki0047075b-MAL-ED         NEPAL        1                    NA                -0.2341153   -0.5175303   0.0492997
6-24 months                  ki0047075b-MAL-ED         PERU         1                    NA                -0.0904358   -0.1955128   0.0146413
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0017370   -0.0741507   0.0706766
6-24 months                  ki1101329-Keneba          GAMBIA       1                    NA                 0.0250327   -0.0076461   0.0577115
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0138808   -0.0122984   0.0400601
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    NA                -0.0221172   -0.1935695   0.1493351
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0027535   -0.0087784   0.0032714
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0050064   -0.0053133   0.0153260


### Parameter: PAF


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0139913   -0.1677218    0.1674274
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.7066895   -2.2000739    0.0897744
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU         1                    NA                -0.0602892   -0.2142000    0.0741120
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0021474   -0.0184658    0.0223435
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0981644   -0.0604289    0.2330391
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    NA                 0.0946253    0.0413940    0.1449007
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0269329   -0.0089241    0.0615156
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    NA                 0.1491230   -0.3377488    0.4587985
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0056452   -0.0220617    0.0105076
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0195222   -0.0030991    0.0416333
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.2035080   -0.2521320    0.4933446
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU         1                    NA                 0.0767923   -0.1884101    0.2828128
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0331037   -0.0733606    0.1290081
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0585751   -0.3016977    0.3191346
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    NA                 0.1350504    0.0396444    0.2209784
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0957562   -0.0206189    0.1988619
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0005103   -0.0244678    0.0248794
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0605872   -0.0040390    0.1210537
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1677382   -0.4331677    0.0485326
6-24 months                  ki0047075b-MAL-ED         NEPAL        1                    NA                -1.0620843   -2.8567327   -0.1025372
6-24 months                  ki0047075b-MAL-ED         PERU         1                    NA                -0.2268558   -0.5247716    0.0128521
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0057817   -0.2781154    0.2085246
6-24 months                  ki1101329-Keneba          GAMBIA       1                    NA                 0.0654666   -0.0240199    0.1471331
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0243906   -0.0228615    0.0694598
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    NA                -0.0484187   -0.4999477    0.2671866
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0126782   -0.0408693    0.0147492
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0136152   -0.0147976    0.0412324
