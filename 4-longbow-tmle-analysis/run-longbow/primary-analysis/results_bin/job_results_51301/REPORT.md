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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

* arm
* sex
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

agecat      studyid                    country                        exclfeed3    swasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      159     227
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        5     227
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       60     227
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        3     227
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       65     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      112     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0     177
Birth       ki0047075b-MAL-ED          INDIA                          1                  0      116     193
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        5     193
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       70     193
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        2     193
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       58     166
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        2     166
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      104     166
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        2     166
Birth       ki0047075b-MAL-ED          PERU                           1                  0       64     265
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0     265
Birth       ki0047075b-MAL-ED          PERU                           0                  0      201     265
Birth       ki0047075b-MAL-ED          PERU                           0                  1        0     265
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       32     231
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     231
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      198     231
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        1     231
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       38     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       75     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1     114
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       4
Birth       ki1000108-IRC              INDIA                          1                  0        0       9
Birth       ki1000108-IRC              INDIA                          1                  1        0       9
Birth       ki1000108-IRC              INDIA                          0                  0        9       9
Birth       ki1000108-IRC              INDIA                          0                  1        0       9
Birth       ki1000109-EE               PAKISTAN                       1                  0        1       1
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       1
Birth       ki1000109-EE               PAKISTAN                       0                  0        0       1
Birth       ki1000109-EE               PAKISTAN                       0                  1        0       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0       44      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1        1      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0        2      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        0      47
Birth       ki1101329-Keneba           GAMBIA                         1                  0     1144    1305
Birth       ki1101329-Keneba           GAMBIA                         1                  1        6    1305
Birth       ki1101329-Keneba           GAMBIA                         0                  0      150    1305
Birth       ki1101329-Keneba           GAMBIA                         0                  1        5    1305
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    13511   15136
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      220   15136
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1379   15136
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1       26   15136
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0       28      31
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1        0      31
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0        3      31
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        0      31
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      171     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       64     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     237
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       81     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      128     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  0      140     233
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        1     233
6 months    ki0047075b-MAL-ED          INDIA                          0                  0       88     233
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        4     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       85     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      148     233
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0     233
6 months    ki0047075b-MAL-ED          PERU                           1                  0       67     270
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     270
6 months    ki0047075b-MAL-ED          PERU                           0                  0      203     270
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       31     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      214     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        3     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       68     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      172     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     240
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       10      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
6 months    ki1000108-IRC              INDIA                          1                  0        0      10
6 months    ki1000108-IRC              INDIA                          1                  1        0      10
6 months    ki1000108-IRC              INDIA                          0                  0       10      10
6 months    ki1000108-IRC              INDIA                          0                  1        0      10
6 months    ki1000109-EE               PAKISTAN                       1                  0      342     375
6 months    ki1000109-EE               PAKISTAN                       1                  1        7     375
6 months    ki1000109-EE               PAKISTAN                       0                  0       24     375
6 months    ki1000109-EE               PAKISTAN                       0                  1        2     375
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      360     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1       16     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       18     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        1     395
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      411     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        1     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      166     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        4     582
6 months    ki1101329-Keneba           GAMBIA                         1                  0     1516    1742
6 months    ki1101329-Keneba           GAMBIA                         1                  1       25    1742
6 months    ki1101329-Keneba           GAMBIA                         0                  0      196    1742
6 months    ki1101329-Keneba           GAMBIA                         0                  1        5    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      372     458
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        7     458
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       79     458
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1        0     458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    14566   16253
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      192   16253
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1466   16253
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1       29   16253
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0       77      89
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1        0      89
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0       12      89
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1        0      89
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      150     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       58     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        0     208
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       70     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0       98     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0      132     225
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        1     225
24 months   ki0047075b-MAL-ED          INDIA                          0                  0       91     225
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        1     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       82     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      143     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        0     225
24 months   ki0047075b-MAL-ED          PERU                           1                  0       46     199
24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     199
24 months   ki0047075b-MAL-ED          PERU                           0                  0      152     199
24 months   ki0047075b-MAL-ED          PERU                           0                  1        1     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       27     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      205     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     232
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       57     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      153     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     210
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       10      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
24 months   ki1000108-IRC              INDIA                          1                  0        0      10
24 months   ki1000108-IRC              INDIA                          1                  1        0      10
24 months   ki1000108-IRC              INDIA                          0                  0       10      10
24 months   ki1000108-IRC              INDIA                          0                  1        0      10
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      402     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        5     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      167     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        4     578
24 months   ki1101329-Keneba           GAMBIA                         1                  0     1254    1421
24 months   ki1101329-Keneba           GAMBIA                         1                  1       20    1421
24 months   ki1101329-Keneba           GAMBIA                         0                  0      144    1421
24 months   ki1101329-Keneba           GAMBIA                         0                  1        3    1421
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      327     404
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        9     404
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       66     404
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1        2     404
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7202    8313
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      290    8313
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      785    8313
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1       36    8313
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      132     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1        4     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0       14     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1        1     151


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/7a20625c-42f0-42b1-9055-9a058f2f3040/224d9610-cb5e-49c1-93eb-7afac08e17a1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7a20625c-42f0-42b1-9055-9a058f2f3040/224d9610-cb5e-49c1-93eb-7afac08e17a1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7a20625c-42f0-42b1-9055-9a058f2f3040/224d9610-cb5e-49c1-93eb-7afac08e17a1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7a20625c-42f0-42b1-9055-9a058f2f3040/224d9610-cb5e-49c1-93eb-7afac08e17a1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba    GAMBIA       1                    NA                0.0052174   0.0010520   0.0093828
Birth       ki1101329-Keneba    GAMBIA       0                    NA                0.0322581   0.0044323   0.0600839
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0160061   0.0134284   0.0185837
Birth       kiGH5241-JiVitA-3   BANGLADESH   0                    NA                0.0186751   0.0118361   0.0255141
6 months    ki1101329-Keneba    GAMBIA       1                    NA                0.0162232   0.0099138   0.0225326
6 months    ki1101329-Keneba    GAMBIA       0                    NA                0.0248756   0.0033383   0.0464129
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0130432   0.0108298   0.0152565
6 months    kiGH5241-JiVitA-3   BANGLADESH   0                    NA                0.0193899   0.0113634   0.0274165
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0387543   0.0340065   0.0435021
24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    NA                0.0434589   0.0293797   0.0575381


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba    GAMBIA       NA                   NA                0.0084291   0.0034671   0.0133912
Birth       kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0162526   0.0138117   0.0186936
6 months    ki1101329-Keneba    GAMBIA       NA                   NA                0.0172216   0.0111106   0.0233326
6 months    kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0135975   0.0114712   0.0157238
24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0392157   0.0346894   0.0437419


### Parameter: RR


agecat      studyid             country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
Birth       ki1101329-Keneba    GAMBIA       1                    1                 1.000000   1.0000000    1.000000
Birth       ki1101329-Keneba    GAMBIA       0                    1                 6.182796   1.9086787   20.027971
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH   0                    1                 1.166752   0.7876226    1.728378
6 months    ki1101329-Keneba    GAMBIA       1                    1                 1.000000   1.0000000    1.000000
6 months    ki1101329-Keneba    GAMBIA       0                    1                 1.533333   0.5935144    3.961338
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH   0                    1                 1.486597   0.9530317    2.318885
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    1                 1.121395   0.7941459    1.583495


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1101329-Keneba    GAMBIA       1                    NA                0.0032117   -0.0001636   0.0065871
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0002466   -0.0004225   0.0009156
6 months    ki1101329-Keneba    GAMBIA       1                    NA                0.0009984   -0.0015944   0.0035911
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0005543   -0.0001676   0.0012763
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0004614   -0.0010118   0.0019345


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1101329-Keneba    GAMBIA       1                    NA                0.3810277   -0.0592076   0.6382893
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0151712   -0.0271055   0.0557077
6 months    ki1101329-Keneba    GAMBIA       1                    NA                0.0579710   -0.1036799   0.1959457
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0407675   -0.0139158   0.0925016
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0117650   -0.0265361   0.0486370
