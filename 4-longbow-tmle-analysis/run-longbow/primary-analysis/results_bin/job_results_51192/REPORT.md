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

**Intervention Variable:** exclfeed6

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

agecat                       studyid                    country                        exclfeed6    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       20     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       28     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       71     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       79     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       13     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        1     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      150     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       27     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0        2     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1        1     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       86     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1      105     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0       11     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1        4     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      143     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       50     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0        2     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1        7     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       90     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1      139     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       96     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      126     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       35     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      174     210
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      14
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       13      14
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      14
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      14
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       0        0      13
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       1        0      13
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       0        4      13
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       1        9      13
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0       16     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1      119     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0       17     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1       97     249
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       0      121     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                       1      191     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     326
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        9     326
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       25      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       70      95
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      138     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       1       66     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      258     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       1      172     634
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       0      401    2023
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       1      350    2023
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       0      566    2023
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       1      706    2023
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      141     501
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      236     501
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0       37     501
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1       87     501
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       1       12     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       1       62     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    10972   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3599   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2502   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1058   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1550    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1122    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      373    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      313    3358
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       39     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        9     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      118     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       32     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       14     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      158     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       19     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0        3     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1        0     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      148     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       43     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       14     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        1     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      181     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       12     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0        6     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1        3     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0      144     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       85     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      150     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       72     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      147     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       62     210
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       11      14
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        3      14
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      14
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      14
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       0        0      13
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       1        0      13
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       0        8      13
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       1        5      13
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0       48     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       87     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0       51     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1       63     249
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       0      250     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                       1       62     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       0        9     326
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        5     326
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       95      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0      95
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      177     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       1       27     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      356     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       74     634
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       0      582    2023
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       1      169    2023
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       0      923    2023
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       1      349    2023
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      307     501
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       70     501
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0       95     501
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       29     501
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    12805   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1766   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2911   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      649   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2435    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      237    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      611    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       75    3358
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       19     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       19     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       69     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       47     154
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       12     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        1     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      147     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        8     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0        2     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1        1     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       86     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       62     151
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0       11     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        3     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      142     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       38     194
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0        2     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1        4     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       88     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       54     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       95     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       54     149
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       31     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      112     144
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      11
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       10      11
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      11
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      11
6-24 months                  ki1000108-IRC              INDIA                          1                       0        0       8
6-24 months                  ki1000108-IRC              INDIA                          1                       1        0       8
6-24 months                  ki1000108-IRC              INDIA                          0                       0        4       8
6-24 months                  ki1000108-IRC              INDIA                          0                       1        4       8
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0       14      97
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1       32      97
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0       17      97
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1       34      97
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       0      107     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                       1      129     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       0        5     245
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                       1        4     245
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       20      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       71      91
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       0       80     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       1       39     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       0      240     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       1       98     457
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       0      328    1407
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       1      181    1407
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       0      541    1407
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       1      357    1407
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      137     397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      166     397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0       36     397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1       58     397
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       1       12     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       1       62     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6727   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1835   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1436   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      414   10412
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1546    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1      886    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0      370    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1      239    3041


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
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/e4213584-8cdb-4299-931f-4f4c4b6183cd/056046a9-5bbe-42a3-b328-fc9b235fbe97/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e4213584-8cdb-4299-931f-4f4c4b6183cd/056046a9-5bbe-42a3-b328-fc9b235fbe97/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e4213584-8cdb-4299-931f-4f4c4b6183cd/056046a9-5bbe-42a3-b328-fc9b235fbe97/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e4213584-8cdb-4299-931f-4f4c4b6183cd/056046a9-5bbe-42a3-b328-fc9b235fbe97/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5575160    0.4212591   0.6937730
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.5370259    0.4583838   0.6156680
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     1                    NA                0.8832921    0.8283143   0.9382700
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     0                    NA                0.8484061    0.7823104   0.9145018
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.6121795    0.5306906   0.6936683
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.6428571    0.3329177   0.9527966
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.2989265    0.2344477   0.3634052
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.4157458    0.3705316   0.4609599
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    NA                0.4728086    0.4383640   0.5072532
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    NA                0.5508653    0.5241166   0.5776140
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6267720    0.5778447   0.6756993
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.6987326    0.6170041   0.7804612
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    NA                0.3194161    0.1700193   0.4688129
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    NA                0.4197726    0.3391963   0.5003489
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2471444    0.2386936   0.2555951
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2944854    0.2795011   0.3094697
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.4178905    0.3957969   0.4399840
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4637682    0.4220344   0.5055021
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1875000    0.0768021   0.2981979
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.2133333    0.1476089   0.2790577
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     1                    NA                0.6452717    0.5678277   0.7227158
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     0                    NA                0.5446077    0.4544424   0.6347730
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1987179    0.1419130   0.2555229
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3571429   -0.1170496   0.8313354
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1241565    0.0781844   0.1701286
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1834855    0.1482008   0.2187701
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    NA                0.2246828    0.1955540   0.2538116
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    NA                0.2758775    0.2517449   0.3000101
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1856805    0.1463313   0.2250298
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2291260    0.1543437   0.3039084
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1225302    0.1164261   0.1286343
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1746323    0.1620842   0.1871804
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0866748    0.0732565   0.1000932
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1178761    0.0918609   0.1438914
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5410977    0.3881636   0.6940317
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4082195    0.3182944   0.4981447
6-24 months                  ki1000109-EE              PAKISTAN     1                    NA                0.6944383    0.5601197   0.8287569
6-24 months                  ki1000109-EE              PAKISTAN     0                    NA                0.6696948    0.5371281   0.8022615
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3023561    0.2202461   0.3844661
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2996624    0.2516067   0.3477181
6-24 months                  ki1101329-Keneba          GAMBIA       1                    NA                0.3512121    0.3103719   0.3920522
6-24 months                  ki1101329-Keneba          GAMBIA       0                    NA                0.3986674    0.3669337   0.4304011
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5496375    0.4934283   0.6058468
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    NA                0.6098681    0.5093284   0.7104078
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    NA                0.4371276    0.2488202   0.6254351
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    NA                0.4590385    0.3745668   0.5435102
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.2143467    0.2041830   0.2245104
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2235306    0.2043261   0.2427351
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.3634250    0.3412917   0.3855583
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3992545    0.3529336   0.4455754


### Parameter: E(Y)


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.5404040   0.4708116   0.6099965
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     NA                   NA                0.8674699   0.8252704   0.9096693
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.6134969   0.5286303   0.6983636
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       NA                   NA                0.5219970   0.5002246   0.5437695
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.6447106   0.6027601   0.6866610
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2568529   0.2489241   0.2647817
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.4273377   0.4072583   0.4474171
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.2070707   0.1504870   0.2636544
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2055215   0.1385538   0.2724891
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       NA                   NA                0.2560554   0.2370317   0.2750791
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1976048   0.1627023   0.2325072
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.1331973   0.1275046   0.1388899
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0929124   0.0809295   0.1048954
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4285714   0.3501572   0.5069857
6-24 months                  ki1000109-EE              PAKISTAN     NA                   NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1101329-Keneba          GAMBIA       NA                   NA                0.3823738   0.3569722   0.4077755
6-24 months                  ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5642317   0.5153938   0.6130696
6-24 months                  ki1148112-LCNI-5          MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2160008   0.2065441   0.2254575
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.3699441   0.3495174   0.3903708


### Parameter: RR


agecat                       studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.9632474   0.7311865   1.268959
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     0                    1                 0.9605045   0.8691021   1.061519
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.0501122   0.6736522   1.636951
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.3907962   1.0984446   1.760957
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       0                    1                 1.1650915   1.0703342   1.268238
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1148115   0.9683678   1.283402
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       0                    1                 1.3141872   0.7898044   2.186729
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.1915521   1.1281353   1.258534
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.1097842   1.0030337   1.227896
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   0                    1                 1.1377778   0.5845801   2.214475
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     0                    1                 0.8439974   0.6933352   1.027399
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.7972350   0.5064696   6.377587
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.4778563   0.9853791   2.216466
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       0                    1                 1.2278531   1.0542967   1.429980
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        0                    1                 1.2339799   0.8357253   1.822018
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.4252181   1.3129989   1.547028
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.3599809   1.0404742   1.777601
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.7544285   0.5289942   1.075933
6-24 months                  ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000109-EE              PAKISTAN     0                    1                 0.9643690   0.7304710   1.273162
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9910909   0.7266264   1.351811
6-24 months                  ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1101329-Keneba          GAMBIA       0                    1                 1.1351187   0.9883755   1.303649
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL        0                    1                 1.1095823   0.9139220   1.347131
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1148112-LCNI-5          MALAWI       0                    1                 1.0501245   0.6589551   1.673500
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.0428460   0.9510775   1.143469
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   0                    1                 1.0985885   0.9667219   1.248442


### Parameter: PAR


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0171120   -0.1332674   0.0990434
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     1                    NA                -0.0158223   -0.0553641   0.0237195
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0013174   -0.0112602   0.0138950
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0764679    0.0234373   0.1294984
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    NA                 0.0491884    0.0225153   0.0758616
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0179386   -0.0057224   0.0415996
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    NA                 0.1034410   -0.0388936   0.2457756
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0097085    0.0066871   0.0127300
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0094472    0.0001488   0.0187457
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0195707   -0.0779711   0.1171125
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     1                    NA                -0.0428621   -0.0955803   0.0098560
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0068035   -0.0151879   0.0287949
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0351495   -0.0032967   0.0735957
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    NA                 0.0313726    0.0080756   0.0546696
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0119243   -0.0092365   0.0330850
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0106671    0.0080455   0.0132886
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0062376    0.0003853   0.0120899
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1125262   -0.2451435   0.0200911
6-24 months                  ki1000109-EE              PAKISTAN     1                    NA                -0.0140259   -0.1135693   0.0855175
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0025749   -0.0719110   0.0667612
6-24 months                  ki1101329-Keneba          GAMBIA       1                    NA                 0.0311618   -0.0015467   0.0638703
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0145942   -0.0124223   0.0416107
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    NA                 0.0196625   -0.1513246   0.1906496
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0016540   -0.0019592   0.0052672
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0065191   -0.0034182   0.0164564


### Parameter: PAF


agecat                       studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0316652   -0.2706134   0.1623471
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN     1                    NA                -0.0182396   -0.0649566   0.0264281
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0021474   -0.0184658   0.0223435
0-24 months (no birth st.)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2037001    0.0478361   0.3340501
0-24 months (no birth st.)   ki1101329-Keneba          GAMBIA       1                    NA                 0.0942313    0.0415011   0.1440605
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0278242   -0.0096940   0.0639483
0-24 months (no birth st.)   ki1148112-LCNI-5          MALAWI       1                    NA                 0.2446240   -0.1730757   0.5135924
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0377980    0.0259182   0.0495329
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0221072    0.0000832   0.0436461
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0945122   -0.5227668   0.4615668
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN     1                    NA                -0.0711511   -0.1632519   0.0136575
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0331037   -0.0733606   0.1290081
0-6 months (no birth st.)    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2206414   -0.0622818   0.4282121
0-6 months (no birth st.)    ki1101329-Keneba          GAMBIA       1                    NA                 0.1225226    0.0267887   0.2088392
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0603440   -0.0527258   0.1612694
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0800846    0.0601237   0.0996216
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0671342    0.0011932   0.1287218
6-24 months                  ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.2625612   -0.6189775   0.0153904
6-24 months                  ki1000109-EE              PAKISTAN     1                    NA                -0.0206139   -0.1780488   0.1157814
6-24 months                  ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0085893   -0.2685075   0.1980714
6-24 months                  ki1101329-Keneba          GAMBIA       1                    NA                 0.0814956   -0.0081742   0.1631899
6-24 months                  ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0258656   -0.0233071   0.0726754
6-24 months                  ki1148112-LCNI-5          MALAWI       1                    NA                 0.0430449   -0.4152729   0.3529424
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0076576   -0.0092194   0.0242524
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH   1                    NA                 0.0176218   -0.0095642   0.0440758
